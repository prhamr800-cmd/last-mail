package io.realm.internal;

import io.realm.ObjectChangeSet;
import io.realm.RealmFieldType;
import io.realm.RealmModel;
import io.realm.RealmObjectChangeListener;
import io.realm.exceptions.RealmException;
import io.realm.internal.ObserverPairList;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class OsObject implements NativeObject {
    private static final String OBJECT_ID_COLUMN_NAME = nativeGetObjectIdColumName();
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final long nativePtr;
    private ObserverPairList<ObjectObserverPair> observerPairs = new ObserverPairList<>();

    private static native long nativeCreate(long j, long j2);

    private static native long nativeCreateNewObject(long j, long j2);

    private static native long nativeCreateNewObjectWithLongPrimaryKey(long j, long j2, long j3, long j4, boolean z);

    private static native long nativeCreateNewObjectWithStringPrimaryKey(long j, long j2, long j3, @Nullable String str);

    private static native long nativeCreateRow(long j, long j2);

    private static native long nativeCreateRowWithLongPrimaryKey(long j, long j2, long j3, long j4, boolean z);

    private static native long nativeCreateRowWithStringPrimaryKey(long j, long j2, long j3, String str);

    private static native long nativeGetFinalizerPtr();

    private static native String nativeGetObjectIdColumName();

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    private static class OsObjectChangeSet implements ObjectChangeSet {
        final String[] changedFields;
        final boolean deleted;

        OsObjectChangeSet(String[] changedFields, boolean deleted) {
            this.changedFields = changedFields;
            this.deleted = deleted;
        }

        @Override // io.realm.ObjectChangeSet
        public boolean isDeleted() {
            return this.deleted;
        }

        @Override // io.realm.ObjectChangeSet
        public String[] getChangedFields() {
            return this.changedFields;
        }

        @Override // io.realm.ObjectChangeSet
        public boolean isFieldChanged(String fieldName) {
            for (String name : this.changedFields) {
                if (name.equals(fieldName)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class ObjectObserverPair<T extends RealmModel> extends ObserverPairList.ObserverPair<T, RealmObjectChangeListener<T>> {
        public ObjectObserverPair(T observer, RealmObjectChangeListener<T> listener) {
            super(observer, listener);
        }

        public void onChange(T observer, @Nullable ObjectChangeSet changeSet) {
            ((RealmObjectChangeListener) this.listener).onChange(observer, changeSet);
        }
    }

    private static class Callback implements ObserverPairList.Callback<ObjectObserverPair> {
        private final String[] changedFields;

        Callback(String[] changedFields) {
            this.changedFields = changedFields;
        }

        private ObjectChangeSet createChangeSet() {
            boolean isDeleted = this.changedFields == null;
            return new OsObjectChangeSet(isDeleted ? new String[0] : this.changedFields, isDeleted);
        }

        @Override // io.realm.internal.ObserverPairList.Callback
        public void onCalled(ObjectObserverPair pair, Object observer) {
            pair.onChange((RealmModel) observer, createChangeSet());
        }
    }

    public OsObject(OsSharedRealm sharedRealm, UncheckedRow row) {
        this.nativePtr = nativeCreate(sharedRealm.getNativePtr(), row.getNativePtr());
        sharedRealm.context.addReference(this);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public <T extends RealmModel> void addListener(T observer, RealmObjectChangeListener<T> listener) {
        if (this.observerPairs.isEmpty()) {
            nativeStartListening(this.nativePtr);
        }
        ObjectObserverPair<T> pair = new ObjectObserverPair<>(observer, listener);
        this.observerPairs.add(pair);
    }

    public <T extends RealmModel> void removeListener(T observer) {
        this.observerPairs.removeByObserver(observer);
        if (this.observerPairs.isEmpty()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public <T extends RealmModel> void removeListener(T observer, RealmObjectChangeListener<T> listener) {
        this.observerPairs.remove(observer, listener);
        if (this.observerPairs.isEmpty()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public void setObserverPairs(ObserverPairList<ObjectObserverPair> pairs) {
        if (!this.observerPairs.isEmpty()) {
            throw new IllegalStateException("'observerPairs' is not empty. Listeners have been added before.");
        }
        this.observerPairs = pairs;
        if (!pairs.isEmpty()) {
            nativeStartListening(this.nativePtr);
        }
    }

    public static UncheckedRow create(Table table) {
        OsSharedRealm sharedRealm = table.getSharedRealm();
        return new UncheckedRow(sharedRealm.context, table, nativeCreateNewObject(sharedRealm.getNativePtr(), table.getNativePtr()));
    }

    public static long createRow(Table table) {
        OsSharedRealm sharedRealm = table.getSharedRealm();
        return nativeCreateRow(sharedRealm.getNativePtr(), table.getNativePtr());
    }

    private static long getAndVerifyPrimaryKeyColumnIndex(Table table) {
        String pkField = OsObjectStore.getPrimaryKeyForObject(table.getSharedRealm(), table.getClassName());
        if (pkField == null) {
            throw new IllegalStateException(table.getName() + " has no primary key defined.");
        }
        return table.getColumnIndex(pkField);
    }

    public static UncheckedRow createWithPrimaryKey(Table table, @Nullable Object primaryKeyValue) {
        long primaryKeyColumnIndex = getAndVerifyPrimaryKeyColumnIndex(table);
        RealmFieldType type = table.getColumnType(primaryKeyColumnIndex);
        OsSharedRealm sharedRealm = table.getSharedRealm();
        if (type == RealmFieldType.STRING) {
            if (primaryKeyValue == null || (primaryKeyValue instanceof String)) {
                return new UncheckedRow(sharedRealm.context, table, nativeCreateNewObjectWithStringPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), primaryKeyColumnIndex, (String) primaryKeyValue));
            }
            throw new IllegalArgumentException("Primary key value is not a String: " + primaryKeyValue);
        }
        if (type == RealmFieldType.INTEGER) {
            long value = primaryKeyValue == null ? 0L : Long.parseLong(primaryKeyValue.toString());
            return new UncheckedRow(sharedRealm.context, table, nativeCreateNewObjectWithLongPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), primaryKeyColumnIndex, value, primaryKeyValue == null));
        }
        throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + type);
    }

    public static long createRowWithPrimaryKey(Table table, long primaryKeyColumnIndex, Object primaryKeyValue) {
        RealmFieldType type = table.getColumnType(primaryKeyColumnIndex);
        OsSharedRealm sharedRealm = table.getSharedRealm();
        if (type == RealmFieldType.STRING) {
            if (primaryKeyValue == null || (primaryKeyValue instanceof String)) {
                return nativeCreateRowWithStringPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), primaryKeyColumnIndex, (String) primaryKeyValue);
            }
            throw new IllegalArgumentException("Primary key value is not a String: " + primaryKeyValue);
        }
        if (type == RealmFieldType.INTEGER) {
            long value = primaryKeyValue == null ? 0L : Long.parseLong(primaryKeyValue.toString());
            return nativeCreateRowWithLongPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), primaryKeyColumnIndex, value, primaryKeyValue == null);
        }
        throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + type);
    }

    public static boolean isObjectIdColumn(String columnName) {
        return OBJECT_ID_COLUMN_NAME.equals(columnName);
    }

    private void notifyChangeListeners(String[] changedFields) {
        this.observerPairs.foreach(new Callback(changedFields));
    }
}
