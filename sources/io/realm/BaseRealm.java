package io.realm;

import android.content.Context;
import android.os.Looper;
import io.reactivex.Flowable;
import io.realm.Realm;
import io.realm.RealmCache;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.CheckedRow;
import io.realm.internal.ColumnInfo;
import io.realm.internal.InvalidRow;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.Util;
import io.realm.internal.async.RealmThreadPoolExecutor;
import io.realm.log.RealmLog;
import io.realm.sync.permissions.ObjectPrivileges;
import io.realm.sync.permissions.RealmPrivileges;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseRealm implements Closeable {
    static final String CLOSED_REALM_MESSAGE = "This Realm instance has already been closed, making it unusable.";
    static final String DELETE_NOT_SUPPORTED_UNDER_PARTIAL_SYNC = "This API is not supported by partially synchronized Realms. Either unsubscribe using 'Realm.unsubscribeAsync()' or delete the objects using a query and 'RealmResults.deleteAllFromRealm()'";
    private static final String INCORRECT_THREAD_CLOSE_MESSAGE = "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created.";
    static final String INCORRECT_THREAD_MESSAGE = "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.";
    static final String LISTENER_NOT_ALLOWED_MESSAGE = "Listeners cannot be used on current thread.";
    private static final String NOT_IN_TRANSACTION_MESSAGE = "Changing Realm data can only be done from inside a transaction.";
    static volatile Context applicationContext;
    static final RealmThreadPoolExecutor asyncTaskExecutor = RealmThreadPoolExecutor.newDefaultExecutor();
    public static final ThreadLocalRealmObjectContext objectContext = new ThreadLocalRealmObjectContext();
    protected final RealmConfiguration configuration;
    private RealmCache realmCache;
    private OsSharedRealm.SchemaChangedCallback schemaChangedCallback;
    public OsSharedRealm sharedRealm;
    private boolean shouldCloseSharedRealm;
    final long threadId;

    public abstract Flowable asFlowable();

    public abstract RealmSchema getSchema();

    BaseRealm(RealmCache cache, @Nullable OsSchemaInfo schemaInfo) {
        this(cache.getConfiguration(), schemaInfo);
        this.realmCache = cache;
    }

    BaseRealm(RealmConfiguration configuration, @Nullable OsSchemaInfo schemaInfo) {
        this.schemaChangedCallback = new OsSharedRealm.SchemaChangedCallback() { // from class: io.realm.BaseRealm.1
            @Override // io.realm.internal.OsSharedRealm.SchemaChangedCallback
            public void onSchemaChanged() {
                RealmSchema schema = BaseRealm.this.getSchema();
                if (schema != null) {
                    schema.refresh();
                }
            }
        };
        this.threadId = Thread.currentThread().getId();
        this.configuration = configuration;
        this.realmCache = null;
        OsSharedRealm.MigrationCallback migrationCallback = null;
        if (schemaInfo != null && configuration.getMigration() != null) {
            migrationCallback = createMigrationCallback(configuration.getMigration());
        }
        final Realm.Transaction initialDataTransaction = configuration.getInitialDataTransaction();
        OsSharedRealm.InitializationCallback initializationCallback = initialDataTransaction != null ? new OsSharedRealm.InitializationCallback() { // from class: io.realm.BaseRealm.2
            @Override // io.realm.internal.OsSharedRealm.InitializationCallback
            public void onInit(OsSharedRealm sharedRealm) {
                initialDataTransaction.execute(Realm.createInstance(sharedRealm));
            }
        } : null;
        OsRealmConfig.Builder configBuilder = new OsRealmConfig.Builder(configuration).autoUpdateNotification(true).migrationCallback(migrationCallback).schemaInfo(schemaInfo).initializationCallback(initializationCallback);
        this.sharedRealm = OsSharedRealm.getInstance(configBuilder);
        this.shouldCloseSharedRealm = true;
        this.sharedRealm.registerSchemaChangedCallback(this.schemaChangedCallback);
    }

    BaseRealm(OsSharedRealm sharedRealm) {
        this.schemaChangedCallback = new OsSharedRealm.SchemaChangedCallback() { // from class: io.realm.BaseRealm.1
            @Override // io.realm.internal.OsSharedRealm.SchemaChangedCallback
            public void onSchemaChanged() {
                RealmSchema schema = BaseRealm.this.getSchema();
                if (schema != null) {
                    schema.refresh();
                }
            }
        };
        this.threadId = Thread.currentThread().getId();
        this.configuration = sharedRealm.getConfiguration();
        this.realmCache = null;
        this.sharedRealm = sharedRealm;
        this.shouldCloseSharedRealm = false;
    }

    public void setAutoRefresh(boolean autoRefresh) {
        checkIfValid();
        this.sharedRealm.setAutoRefresh(autoRefresh);
    }

    public boolean isAutoRefresh() {
        return this.sharedRealm.isAutoRefresh();
    }

    public void refresh() {
        checkIfValid();
        if (isInTransaction()) {
            throw new IllegalStateException("Cannot refresh a Realm instance inside a transaction.");
        }
        this.sharedRealm.refresh();
    }

    public boolean isInTransaction() {
        checkIfValid();
        return this.sharedRealm.isInTransaction();
    }

    protected <T extends BaseRealm> void addListener(RealmChangeListener<T> listener) {
        if (listener == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        checkIfValid();
        this.sharedRealm.capabilities.checkCanDeliverNotification(LISTENER_NOT_ALLOWED_MESSAGE);
        this.sharedRealm.realmNotifier.addChangeListener(this, listener);
    }

    protected <T extends BaseRealm> void removeListener(RealmChangeListener<T> listener) {
        if (listener == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        checkIfValid();
        this.sharedRealm.capabilities.checkCanDeliverNotification(LISTENER_NOT_ALLOWED_MESSAGE);
        this.sharedRealm.realmNotifier.removeChangeListener(this, listener);
    }

    protected void removeAllListeners() {
        checkIfValid();
        this.sharedRealm.capabilities.checkCanDeliverNotification("removeListener cannot be called on current thread.");
        this.sharedRealm.realmNotifier.removeChangeListeners(this);
    }

    public void writeCopyTo(File destination) {
        if (destination == null) {
            throw new IllegalArgumentException("The destination argument cannot be null");
        }
        checkIfValid();
        this.sharedRealm.writeCopy(destination, null);
    }

    public void writeEncryptedCopyTo(File destination, byte[] key) {
        if (destination == null) {
            throw new IllegalArgumentException("The destination argument cannot be null");
        }
        checkIfValid();
        this.sharedRealm.writeCopy(destination, key);
    }

    public boolean waitForChange() {
        checkIfValid();
        if (isInTransaction()) {
            throw new IllegalStateException("Cannot wait for changes inside of a transaction.");
        }
        if (Looper.myLooper() != null) {
            throw new IllegalStateException("Cannot wait for changes inside a Looper thread. Use RealmChangeListeners instead.");
        }
        boolean hasChanged = this.sharedRealm.waitForChange();
        if (hasChanged) {
            this.sharedRealm.refresh();
        }
        return hasChanged;
    }

    public void stopWaitForChange() {
        if (this.realmCache != null) {
            this.realmCache.invokeWithLock(new RealmCache.Callback0() { // from class: io.realm.BaseRealm.3
                @Override // io.realm.RealmCache.Callback0
                public void onCall() {
                    if (BaseRealm.this.sharedRealm == null || BaseRealm.this.sharedRealm.isClosed()) {
                        throw new IllegalStateException(BaseRealm.CLOSED_REALM_MESSAGE);
                    }
                    BaseRealm.this.sharedRealm.stopWaitForChange();
                }
            });
            return;
        }
        throw new IllegalStateException(CLOSED_REALM_MESSAGE);
    }

    public void beginTransaction() {
        checkIfValid();
        this.sharedRealm.beginTransaction();
    }

    public void commitTransaction() {
        checkIfValid();
        this.sharedRealm.commitTransaction();
    }

    public void cancelTransaction() {
        checkIfValid();
        this.sharedRealm.cancelTransaction();
    }

    protected void checkIfValid() {
        if (this.sharedRealm == null || this.sharedRealm.isClosed()) {
            throw new IllegalStateException(CLOSED_REALM_MESSAGE);
        }
        if (this.threadId != Thread.currentThread().getId()) {
            throw new IllegalStateException(INCORRECT_THREAD_MESSAGE);
        }
    }

    protected void checkIfInTransaction() {
        if (!this.sharedRealm.isInTransaction()) {
            throw new IllegalStateException(NOT_IN_TRANSACTION_MESSAGE);
        }
    }

    protected void checkIfPartialRealm() {
        boolean isPartialRealm = false;
        if (this.configuration.isSyncConfiguration()) {
            isPartialRealm = ObjectServerFacade.getSyncFacadeIfPossible().isPartialRealm(this.configuration);
        }
        if (!isPartialRealm) {
            throw new IllegalStateException("This method is only available on partially synchronized Realms.");
        }
    }

    protected void checkIfValidAndInTransaction() {
        if (!isInTransaction()) {
            throw new IllegalStateException(NOT_IN_TRANSACTION_MESSAGE);
        }
    }

    void checkNotInSync() {
        if (this.configuration.isSyncConfiguration()) {
            throw new IllegalArgumentException("You cannot perform changes to a schema. Please update app and restart.");
        }
    }

    public String getPath() {
        return this.configuration.getPath();
    }

    public RealmConfiguration getConfiguration() {
        return this.configuration;
    }

    public long getVersion() {
        return OsObjectStore.getSchemaVersion(this.sharedRealm);
    }

    @io.realm.internal.annotations.ObjectServer
    public RealmPrivileges getPrivileges() {
        checkIfValid();
        return new RealmPrivileges(this.sharedRealm.getPrivileges());
    }

    public ObjectPrivileges getPrivileges(RealmModel object) {
        checkIfValid();
        if (object == null) {
            throw new IllegalArgumentException("Non-null 'object' required.");
        }
        if (!RealmObject.isManaged(object)) {
            throw new IllegalArgumentException("Only managed objects have privileges. This is a an unmanaged object: " + object.toString());
        }
        if (!((RealmObjectProxy) object).realmGet$proxyState().getRealm$realm().getPath().equals(getPath())) {
            throw new IllegalArgumentException("Object belongs to a different Realm.");
        }
        UncheckedRow row = (UncheckedRow) ((RealmObjectProxy) object).realmGet$proxyState().getRow$realm();
        return new ObjectPrivileges(this.sharedRealm.getObjectPrivileges(row));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.threadId != Thread.currentThread().getId()) {
            throw new IllegalStateException(INCORRECT_THREAD_CLOSE_MESSAGE);
        }
        if (this.realmCache != null) {
            this.realmCache.release(this);
        } else {
            doClose();
        }
    }

    void doClose() {
        this.realmCache = null;
        if (this.sharedRealm != null && this.shouldCloseSharedRealm) {
            this.sharedRealm.close();
            this.sharedRealm = null;
        }
    }

    public boolean isClosed() {
        if (this.threadId == Thread.currentThread().getId()) {
            return this.sharedRealm == null || this.sharedRealm.isClosed();
        }
        throw new IllegalStateException(INCORRECT_THREAD_MESSAGE);
    }

    public boolean isEmpty() {
        checkIfValid();
        return this.sharedRealm.isEmpty();
    }

    <E extends RealmModel> E get(@Nullable Class<E> cls, @Nullable String str, UncheckedRow uncheckedRow) {
        if (str != null) {
            return new DynamicRealmObject(this, CheckedRow.getFromRow(uncheckedRow));
        }
        return (E) this.configuration.getSchemaMediator().newInstance(cls, this, uncheckedRow, getSchema().getColumnInfo((Class<? extends RealmModel>) cls), false, Collections.emptyList());
    }

    <E extends RealmModel> E get(Class<E> cls, long j, boolean z, List<String> list) {
        return (E) this.configuration.getSchemaMediator().newInstance(cls, this, getSchema().getTable((Class<? extends RealmModel>) cls).getUncheckedRow(j), getSchema().getColumnInfo((Class<? extends RealmModel>) cls), z, list);
    }

    <E extends RealmModel> E get(@Nullable Class<E> cls, @Nullable String str, long j) {
        boolean z = str != null;
        Table table = z ? getSchema().getTable(str) : getSchema().getTable((Class<? extends RealmModel>) cls);
        if (z) {
            return new DynamicRealmObject(this, j != -1 ? table.getCheckedRow(j) : InvalidRow.INSTANCE);
        }
        return (E) this.configuration.getSchemaMediator().newInstance(cls, this, j != -1 ? table.getUncheckedRow(j) : InvalidRow.INSTANCE, getSchema().getColumnInfo((Class<? extends RealmModel>) cls), false, Collections.emptyList());
    }

    public void deleteAll() {
        checkIfValid();
        if (this.sharedRealm.isPartial()) {
            throw new IllegalStateException(DELETE_NOT_SUPPORTED_UNDER_PARTIAL_SYNC);
        }
        boolean isPartialRealm = this.sharedRealm.isPartial();
        for (RealmObjectSchema objectSchema : getSchema().getAll()) {
            getSchema().getTable(objectSchema.getClassName()).clear(isPartialRealm);
        }
    }

    static boolean deleteRealm(final RealmConfiguration configuration) {
        final AtomicBoolean realmDeleted = new AtomicBoolean(true);
        boolean callbackExecuted = OsObjectStore.callWithLock(configuration, new Runnable() { // from class: io.realm.BaseRealm.4
            @Override // java.lang.Runnable
            public void run() {
                String canonicalPath = configuration.getPath();
                File realmFolder = configuration.getRealmDirectory();
                String realmFileName = configuration.getRealmFileName();
                realmDeleted.set(Util.deleteRealm(canonicalPath, realmFolder, realmFileName));
            }
        });
        if (!callbackExecuted) {
            throw new IllegalStateException("It's not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: " + configuration.getPath());
        }
        return realmDeleted.get();
    }

    static boolean compactRealm(RealmConfiguration configuration) {
        OsSharedRealm sharedRealm = OsSharedRealm.getInstance(configuration);
        Boolean result = Boolean.valueOf(sharedRealm.compact());
        sharedRealm.close();
        return result.booleanValue();
    }

    protected static void migrateRealm(final RealmConfiguration configuration, @Nullable final RealmMigration migration) throws FileNotFoundException {
        if (configuration == null) {
            throw new IllegalArgumentException("RealmConfiguration must be provided");
        }
        if (configuration.isSyncConfiguration()) {
            throw new IllegalArgumentException("Manual migrations are not supported for synced Realms");
        }
        if (migration == null && configuration.getMigration() == null) {
            throw new RealmMigrationNeededException(configuration.getPath(), "RealmMigration must be provided.");
        }
        final AtomicBoolean fileNotFound = new AtomicBoolean(false);
        RealmCache.invokeWithGlobalRefCount(configuration, new RealmCache.Callback() { // from class: io.realm.BaseRealm.5
            @Override // io.realm.RealmCache.Callback
            public void onResult(int count) {
                if (count != 0) {
                    throw new IllegalStateException("Cannot migrate a Realm file that is already open: " + configuration.getPath());
                }
                File realmFile = new File(configuration.getPath());
                if (!realmFile.exists()) {
                    fileNotFound.set(true);
                    return;
                }
                RealmProxyMediator mediator = configuration.getSchemaMediator();
                OsSchemaInfo schemaInfo = new OsSchemaInfo(mediator.getExpectedObjectSchemaInfoMap().values());
                OsSharedRealm.MigrationCallback migrationCallback = null;
                RealmMigration migrationToBeApplied = migration != null ? migration : configuration.getMigration();
                if (migrationToBeApplied != null) {
                    migrationCallback = BaseRealm.createMigrationCallback(migrationToBeApplied);
                }
                OsRealmConfig.Builder configBuilder = new OsRealmConfig.Builder(configuration).autoUpdateNotification(false).schemaInfo(schemaInfo).migrationCallback(migrationCallback);
                OsSharedRealm sharedRealm = null;
                try {
                    sharedRealm = OsSharedRealm.getInstance(configBuilder);
                } finally {
                    if (sharedRealm != null) {
                        sharedRealm.close();
                    }
                }
            }
        });
        if (fileNotFound.get()) {
            throw new FileNotFoundException("Cannot migrate a Realm file which doesn't exist: " + configuration.getPath());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static OsSharedRealm.MigrationCallback createMigrationCallback(final RealmMigration migration) {
        return new OsSharedRealm.MigrationCallback() { // from class: io.realm.BaseRealm.6
            @Override // io.realm.internal.OsSharedRealm.MigrationCallback
            public void onMigrationNeeded(OsSharedRealm sharedRealm, long oldVersion, long newVersion) {
                migration.migrate(DynamicRealm.createInstance(sharedRealm), oldVersion, newVersion);
            }
        };
    }

    protected void finalize() throws Throwable {
        if (this.shouldCloseSharedRealm && this.sharedRealm != null && !this.sharedRealm.isClosed()) {
            RealmLog.warn("Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory.", this.configuration.getPath());
            if (this.realmCache != null) {
                this.realmCache.leak();
            }
        }
        super.finalize();
    }

    OsSharedRealm getSharedRealm() {
        return this.sharedRealm;
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class RealmObjectContext {
        private boolean acceptDefaultValue;
        private ColumnInfo columnInfo;
        private List<String> excludeFields;
        private BaseRealm realm;
        private Row row;

        public void set(BaseRealm realm, Row row, ColumnInfo columnInfo, boolean acceptDefaultValue, List<String> excludeFields) {
            this.realm = realm;
            this.row = row;
            this.columnInfo = columnInfo;
            this.acceptDefaultValue = acceptDefaultValue;
            this.excludeFields = excludeFields;
        }

        BaseRealm getRealm() {
            return this.realm;
        }

        public Row getRow() {
            return this.row;
        }

        public ColumnInfo getColumnInfo() {
            return this.columnInfo;
        }

        public boolean getAcceptDefaultValue() {
            return this.acceptDefaultValue;
        }

        public List<String> getExcludeFields() {
            return this.excludeFields;
        }

        public void clear() {
            this.realm = null;
            this.row = null;
            this.columnInfo = null;
            this.acceptDefaultValue = false;
            this.excludeFields = null;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static final class ThreadLocalRealmObjectContext extends ThreadLocal<RealmObjectContext> {
        ThreadLocalRealmObjectContext() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public RealmObjectContext initialValue() {
            return new RealmObjectContext();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static abstract class InstanceCallback<T extends BaseRealm> {
        public abstract void onSuccess(T t);

        public void onError(Throwable exception) {
            throw new RealmException("Exception happens when initializing Realm in the background thread.", exception);
        }
    }
}
