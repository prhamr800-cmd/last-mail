package io.realm;

import io.reactivex.Flowable;
import io.realm.BaseRealm;
import io.realm.RealmCache;
import io.realm.exceptions.RealmException;
import io.realm.internal.CheckedRow;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
import io.realm.internal.Util;
import io.realm.log.RealmLog;
import io.realm.sync.permissions.ClassPrivileges;
import io.realm.sync.permissions.ObjectPrivileges;
import io.realm.sync.permissions.RealmPrivileges;
import java.io.File;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class DynamicRealm extends BaseRealm {
    private final RealmSchema schema;

    public interface Transaction {
        void execute(DynamicRealm dynamicRealm);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void beginTransaction() {
        super.beginTransaction();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void cancelTransaction() {
        super.cancelTransaction();
    }

    @Override // io.realm.BaseRealm, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void commitTransaction() {
        super.commitTransaction();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void deleteAll() {
        super.deleteAll();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ RealmConfiguration getConfiguration() {
        return super.getConfiguration();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ String getPath() {
        return super.getPath();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ ObjectPrivileges getPrivileges(RealmModel realmModel) {
        return super.getPrivileges(realmModel);
    }

    @Override // io.realm.BaseRealm
    @io.realm.internal.annotations.ObjectServer
    public /* bridge */ /* synthetic */ RealmPrivileges getPrivileges() {
        return super.getPrivileges();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ long getVersion() {
        return super.getVersion();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isAutoRefresh() {
        return super.isAutoRefresh();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isClosed() {
        return super.isClosed();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isInTransaction() {
        return super.isInTransaction();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void refresh() {
        super.refresh();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void setAutoRefresh(boolean z) {
        super.setAutoRefresh(z);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void stopWaitForChange() {
        super.stopWaitForChange();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean waitForChange() {
        return super.waitForChange();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void writeCopyTo(File file) {
        super.writeCopyTo(file);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void writeEncryptedCopyTo(File file, byte[] bArr) {
        super.writeEncryptedCopyTo(file, bArr);
    }

    private DynamicRealm(final RealmCache cache) {
        super(cache, (OsSchemaInfo) null);
        RealmCache.invokeWithGlobalRefCount(cache.getConfiguration(), new RealmCache.Callback() { // from class: io.realm.DynamicRealm.1
            @Override // io.realm.RealmCache.Callback
            public void onResult(int count) {
                if (count > 0 || cache.getConfiguration().isReadOnly() || OsObjectStore.getSchemaVersion(DynamicRealm.this.sharedRealm) != -1) {
                    return;
                }
                DynamicRealm.this.sharedRealm.beginTransaction();
                if (OsObjectStore.getSchemaVersion(DynamicRealm.this.sharedRealm) == -1) {
                    OsObjectStore.setSchemaVersion(DynamicRealm.this.sharedRealm, -1L);
                }
                DynamicRealm.this.sharedRealm.commitTransaction();
            }
        });
        this.schema = new MutableRealmSchema(this);
    }

    private DynamicRealm(OsSharedRealm sharedRealm) {
        super(sharedRealm);
        this.schema = new MutableRealmSchema(this);
    }

    public static DynamicRealm getInstance(RealmConfiguration configuration) {
        if (configuration == null) {
            throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
        }
        return (DynamicRealm) RealmCache.createRealmOrGetFromCache(configuration, DynamicRealm.class);
    }

    public static RealmAsyncTask getInstanceAsync(RealmConfiguration configuration, Callback callback) {
        if (configuration == null) {
            throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
        }
        return RealmCache.createRealmOrGetFromCacheAsync(configuration, callback, DynamicRealm.class);
    }

    public DynamicRealmObject createObject(String className) {
        checkIfValid();
        Table table = this.schema.getTable(className);
        String pkField = OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, className);
        if (pkField != null) {
            throw new RealmException(String.format(Locale.US, "'%s' has a primary key field '%s', use  'createObject(String, Object)' instead.", className, pkField));
        }
        return new DynamicRealmObject(this, CheckedRow.getFromRow(OsObject.create(table)));
    }

    public DynamicRealmObject createObject(String className, Object primaryKeyValue) {
        Table table = this.schema.getTable(className);
        return new DynamicRealmObject(this, CheckedRow.getFromRow(OsObject.createWithPrimaryKey(table, primaryKeyValue)));
    }

    public RealmQuery<DynamicRealmObject> where(String className) {
        checkIfValid();
        if (!this.sharedRealm.hasTable(Table.getTableNameForClass(className))) {
            throw new IllegalArgumentException("Class does not exist in the Realm and cannot be queried: " + className);
        }
        return RealmQuery.createDynamicQuery(this, className);
    }

    public void addChangeListener(RealmChangeListener<DynamicRealm> listener) {
        addListener(listener);
    }

    public void removeChangeListener(RealmChangeListener<DynamicRealm> listener) {
        removeListener(listener);
    }

    public void removeAllChangeListeners() {
        removeAllListeners();
    }

    public void delete(String className) {
        checkIfValid();
        checkIfInTransaction();
        if (this.sharedRealm.isPartial()) {
            throw new IllegalStateException("This API is not supported by partially synchronized Realms. Either unsubscribe using 'Realm.unsubscribeAsync()' or delete the objects using a query and 'RealmResults.deleteAllFromRealm()'");
        }
        this.schema.getTable(className).clear(this.sharedRealm.isPartial());
    }

    public void executeTransaction(Transaction transaction) {
        if (transaction == null) {
            throw new IllegalArgumentException("Transaction should not be null");
        }
        beginTransaction();
        try {
            transaction.execute(this);
            commitTransaction();
        } catch (RuntimeException e) {
            if (isInTransaction()) {
                cancelTransaction();
            } else {
                RealmLog.warn("Could not cancel transaction, not currently in a transaction.", new Object[0]);
            }
            throw e;
        }
    }

    static DynamicRealm createInstance(RealmCache cache) {
        return new DynamicRealm(cache);
    }

    static DynamicRealm createInstance(OsSharedRealm sharedRealm) {
        return new DynamicRealm(sharedRealm);
    }

    @Override // io.realm.BaseRealm
    public Flowable<DynamicRealm> asFlowable() {
        return this.configuration.getRxFactory().from(this);
    }

    @io.realm.internal.annotations.ObjectServer
    public ClassPrivileges getPrivileges(String className) {
        checkIfValid();
        if (Util.isEmptyString(className)) {
            throw new IllegalArgumentException("Non-empty 'className' required.");
        }
        if (!this.schema.contains(className)) {
            throw new RealmException("Class '" + className + "' is not part of the schema for this Realm");
        }
        return new ClassPrivileges(this.sharedRealm.getClassPrivileges(className));
    }

    @Override // io.realm.BaseRealm
    public RealmSchema getSchema() {
        return this.schema;
    }

    void setVersion(long version) {
        OsObjectStore.setSchemaVersion(this.sharedRealm, version);
    }

    public static abstract class Callback extends BaseRealm.InstanceCallback<DynamicRealm> {
        @Override // io.realm.BaseRealm.InstanceCallback
        public abstract void onSuccess(DynamicRealm dynamicRealm);

        @Override // io.realm.BaseRealm.InstanceCallback
        public void onError(Throwable exception) {
            super.onError(exception);
        }
    }
}
