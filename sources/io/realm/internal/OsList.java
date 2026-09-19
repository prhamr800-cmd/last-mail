package io.realm.internal;

import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.RealmChangeListener;
import io.realm.internal.ObservableCollection;
import java.util.Date;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class OsList implements NativeObject, ObservableCollection {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final NativeContext context;
    private final long nativePtr;
    private final ObserverPairList<ObservableCollection.CollectionObserverPair> observerPairs = new ObserverPairList<>();
    private final Table targetTable;

    private static native void nativeAddBinary(long j, @Nullable byte[] bArr);

    private static native void nativeAddBoolean(long j, boolean z);

    private static native void nativeAddDate(long j, long j2);

    private static native void nativeAddDouble(long j, double d);

    private static native void nativeAddFloat(long j, float f);

    private static native void nativeAddLong(long j, long j2);

    private static native void nativeAddNull(long j);

    private static native void nativeAddRow(long j, long j2);

    private static native void nativeAddString(long j, @Nullable String str);

    private static native long[] nativeCreate(long j, long j2, long j3);

    private static native void nativeDelete(long j, long j2);

    private static native void nativeDeleteAll(long j);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetQuery(long j);

    private static native long nativeGetRow(long j, long j2);

    private static native Object nativeGetValue(long j, long j2);

    private static native void nativeInsertBinary(long j, long j2, @Nullable byte[] bArr);

    private static native void nativeInsertBoolean(long j, long j2, boolean z);

    private static native void nativeInsertDate(long j, long j2, long j3);

    private static native void nativeInsertDouble(long j, long j2, double d);

    private static native void nativeInsertFloat(long j, long j2, float f);

    private static native void nativeInsertLong(long j, long j2, long j3);

    private static native void nativeInsertNull(long j, long j2);

    private static native void nativeInsertRow(long j, long j2, long j3);

    private static native void nativeInsertString(long j, long j2, @Nullable String str);

    private static native boolean nativeIsValid(long j);

    private static native void nativeMove(long j, long j2, long j3);

    private static native void nativeRemove(long j, long j2);

    private static native void nativeRemoveAll(long j);

    private static native void nativeSetBinary(long j, long j2, @Nullable byte[] bArr);

    private static native void nativeSetBoolean(long j, long j2, boolean z);

    private static native void nativeSetDate(long j, long j2, long j3);

    private static native void nativeSetDouble(long j, long j2, double d);

    private static native void nativeSetFloat(long j, long j2, float f);

    private static native void nativeSetLong(long j, long j2, long j3);

    private static native void nativeSetNull(long j, long j2);

    private static native void nativeSetRow(long j, long j2, long j3);

    private static native void nativeSetString(long j, long j2, @Nullable String str);

    private static native long nativeSize(long j);

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    public OsList(UncheckedRow row, long columnIndex) {
        OsSharedRealm sharedRealm = row.getTable().getSharedRealm();
        long[] ptrs = nativeCreate(sharedRealm.getNativePtr(), row.getNativePtr(), columnIndex);
        this.nativePtr = ptrs[0];
        this.context = sharedRealm.context;
        this.context.addReference(this);
        if (ptrs[1] != 0) {
            this.targetTable = new Table(sharedRealm, ptrs[1]);
        } else {
            this.targetTable = null;
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

    public UncheckedRow getUncheckedRow(long index) {
        return this.targetTable.getUncheckedRowByPointer(nativeGetRow(this.nativePtr, index));
    }

    public void addRow(long targetRowIndex) {
        nativeAddRow(this.nativePtr, targetRowIndex);
    }

    public void insertRow(long pos, long targetRowIndex) {
        nativeInsertRow(this.nativePtr, pos, targetRowIndex);
    }

    public void setRow(long pos, long targetRowIndex) {
        nativeSetRow(this.nativePtr, pos, targetRowIndex);
    }

    public void addNull() {
        nativeAddNull(this.nativePtr);
    }

    public void insertNull(long pos) {
        nativeInsertNull(this.nativePtr, pos);
    }

    public void setNull(long pos) {
        nativeSetNull(this.nativePtr, pos);
    }

    public void addLong(long value) {
        nativeAddLong(this.nativePtr, value);
    }

    public void insertLong(long pos, long value) {
        nativeInsertLong(this.nativePtr, pos, value);
    }

    public void setLong(long pos, long value) {
        nativeSetLong(this.nativePtr, pos, value);
    }

    public void addDouble(double value) {
        nativeAddDouble(this.nativePtr, value);
    }

    public void insertDouble(long pos, double value) {
        nativeInsertDouble(this.nativePtr, pos, value);
    }

    public void setDouble(long pos, double value) {
        nativeSetDouble(this.nativePtr, pos, value);
    }

    public void addFloat(float value) {
        nativeAddFloat(this.nativePtr, value);
    }

    public void insertFloat(long pos, float value) {
        nativeInsertFloat(this.nativePtr, pos, value);
    }

    public void setFloat(long pos, float value) {
        nativeSetFloat(this.nativePtr, pos, value);
    }

    public void addBoolean(boolean value) {
        nativeAddBoolean(this.nativePtr, value);
    }

    public void insertBoolean(long pos, boolean value) {
        nativeInsertBoolean(this.nativePtr, pos, value);
    }

    public void setBoolean(long pos, boolean value) {
        nativeSetBoolean(this.nativePtr, pos, value);
    }

    public void addBinary(@Nullable byte[] value) {
        nativeAddBinary(this.nativePtr, value);
    }

    public void insertBinary(long pos, @Nullable byte[] value) {
        nativeInsertBinary(this.nativePtr, pos, value);
    }

    public void setBinary(long pos, @Nullable byte[] value) {
        nativeSetBinary(this.nativePtr, pos, value);
    }

    public void addString(@Nullable String value) {
        nativeAddString(this.nativePtr, value);
    }

    public void insertString(long pos, @Nullable String value) {
        nativeInsertString(this.nativePtr, pos, value);
    }

    public void setString(long pos, @Nullable String value) {
        nativeSetString(this.nativePtr, pos, value);
    }

    public void addDate(@Nullable Date value) {
        if (value == null) {
            nativeAddNull(this.nativePtr);
        } else {
            nativeAddDate(this.nativePtr, value.getTime());
        }
    }

    public void insertDate(long pos, @Nullable Date value) {
        if (value == null) {
            nativeInsertNull(this.nativePtr, pos);
        } else {
            nativeInsertDate(this.nativePtr, pos, value.getTime());
        }
    }

    public void setDate(long pos, @Nullable Date value) {
        if (value == null) {
            nativeSetNull(this.nativePtr, pos);
        } else {
            nativeSetDate(this.nativePtr, pos, value.getTime());
        }
    }

    @Nullable
    public Object getValue(long pos) {
        return nativeGetValue(this.nativePtr, pos);
    }

    public void move(long sourceIndex, long targetIndex) {
        nativeMove(this.nativePtr, sourceIndex, targetIndex);
    }

    public void remove(long index) {
        nativeRemove(this.nativePtr, index);
    }

    public void removeAll() {
        nativeRemoveAll(this.nativePtr);
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }

    public boolean isEmpty() {
        return nativeSize(this.nativePtr) <= 0;
    }

    public TableQuery getQuery() {
        return new TableQuery(this.context, this.targetTable, nativeGetQuery(this.nativePtr));
    }

    public boolean isValid() {
        return nativeIsValid(this.nativePtr);
    }

    public void delete(long index) {
        nativeDelete(this.nativePtr, index);
    }

    public void deleteAll() {
        nativeDeleteAll(this.nativePtr);
    }

    public Table getTargetTable() {
        return this.targetTable;
    }

    public <T> void addListener(T observer, OrderedRealmCollectionChangeListener<T> listener) {
        if (this.observerPairs.isEmpty()) {
            nativeStartListening(this.nativePtr);
        }
        ObservableCollection.CollectionObserverPair<T> collectionObserverPair = new ObservableCollection.CollectionObserverPair<>(observer, listener);
        this.observerPairs.add(collectionObserverPair);
    }

    public <T> void addListener(T observer, RealmChangeListener<T> listener) {
        addListener(observer, new ObservableCollection.RealmChangeListenerWrapper(listener));
    }

    public <T> void removeListener(T observer, OrderedRealmCollectionChangeListener<T> listener) {
        this.observerPairs.remove(observer, listener);
        if (this.observerPairs.isEmpty()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public <T> void removeListener(T observer, RealmChangeListener<T> listener) {
        removeListener(observer, new ObservableCollection.RealmChangeListenerWrapper(listener));
    }

    public void removeAllListeners() {
        this.observerPairs.clear();
        nativeStopListening(this.nativePtr);
    }

    @Override // io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long nativeChangeSetPtr) {
        OsCollectionChangeSet changeset = new OsCollectionChangeSet(nativeChangeSetPtr, false);
        if (changeset.isEmpty()) {
            return;
        }
        this.observerPairs.foreach(new ObservableCollection.Callback(changeset));
    }
}
