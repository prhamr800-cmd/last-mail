package io.realm;

import io.realm.BaseRealm;
import io.realm.exceptions.RealmFileException;
import io.realm.internal.Capabilities;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmNotifier;
import io.realm.internal.Table;
import io.realm.internal.Util;
import io.realm.internal.android.AndroidCapabilities;
import io.realm.internal.android.AndroidRealmNotifier;
import io.realm.internal.async.RealmAsyncTaskImpl;
import io.realm.log.RealmLog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
final class RealmCache {
    private static final String ASYNC_CALLBACK_NULL_MSG = "The callback cannot be null.";
    private static final String ASYNC_NOT_ALLOWED_MSG = "Realm instances cannot be loaded asynchronously on a non-looper thread.";
    private static final String DIFFERENT_KEY_MESSAGE = "Wrong key used to decrypt Realm.";
    private static final String WRONG_REALM_CLASS_MESSAGE = "The type of Realm class must be Realm or DynamicRealm.";
    private static final List<WeakReference<RealmCache>> cachesList = new ArrayList();
    private static final Collection<RealmCache> leakedCaches = new ConcurrentLinkedQueue();
    private RealmConfiguration configuration;
    private final String realmPath;
    private final AtomicBoolean isLeaked = new AtomicBoolean(false);
    private final EnumMap<RealmCacheType, RefAndCount> refAndCountMap = new EnumMap<>(RealmCacheType.class);

    interface Callback {
        void onResult(int i);
    }

    interface Callback0 {
        void onCall();
    }

    private static class RefAndCount {
        private int globalCount;
        private final ThreadLocal<Integer> localCount;
        private final ThreadLocal<BaseRealm> localRealm;

        private RefAndCount() {
            this.localRealm = new ThreadLocal<>();
            this.localCount = new ThreadLocal<>();
            this.globalCount = 0;
        }

        static /* synthetic */ int access$808(RefAndCount x0) {
            int i = x0.globalCount;
            x0.globalCount = i + 1;
            return i;
        }

        static /* synthetic */ int access$810(RefAndCount x0) {
            int i = x0.globalCount;
            x0.globalCount = i - 1;
            return i;
        }
    }

    private enum RealmCacheType {
        TYPED_REALM,
        DYNAMIC_REALM;

        static RealmCacheType valueOf(Class<? extends BaseRealm> clazz) {
            if (clazz == Realm.class) {
                return TYPED_REALM;
            }
            if (clazz == DynamicRealm.class) {
                return DYNAMIC_REALM;
            }
            throw new IllegalArgumentException(RealmCache.WRONG_REALM_CLASS_MESSAGE);
        }
    }

    private static class CreateRealmRunnable<T extends BaseRealm> implements Runnable {
        private final BaseRealm.InstanceCallback<T> callback;
        private final CountDownLatch canReleaseBackgroundInstanceLatch = new CountDownLatch(1);
        private final RealmConfiguration configuration;
        private Future future;
        private final RealmNotifier notifier;
        private final Class<T> realmClass;

        CreateRealmRunnable(RealmNotifier notifier, RealmConfiguration configuration, BaseRealm.InstanceCallback<T> callback, Class<T> realmClass) {
            this.configuration = configuration;
            this.realmClass = realmClass;
            this.callback = callback;
            this.notifier = notifier;
        }

        public void setFuture(Future future) {
            this.future = future;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseRealm baseRealmCreateRealmOrGetFromCache = null;
            try {
                try {
                    try {
                        baseRealmCreateRealmOrGetFromCache = RealmCache.createRealmOrGetFromCache(this.configuration, this.realmClass);
                        boolean results = this.notifier.post(new Runnable() { // from class: io.realm.RealmCache.CreateRealmRunnable.1
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // java.lang.Runnable
                            public void run() {
                                if (CreateRealmRunnable.this.future == null || CreateRealmRunnable.this.future.isCancelled()) {
                                    CreateRealmRunnable.this.canReleaseBackgroundInstanceLatch.countDown();
                                    return;
                                }
                                BaseRealm baseRealmCreateRealmOrGetFromCache2 = null;
                                Throwable throwable = null;
                                try {
                                    baseRealmCreateRealmOrGetFromCache2 = RealmCache.createRealmOrGetFromCache(CreateRealmRunnable.this.configuration, CreateRealmRunnable.this.realmClass);
                                } catch (Throwable e) {
                                    throwable = e;
                                }
                                CreateRealmRunnable.this.canReleaseBackgroundInstanceLatch.countDown();
                                if (baseRealmCreateRealmOrGetFromCache2 != null) {
                                    CreateRealmRunnable.this.callback.onSuccess(baseRealmCreateRealmOrGetFromCache2);
                                } else {
                                    CreateRealmRunnable.this.callback.onError(throwable);
                                }
                            }
                        });
                        if (!results) {
                            this.canReleaseBackgroundInstanceLatch.countDown();
                        }
                        if (!this.canReleaseBackgroundInstanceLatch.await(2L, TimeUnit.SECONDS)) {
                            RealmLog.warn("Timeout for creating Realm instance in foreground thread in `CreateRealmRunnable` ", new Object[0]);
                        }
                        if (baseRealmCreateRealmOrGetFromCache == null) {
                            return;
                        }
                    } catch (InterruptedException e) {
                        RealmLog.warn(e, "`CreateRealmRunnable` has been interrupted.", new Object[0]);
                        if (baseRealmCreateRealmOrGetFromCache == null) {
                            return;
                        }
                    }
                } catch (Throwable e2) {
                    if (!ObjectServerFacade.getSyncFacadeIfPossible().wasDownloadInterrupted(e2)) {
                        RealmLog.error(e2, "`CreateRealmRunnable` failed.", new Object[0]);
                        this.notifier.post(new Runnable() { // from class: io.realm.RealmCache.CreateRealmRunnable.2
                            @Override // java.lang.Runnable
                            public void run() {
                                CreateRealmRunnable.this.callback.onError(e2);
                            }
                        });
                    }
                    if (baseRealmCreateRealmOrGetFromCache == null) {
                        return;
                    }
                }
                baseRealmCreateRealmOrGetFromCache.close();
            } catch (Throwable th) {
                if (baseRealmCreateRealmOrGetFromCache != null) {
                    baseRealmCreateRealmOrGetFromCache.close();
                }
                throw th;
            }
        }
    }

    private RealmCache(String path) {
        this.realmPath = path;
        for (RealmCacheType type : RealmCacheType.values()) {
            this.refAndCountMap.put(type, new RefAndCount());
        }
    }

    private static RealmCache getCache(String realmPath, boolean createIfNotExist) {
        RealmCache cacheToReturn = null;
        synchronized (cachesList) {
            Iterator<WeakReference<RealmCache>> it = cachesList.iterator();
            while (it.hasNext()) {
                RealmCache cache = it.next().get();
                if (cache == null) {
                    it.remove();
                } else if (cache.realmPath.equals(realmPath)) {
                    cacheToReturn = cache;
                }
            }
            if (cacheToReturn == null && createIfNotExist) {
                cacheToReturn = new RealmCache(realmPath);
                cachesList.add(new WeakReference<>(cacheToReturn));
            }
        }
        return cacheToReturn;
    }

    static <T extends BaseRealm> RealmAsyncTask createRealmOrGetFromCacheAsync(RealmConfiguration configuration, BaseRealm.InstanceCallback<T> callback, Class<T> realmClass) {
        RealmCache cache = getCache(configuration.getPath(), true);
        return cache.doCreateRealmOrGetFromCacheAsync(configuration, callback, realmClass);
    }

    private synchronized <T extends BaseRealm> RealmAsyncTask doCreateRealmOrGetFromCacheAsync(RealmConfiguration configuration, BaseRealm.InstanceCallback<T> callback, Class<T> realmClass) {
        Future<?> future;
        Capabilities capabilities = new AndroidCapabilities();
        capabilities.checkCanDeliverNotification(ASYNC_NOT_ALLOWED_MSG);
        if (callback == null) {
            throw new IllegalArgumentException(ASYNC_CALLBACK_NULL_MSG);
        }
        CreateRealmRunnable<T> createRealmRunnable = new CreateRealmRunnable<>(new AndroidRealmNotifier(null, capabilities), configuration, callback, realmClass);
        future = BaseRealm.asyncTaskExecutor.submitTransaction(createRealmRunnable);
        createRealmRunnable.setFuture(future);
        return new RealmAsyncTaskImpl(future, BaseRealm.asyncTaskExecutor);
    }

    static <E extends BaseRealm> E createRealmOrGetFromCache(RealmConfiguration realmConfiguration, Class<E> cls) {
        return (E) getCache(realmConfiguration.getPath(), true).doCreateRealmOrGetFromCache(realmConfiguration, cls);
    }

    private synchronized <E extends BaseRealm> E doCreateRealmOrGetFromCache(RealmConfiguration configuration, Class<E> realmClass) {
        RefAndCount refAndCount;
        BaseRealm realm;
        refAndCount = this.refAndCountMap.get(RealmCacheType.valueOf((Class<? extends BaseRealm>) realmClass));
        if (getTotalGlobalRefCount() == 0) {
            copyAssetFileIfNeeded(configuration);
            boolean fileExists = configuration.realmExists();
            OsSharedRealm sharedRealm = null;
            try {
                if (configuration.isSyncConfiguration()) {
                    if (!fileExists) {
                        sharedRealm = OsSharedRealm.getInstance(configuration);
                        try {
                            ObjectServerFacade.getSyncFacadeIfPossible().downloadRemoteChanges(configuration);
                        } catch (Throwable t) {
                            sharedRealm.close();
                            BaseRealm.deleteRealm(configuration);
                            throw t;
                        }
                    }
                } else if (fileExists) {
                    sharedRealm = OsSharedRealm.getInstance(configuration);
                    Table.migratePrimaryKeyTableIfNeeded(sharedRealm);
                }
                this.configuration = configuration;
            } finally {
                if (sharedRealm != null) {
                    sharedRealm.close();
                }
            }
        } else {
            validateConfiguration(configuration);
        }
        if (refAndCount.localRealm.get() == null) {
            if (realmClass == Realm.class) {
                realm = Realm.createInstance(this);
            } else if (realmClass == DynamicRealm.class) {
                realm = DynamicRealm.createInstance(this);
            } else {
                throw new IllegalArgumentException(WRONG_REALM_CLASS_MESSAGE);
            }
            refAndCount.localRealm.set(realm);
            refAndCount.localCount.set(0);
            RefAndCount.access$808(refAndCount);
        }
        Integer refCount = (Integer) refAndCount.localCount.get();
        refAndCount.localCount.set(Integer.valueOf(refCount.intValue() + 1));
        return (E) refAndCount.localRealm.get();
    }

    synchronized void release(BaseRealm realm) {
        String canonicalPath = realm.getPath();
        RefAndCount refAndCount = this.refAndCountMap.get(RealmCacheType.valueOf((Class<? extends BaseRealm>) realm.getClass()));
        Integer refCount = (Integer) refAndCount.localCount.get();
        if (refCount == null) {
            refCount = 0;
        }
        if (refCount.intValue() <= 0) {
            RealmLog.warn("%s has been closed already. refCount is %s", canonicalPath, refCount);
            return;
        }
        Integer refCount2 = Integer.valueOf(refCount.intValue() - 1);
        if (refCount2.intValue() == 0) {
            refAndCount.localCount.set(null);
            refAndCount.localRealm.set(null);
            RefAndCount.access$810(refAndCount);
            if (refAndCount.globalCount < 0) {
                throw new IllegalStateException("Global reference counter of Realm" + canonicalPath + " got corrupted.");
            }
            realm.doClose();
            if (getTotalGlobalRefCount() == 0) {
                this.configuration = null;
                ObjectServerFacade.getFacade(realm.getConfiguration().isSyncConfiguration()).realmClosed(realm.getConfiguration());
            }
        } else {
            refAndCount.localCount.set(refCount2);
        }
    }

    private void validateConfiguration(RealmConfiguration newConfiguration) {
        if (this.configuration.equals(newConfiguration)) {
            return;
        }
        if (!Arrays.equals(this.configuration.getEncryptionKey(), newConfiguration.getEncryptionKey())) {
            throw new IllegalArgumentException(DIFFERENT_KEY_MESSAGE);
        }
        RealmMigration newMigration = newConfiguration.getMigration();
        RealmMigration oldMigration = this.configuration.getMigration();
        if (oldMigration != null && newMigration != null && oldMigration.getClass().equals(newMigration.getClass()) && !newMigration.equals(oldMigration)) {
            throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: " + newConfiguration.getMigration().getClass().getCanonicalName());
        }
        throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. \nCached configuration: \n" + this.configuration + "\n\nNew configuration: \n" + newConfiguration);
    }

    static void invokeWithGlobalRefCount(RealmConfiguration configuration, Callback callback) {
        synchronized (cachesList) {
            RealmCache cache = getCache(configuration.getPath(), false);
            if (cache == null) {
                callback.onResult(0);
            } else {
                cache.doInvokeWithGlobalRefCount(callback);
            }
        }
    }

    private synchronized void doInvokeWithGlobalRefCount(Callback callback) {
        callback.onResult(getTotalGlobalRefCount());
    }

    synchronized void invokeWithLock(Callback0 callback) {
        callback.onCall();
    }

    private static void copyAssetFileIfNeeded(final RealmConfiguration configuration) {
        final File realmFileFromAsset;
        if (configuration.hasAssetFile()) {
            realmFileFromAsset = new File(configuration.getRealmDirectory(), configuration.getRealmFileName());
        } else {
            realmFileFromAsset = null;
        }
        final String syncServerCertificateAssetName = ObjectServerFacade.getFacade(configuration.isSyncConfiguration()).getSyncServerCertificateAssetName(configuration);
        final boolean certFileExists = !Util.isEmptyString(syncServerCertificateAssetName);
        if (realmFileFromAsset != null || certFileExists) {
            OsObjectStore.callWithLock(configuration, new Runnable() { // from class: io.realm.RealmCache.1
                @Override // java.lang.Runnable
                public void run() {
                    if (realmFileFromAsset != null) {
                        RealmCache.copyFileIfNeeded(configuration.getAssetFilePath(), realmFileFromAsset);
                    }
                    if (certFileExists) {
                        String syncServerCertificateFilePath = ObjectServerFacade.getFacade(configuration.isSyncConfiguration()).getSyncServerCertificateFilePath(configuration);
                        File certificateFile = new File(syncServerCertificateFilePath);
                        RealmCache.copyFileIfNeeded(syncServerCertificateAssetName, certificateFile);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void copyFileIfNeeded(String assetFileName, File file) {
        if (file.exists()) {
            return;
        }
        IOException exceptionWhenClose = null;
        try {
            try {
                InputStream inputStream = BaseRealm.applicationContext.getAssets().open(assetFileName);
                if (inputStream == null) {
                    throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, "Invalid input stream to the asset file: " + assetFileName);
                }
                FileOutputStream outputStream = new FileOutputStream(file);
                byte[] buf = new byte[4096];
                while (true) {
                    int bytesRead = inputStream.read(buf);
                    if (bytesRead <= -1) {
                        break;
                    } else {
                        outputStream.write(buf, 0, bytesRead);
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        exceptionWhenClose = e;
                    }
                }
                try {
                    outputStream.close();
                } catch (IOException e2) {
                    if (exceptionWhenClose == null) {
                        exceptionWhenClose = e2;
                    }
                }
                if (exceptionWhenClose != null) {
                    throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, exceptionWhenClose);
                }
            } finally {
            }
        } catch (IOException e3) {
            throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, "Could not resolve the path to the asset file: " + assetFileName, e3);
        }
    }

    static int getLocalThreadCount(RealmConfiguration configuration) {
        RealmCache cache = getCache(configuration.getPath(), false);
        if (cache == null) {
            return 0;
        }
        int totalRefCount = 0;
        for (RefAndCount refAndCount : cache.refAndCountMap.values()) {
            Integer localCount = (Integer) refAndCount.localCount.get();
            totalRefCount += localCount != null ? localCount.intValue() : 0;
        }
        return totalRefCount;
    }

    public RealmConfiguration getConfiguration() {
        return this.configuration;
    }

    private int getTotalGlobalRefCount() {
        int totalRefCount = 0;
        for (RefAndCount refAndCount : this.refAndCountMap.values()) {
            totalRefCount += refAndCount.globalCount;
        }
        return totalRefCount;
    }

    void leak() {
        if (!this.isLeaked.getAndSet(true)) {
            leakedCaches.add(this);
        }
    }
}
