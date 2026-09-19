package io.realm;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.realm.ErrorCode;
import io.realm.SyncSession;
import io.realm.internal.Keep;
import io.realm.internal.Util;
import io.realm.internal.network.AuthenticationServer;
import io.realm.internal.network.NetworkStateReceiver;
import io.realm.internal.network.OkHttpAuthenticationServer;
import io.realm.log.RealmLog;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.internal.tls.OkHostnameVerifier;

/* JADX INFO: loaded from: classes2.dex */
@SuppressFBWarnings({"MS_CANNOT_BE_FINAL"})
@Keep
public class SyncManager {
    private static CertificateFactory CERTIFICATE_FACTORY;
    private static HashMap<String, List<String>> ROS_CERTIFICATES_CHAIN;
    private static X509TrustManager TRUST_MANAGER;
    private static volatile UserStore userStore;
    public static String APP_ID = null;

    @SuppressFBWarnings({"MS_SHOULD_BE_FINAL"})
    public static ThreadPoolExecutor NETWORK_POOL_EXECUTOR = new ThreadPoolExecutor(10, 10, 0, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(100));
    private static final SyncSession.ErrorHandler SESSION_NO_OP_ERROR_HANDLER = new SyncSession.ErrorHandler() { // from class: io.realm.SyncManager.1
        @Override // io.realm.SyncSession.ErrorHandler
        public void onError(SyncSession session, ObjectServerError error) {
            if (error.getErrorCode() == ErrorCode.CLIENT_RESET) {
                RealmLog.error("Client Reset required for: " + session.getConfiguration().getServerUrl(), new Object[0]);
                return;
            }
            String errorMsg = String.format(Locale.US, "Session Error[%s]: %s", session.getConfiguration().getServerUrl(), error.toString());
            switch (AnonymousClass3.$SwitchMap$io$realm$ErrorCode$Category[error.getErrorCode().getCategory().ordinal()]) {
                case 1:
                    RealmLog.error(errorMsg, new Object[0]);
                    return;
                case 2:
                    RealmLog.info(errorMsg, new Object[0]);
                    return;
                default:
                    throw new IllegalArgumentException("Unsupported error category: " + error.getErrorCode().getCategory());
            }
        }
    };
    private static Map<String, SyncSession> sessions = new ConcurrentHashMap();
    private static CopyOnWriteArrayList<AuthenticationListener> authListeners = new CopyOnWriteArrayList<>();
    private static volatile AuthenticationServer authServer = new OkHttpAuthenticationServer();
    private static NetworkStateReceiver.ConnectionListener networkListener = new NetworkStateReceiver.ConnectionListener() { // from class: io.realm.SyncManager.2
        @Override // io.realm.internal.network.NetworkStateReceiver.ConnectionListener
        public void onChange(boolean connectionAvailable) {
            if (connectionAvailable) {
                RealmLog.debug("NetworkListener: Connection available", new Object[0]);
                SyncManager.notifyNetworkIsBack();
            } else {
                RealmLog.debug("NetworkListener: Connection lost", new Object[0]);
            }
        }
    };
    static volatile SyncSession.ErrorHandler defaultSessionErrorHandler = SESSION_NO_OP_ERROR_HANDLER;

    @SuppressFBWarnings({"MS_SHOULD_BE_FINAL"})
    public static class Debug {
        public static boolean skipOnlineChecking = false;
        public static boolean separatedDirForSyncManager = false;
    }

    protected static native void nativeInitializeSyncManager(String str);

    private static native void nativeReconnect();

    private static native void nativeReset();

    private static native void nativeSimulateSyncError(String str, int i, String str2, boolean z);

    /* JADX INFO: renamed from: io.realm.SyncManager$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$io$realm$ErrorCode$Category = new int[ErrorCode.Category.values().length];

        static {
            try {
                $SwitchMap$io$realm$ErrorCode$Category[ErrorCode.Category.FATAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$io$realm$ErrorCode$Category[ErrorCode.Category.RECOVERABLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    static void init(String appId, UserStore userStore2) {
        APP_ID = appId;
        userStore = userStore2;
    }

    public static void setUserStore(UserStore userStore2) {
        if (userStore2 == null) {
            throw new IllegalArgumentException("Non-null 'userStore' required.");
        }
        userStore = userStore2;
    }

    public static void addAuthenticationListener(AuthenticationListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("Non-null 'listener' required.");
        }
        authListeners.add(listener);
    }

    public static void removeAuthenticationListener(AuthenticationListener listener) {
        if (listener == null) {
            return;
        }
        authListeners.remove(listener);
    }

    public static void setDefaultSessionErrorHandler(@Nullable SyncSession.ErrorHandler errorHandler) {
        if (errorHandler == null) {
            defaultSessionErrorHandler = SESSION_NO_OP_ERROR_HANDLER;
        } else {
            defaultSessionErrorHandler = errorHandler;
        }
    }

    public static synchronized SyncSession getSession(SyncConfiguration syncConfiguration) throws IllegalStateException {
        SyncSession session;
        if (syncConfiguration == null) {
            throw new IllegalArgumentException("A non-empty 'syncConfiguration' is required.");
        }
        session = sessions.get(syncConfiguration.getPath());
        if (session == null) {
            throw new IllegalStateException("No SyncSession found using the path : " + syncConfiguration.getPath() + "\nplease ensure to call this method after you've open the Realm");
        }
        return session;
    }

    public static synchronized SyncSession getOrCreateSession(SyncConfiguration syncConfiguration, @Nullable URI resolvedRealmURL) {
        SyncSession session;
        if (syncConfiguration == null) {
            throw new IllegalArgumentException("A non-empty 'syncConfiguration' is required.");
        }
        session = sessions.get(syncConfiguration.getPath());
        if (session == null) {
            session = new SyncSession(syncConfiguration);
            sessions.put(syncConfiguration.getPath(), session);
            if (sessions.size() == 1) {
                RealmLog.debug("first session created add network listener", new Object[0]);
                NetworkStateReceiver.addListener(networkListener);
            }
            if (resolvedRealmURL != null) {
                session.setResolvedRealmURI(resolvedRealmURL);
                session.getAccessToken(authServer, "");
            }
        }
        return session;
    }

    private static synchronized void removeSession(SyncConfiguration syncConfiguration) {
        if (syncConfiguration == null) {
            throw new IllegalArgumentException("A non-empty 'syncConfiguration' is required.");
        }
        SyncSession syncSession = sessions.remove(syncConfiguration.getPath());
        if (syncSession != null) {
            syncSession.close();
        }
        if (sessions.isEmpty()) {
            RealmLog.debug("last session dropped, remove network listener", new Object[0]);
            NetworkStateReceiver.removeListener(networkListener);
        }
    }

    static List<SyncSession> getAllSessions(SyncUser syncUser) {
        if (syncUser == null) {
            throw new IllegalArgumentException("A non-empty 'syncUser' is required.");
        }
        ArrayList<SyncSession> allSessions = new ArrayList<>();
        for (SyncSession syncSession : sessions.values()) {
            if (syncSession.getState() != SyncSession.State.ERROR && syncSession.getUser().equals(syncUser)) {
                allSessions.add(syncSession);
            }
        }
        return allSessions;
    }

    static AuthenticationServer getAuthServer() {
        return authServer;
    }

    static void setAuthServerImpl(AuthenticationServer authServerImpl) {
        authServer = authServerImpl;
    }

    public static UserStore getUserStore() {
        return userStore;
    }

    static void notifyUserLoggedIn(SyncUser user) {
        for (AuthenticationListener authListener : authListeners) {
            authListener.loggedIn(user);
        }
    }

    static void notifyUserLoggedOut(SyncUser user) {
        for (AuthenticationListener authListener : authListeners) {
            authListener.loggedOut(user);
        }
    }

    private static synchronized void notifyErrorHandler(int errorCode, String errorMessage, @Nullable String path) {
        if (Util.isEmptyString(path)) {
            Iterator<SyncSession> it = sessions.values().iterator();
            while (it.hasNext()) {
                try {
                    it.next().notifySessionError(errorCode, errorMessage);
                } catch (Exception exception) {
                    RealmLog.error(exception);
                }
            }
        } else {
            SyncSession syncSession = sessions.get(path);
            if (syncSession != null) {
                try {
                    syncSession.notifySessionError(errorCode, errorMessage);
                } catch (Exception exception2) {
                    RealmLog.error(exception2);
                }
            } else {
                RealmLog.warn("Cannot find the SyncSession corresponding to the path: " + path, new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void notifyNetworkIsBack() {
        try {
            nativeReconnect();
        } catch (Exception exception) {
            RealmLog.error(exception);
        }
    }

    private static synchronized void notifyProgressListener(String localRealmPath, long listenerId, long transferedBytes, long transferableBytes) {
        SyncSession session = sessions.get(localRealmPath);
        if (session != null) {
            try {
                session.notifyProgressListener(listenerId, transferedBytes, transferableBytes);
            } catch (Exception exception) {
                RealmLog.error(exception);
            }
        }
    }

    private static synchronized String bindSessionWithConfig(String sessionPath, String refreshToken) {
        SyncSession syncSession = sessions.get(sessionPath);
        if (syncSession == null) {
            RealmLog.error("Matching Java SyncSession could not be found for: " + sessionPath, new Object[0]);
        } else {
            try {
                return syncSession.getAccessToken(authServer, refreshToken);
            } catch (Exception exception) {
                RealmLog.error(exception);
            }
        }
        return null;
    }

    static synchronized boolean sslVerifyCallback(String serverAddress, String pemData, int depth) {
        try {
            if (ROS_CERTIFICATES_CHAIN == null) {
                ROS_CERTIFICATES_CHAIN = new HashMap<>();
                TRUST_MANAGER = systemDefaultTrustManager();
                CERTIFICATE_FACTORY = CertificateFactory.getInstance("X.509");
            }
            if (!ROS_CERTIFICATES_CHAIN.containsKey(serverAddress)) {
                ROS_CERTIFICATES_CHAIN.put(serverAddress, new ArrayList());
            }
            ROS_CERTIFICATES_CHAIN.get(serverAddress).add(pemData);
            if (depth != 0) {
                return true;
            }
            List<String> pemChain = ROS_CERTIFICATES_CHAIN.get(serverAddress);
            int n = pemChain.size();
            X509Certificate[] chain = new X509Certificate[n];
            for (String pem : pemChain) {
                n--;
                chain[n] = buildCertificateFromPEM(pem);
            }
            try {
                TRUST_MANAGER.checkServerTrusted(chain, "RSA");
                boolean isValid = OkHostnameVerifier.INSTANCE.verify(serverAddress, chain[0]);
                if (isValid) {
                    return true;
                }
                RealmLog.error("Can not verify the hostname for the host: " + serverAddress, new Object[0]);
                return false;
            } catch (CertificateException e) {
                RealmLog.error(e, "Can not validate SSL chain certificate for the host: " + serverAddress, new Object[0]);
                return false;
            } finally {
                ROS_CERTIFICATES_CHAIN.remove(serverAddress);
            }
            ROS_CERTIFICATES_CHAIN.remove(serverAddress);
        } catch (Exception e2) {
            RealmLog.error(e2, "Error during certificate validation for host: " + serverAddress, new Object[0]);
            return false;
        }
    }

    private static X509TrustManager systemDefaultTrustManager() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length != 1 || !(trustManagers[0] instanceof X509TrustManager)) {
                throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
            }
            return (X509TrustManager) trustManagers[0];
        } catch (GeneralSecurityException e) {
            throw new AssertionError();
        }
    }

    private static X509Certificate buildCertificateFromPEM(String pem) throws IOException, CertificateException {
        InputStream stream = null;
        try {
            stream = new ByteArrayInputStream(pem.getBytes(HttpRequest.CHARSET_UTF8));
            X509Certificate x509Certificate = (X509Certificate) CERTIFICATE_FACTORY.generateCertificate(stream);
            stream.close();
            return x509Certificate;
        } catch (Throwable th) {
            if (stream != null) {
                stream.close();
            }
            throw th;
        }
    }

    static synchronized void reset() {
        nativeReset();
        sessions.clear();
    }

    static void simulateClientReset(SyncSession session) {
        nativeSimulateSyncError(session.getConfiguration().getPath(), ErrorCode.DIVERGING_HISTORIES.intValue(), "Simulate Client Reset", true);
    }
}
