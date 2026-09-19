package io.realm;

import io.realm.internal.Keep;
import io.realm.internal.SyncObjectServerFacade;
import io.realm.internal.Util;
import io.realm.internal.android.AndroidCapabilities;
import io.realm.internal.async.RealmAsyncTaskImpl;
import io.realm.internal.network.AuthenticateResponse;
import io.realm.internal.network.AuthenticationServer;
import io.realm.internal.network.ExponentialBackoffTask;
import io.realm.internal.network.NetworkStateReceiver;
import io.realm.internal.objectserver.Token;
import io.realm.internal.util.Pair;
import io.realm.log.RealmLog;
import java.io.InterruptedIOException;
import java.net.URI;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class SyncSession {
    private static final int DIRECTION_DOWNLOAD = 1;
    private static final int DIRECTION_UPLOAD = 2;
    private static final byte STATE_VALUE_ACTIVE = 1;
    private static final byte STATE_VALUE_DYING = 2;
    private static final byte STATE_VALUE_ERROR = 4;
    private static final byte STATE_VALUE_INACTIVE = 3;
    private static final byte STATE_VALUE_WAITING_FOR_ACCESS_TOKEN = 0;
    private final SyncConfiguration configuration;
    private final ErrorHandler errorHandler;
    private RealmAsyncTask networkRequest;
    private RealmAsyncTask refreshTokenNetworkRequest;
    private RealmAsyncTask refreshTokenTask;
    private URI resolvedRealmURI;
    private static final ScheduledThreadPoolExecutor REFRESH_TOKENS_EXECUTOR = new ScheduledThreadPoolExecutor(1);
    private static final long REFRESH_MARGIN_DELAY = TimeUnit.SECONDS.toMillis(10);
    private AtomicBoolean onGoingAccessTokenQuery = new AtomicBoolean(false);
    private volatile boolean isClosed = false;
    private final AtomicReference<WaitForSessionWrapper> waitingForServerChanges = new AtomicReference<>(null);
    private final AtomicInteger waitCounter = new AtomicInteger(0);
    private final Object waitForChangesMutex = new Object();
    private final Map<Long, Pair<ProgressListener, Progress>> listenerIdToProgressListenerMap = new HashMap();
    private final Map<ProgressListener, Long> progressListenerToOsTokenMap = new IdentityHashMap();
    private final AtomicLong progressListenerId = new AtomicLong(-1);

    public interface ErrorHandler {
        void onError(SyncSession syncSession, ObjectServerError objectServerError);
    }

    private static native long nativeAddProgressListener(String str, long j, int i, boolean z);

    private static native byte nativeGetState(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean nativeRefreshAccessToken(String str, String str2, String str3);

    private static native void nativeRemoveProgressListener(String str, long j);

    private native boolean nativeWaitForDownloadCompletion(int i, String str);

    private native boolean nativeWaitForUploadCompletion(int i, String str);

    public enum State {
        WAITING_FOR_ACCESS_TOKEN((byte) 0),
        ACTIVE((byte) 1),
        DYING((byte) 2),
        INACTIVE((byte) 3),
        ERROR((byte) 4);

        final byte value;

        State(byte value) {
            this.value = value;
        }

        static State fromByte(byte value) {
            State[] stateCodes = values();
            for (State state : stateCodes) {
                if (state.value == value) {
                    return state;
                }
            }
            throw new IllegalArgumentException("Unknown state code: " + ((int) value));
        }
    }

    SyncSession(SyncConfiguration configuration) {
        this.configuration = configuration;
        this.errorHandler = configuration.getErrorHandler();
    }

    public SyncConfiguration getConfiguration() {
        return this.configuration;
    }

    public SyncUser getUser() {
        return this.configuration.getUser();
    }

    public URI getServerUrl() {
        return this.configuration.getServerUrl();
    }

    void notifySessionError(int errorCode, String errorMessage) {
        if (this.errorHandler == null) {
            return;
        }
        ErrorCode errCode = ErrorCode.fromInt(errorCode);
        if (errCode == ErrorCode.CLIENT_RESET) {
            RealmConfiguration backupRealmConfiguration = SyncConfiguration.forRecovery(errorMessage, this.configuration.getEncryptionKey(), this.configuration.getSchemaMediator());
            this.errorHandler.onError(this, new ClientResetRequiredError(errCode, "A Client Reset is required. Read more here: https://realm.io/docs/realm-object-server/#client-recovery-from-a-backup.", this.configuration, backupRealmConfiguration));
        } else {
            this.errorHandler.onError(this, new ObjectServerError(errCode, errorMessage));
        }
    }

    public State getState() {
        byte state = nativeGetState(this.configuration.getPath());
        if (state == -1) {
            throw new IllegalStateException("Could not find session, Realm was probably closed");
        }
        return State.fromByte(state);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [S, io.realm.Progress] */
    synchronized void notifyProgressListener(long listenerId, long transferredBytes, long transferableBytes) {
        Pair<ProgressListener, Progress> listener = this.listenerIdToProgressListenerMap.get(Long.valueOf(listenerId));
        if (listener != null) {
            ?? progress = new Progress(transferredBytes, transferableBytes);
            if (!progress.equals(listener.second)) {
                listener.second = progress;
                listener.first.onChange(progress);
            }
        } else {
            RealmLog.debug("Trying unknown listener failed: " + listenerId, new Object[0]);
        }
    }

    public synchronized void addDownloadProgressListener(ProgressMode mode, ProgressListener listener) {
        addProgressListener(mode, 1, listener);
    }

    public synchronized void addUploadProgressListener(ProgressMode mode, ProgressListener listener) {
        addProgressListener(mode, 2, listener);
    }

    public synchronized void removeProgressListener(ProgressListener listener) {
        if (listener == null) {
            return;
        }
        Long token = this.progressListenerToOsTokenMap.remove(listener);
        if (token != null) {
            Iterator<Map.Entry<Long, Pair<ProgressListener, Progress>>> it = this.listenerIdToProgressListenerMap.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Long, Pair<ProgressListener, Progress>> entry = it.next();
                if (entry.getValue().first.equals(listener)) {
                    it.remove();
                    break;
                }
            }
            nativeRemoveProgressListener(this.configuration.getPath(), token.longValue());
        }
    }

    private void addProgressListener(ProgressMode mode, int direction, ProgressListener listener) {
        checkProgressListenerArguments(mode, listener);
        boolean isStreaming = mode == ProgressMode.INDEFINITELY;
        long listenerId = this.progressListenerId.incrementAndGet();
        this.listenerIdToProgressListenerMap.put(Long.valueOf(listenerId), new Pair<>(listener, null));
        long listenerToken = nativeAddProgressListener(this.configuration.getPath(), listenerId, direction, isStreaming);
        if (listenerToken == 0) {
            this.listenerIdToProgressListenerMap.remove(Long.valueOf(listenerId));
        } else {
            this.progressListenerToOsTokenMap.put(listener, Long.valueOf(listenerToken));
        }
    }

    private void checkProgressListenerArguments(ProgressMode mode, ProgressListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("Non-null 'listener' required.");
        }
        if (mode == null) {
            throw new IllegalArgumentException("Non-null 'mode' required.");
        }
    }

    void close() {
        this.isClosed = true;
        if (this.networkRequest != null) {
            this.networkRequest.cancel();
        }
        clearScheduledAccessTokenRefresh();
    }

    private void notifyAllChangesSent(int callbackId, Long errorcode, String errorMessage) {
        WaitForSessionWrapper wrapper = this.waitingForServerChanges.get();
        if (wrapper != null && this.waitCounter.get() == callbackId) {
            wrapper.handleResult(errorcode, errorMessage);
        }
    }

    public void downloadAllServerChanges() throws InterruptedException {
        checkIfNotOnMainThread("downloadAllServerChanges() cannot be called from the main thread.");
        synchronized (this.waitForChangesMutex) {
            waitForChanges(1);
        }
    }

    public void uploadAllLocalChanges() throws InterruptedException {
        checkIfNotOnMainThread("uploadAllLocalChanges() cannot be called from the main thread.");
        synchronized (this.waitForChangesMutex) {
            waitForChanges(2);
        }
    }

    void setResolvedRealmURI(URI resolvedRealmURI) {
        this.resolvedRealmURI = resolvedRealmURI;
    }

    private void waitForChanges(int direction) throws InterruptedException {
        boolean listenerRegistered;
        String errorMsg;
        if (direction != 1 && direction != 2) {
            throw new IllegalArgumentException("Unknown direction: " + direction);
        }
        if (!this.isClosed) {
            String realmPath = this.configuration.getPath();
            WaitForSessionWrapper wrapper = new WaitForSessionWrapper();
            this.waitingForServerChanges.set(wrapper);
            int callbackId = this.waitCounter.incrementAndGet();
            if (direction == 1) {
                listenerRegistered = nativeWaitForDownloadCompletion(callbackId, realmPath);
            } else {
                listenerRegistered = nativeWaitForUploadCompletion(callbackId, realmPath);
            }
            if (!listenerRegistered) {
                this.waitingForServerChanges.set(null);
                switch (direction) {
                    case 1:
                        errorMsg = "It was not possible to download all remote changes.";
                        break;
                    case 2:
                        errorMsg = "It was not possible upload all local changes.";
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown direction: " + direction);
                }
                throw new ObjectServerError(ErrorCode.UNKNOWN, errorMsg + " Has the SyncClient been started?");
            }
            try {
                wrapper.waitForServerChanges();
                try {
                    if (!this.isClosed && !wrapper.isSuccess()) {
                        wrapper.throwExceptionIfNeeded();
                    }
                } finally {
                    this.waitingForServerChanges.set(null);
                }
            } catch (InterruptedException e) {
                throw e;
            }
        }
    }

    private void checkIfNotOnMainThread(String errorMessage) {
        if (new AndroidCapabilities().isMainThread()) {
            throw new IllegalStateException(errorMessage);
        }
    }

    String getAccessToken(AuthenticationServer authServer, String refreshToken) {
        if (getUser().isRealmAuthenticated(this.configuration)) {
            Token accessToken = getUser().getAccessToken(this.configuration);
            if (!this.onGoingAccessTokenQuery.getAndSet(true)) {
                scheduleRefreshAccessToken(authServer, accessToken.expiresMs());
            }
            return accessToken.value();
        }
        if (!Util.isEmptyString(refreshToken)) {
            try {
                JSONObject refreshTokenJSON = new JSONObject(refreshToken);
                Token newRefreshToken = Token.from(refreshTokenJSON.getJSONObject("userToken"));
                if (newRefreshToken.hashCode() != getUser().getRefreshToken().hashCode()) {
                    RealmLog.debug("Session[%s]: Access token updated", this.configuration.getPath());
                    getUser().setRefreshToken(newRefreshToken);
                }
            } catch (JSONException e) {
                RealmLog.error(e, "Session[%s]: Can not parse the refresh_token into a valid JSONObject: ", this.configuration.getPath());
            }
        }
        if (!this.onGoingAccessTokenQuery.get() && NetworkStateReceiver.isOnline(SyncObjectServerFacade.getApplicationContext())) {
            authenticateRealm(authServer);
            return null;
        }
        return null;
    }

    private void authenticateRealm(final AuthenticationServer authServer) {
        if (this.networkRequest != null) {
            this.networkRequest.cancel();
        }
        clearScheduledAccessTokenRefresh();
        this.onGoingAccessTokenQuery.set(true);
        Future<?> task = SyncManager.NETWORK_POOL_EXECUTOR.submit(new ExponentialBackoffTask<AuthenticateResponse>() { // from class: io.realm.SyncSession.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.realm.internal.network.ExponentialBackoffTask
            public AuthenticateResponse execute() {
                if (!SyncSession.this.isClosed && !Thread.currentThread().isInterrupted()) {
                    return authServer.loginToRealm(SyncSession.this.getUser().getRefreshToken(), SyncSession.this.resolvedRealmURI, SyncSession.this.getUser().getAuthenticationUrl());
                }
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.realm.internal.network.ExponentialBackoffTask
            public void onSuccess(AuthenticateResponse response) {
                RealmLog.debug("Session[%s]: Access token acquired", SyncSession.this.configuration.getPath());
                if (!SyncSession.this.isClosed && !Thread.currentThread().isInterrupted()) {
                    URI realmUrl = SyncSession.this.configuration.getServerUrl();
                    SyncSession.this.getUser().addRealm(SyncSession.this.configuration, response.getAccessToken());
                    if (SyncSession.nativeRefreshAccessToken(SyncSession.this.configuration.getPath(), response.getAccessToken().value(), realmUrl.toString())) {
                        SyncSession.this.scheduleRefreshAccessToken(authServer, response.getAccessToken().expiresMs());
                    } else {
                        SyncSession.this.onGoingAccessTokenQuery.set(false);
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.realm.internal.network.ExponentialBackoffTask
            public void onError(AuthenticateResponse response) {
                SyncSession.this.onGoingAccessTokenQuery.set(false);
                RealmLog.debug("Session[%s]: Failed to get access token (%s)", SyncSession.this.configuration.getPath(), response.getError().getErrorCode());
                if (!SyncSession.this.isClosed && !Thread.currentThread().isInterrupted() && !(response.getError().getException() instanceof InterruptedIOException)) {
                    SyncSession.this.errorHandler.onError(SyncSession.this, response.getError());
                }
            }
        });
        this.networkRequest = new RealmAsyncTaskImpl(task, SyncManager.NETWORK_POOL_EXECUTOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleRefreshAccessToken(final AuthenticationServer authServer, long expireDateInMs) {
        this.onGoingAccessTokenQuery.set(true);
        long refreshAfter = (expireDateInMs - System.currentTimeMillis()) - REFRESH_MARGIN_DELAY;
        if (refreshAfter < 0) {
            RealmLog.debug("Expires time already reached for the access token, refresh as soon as possible", new Object[0]);
            refreshAfter = REFRESH_MARGIN_DELAY;
        }
        RealmLog.debug("Scheduling an access_token refresh in " + refreshAfter + " milliseconds", new Object[0]);
        if (this.refreshTokenTask != null) {
            this.refreshTokenTask.cancel();
        }
        ScheduledFuture<?> task = REFRESH_TOKENS_EXECUTOR.schedule(new Runnable() { // from class: io.realm.SyncSession.2
            @Override // java.lang.Runnable
            public void run() {
                if (!SyncSession.this.isClosed && !Thread.currentThread().isInterrupted() && !SyncSession.this.refreshTokenTask.isCancelled()) {
                    SyncSession.this.refreshAccessToken(authServer);
                }
            }
        }, refreshAfter, TimeUnit.MILLISECONDS);
        this.refreshTokenTask = new RealmAsyncTaskImpl(task, REFRESH_TOKENS_EXECUTOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAccessToken(final AuthenticationServer authServer) {
        clearScheduledAccessTokenRefresh();
        Future<?> task = SyncManager.NETWORK_POOL_EXECUTOR.submit(new ExponentialBackoffTask<AuthenticateResponse>() { // from class: io.realm.SyncSession.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.realm.internal.network.ExponentialBackoffTask
            public AuthenticateResponse execute() {
                if (!SyncSession.this.isClosed && !Thread.currentThread().isInterrupted()) {
                    return authServer.refreshUser(SyncSession.this.getUser().getRefreshToken(), SyncSession.this.resolvedRealmURI, SyncSession.this.getUser().getAuthenticationUrl());
                }
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.realm.internal.network.ExponentialBackoffTask
            public void onSuccess(AuthenticateResponse response) {
                synchronized (SyncSession.this) {
                    if (!SyncSession.this.isClosed && !Thread.currentThread().isInterrupted() && !SyncSession.this.refreshTokenNetworkRequest.isCancelled()) {
                        RealmLog.debug("Access Token refreshed successfully, Sync URL: " + SyncSession.this.configuration.getServerUrl(), new Object[0]);
                        URI realmUrl = SyncSession.this.configuration.getServerUrl();
                        if (SyncSession.nativeRefreshAccessToken(SyncSession.this.configuration.getPath(), response.getAccessToken().value(), realmUrl.toString())) {
                            SyncSession.this.getUser().addRealm(SyncSession.this.configuration, response.getAccessToken());
                            SyncSession.this.scheduleRefreshAccessToken(authServer, response.getAccessToken().expiresMs());
                        }
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.realm.internal.network.ExponentialBackoffTask
            public void onError(AuthenticateResponse response) {
                if (!SyncSession.this.isClosed && !Thread.currentThread().isInterrupted()) {
                    SyncSession.this.onGoingAccessTokenQuery.set(false);
                    RealmLog.error("Unrecoverable error, while refreshing the access Token (" + response.getError().toString() + ") reschedule will not happen", new Object[0]);
                }
            }
        });
        this.refreshTokenNetworkRequest = new RealmAsyncTaskImpl(task, SyncManager.NETWORK_POOL_EXECUTOR);
    }

    void clearScheduledAccessTokenRefresh() {
        if (this.refreshTokenTask != null) {
            this.refreshTokenTask.cancel();
        }
        if (this.refreshTokenNetworkRequest != null) {
            this.refreshTokenNetworkRequest.cancel();
        }
        this.onGoingAccessTokenQuery.set(false);
    }

    private static class WaitForSessionWrapper {
        private Long errorCode;
        private String errorMessage;
        private volatile boolean resultReceived;
        private final CountDownLatch waiter;

        private WaitForSessionWrapper() {
            this.waiter = new CountDownLatch(1);
            this.resultReceived = false;
            this.errorCode = null;
        }

        public void waitForServerChanges() throws InterruptedException {
            if (!this.resultReceived) {
                this.waiter.await();
            }
        }

        public void handleResult(Long errorCode, String errorMessage) {
            this.errorCode = errorCode;
            this.errorMessage = errorMessage;
            this.resultReceived = true;
            this.waiter.countDown();
        }

        public boolean isSuccess() {
            return this.resultReceived && this.errorCode == null;
        }

        public void throwExceptionIfNeeded() {
            if (this.resultReceived && this.errorCode != null) {
                throw new ObjectServerError(ErrorCode.UNKNOWN, String.format(Locale.US, "Internal error (%d): %s", this.errorCode, this.errorMessage));
            }
        }
    }
}
