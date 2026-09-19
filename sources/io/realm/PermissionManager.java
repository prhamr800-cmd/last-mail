package io.realm;

import android.os.Handler;
import com.huxq17.download.DownloadProvider;
import io.realm.Realm;
import io.realm.SyncConfiguration;
import io.realm.SyncSession;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.Util;
import io.realm.internal.permissions.BasePermissionApi;
import io.realm.internal.permissions.ManagementModule;
import io.realm.internal.permissions.PermissionChange;
import io.realm.internal.permissions.PermissionModule;
import io.realm.internal.permissions.PermissionOfferResponse;
import io.realm.log.RealmLog;
import io.realm.permissions.Permission;
import io.realm.permissions.PermissionOffer;
import io.realm.permissions.PermissionRequest;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionManager implements Closeable {
    private static Map<String, ThreadLocal<Cache>> cache = new HashMap();
    private static final Object cacheLock = new Object();
    private boolean closed;
    private Realm defaultPermissionRealm;
    final SyncConfiguration defaultPermissionRealmConfig;
    private RealmAsyncTask defaultPermissionRealmOpenTask;
    private RealmResults<Permission> defaultPermissions;
    private Realm managementRealm;
    final SyncConfiguration managementRealmConfig;
    private RealmAsyncTask managementRealmOpenTask;
    private RealmResults<PermissionOffer> offers;
    private Realm permissionRealm;
    final SyncConfiguration permissionRealmConfig;
    private RealmAsyncTask permissionRealmOpenTask;
    private final SyncUser user;
    private RealmResults<Permission> userPermissions;
    private boolean openInProgress = false;
    private Handler handler = new Handler();
    private List<PermissionManagerTask> delayedTasks = new ArrayList();
    private List<RealmAsyncTask> activeTasks = new ArrayList();
    private final Object errorLock = new Object();
    private volatile ObjectServerError permissionRealmError = null;
    private volatile ObjectServerError managementRealmError = null;
    private volatile ObjectServerError defaultPermissionRealmError = null;
    private boolean clientReset = false;
    private final long threadId = Thread.currentThread().getId();

    public interface AcceptOfferCallback extends PermissionManagerBaseCallback {
        void onSuccess(String str, Permission permission);
    }

    public interface ApplyPermissionsCallback extends PermissionManagerBaseCallback {
        void onSuccess();
    }

    public interface MakeOfferCallback extends PermissionManagerBaseCallback {
        void onSuccess(String str);
    }

    public interface OffersCallback extends PermissionManagerBaseCallback {
        void onSuccess(RealmResults<PermissionOffer> realmResults);
    }

    private interface PermissionManagerBaseCallback {
        void onError(ObjectServerError objectServerError);
    }

    public interface PermissionsCallback extends PermissionManagerBaseCallback {
        void onSuccess(RealmResults<Permission> realmResults);
    }

    public interface RevokeOfferCallback extends PermissionManagerBaseCallback {
        void onSuccess();
    }

    private static class Cache {
        public Integer instanceCounter;
        public PermissionManager pm;

        private Cache() {
            this.pm = null;
            this.instanceCounter = 0;
        }
    }

    static PermissionManager getInstance(SyncUser syncUser) {
        PermissionManager permissionManager;
        synchronized (cacheLock) {
            String userId = syncUser.getIdentity();
            ThreadLocal<Cache> threadLocalCache = cache.get(userId);
            if (threadLocalCache == null) {
                threadLocalCache = new ThreadLocal<Cache>() { // from class: io.realm.PermissionManager.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.lang.ThreadLocal
                    public Cache initialValue() {
                        return new Cache();
                    }
                };
                cache.put(userId, threadLocalCache);
            }
            Cache c = threadLocalCache.get();
            if (c.instanceCounter.intValue() == 0) {
                c.pm = new PermissionManager(syncUser);
            }
            Integer num = c.instanceCounter;
            c.instanceCounter = Integer.valueOf(c.instanceCounter.intValue() + 1);
            permissionManager = c.pm;
        }
        return permissionManager;
    }

    private enum RealmType {
        DEFAULT_PERMISSION_REALM("__wildcardpermissions", true),
        PERMISSION_REALM("__permission", false),
        MANAGEMENT_REALM("__management", false);

        private final boolean globalRealm;
        private final String name;

        RealmType(String realmName, boolean globalRealm) {
            this.name = realmName;
            this.globalRealm = globalRealm;
        }

        public String getName() {
            return this.name;
        }

        public boolean isGlobalRealm() {
            return this.globalRealm;
        }
    }

    private PermissionManager(SyncUser user) {
        this.user = user;
        this.managementRealmConfig = new SyncConfiguration.Builder(user, getRealmUrl(RealmType.MANAGEMENT_REALM, user.getAuthenticationUrl())).errorHandler(new SyncSession.ErrorHandler() { // from class: io.realm.PermissionManager.2
            @Override // io.realm.SyncSession.ErrorHandler
            public void onError(SyncSession session, ObjectServerError error) {
                synchronized (PermissionManager.this.errorLock) {
                    PermissionManager.this.managementRealmError = error;
                }
            }
        }).modules(new ManagementModule(), new Object[0]).sessionStopPolicy(OsRealmConfig.SyncSessionStopPolicy.IMMEDIATELY).build();
        this.permissionRealmConfig = new SyncConfiguration.Builder(user, getRealmUrl(RealmType.PERMISSION_REALM, user.getAuthenticationUrl())).errorHandler(new SyncSession.ErrorHandler() { // from class: io.realm.PermissionManager.3
            @Override // io.realm.SyncSession.ErrorHandler
            public void onError(SyncSession session, ObjectServerError error) {
                RealmLog.error("Error in __permission:\n" + error.toString(), new Object[0]);
                synchronized (PermissionManager.this.errorLock) {
                    PermissionManager.this.permissionRealmError = error;
                }
            }
        }).modules(new PermissionModule(), new Object[0]).waitForInitialRemoteData().sessionStopPolicy(OsRealmConfig.SyncSessionStopPolicy.IMMEDIATELY).build();
        this.defaultPermissionRealmConfig = new SyncConfiguration.Builder(user, getRealmUrl(RealmType.DEFAULT_PERMISSION_REALM, user.getAuthenticationUrl())).errorHandler(new SyncSession.ErrorHandler() { // from class: io.realm.PermissionManager.4
            @Override // io.realm.SyncSession.ErrorHandler
            public void onError(SyncSession session, ObjectServerError error) {
                RealmLog.error("Error in __wildcardpermissions:\n" + error.toString(), new Object[0]);
                synchronized (PermissionManager.this.errorLock) {
                    PermissionManager.this.defaultPermissionRealmError = error;
                }
            }
        }).modules(new PermissionModule(), new Object[0]).waitForInitialRemoteData().readOnly().sessionStopPolicy(OsRealmConfig.SyncSessionStopPolicy.IMMEDIATELY).build();
    }

    public RealmAsyncTask getPermissions(PermissionsCallback callback) {
        checkIfValid();
        checkCallbackNotNull(callback);
        return addTask(new GetPermissionsAsyncTask(this, callback));
    }

    public RealmAsyncTask getDefaultPermissions(PermissionsCallback callback) {
        checkIfValid();
        checkCallbackNotNull(callback);
        return addTask(new GetDefaultPermissionsAsyncTask(this, callback));
    }

    public RealmAsyncTask applyPermissions(PermissionRequest request, ApplyPermissionsCallback callback) {
        checkIfValid();
        checkCallbackNotNull(callback);
        return addTask(new ApplyPermissionTask(this, request, callback));
    }

    public RealmAsyncTask makeOffer(PermissionOffer offer, MakeOfferCallback callback) {
        checkIfValid();
        checkCallbackNotNull(callback);
        if (offer.isOfferCreated()) {
            throw new IllegalStateException("Offer has already been created: " + offer);
        }
        return addTask(new MakeOfferAsyncTask(this, offer, callback));
    }

    public RealmAsyncTask acceptOffer(String offerToken, AcceptOfferCallback callback) {
        checkIfValid();
        checkCallbackNotNull(callback);
        if (Util.isEmptyString(offerToken)) {
            throw new IllegalArgumentException("Non-empty 'offerToken' required.");
        }
        return addTask(new AcceptOfferAsyncTask(this, offerToken, callback));
    }

    public RealmAsyncTask revokeOffer(String offerToken, RevokeOfferCallback callback) {
        checkIfValid();
        checkCallbackNotNull(callback);
        return addTask(new RevokeOfferAsyncTask(this, offerToken, callback));
    }

    public RealmAsyncTask getCreatedOffers(OffersCallback callback) {
        checkIfValid();
        checkCallbackNotNull(callback);
        return addTask(new GetOffersAsyncTask(this, callback));
    }

    private RealmAsyncTask addTask(PermissionManagerTask task) {
        if (isReady()) {
            activateTask(task);
        } else {
            delayTask(task);
            openRealms();
        }
        return task;
    }

    private void delayTask(PermissionManagerTask task) {
        this.delayedTasks.add(task);
    }

    private void runDelayedTasks() {
        for (PermissionManagerTask delayedTask : this.delayedTasks) {
            activateTask(delayedTask);
        }
        this.delayedTasks.clear();
    }

    private void activateTask(PermissionManagerTask task) {
        this.activeTasks.add(task);
        this.handler.post(task);
    }

    private void openRealms() {
        if (!this.openInProgress) {
            this.openInProgress = true;
            this.managementRealmOpenTask = Realm.getInstanceAsync(this.managementRealmConfig, new Realm.Callback() { // from class: io.realm.PermissionManager.5
                @Override // io.realm.Realm.Callback, io.realm.BaseRealm.InstanceCallback
                public void onSuccess(Realm realm) {
                    PermissionManager.this.managementRealm = realm;
                    PermissionManager.this.managementRealmOpenTask = null;
                    PermissionManager.this.checkIfRealmsAreOpenedAndRunDelayedTasks();
                }

                @Override // io.realm.Realm.Callback, io.realm.BaseRealm.InstanceCallback
                public void onError(Throwable exception) {
                    synchronized (PermissionManager.this.errorLock) {
                        PermissionManager.this.managementRealmError = new ObjectServerError(ErrorCode.UNKNOWN, exception);
                        PermissionManager.this.managementRealmOpenTask = null;
                        PermissionManager.this.checkIfRealmsAreOpenedAndRunDelayedTasks();
                    }
                }
            });
            this.permissionRealmOpenTask = Realm.getInstanceAsync(this.permissionRealmConfig, new Realm.Callback() { // from class: io.realm.PermissionManager.6
                @Override // io.realm.Realm.Callback, io.realm.BaseRealm.InstanceCallback
                public void onSuccess(Realm realm) {
                    PermissionManager.this.permissionRealm = realm;
                    PermissionManager.this.permissionRealmOpenTask = null;
                    PermissionManager.this.checkIfRealmsAreOpenedAndRunDelayedTasks();
                }

                @Override // io.realm.Realm.Callback, io.realm.BaseRealm.InstanceCallback
                public void onError(Throwable exception) {
                    synchronized (PermissionManager.this.errorLock) {
                        PermissionManager.this.permissionRealmError = new ObjectServerError(ErrorCode.UNKNOWN, exception);
                        PermissionManager.this.permissionRealmOpenTask = null;
                        PermissionManager.this.checkIfRealmsAreOpenedAndRunDelayedTasks();
                    }
                }
            });
            this.defaultPermissionRealmOpenTask = Realm.getInstanceAsync(this.defaultPermissionRealmConfig, new Realm.Callback() { // from class: io.realm.PermissionManager.7
                @Override // io.realm.Realm.Callback, io.realm.BaseRealm.InstanceCallback
                public void onSuccess(Realm realm) {
                    PermissionManager.this.defaultPermissionRealm = realm;
                    PermissionManager.this.defaultPermissionRealmOpenTask = null;
                    PermissionManager.this.checkIfRealmsAreOpenedAndRunDelayedTasks();
                }

                @Override // io.realm.Realm.Callback, io.realm.BaseRealm.InstanceCallback
                public void onError(Throwable exception) {
                    synchronized (PermissionManager.this.errorLock) {
                        PermissionManager.this.defaultPermissionRealmError = new ObjectServerError(ErrorCode.UNKNOWN, exception);
                        PermissionManager.this.defaultPermissionRealmOpenTask = null;
                        PermissionManager.this.checkIfRealmsAreOpenedAndRunDelayedTasks();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIfRealmsAreOpenedAndRunDelayedTasks() {
        synchronized (this.errorLock) {
            if ((this.permissionRealm != null || this.permissionRealmError != null) && ((this.defaultPermissionRealm != null || this.defaultPermissionRealmError != null) && (this.managementRealm != null || this.managementRealmError != null))) {
                this.openInProgress = false;
                runDelayedTasks();
            }
        }
    }

    private void checkCallbackNotNull(PermissionManagerBaseCallback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("Non-null 'callback' required.");
        }
    }

    private boolean isReady() {
        return (this.managementRealm == null || this.permissionRealm == null) ? false : true;
    }

    private void checkIfValid() {
        if (this.threadId != Thread.currentThread().getId()) {
            throw new IllegalStateException("PermissionManager was accessed from the wrong thread. It can only be accessed on the thread it was created on.");
        }
        if (this.closed) {
            throw new IllegalStateException("PermissionManager has been closed. No further actions are possible.");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        checkIfValid();
        synchronized (cacheLock) {
            Cache cache2 = cache.get(this.user.getIdentity()).get();
            if (cache2.instanceCounter.intValue() > 1) {
                Integer num = cache2.instanceCounter;
                cache2.instanceCounter = Integer.valueOf(cache2.instanceCounter.intValue() - 1);
                return;
            }
            cache2.instanceCounter = 0;
            cache2.pm = null;
            this.closed = true;
            this.delayedTasks.clear();
            if (this.managementRealmOpenTask != null) {
                this.managementRealmOpenTask.cancel();
                this.managementRealmOpenTask = null;
            }
            if (this.permissionRealmOpenTask != null) {
                this.permissionRealmOpenTask.cancel();
                this.permissionRealmOpenTask = null;
            }
            if (this.defaultPermissionRealmOpenTask != null) {
                this.defaultPermissionRealmOpenTask.cancel();
                this.defaultPermissionRealmOpenTask = null;
            }
            if (this.managementRealm != null) {
                this.managementRealm.close();
            }
            if (this.permissionRealm != null) {
                this.permissionRealm.close();
            }
            if (this.defaultPermissionRealm != null) {
                this.defaultPermissionRealm.close();
            }
        }
    }

    public boolean isClosed() {
        if (this.threadId != Thread.currentThread().getId()) {
            throw new IllegalStateException("PermissionManager was accessed from the wrong thread. It can only be accessed on the thread it was created on.");
        }
        return this.closed;
    }

    protected void finalize() throws Throwable {
        if (!this.closed) {
            RealmLog.warn("PermissionManager was not correctly closed before being finalized.", new Object[0]);
        }
        super.finalize();
    }

    private static String getRealmUrl(RealmType type, URL authUrl) {
        String scheme = "realm";
        if (authUrl.getProtocol().equalsIgnoreCase("https")) {
            scheme = "realms";
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(type.isGlobalRealm() ? "/" : "/~/");
            sb.append(type.getName());
            String path = sb.toString();
            return new URI(scheme, authUrl.getUserInfo(), authUrl.getHost(), authUrl.getPort(), path, null, null).toString();
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Could not create URL to the " + type + " Realm", e);
        }
    }

    private class GetPermissionsAsyncTask extends PermissionManagerTask<RealmResults<Permission>> {
        private final PermissionsCallback callback;
        private RealmResults<Permission> loadingPermissions;

        GetPermissionsAsyncTask(PermissionManager permissionManager, PermissionsCallback callback) {
            super(permissionManager, callback);
            this.callback = callback;
        }

        @Override // io.realm.PermissionManager.PermissionManagerTask, java.lang.Runnable
        public void run() {
            if (checkAndReportInvalidState()) {
                return;
            }
            if (PermissionManager.this.userPermissions != null) {
                notifyCallbackWithSuccess(PermissionManager.this.userPermissions);
            } else {
                this.loadingPermissions = PermissionManager.this.permissionRealm.where(Permission.class).findAllAsync();
                this.loadingPermissions.addChangeListener(new RealmChangeListener<RealmResults<Permission>>() { // from class: io.realm.PermissionManager.GetPermissionsAsyncTask.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(RealmResults<Permission> loadedPermissions) {
                        RealmLog.error(String.format("1stCallback: Size: %s, Permissions: %s", Integer.valueOf(loadedPermissions.size()), Arrays.toString(loadedPermissions.toArray())), new Object[0]);
                        if (loadedPermissions.size() > 1) {
                            GetPermissionsAsyncTask.this.loadingPermissions.removeChangeListener(this);
                            GetPermissionsAsyncTask.this.loadingPermissions = null;
                            if (GetPermissionsAsyncTask.this.checkAndReportInvalidState()) {
                                return;
                            }
                            if (PermissionManager.this.userPermissions == null) {
                                PermissionManager.this.userPermissions = loadedPermissions;
                            }
                            GetPermissionsAsyncTask.this.notifyCallbackWithSuccess(PermissionManager.this.userPermissions);
                        }
                    }
                });
            }
        }

        void notifyCallbackWithSuccess(RealmResults<Permission> permissions) {
            try {
                this.callback.onSuccess(permissions);
            } finally {
                PermissionManager.this.activeTasks.remove(this);
            }
        }
    }

    private class GetDefaultPermissionsAsyncTask extends PermissionManagerTask<RealmResults<Permission>> {
        private final PermissionsCallback callback;
        private RealmResults<Permission> loadingPermissions;

        GetDefaultPermissionsAsyncTask(PermissionManager permissionManager, PermissionsCallback callback) {
            super(permissionManager, callback);
            this.callback = callback;
        }

        @Override // io.realm.PermissionManager.PermissionManagerTask, java.lang.Runnable
        public void run() {
            if (checkAndReportInvalidState()) {
                return;
            }
            if (PermissionManager.this.defaultPermissions != null) {
                notifyCallbackWithSuccess(PermissionManager.this.defaultPermissions);
            } else {
                this.loadingPermissions = PermissionManager.this.defaultPermissionRealm.where(Permission.class).findAllAsync();
                this.loadingPermissions.addChangeListener(new RealmChangeListener<RealmResults<Permission>>() { // from class: io.realm.PermissionManager.GetDefaultPermissionsAsyncTask.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(RealmResults<Permission> loadedPermissions) {
                        if (loadedPermissions.size() > 0) {
                            GetDefaultPermissionsAsyncTask.this.loadingPermissions.removeChangeListener(this);
                            if (GetDefaultPermissionsAsyncTask.this.checkAndReportInvalidState()) {
                                return;
                            }
                            if (PermissionManager.this.defaultPermissions == null) {
                                PermissionManager.this.defaultPermissions = loadedPermissions;
                            }
                            GetDefaultPermissionsAsyncTask.this.notifyCallbackWithSuccess(PermissionManager.this.defaultPermissions);
                        }
                    }
                });
            }
        }

        void notifyCallbackWithSuccess(RealmResults<Permission> permissions) {
            try {
                this.callback.onSuccess(permissions);
            } finally {
                PermissionManager.this.activeTasks.remove(this);
            }
        }
    }

    private class ApplyPermissionTask extends PermissionManagerTask<Void> {
        private final ApplyPermissionsCallback callback;
        private final String changeRequestId;
        private PermissionChange managedChangeRequest;
        private RealmAsyncTask transactionTask;
        private final PermissionChange unmanagedChangeRequest;

        public ApplyPermissionTask(PermissionManager manager, PermissionRequest request, ApplyPermissionsCallback callback) {
            super(manager, callback);
            this.unmanagedChangeRequest = PermissionChange.fromRequest(request);
            this.changeRequestId = this.unmanagedChangeRequest.getId();
            this.callback = callback;
        }

        @Override // io.realm.PermissionManager.PermissionManagerTask, java.lang.Runnable
        public void run() {
            if (checkAndReportInvalidState()) {
                return;
            }
            Realm.Transaction transaction = new Realm.Transaction() { // from class: io.realm.PermissionManager.ApplyPermissionTask.1
                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm) {
                    if (ApplyPermissionTask.this.checkAndReportInvalidState()) {
                        return;
                    }
                    realm.insertOrUpdate(ApplyPermissionTask.this.unmanagedChangeRequest);
                }
            };
            Realm.Transaction.OnSuccess onSuccess = new AnonymousClass2();
            Realm.Transaction.OnError onError = new Realm.Transaction.OnError() { // from class: io.realm.PermissionManager.ApplyPermissionTask.3
                @Override // io.realm.Realm.Transaction.OnError
                public void onError(Throwable error) {
                    if (ApplyPermissionTask.this.checkAndReportInvalidState()) {
                        return;
                    }
                    ApplyPermissionTask.this.notifyCallbackWithError(new ObjectServerError(ErrorCode.UNKNOWN, error));
                }
            };
            this.transactionTask = PermissionManager.this.managementRealm.executeTransactionAsync(transaction, onSuccess, onError);
        }

        /* JADX INFO: renamed from: io.realm.PermissionManager$ApplyPermissionTask$2, reason: invalid class name */
        class AnonymousClass2 implements Realm.Transaction.OnSuccess {
            AnonymousClass2() {
            }

            @Override // io.realm.Realm.Transaction.OnSuccess
            public void onSuccess() {
                if (ApplyPermissionTask.this.checkAndReportInvalidState()) {
                    return;
                }
                ApplyPermissionTask.this.managedChangeRequest = (PermissionChange) PermissionManager.this.managementRealm.where(PermissionChange.class).equalTo("id", ApplyPermissionTask.this.changeRequestId).findFirstAsync();
                RealmObject.addChangeListener(ApplyPermissionTask.this.managedChangeRequest, new RealmChangeListener<PermissionChange>() { // from class: io.realm.PermissionManager.ApplyPermissionTask.2.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(PermissionChange permissionChange) {
                        if (ApplyPermissionTask.this.checkAndReportInvalidState()) {
                            RealmObject.removeChangeListener(ApplyPermissionTask.this.managedChangeRequest, this);
                        } else {
                            ApplyPermissionTask.this.handleServerStatusChanges(permissionChange, new Runnable() { // from class: io.realm.PermissionManager.ApplyPermissionTask.2.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    ApplyPermissionTask.this.notifyCallbackWithSuccess();
                                }
                            });
                        }
                    }
                });
            }
        }

        void notifyCallbackWithSuccess() {
            try {
                this.callback.onSuccess();
            } finally {
                PermissionManager.this.activeTasks.remove(this);
            }
        }

        @Override // io.realm.PermissionManager.PermissionManagerTask, io.realm.RealmAsyncTask
        public void cancel() {
            super.cancel();
            if (this.transactionTask != null) {
                cancel();
            }
        }
    }

    private class MakeOfferAsyncTask extends PermissionManagerTask<String> {
        private final MakeOfferCallback callback;
        private PermissionOffer managedOffer;
        private final String offerId;
        private RealmAsyncTask transactionTask;
        private final PermissionOffer unmanagedOffer;

        public MakeOfferAsyncTask(PermissionManager permissionManager, PermissionOffer offer, MakeOfferCallback callback) {
            super(permissionManager, callback);
            this.unmanagedOffer = offer;
            this.offerId = offer.getId();
            this.callback = callback;
        }

        @Override // io.realm.PermissionManager.PermissionManagerTask, java.lang.Runnable
        public void run() {
            if (checkAndReportInvalidState()) {
                return;
            }
            Realm.Transaction transaction = new Realm.Transaction() { // from class: io.realm.PermissionManager.MakeOfferAsyncTask.1
                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm) {
                    if (MakeOfferAsyncTask.this.checkAndReportInvalidState()) {
                        return;
                    }
                    realm.insertOrUpdate(MakeOfferAsyncTask.this.unmanagedOffer);
                }
            };
            Realm.Transaction.OnSuccess onSuccess = new AnonymousClass2();
            Realm.Transaction.OnError onError = new Realm.Transaction.OnError() { // from class: io.realm.PermissionManager.MakeOfferAsyncTask.3
                @Override // io.realm.Realm.Transaction.OnError
                public void onError(Throwable error) {
                    if (MakeOfferAsyncTask.this.checkAndReportInvalidState()) {
                        return;
                    }
                    MakeOfferAsyncTask.this.notifyCallbackWithError(new ObjectServerError(ErrorCode.UNKNOWN, error));
                }
            };
            this.transactionTask = PermissionManager.this.managementRealm.executeTransactionAsync(transaction, onSuccess, onError);
        }

        /* JADX INFO: renamed from: io.realm.PermissionManager$MakeOfferAsyncTask$2, reason: invalid class name */
        class AnonymousClass2 implements Realm.Transaction.OnSuccess {
            AnonymousClass2() {
            }

            @Override // io.realm.Realm.Transaction.OnSuccess
            public void onSuccess() {
                if (MakeOfferAsyncTask.this.checkAndReportInvalidState()) {
                    return;
                }
                MakeOfferAsyncTask.this.managedOffer = (PermissionOffer) PermissionManager.this.managementRealm.where(PermissionOffer.class).equalTo("id", MakeOfferAsyncTask.this.offerId).findFirstAsync();
                RealmObject.addChangeListener(MakeOfferAsyncTask.this.managedOffer, new RealmChangeListener<PermissionOffer>() { // from class: io.realm.PermissionManager.MakeOfferAsyncTask.2.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(final PermissionOffer permissionOffer) {
                        if (MakeOfferAsyncTask.this.checkAndReportInvalidState()) {
                            RealmObject.removeChangeListener(MakeOfferAsyncTask.this.managedOffer, this);
                        } else {
                            MakeOfferAsyncTask.this.handleServerStatusChanges(permissionOffer, new Runnable() { // from class: io.realm.PermissionManager.MakeOfferAsyncTask.2.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    MakeOfferAsyncTask.this.notifyCallbackWithSuccess(permissionOffer.getToken());
                                }
                            });
                        }
                    }
                });
            }
        }

        void notifyCallbackWithSuccess(String token) {
            try {
                this.callback.onSuccess(token);
            } finally {
                PermissionManager.this.activeTasks.remove(this);
            }
        }

        @Override // io.realm.PermissionManager.PermissionManagerTask, io.realm.RealmAsyncTask
        public void cancel() {
            super.cancel();
            if (this.transactionTask != null) {
                this.transactionTask.cancel();
                this.transactionTask = null;
            }
        }
    }

    private class AcceptOfferAsyncTask extends PermissionManagerTask<Permission> {
        private final AcceptOfferCallback callback;
        public RealmResults<Permission> grantedPermissionResults;
        private PermissionOfferResponse managedResponse;
        private final String responseId;
        private RealmAsyncTask transactionTask;
        private final PermissionOfferResponse unmanagedResponse;

        public AcceptOfferAsyncTask(PermissionManager permissionManager, String offerToken, AcceptOfferCallback callback) {
            super(permissionManager, callback);
            this.unmanagedResponse = new PermissionOfferResponse(offerToken);
            this.responseId = this.unmanagedResponse.getId();
            this.callback = callback;
        }

        @Override // io.realm.PermissionManager.PermissionManagerTask, java.lang.Runnable
        public void run() {
            if (checkAndReportInvalidState()) {
                return;
            }
            Realm.Transaction transaction = new Realm.Transaction() { // from class: io.realm.PermissionManager.AcceptOfferAsyncTask.1
                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm) {
                    if (AcceptOfferAsyncTask.this.checkAndReportInvalidState()) {
                        return;
                    }
                    realm.insertOrUpdate(AcceptOfferAsyncTask.this.unmanagedResponse);
                }
            };
            Realm.Transaction.OnSuccess onSuccess = new AnonymousClass2();
            Realm.Transaction.OnError onError = new Realm.Transaction.OnError() { // from class: io.realm.PermissionManager.AcceptOfferAsyncTask.3
                @Override // io.realm.Realm.Transaction.OnError
                public void onError(Throwable error) {
                    if (AcceptOfferAsyncTask.this.checkAndReportInvalidState()) {
                        return;
                    }
                    AcceptOfferAsyncTask.this.notifyCallbackWithError(new ObjectServerError(ErrorCode.UNKNOWN, error));
                }
            };
            this.transactionTask = PermissionManager.this.managementRealm.executeTransactionAsync(transaction, onSuccess, onError);
        }

        /* JADX INFO: renamed from: io.realm.PermissionManager$AcceptOfferAsyncTask$2, reason: invalid class name */
        class AnonymousClass2 implements Realm.Transaction.OnSuccess {
            AnonymousClass2() {
            }

            @Override // io.realm.Realm.Transaction.OnSuccess
            public void onSuccess() {
                if (AcceptOfferAsyncTask.this.checkAndReportInvalidState()) {
                    return;
                }
                AcceptOfferAsyncTask.this.managedResponse = (PermissionOfferResponse) PermissionManager.this.managementRealm.where(PermissionOfferResponse.class).equalTo("id", AcceptOfferAsyncTask.this.responseId).findFirstAsync();
                RealmObject.addChangeListener(AcceptOfferAsyncTask.this.managedResponse, new AnonymousClass1());
            }

            /* JADX INFO: renamed from: io.realm.PermissionManager$AcceptOfferAsyncTask$2$1, reason: invalid class name */
            class AnonymousClass1 implements RealmChangeListener<PermissionOfferResponse> {
                AnonymousClass1() {
                }

                @Override // io.realm.RealmChangeListener
                public void onChange(final PermissionOfferResponse response) {
                    if (AcceptOfferAsyncTask.this.checkAndReportInvalidState()) {
                        RealmObject.removeChangeListener(AcceptOfferAsyncTask.this.managedResponse, this);
                    } else {
                        AcceptOfferAsyncTask.this.handleServerStatusChanges(response, new Runnable() { // from class: io.realm.PermissionManager.AcceptOfferAsyncTask.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AcceptOfferAsyncTask.this.grantedPermissionResults = PermissionManager.this.permissionRealm.where(Permission.class).equalTo(DownloadProvider.DownloadTable.PATH, response.getPath()).findAllAsync();
                                AcceptOfferAsyncTask.this.grantedPermissionResults.addChangeListener(new RealmChangeListener<RealmResults<Permission>>() { // from class: io.realm.PermissionManager.AcceptOfferAsyncTask.2.1.1.1
                                    @Override // io.realm.RealmChangeListener
                                    public void onChange(RealmResults<Permission> permissions) {
                                        if (!permissions.isEmpty()) {
                                            AcceptOfferAsyncTask.this.grantedPermissionResults.removeChangeListener(this);
                                            AcceptOfferAsyncTask.this.notifyCallbackWithSuccess(AcceptOfferAsyncTask.this.managedResponse.getRealmUrl(), (Permission) permissions.first());
                                        }
                                    }
                                });
                            }
                        });
                    }
                }
            }
        }

        void notifyCallbackWithSuccess(String url, Permission permission) {
            try {
                this.callback.onSuccess(url, permission);
            } finally {
                PermissionManager.this.activeTasks.remove(this);
            }
        }

        @Override // io.realm.PermissionManager.PermissionManagerTask, io.realm.RealmAsyncTask
        public void cancel() {
            super.cancel();
            if (this.transactionTask != null) {
                this.transactionTask.cancel();
                this.transactionTask = null;
            }
        }
    }

    static abstract class PermissionManagerTask<T> implements RealmAsyncTask, Runnable {
        private static final String ERROR_MESSAGE_CLIENT_RESET = "The PermissionManager has been invalidated due to a server conflict. No further tasks can be scheduled. The app needs to be restarted to allow the PermissionManager to work again.";
        private final PermissionManagerBaseCallback callback;
        private volatile boolean canceled = false;
        private final PermissionManager permissionManager;

        public abstract void run();

        public PermissionManagerTask(PermissionManager permissionManager, PermissionManagerBaseCallback callback) {
            this.callback = callback;
            this.permissionManager = permissionManager;
        }

        @Override // io.realm.RealmAsyncTask
        public void cancel() {
            this.canceled = true;
        }

        @Override // io.realm.RealmAsyncTask
        public boolean isCancelled() {
            return this.canceled;
        }

        protected final boolean checkAndReportInvalidState() {
            boolean managementErrorHappened;
            boolean permissionErrorHappened;
            boolean defaultPermissionErrorHappened;
            ObjectServerError managementError;
            ObjectServerError permissionError;
            ObjectServerError defaultPermissionError;
            if (isCancelled()) {
                this.permissionManager.activeTasks.remove(this);
                return true;
            }
            if (!this.permissionManager.closed) {
                if (!this.permissionManager.clientReset) {
                    synchronized (this.permissionManager.errorLock) {
                        managementErrorHappened = this.permissionManager.managementRealmError != null;
                        permissionErrorHappened = this.permissionManager.permissionRealmError != null;
                        defaultPermissionErrorHappened = this.permissionManager.defaultPermissionRealmError != null;
                        managementError = this.permissionManager.managementRealmError;
                        permissionError = this.permissionManager.permissionRealmError;
                        defaultPermissionError = this.permissionManager.defaultPermissionRealmError;
                    }
                    if (!permissionErrorHappened && !managementErrorHappened) {
                        return false;
                    }
                    if (managementErrorHappened && (managementError instanceof ClientResetRequiredError)) {
                        ClientResetRequiredError cr = (ClientResetRequiredError) managementError;
                        this.permissionManager.managementRealm.close();
                        cr.executeClientReset();
                        this.permissionManager.clientReset = true;
                    }
                    if (permissionErrorHappened && (permissionError instanceof ClientResetRequiredError)) {
                        ClientResetRequiredError cr2 = (ClientResetRequiredError) permissionError;
                        this.permissionManager.permissionRealm.close();
                        cr2.executeClientReset();
                        this.permissionManager.clientReset = true;
                    }
                    if (defaultPermissionErrorHappened && (defaultPermissionError instanceof ClientResetRequiredError)) {
                        ClientResetRequiredError cr3 = (ClientResetRequiredError) defaultPermissionError;
                        this.permissionManager.defaultPermissionRealm.close();
                        cr3.executeClientReset();
                        this.permissionManager.clientReset = true;
                    }
                    Map<String, ObjectServerError> errors = new LinkedHashMap<>();
                    if (this.permissionManager.clientReset) {
                        errors.put("ClientReset", new ObjectServerError(ErrorCode.CLIENT_RESET, ERROR_MESSAGE_CLIENT_RESET));
                    } else {
                        if (managementErrorHappened) {
                            errors.put("Management Realm", managementError);
                        }
                        if (permissionErrorHappened) {
                            errors.put("Permission Realm", permissionError);
                        }
                        if (defaultPermissionErrorHappened) {
                            errors.put("Default Permission Realm", defaultPermissionError);
                        }
                    }
                    notifyCallbackWithError(combineRealmErrors(errors));
                    return true;
                }
                ObjectServerError error = new ObjectServerError(ErrorCode.CLIENT_RESET, ERROR_MESSAGE_CLIENT_RESET);
                notifyCallbackWithError(error);
                return true;
            }
            ObjectServerError error2 = new ObjectServerError(ErrorCode.UNKNOWN, new IllegalStateException("PermissionManager has been closed"));
            notifyCallbackWithError(error2);
            return true;
        }

        protected void handleServerStatusChanges(BasePermissionApi obj, Runnable onSuccessDelegate) {
            Integer statusCode = obj.getStatusCode();
            if (statusCode != null) {
                RealmObject.removeAllChangeListeners(obj);
                if (statusCode.intValue() > 0) {
                    ErrorCode errorCode = ErrorCode.fromInt(statusCode.intValue());
                    String errorMsg = obj.getStatusMessage();
                    ObjectServerError error = new ObjectServerError(errorCode, errorMsg);
                    notifyCallbackWithError(error);
                    return;
                }
                if (statusCode.intValue() == 0) {
                    onSuccessDelegate.run();
                    return;
                }
                ErrorCode errorCode2 = ErrorCode.UNKNOWN;
                String errorMsg2 = "Illegal status code: " + statusCode;
                ObjectServerError error2 = new ObjectServerError(errorCode2, errorMsg2);
                notifyCallbackWithError(error2);
            }
        }

        protected final void notifyCallbackWithError(ObjectServerError e) {
            RealmLog.debug("Error happened in PermissionManager for %s: %s", this.permissionManager.user.getIdentity(), e.toString());
            try {
                this.callback.onError(e);
            } finally {
                this.permissionManager.activeTasks.remove(this);
            }
        }

        private ObjectServerError combineRealmErrors(Map<String, ObjectServerError> errors) {
            String errorMsg = combineErrorMessage(errors);
            ErrorCode errorCode = combineErrorCodes(errors);
            return new ObjectServerError(errorCode, errorMsg);
        }

        private String combineErrorMessage(Map<String, ObjectServerError> errors) {
            boolean multipleErrors = errors.size() > 1;
            StringBuilder errorMsg = new StringBuilder(multipleErrors ? "Multiple errors occurred: " : "Error occurred in Realm: ");
            for (Map.Entry<String, ObjectServerError> entry : errors.entrySet()) {
                errorMsg.append('\n');
                errorMsg.append(entry.getKey());
                errorMsg.append('\n');
                errorMsg.append(entry.getValue().toString());
            }
            return errorMsg.toString();
        }

        private ErrorCode combineErrorCodes(Map<String, ObjectServerError> errors) {
            ErrorCode finalErrorCode = null;
            for (ObjectServerError error : errors.values()) {
                ErrorCode errorCode = error.getErrorCode();
                if (finalErrorCode == null) {
                    finalErrorCode = errorCode;
                } else if (errorCode != finalErrorCode) {
                    ErrorCode finalErrorCode2 = ErrorCode.UNKNOWN;
                    return finalErrorCode2;
                }
            }
            return finalErrorCode;
        }
    }

    private class GetOffersAsyncTask extends PermissionManagerTask<RealmResults<Permission>> {
        private final OffersCallback callback;
        private RealmResults<PermissionOffer> loadingOffers;

        GetOffersAsyncTask(PermissionManager permissionManager, OffersCallback callback) {
            super(permissionManager, callback);
            this.callback = callback;
        }

        @Override // io.realm.PermissionManager.PermissionManagerTask, java.lang.Runnable
        public void run() {
            if (checkAndReportInvalidState()) {
                return;
            }
            if (PermissionManager.this.offers != null) {
                notifyCallbackWithSuccess(PermissionManager.this.offers);
            } else {
                this.loadingOffers = PermissionManager.this.managementRealm.where(PermissionOffer.class).equalTo("statusCode", (Integer) 0).findAllAsync();
                this.loadingOffers.addChangeListener(new RealmChangeListener<RealmResults<PermissionOffer>>() { // from class: io.realm.PermissionManager.GetOffersAsyncTask.1
                    @Override // io.realm.RealmChangeListener
                    public void onChange(RealmResults<PermissionOffer> loadedOffers) {
                        loadedOffers.removeChangeListener(this);
                        if (GetOffersAsyncTask.this.checkAndReportInvalidState()) {
                            return;
                        }
                        if (PermissionManager.this.offers == null) {
                            PermissionManager.this.offers = loadedOffers;
                        }
                        GetOffersAsyncTask.this.notifyCallbackWithSuccess(PermissionManager.this.offers);
                    }
                });
            }
        }

        void notifyCallbackWithSuccess(RealmResults<PermissionOffer> permissions) {
            try {
                this.callback.onSuccess(permissions);
            } finally {
                PermissionManager.this.activeTasks.remove(this);
            }
        }
    }

    private class RevokeOfferAsyncTask extends PermissionManagerTask<Permission> {
        private final RevokeOfferCallback callback;
        private RealmResults<PermissionOffer> matchingOffers;
        private final String offerToken;

        public RevokeOfferAsyncTask(PermissionManager permissionManager, String offerToken, RevokeOfferCallback callback) {
            super(permissionManager, callback);
            this.offerToken = offerToken;
            this.callback = callback;
        }

        @Override // io.realm.PermissionManager.PermissionManagerTask, java.lang.Runnable
        public void run() {
            if (checkAndReportInvalidState()) {
                return;
            }
            this.matchingOffers = PermissionManager.this.managementRealm.where(PermissionOffer.class).equalTo("token", this.offerToken).findAllAsync();
            this.matchingOffers.addChangeListener(new AnonymousClass1());
        }

        /* JADX INFO: renamed from: io.realm.PermissionManager$RevokeOfferAsyncTask$1, reason: invalid class name */
        class AnonymousClass1 implements RealmChangeListener<RealmResults<PermissionOffer>> {
            AnonymousClass1() {
            }

            @Override // io.realm.RealmChangeListener
            public void onChange(RealmResults<PermissionOffer> offers) {
                if (!RevokeOfferAsyncTask.this.checkAndReportInvalidState() && !offers.isEmpty()) {
                    PermissionManager.this.managementRealm.executeTransactionAsync(new Realm.Transaction() { // from class: io.realm.PermissionManager.RevokeOfferAsyncTask.1.1
                        @Override // io.realm.Realm.Transaction
                        public void execute(Realm realm) {
                            if (RevokeOfferAsyncTask.this.checkAndReportInvalidState()) {
                                return;
                            }
                            RealmResults<PermissionOffer> offers2 = realm.where(PermissionOffer.class).equalTo("token", RevokeOfferAsyncTask.this.offerToken).findAll();
                            if (!offers2.isEmpty()) {
                                offers2.deleteAllFromRealm();
                            }
                        }
                    }, new AnonymousClass2(), new Realm.Transaction.OnError() { // from class: io.realm.PermissionManager.RevokeOfferAsyncTask.1.3
                        @Override // io.realm.Realm.Transaction.OnError
                        public void onError(Throwable error) {
                            RevokeOfferAsyncTask.this.matchingOffers.removeAllChangeListeners();
                            RevokeOfferAsyncTask.this.notifyCallbackWithError(new ObjectServerError(ErrorCode.UNKNOWN, error));
                        }
                    });
                }
            }

            /* JADX INFO: renamed from: io.realm.PermissionManager$RevokeOfferAsyncTask$1$2, reason: invalid class name */
            class AnonymousClass2 implements Realm.Transaction.OnSuccess {
                AnonymousClass2() {
                }

                @Override // io.realm.Realm.Transaction.OnSuccess
                public void onSuccess() {
                    RevokeOfferAsyncTask.this.matchingOffers.removeAllChangeListeners();
                    if (RevokeOfferAsyncTask.this.checkAndReportInvalidState()) {
                        return;
                    }
                    final SyncSession session = SyncManager.getSession(PermissionManager.this.managementRealmConfig);
                    session.addUploadProgressListener(ProgressMode.CURRENT_CHANGES, new ProgressListener() { // from class: io.realm.PermissionManager.RevokeOfferAsyncTask.1.2.1
                        @Override // io.realm.ProgressListener
                        public void onChange(Progress progress) {
                            if (progress.isTransferComplete()) {
                                session.removeProgressListener(this);
                                PermissionManager.this.handler.post(new Runnable() { // from class: io.realm.PermissionManager.RevokeOfferAsyncTask.1.2.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (RevokeOfferAsyncTask.this.checkAndReportInvalidState()) {
                                            return;
                                        }
                                        RevokeOfferAsyncTask.this.notifyCallbackWithSuccess();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        void notifyCallbackWithSuccess() {
            try {
                this.callback.onSuccess();
            } finally {
                PermissionManager.this.activeTasks.remove(this);
            }
        }
    }
}
