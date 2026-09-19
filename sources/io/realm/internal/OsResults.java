package io.realm.internal;

import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.RealmChangeListener;
import io.realm.internal.ObservableCollection;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class OsResults implements NativeObject, ObservableCollection {
    public static final byte AGGREGATE_FUNCTION_AVERAGE = 3;
    public static final byte AGGREGATE_FUNCTION_MAXIMUM = 2;
    public static final byte AGGREGATE_FUNCTION_MINIMUM = 1;
    public static final byte AGGREGATE_FUNCTION_SUM = 4;
    private static final String CLOSED_REALM_MESSAGE = "This Realm instance has already been closed, making it unusable.";
    public static final byte MODE_EMPTY = 0;
    public static final byte MODE_LINKVIEW = 3;
    public static final byte MODE_QUERY = 2;
    public static final byte MODE_TABLE = 1;
    public static final byte MODE_TABLEVIEW = 4;
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final NativeContext context;
    protected boolean loaded;
    private final long nativePtr;
    private final OsSharedRealm sharedRealm;
    private final Table table;
    private boolean isSnapshot = false;
    protected final ObserverPairList<ObservableCollection.CollectionObserverPair> observerPairs = new ObserverPairList<>();

    private static native Object nativeAggregate(long j, long j2, byte b);

    private static native void nativeClear(long j);

    private static native boolean nativeContains(long j, long j2);

    protected static native long nativeCreateResults(long j, long j2, @Nullable SortDescriptor sortDescriptor, @Nullable SortDescriptor sortDescriptor2);

    private static native long nativeCreateResultsFromBacklinks(long j, long j2, long j3, long j4);

    private static native long nativeCreateSnapshot(long j);

    private static native void nativeDelete(long j, long j2);

    private static native boolean nativeDeleteFirst(long j);

    private static native boolean nativeDeleteLast(long j);

    private static native long nativeDistinct(long j, SortDescriptor sortDescriptor);

    private static native void nativeEvaluateQueryIfNeeded(long j, boolean z);

    private static native long nativeFirstRow(long j);

    private static native long nativeGetFinalizerPtr();

    private static native byte nativeGetMode(long j);

    private static native long nativeGetRow(long j, int i);

    private static native long nativeIndexOf(long j, long j2);

    private static native boolean nativeIsValid(long j);

    private static native long nativeLastRow(long j);

    private static native long nativeSize(long j);

    private static native long nativeSort(long j, SortDescriptor sortDescriptor);

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    private static native long nativeWhere(long j);

    public static abstract class Iterator<T> implements java.util.Iterator<T> {
        OsResults iteratorOsResults;
        protected int pos = -1;

        protected abstract T convertRowToObject(UncheckedRow uncheckedRow);

        public Iterator(OsResults osResults) {
            if (osResults.sharedRealm.isClosed()) {
                throw new IllegalStateException(OsResults.CLOSED_REALM_MESSAGE);
            }
            this.iteratorOsResults = osResults;
            if (!osResults.isSnapshot) {
                if (!osResults.sharedRealm.isInTransaction()) {
                    this.iteratorOsResults.sharedRealm.addIterator(this);
                } else {
                    detach();
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            checkValid();
            return ((long) (this.pos + 1)) < this.iteratorOsResults.size();
        }

        @Override // java.util.Iterator
        @Nullable
        public T next() {
            checkValid();
            this.pos++;
            if (this.pos >= this.iteratorOsResults.size()) {
                throw new NoSuchElementException("Cannot access index " + this.pos + " when size is " + this.iteratorOsResults.size() + ". Remember to check hasNext() before using next().");
            }
            return get(this.pos);
        }

        @Override // java.util.Iterator
        @Deprecated
        public void remove() {
            throw new UnsupportedOperationException("remove() is not supported by RealmResults iterators.");
        }

        void detach() {
            this.iteratorOsResults = this.iteratorOsResults.createSnapshot();
        }

        void invalidate() {
            this.iteratorOsResults = null;
        }

        void checkValid() {
            if (this.iteratorOsResults == null) {
                throw new ConcurrentModificationException("No outside changes to a Realm is allowed while iterating a living Realm collection.");
            }
        }

        @Nullable
        T get(int pos) {
            return convertRowToObject(this.iteratorOsResults.getUncheckedRow(pos));
        }
    }

    public static abstract class ListIterator<T> extends Iterator<T> implements java.util.ListIterator<T> {
        public ListIterator(OsResults osResults, int start) {
            super(osResults);
            if (start >= 0 && start <= this.iteratorOsResults.size()) {
                this.pos = start - 1;
                return;
            }
            throw new IndexOutOfBoundsException("Starting location must be a valid index: [0, " + (this.iteratorOsResults.size() - 1) + "]. Yours was " + start);
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void add(@Nullable T object) {
            throw new UnsupportedOperationException("Adding an element is not supported. Use Realm.createObject() instead.");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            checkValid();
            return this.pos >= 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            checkValid();
            return this.pos + 1;
        }

        @Override // java.util.ListIterator
        @Nullable
        public T previous() {
            checkValid();
            try {
                T obj = get(this.pos);
                this.pos--;
                return obj;
            } catch (IndexOutOfBoundsException e) {
                throw new NoSuchElementException("Cannot access index less than zero. This was " + this.pos + ". Remember to check hasPrevious() before using previous().");
            }
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            checkValid();
            return this.pos;
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void set(@Nullable T object) {
            throw new UnsupportedOperationException("Replacing an element is not supported.");
        }
    }

    public enum Aggregate {
        MINIMUM((byte) 1),
        MAXIMUM((byte) 2),
        AVERAGE((byte) 3),
        SUM((byte) 4);

        private final byte value;

        Aggregate(byte value) {
            this.value = value;
        }

        public byte getValue() {
            return this.value;
        }
    }

    public enum Mode {
        EMPTY,
        TABLE,
        QUERY,
        LINKVIEW,
        TABLEVIEW;

        static Mode getByValue(byte value) {
            switch (value) {
                case 0:
                    return EMPTY;
                case 1:
                    return TABLE;
                case 2:
                    return QUERY;
                case 3:
                    return LINKVIEW;
                case 4:
                    return TABLEVIEW;
                default:
                    throw new IllegalArgumentException("Invalid value: " + ((int) value));
            }
        }
    }

    public static OsResults createForBacklinks(OsSharedRealm realm, UncheckedRow row, Table srcTable, String srcFieldName) {
        long backlinksPtr = nativeCreateResultsFromBacklinks(realm.getNativePtr(), row.getNativePtr(), srcTable.getNativePtr(), srcTable.getColumnIndex(srcFieldName));
        return new OsResults(realm, srcTable, backlinksPtr);
    }

    public static OsResults createFromQuery(OsSharedRealm sharedRealm, TableQuery query, @Nullable SortDescriptor sortDescriptor, @Nullable SortDescriptor distinctDescriptor) {
        query.validateQuery();
        long ptr = nativeCreateResults(sharedRealm.getNativePtr(), query.getNativePtr(), sortDescriptor, distinctDescriptor);
        return new OsResults(sharedRealm, query.getTable(), ptr);
    }

    public static OsResults createFromQuery(OsSharedRealm sharedRealm, TableQuery query) {
        return createFromQuery(sharedRealm, query, null, null);
    }

    OsResults(OsSharedRealm sharedRealm, Table table, long nativePtr) {
        this.sharedRealm = sharedRealm;
        this.context = sharedRealm.context;
        this.table = table;
        this.nativePtr = nativePtr;
        this.context.addReference(this);
        this.loaded = getMode() != Mode.QUERY;
    }

    public OsResults createSnapshot() {
        if (this.isSnapshot) {
            return this;
        }
        OsResults osResults = new OsResults(this.sharedRealm, this.table, nativeCreateSnapshot(this.nativePtr));
        osResults.isSnapshot = true;
        return osResults;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    public UncheckedRow getUncheckedRow(int index) {
        return this.table.getUncheckedRowByPointer(nativeGetRow(this.nativePtr, index));
    }

    public UncheckedRow firstUncheckedRow() {
        long rowPtr = nativeFirstRow(this.nativePtr);
        if (rowPtr != 0) {
            return this.table.getUncheckedRowByPointer(rowPtr);
        }
        return null;
    }

    public UncheckedRow lastUncheckedRow() {
        long rowPtr = nativeLastRow(this.nativePtr);
        if (rowPtr != 0) {
            return this.table.getUncheckedRowByPointer(rowPtr);
        }
        return null;
    }

    public Table getTable() {
        return this.table;
    }

    public TableQuery where() {
        long nativeQueryPtr = nativeWhere(this.nativePtr);
        return new TableQuery(this.context, this.table, nativeQueryPtr);
    }

    public Number aggregateNumber(Aggregate aggregateMethod, long columnIndex) {
        return (Number) nativeAggregate(this.nativePtr, columnIndex, aggregateMethod.getValue());
    }

    public Date aggregateDate(Aggregate aggregateMethod, long columnIndex) {
        return (Date) nativeAggregate(this.nativePtr, columnIndex, aggregateMethod.getValue());
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }

    public void clear() {
        nativeClear(this.nativePtr);
    }

    public OsResults sort(SortDescriptor sortDescriptor) {
        return new OsResults(this.sharedRealm, this.table, nativeSort(this.nativePtr, sortDescriptor));
    }

    public OsResults distinct(SortDescriptor distinctDescriptor) {
        return new OsResults(this.sharedRealm, this.table, nativeDistinct(this.nativePtr, distinctDescriptor));
    }

    public boolean contains(UncheckedRow row) {
        return nativeContains(this.nativePtr, row.getNativePtr());
    }

    public int indexOf(UncheckedRow row) {
        long index = nativeIndexOf(this.nativePtr, row.getNativePtr());
        if (index > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) index;
    }

    public void delete(long index) {
        nativeDelete(this.nativePtr, index);
    }

    public boolean deleteFirst() {
        return nativeDeleteFirst(this.nativePtr);
    }

    public boolean deleteLast() {
        return nativeDeleteLast(this.nativePtr);
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

    public boolean isValid() {
        return nativeIsValid(this.nativePtr);
    }

    @Override // io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long nativeChangeSetPtr) {
        OsCollectionChangeSet changeset;
        if (nativeChangeSetPtr == 0) {
            changeset = new EmptyLoadChangeSet(null, this.sharedRealm.isPartial());
        } else {
            changeset = new OsCollectionChangeSet(nativeChangeSetPtr, !isLoaded(), null, this.sharedRealm.isPartial());
        }
        if (changeset.isEmpty() && isLoaded()) {
            return;
        }
        this.loaded = true;
        this.observerPairs.foreach(new ObservableCollection.Callback(changeset));
    }

    public Mode getMode() {
        return Mode.getByValue(nativeGetMode(this.nativePtr));
    }

    public boolean isLoaded() {
        return this.loaded;
    }

    public void load() {
        if (this.loaded) {
            return;
        }
        nativeEvaluateQueryIfNeeded(this.nativePtr, false);
        notifyChangeListeners(0L);
    }
}
