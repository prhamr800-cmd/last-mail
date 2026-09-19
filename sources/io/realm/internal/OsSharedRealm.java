package io.realm.internal;

import io.realm.RealmConfiguration;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsResults;
import io.realm.internal.android.AndroidCapabilities;
import io.realm.internal.android.AndroidRealmNotifier;
import io.realm.internal.annotations.ObjectServer;
import java.io.Closeable;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public final class OsSharedRealm implements Closeable, NativeObject {
    public static final byte FILE_EXCEPTION_INCOMPATIBLE_SYNC_FILE = 7;
    public static final byte FILE_EXCEPTION_KIND_ACCESS_ERROR = 0;
    public static final byte FILE_EXCEPTION_KIND_BAD_HISTORY = 1;
    public static final byte FILE_EXCEPTION_KIND_EXISTS = 3;
    public static final byte FILE_EXCEPTION_KIND_FORMAT_UPGRADE_REQUIRED = 6;
    public static final byte FILE_EXCEPTION_KIND_INCOMPATIBLE_LOCK_FILE = 5;
    public static final byte FILE_EXCEPTION_KIND_NOT_FOUND = 4;
    public static final byte FILE_EXCEPTION_KIND_PERMISSION_DENIED = 2;
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private static final List<OsSharedRealm> sharedRealmsUnderConstruction = new CopyOnWriteArrayList();
    private static volatile File temporaryDirectory;
    public final Capabilities capabilities;
    final NativeContext context;
    private final long nativePtr;
    private final OsRealmConfig osRealmConfig;
    public final RealmNotifier realmNotifier;
    private final OsSchemaInfo schemaInfo;
    private final List<OsSharedRealm> tempSharedRealmsForCallback = new ArrayList();
    private final List<WeakReference<PendingRow>> pendingRows = new CopyOnWriteArrayList();
    final List<WeakReference<OsResults.Iterator>> iterators = new ArrayList();

    @Keep
    public interface InitializationCallback {
        void onInit(OsSharedRealm osSharedRealm);
    }

    @Keep
    public interface MigrationCallback {
        void onMigrationNeeded(OsSharedRealm osSharedRealm, long j, long j2);
    }

    @Keep
    public interface SchemaChangedCallback {
        void onSchemaChanged();
    }

    private static native void nativeBeginTransaction(long j);

    private static native void nativeCancelTransaction(long j);

    private static native void nativeCloseSharedRealm(long j);

    private static native void nativeCommitTransaction(long j);

    private static native boolean nativeCompact(long j);

    private static native long nativeCreateTable(long j, String str);

    private static native long nativeCreateTableWithPrimaryKeyField(long j, String str, String str2, boolean z, boolean z2);

    private static native int nativeGetClassPrivileges(long j, String str);

    private static native long nativeGetFinalizerPtr();

    private static native int nativeGetObjectPrivileges(long j, long j2);

    private static native int nativeGetRealmPrivileges(long j);

    private static native long nativeGetSchemaInfo(long j);

    private static native long nativeGetSharedRealm(long j, RealmNotifier realmNotifier);

    private static native long nativeGetTable(long j, String str);

    private static native String nativeGetTableName(long j, int i);

    private static native long[] nativeGetVersionID(long j);

    private static native boolean nativeHasTable(long j, String str);

    private static native void nativeInit(String str);

    private static native boolean nativeIsAutoRefresh(long j);

    private static native boolean nativeIsClosed(long j);

    private static native boolean nativeIsEmpty(long j);

    private static native boolean nativeIsInTransaction(long j);

    private static native boolean nativeIsPartial(long j);

    private static native void nativeRefresh(long j);

    private static native void nativeRegisterSchemaChangedCallback(long j, SchemaChangedCallback schemaChangedCallback);

    private static native void nativeRenameTable(long j, String str, String str2);

    private static native void nativeSetAutoRefresh(long j, boolean z);

    private static native long nativeSize(long j);

    private static native void nativeStopWaitForChange(long j);

    private static native boolean nativeWaitForChange(long j);

    private static native void nativeWriteCopy(long j, String str, @Nullable byte[] bArr);

    public static class VersionID implements Comparable<VersionID> {
        public final long index;
        public final long version;

        VersionID(long version, long index) {
            this.version = version;
            this.index = index;
        }

        @Override // java.lang.Comparable
        public int compareTo(VersionID another) {
            if (another == null) {
                throw new IllegalArgumentException("Version cannot be compared to a null value.");
            }
            if (this.version > another.version) {
                return 1;
            }
            if (this.version < another.version) {
                return -1;
            }
            return 0;
        }

        public String toString() {
            return "VersionID{version=" + this.version + ", index=" + this.index + '}';
        }

        public boolean equals(Object object) {
            if (this == object) {
                return true;
            }
            if (object == null || getClass() != object.getClass()) {
                return false;
            }
            VersionID versionID = (VersionID) object;
            return this.version == versionID.version && this.index == versionID.index;
        }

        public int hashCode() {
            int result = super.hashCode();
            return (((result * 31) + ((int) (this.version ^ (this.version >>> 32)))) * 31) + ((int) (this.index ^ (this.index >>> 32)));
        }
    }

    private OsSharedRealm(OsRealmConfig osRealmConfig) {
        Capabilities capabilities = new AndroidCapabilities();
        RealmNotifier realmNotifier = new AndroidRealmNotifier(this, capabilities);
        this.context = osRealmConfig.getContext();
        sharedRealmsUnderConstruction.add(this);
        try {
            try {
                this.nativePtr = nativeGetSharedRealm(osRealmConfig.getNativePtr(), realmNotifier);
                this.tempSharedRealmsForCallback.clear();
                sharedRealmsUnderConstruction.remove(this);
                this.osRealmConfig = osRealmConfig;
                this.schemaInfo = new OsSchemaInfo(nativeGetSchemaInfo(this.nativePtr), this);
                this.context.addReference(this);
                this.capabilities = capabilities;
                this.realmNotifier = realmNotifier;
                nativeSetAutoRefresh(this.nativePtr, capabilities.canDeliverNotification());
            } catch (Throwable t) {
                for (OsSharedRealm sharedRealm : this.tempSharedRealmsForCallback) {
                    if (!sharedRealm.isClosed()) {
                        sharedRealm.close();
                    }
                }
                throw t;
            }
        } catch (Throwable th) {
            this.tempSharedRealmsForCallback.clear();
            sharedRealmsUnderConstruction.remove(this);
            throw th;
        }
    }

    private OsSharedRealm(long nativeSharedRealmPtr, OsRealmConfig osRealmConfig) {
        this.nativePtr = nativeSharedRealmPtr;
        this.osRealmConfig = osRealmConfig;
        this.schemaInfo = new OsSchemaInfo(nativeGetSchemaInfo(this.nativePtr), this);
        this.context = osRealmConfig.getContext();
        this.context.addReference(this);
        this.capabilities = new AndroidCapabilities();
        this.realmNotifier = null;
        nativeSetAutoRefresh(this.nativePtr, false);
        boolean foundParentSharedRealm = false;
        Iterator<OsSharedRealm> it = sharedRealmsUnderConstruction.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            OsSharedRealm sharedRealm = it.next();
            if (sharedRealm.context == osRealmConfig.getContext()) {
                foundParentSharedRealm = true;
                sharedRealm.tempSharedRealmsForCallback.add(this);
                break;
            }
        }
        if (!foundParentSharedRealm) {
            throw new IllegalStateException("Cannot find the parent 'OsSharedRealm' which is under construction.");
        }
    }

    public static OsSharedRealm getInstance(RealmConfiguration config) {
        OsRealmConfig.Builder builder = new OsRealmConfig.Builder(config);
        return getInstance(builder);
    }

    public static OsSharedRealm getInstance(OsRealmConfig.Builder configBuilder) {
        OsRealmConfig osRealmConfig = configBuilder.build();
        ObjectServerFacade.getSyncFacadeIfPossible().wrapObjectStoreSessionIfRequired(osRealmConfig);
        return new OsSharedRealm(osRealmConfig);
    }

    public static void initialize(File tempDirectory) {
        if (temporaryDirectory != null) {
            return;
        }
        String temporaryDirectoryPath = tempDirectory.getAbsolutePath();
        if (!tempDirectory.isDirectory() && !tempDirectory.mkdirs() && !tempDirectory.isDirectory()) {
            throw new IOException("failed to create temporary directory: " + temporaryDirectoryPath);
        }
        if (!temporaryDirectoryPath.endsWith("/")) {
            temporaryDirectoryPath = temporaryDirectoryPath + "/";
        }
        nativeInit(temporaryDirectoryPath);
        temporaryDirectory = tempDirectory;
    }

    public static File getTemporaryDirectory() {
        return temporaryDirectory;
    }

    public void beginTransaction() {
        detachIterators();
        executePendingRowQueries();
        nativeBeginTransaction(this.nativePtr);
    }

    public void commitTransaction() {
        nativeCommitTransaction(this.nativePtr);
    }

    public void cancelTransaction() {
        nativeCancelTransaction(this.nativePtr);
    }

    public boolean isInTransaction() {
        return nativeIsInTransaction(this.nativePtr);
    }

    public boolean hasTable(String name) {
        return nativeHasTable(this.nativePtr, name);
    }

    public Table getTable(String name) {
        long tablePtr = nativeGetTable(this.nativePtr, name);
        return new Table(this, tablePtr);
    }

    public Table createTable(String name) {
        return new Table(this, nativeCreateTable(this.nativePtr, name));
    }

    public Table createTableWithPrimaryKey(String tableName, String primaryKeyFieldName, boolean isStringType, boolean isNullable) {
        return new Table(this, nativeCreateTableWithPrimaryKeyField(this.nativePtr, tableName, primaryKeyFieldName, isStringType, isNullable));
    }

    public void renameTable(String oldName, String newName) {
        nativeRenameTable(this.nativePtr, oldName, newName);
    }

    public String getTableName(int index) {
        return nativeGetTableName(this.nativePtr, index);
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }

    public String getPath() {
        return this.osRealmConfig.getRealmConfiguration().getPath();
    }

    public boolean isEmpty() {
        return nativeIsEmpty(this.nativePtr);
    }

    public void refresh() {
        nativeRefresh(this.nativePtr);
    }

    public VersionID getVersionID() {
        long[] versionId = nativeGetVersionID(this.nativePtr);
        return new VersionID(versionId[0], versionId[1]);
    }

    @ObjectServer
    public int getPrivileges() {
        return nativeGetRealmPrivileges(this.nativePtr);
    }

    @ObjectServer
    public int getClassPrivileges(String className) {
        return nativeGetClassPrivileges(this.nativePtr, className);
    }

    @ObjectServer
    public int getObjectPrivileges(UncheckedRow row) {
        return nativeGetObjectPrivileges(this.nativePtr, row.getNativePtr());
    }

    public boolean isClosed() {
        return nativeIsClosed(this.nativePtr);
    }

    public void writeCopy(File file, @Nullable byte[] key) {
        if (file.isFile() && file.exists()) {
            throw new IllegalArgumentException("The destination file must not exist");
        }
        nativeWriteCopy(this.nativePtr, file.getAbsolutePath(), key);
    }

    public boolean waitForChange() {
        return nativeWaitForChange(this.nativePtr);
    }

    public void stopWaitForChange() {
        nativeStopWaitForChange(this.nativePtr);
    }

    public boolean compact() {
        return nativeCompact(this.nativePtr);
    }

    public void setAutoRefresh(boolean enabled) {
        this.capabilities.checkCanDeliverNotification(null);
        nativeSetAutoRefresh(this.nativePtr, enabled);
    }

    public boolean isAutoRefresh() {
        return nativeIsAutoRefresh(this.nativePtr);
    }

    public RealmConfiguration getConfiguration() {
        return this.osRealmConfig.getRealmConfiguration();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.realmNotifier != null) {
            this.realmNotifier.close();
        }
        synchronized (this.context) {
            nativeCloseSharedRealm(this.nativePtr);
        }
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public OsSchemaInfo getSchemaInfo() {
        return this.schemaInfo;
    }

    public void registerSchemaChangedCallback(SchemaChangedCallback callback) {
        nativeRegisterSchemaChangedCallback(this.nativePtr, callback);
    }

    public boolean isPartial() {
        return nativeIsPartial(this.nativePtr);
    }

    public boolean isSyncRealm() {
        return this.osRealmConfig.getResolvedRealmURI() != null;
    }

    void addIterator(OsResults.Iterator iterator) {
        this.iterators.add(new WeakReference<>(iterator));
    }

    private void detachIterators() {
        for (WeakReference<OsResults.Iterator> iteratorRef : this.iterators) {
            OsResults.Iterator iterator = iteratorRef.get();
            if (iterator != null) {
                iterator.detach();
            }
        }
        this.iterators.clear();
    }

    void invalidateIterators() {
        for (WeakReference<OsResults.Iterator> iteratorRef : this.iterators) {
            OsResults.Iterator iterator = iteratorRef.get();
            if (iterator != null) {
                iterator.invalidate();
            }
        }
        this.iterators.clear();
    }

    void addPendingRow(PendingRow pendingRow) {
        this.pendingRows.add(new WeakReference<>(pendingRow));
    }

    void removePendingRow(PendingRow pendingRow) {
        for (WeakReference<PendingRow> ref : this.pendingRows) {
            PendingRow row = ref.get();
            if (row == null || row == pendingRow) {
                this.pendingRows.remove(ref);
            }
        }
    }

    private void executePendingRowQueries() {
        for (WeakReference<PendingRow> ref : this.pendingRows) {
            PendingRow row = ref.get();
            if (row != null) {
                row.executeQuery();
            }
        }
        this.pendingRows.clear();
    }

    private static void runMigrationCallback(long nativeSharedRealmPtr, OsRealmConfig osRealmConfig, MigrationCallback callback, long oldVersion) {
        callback.onMigrationNeeded(new OsSharedRealm(nativeSharedRealmPtr, osRealmConfig), oldVersion, osRealmConfig.getRealmConfiguration().getSchemaVersion());
    }

    private static void runInitializationCallback(long nativeSharedRealmPtr, OsRealmConfig osRealmConfig, InitializationCallback callback) {
        callback.onInit(new OsSharedRealm(nativeSharedRealmPtr, osRealmConfig));
    }
}
