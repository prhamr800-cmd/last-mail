package io.realm;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.realm.internal.InvalidRow;
import io.realm.internal.OsResults;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.SortDescriptor;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
abstract class OrderedRealmCollectionImpl<E> extends AbstractList<E> implements OrderedRealmCollection<E> {
    private static final String NOT_SUPPORTED_MESSAGE = "This method is not supported by 'RealmResults' or 'OrderedRealmCollectionSnapshot'.";

    @Nullable
    final String className;

    @Nullable
    final Class<E> classSpec;

    @SuppressFBWarnings({"SS_SHOULD_BE_STATIC"})
    final boolean forValues;
    final OsResults osResults;
    final BaseRealm realm;

    OrderedRealmCollectionImpl(BaseRealm realm, OsResults osResults, Class<E> clazz) {
        this(realm, osResults, clazz, null);
    }

    OrderedRealmCollectionImpl(BaseRealm realm, OsResults osResults, String className) {
        this(realm, osResults, null, className);
    }

    private OrderedRealmCollectionImpl(BaseRealm realm, OsResults osResults, @Nullable Class<E> clazz, @Nullable String className) {
        this.forValues = false;
        this.realm = realm;
        this.osResults = osResults;
        this.classSpec = clazz;
        this.className = className;
    }

    Table getTable() {
        return this.osResults.getTable();
    }

    OsResults getOsResults() {
        return this.osResults;
    }

    @Override // io.realm.RealmCollection, io.realm.internal.ManagableObject
    public boolean isValid() {
        return this.osResults.isValid();
    }

    @Override // io.realm.RealmCollection, io.realm.internal.ManagableObject
    public boolean isManaged() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List, io.realm.RealmCollection
    public boolean contains(@Nullable Object object) {
        if (isLoaded()) {
            if (object instanceof RealmObjectProxy) {
                RealmObjectProxy proxy = (RealmObjectProxy) object;
                if (proxy.realmGet$proxyState().getRow$realm() == InvalidRow.INSTANCE) {
                    return false;
                }
            }
            for (E e : this) {
                if (e.equals(object)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    @Nullable
    public E get(int i) {
        this.realm.checkIfValid();
        return (E) this.realm.get(this.classSpec, this.className, this.osResults.getUncheckedRow(i));
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E first() {
        return firstImpl(true, null);
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E first(@Nullable E defaultValue) {
        return firstImpl(false, defaultValue);
    }

    @Nullable
    private E firstImpl(boolean z, @Nullable E e) {
        UncheckedRow uncheckedRowFirstUncheckedRow = this.osResults.firstUncheckedRow();
        if (uncheckedRowFirstUncheckedRow != null) {
            return (E) this.realm.get(this.classSpec, this.className, uncheckedRowFirstUncheckedRow);
        }
        if (z) {
            throw new IndexOutOfBoundsException("No results were found.");
        }
        return e;
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E last() {
        return lastImpl(true, null);
    }

    @Override // io.realm.OrderedRealmCollection
    @Nullable
    public E last(@Nullable E defaultValue) {
        return lastImpl(false, defaultValue);
    }

    @Nullable
    private E lastImpl(boolean z, @Nullable E e) {
        UncheckedRow uncheckedRowLastUncheckedRow = this.osResults.lastUncheckedRow();
        if (uncheckedRowLastUncheckedRow != null) {
            return (E) this.realm.get(this.classSpec, this.className, uncheckedRowLastUncheckedRow);
        }
        if (z) {
            throw new IndexOutOfBoundsException("No results were found.");
        }
        return e;
    }

    @Override // io.realm.OrderedRealmCollection
    public void deleteFromRealm(int location) {
        this.realm.checkIfValidAndInTransaction();
        this.osResults.delete(location);
    }

    @Override // io.realm.RealmCollection
    public boolean deleteAllFromRealm() {
        this.realm.checkIfValid();
        if (size() > 0) {
            this.osResults.clear();
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new RealmCollectionIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return new RealmCollectionListIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int location) {
        return new RealmCollectionListIterator(location);
    }

    private long getColumnIndexForSort(String fieldName) {
        if (fieldName == null || fieldName.isEmpty()) {
            throw new IllegalArgumentException("Non-empty field name required.");
        }
        if (fieldName.contains(".")) {
            throw new IllegalArgumentException("Aggregates on child object fields are not supported: " + fieldName);
        }
        long columnIndex = this.osResults.getTable().getColumnIndex(fieldName);
        if (columnIndex < 0) {
            throw new IllegalArgumentException(String.format(Locale.US, "Field '%s' does not exist.", fieldName));
        }
        return columnIndex;
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String fieldName) {
        SortDescriptor sortDescriptor = SortDescriptor.getInstanceForSort(getSchemaConnector(), this.osResults.getTable(), fieldName, Sort.ASCENDING);
        OsResults sortedOsResults = this.osResults.sort(sortDescriptor);
        return createLoadedResults(sortedOsResults);
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String fieldName, Sort sortOrder) {
        SortDescriptor sortDescriptor = SortDescriptor.getInstanceForSort(getSchemaConnector(), this.osResults.getTable(), fieldName, sortOrder);
        OsResults sortedOsResults = this.osResults.sort(sortDescriptor);
        return createLoadedResults(sortedOsResults);
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String[] fieldNames, Sort[] sortOrders) {
        SortDescriptor sortDescriptor = SortDescriptor.getInstanceForSort(getSchemaConnector(), this.osResults.getTable(), fieldNames, sortOrders);
        OsResults sortedOsResults = this.osResults.sort(sortDescriptor);
        return createLoadedResults(sortedOsResults);
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String fieldName1, Sort sortOrder1, String fieldName2, Sort sortOrder2) {
        return sort(new String[]{fieldName1, fieldName2}, new Sort[]{sortOrder1, sortOrder2});
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        if (isLoaded()) {
            long size = this.osResults.size();
            if (size > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int) size;
        }
        return 0;
    }

    @Override // io.realm.RealmCollection
    public Number min(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = getColumnIndexForSort(fieldName);
        return this.osResults.aggregateNumber(OsResults.Aggregate.MINIMUM, columnIndex);
    }

    @Override // io.realm.RealmCollection
    public Date minDate(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = getColumnIndexForSort(fieldName);
        return this.osResults.aggregateDate(OsResults.Aggregate.MINIMUM, columnIndex);
    }

    @Override // io.realm.RealmCollection
    public Number max(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = getColumnIndexForSort(fieldName);
        return this.osResults.aggregateNumber(OsResults.Aggregate.MAXIMUM, columnIndex);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Date maxDate(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = getColumnIndexForSort(fieldName);
        return this.osResults.aggregateDate(OsResults.Aggregate.MAXIMUM, columnIndex);
    }

    @Override // io.realm.RealmCollection
    public Number sum(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = getColumnIndexForSort(fieldName);
        return this.osResults.aggregateNumber(OsResults.Aggregate.SUM, columnIndex);
    }

    @Override // io.realm.RealmCollection
    public double average(String fieldName) {
        this.realm.checkIfValid();
        long columnIndex = getColumnIndexForSort(fieldName);
        Number avg = this.osResults.aggregateNumber(OsResults.Aggregate.AVERAGE, columnIndex);
        return avg.doubleValue();
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public E remove(int index) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean remove(Object object) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public E set(int location, E object) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteLastFromRealm() {
        this.realm.checkIfValidAndInTransaction();
        return this.osResults.deleteLast();
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteFirstFromRealm() {
        this.realm.checkIfValidAndInTransaction();
        return this.osResults.deleteFirst();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean add(E element) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public void add(int index, E element) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractList, java.util.List
    @Deprecated
    public boolean addAll(int location, Collection<? extends E> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException(NOT_SUPPORTED_MESSAGE);
    }

    private class RealmCollectionIterator extends OsResults.Iterator<E> {
        RealmCollectionIterator() {
            super(OrderedRealmCollectionImpl.this.osResults);
        }

        @Override // io.realm.internal.OsResults.Iterator
        protected E convertRowToObject(UncheckedRow uncheckedRow) {
            return (E) OrderedRealmCollectionImpl.this.realm.get(OrderedRealmCollectionImpl.this.classSpec, OrderedRealmCollectionImpl.this.className, uncheckedRow);
        }
    }

    @Override // io.realm.OrderedRealmCollection
    public OrderedRealmCollectionSnapshot<E> createSnapshot() {
        if (this.className != null) {
            return new OrderedRealmCollectionSnapshot<>(this.realm, this.osResults, this.className);
        }
        return new OrderedRealmCollectionSnapshot<>(this.realm, this.osResults, this.classSpec);
    }

    private class RealmCollectionListIterator extends OsResults.ListIterator<E> {
        RealmCollectionListIterator(int start) {
            super(OrderedRealmCollectionImpl.this.osResults, start);
        }

        @Override // io.realm.internal.OsResults.Iterator
        protected E convertRowToObject(UncheckedRow uncheckedRow) {
            return (E) OrderedRealmCollectionImpl.this.realm.get(OrderedRealmCollectionImpl.this.classSpec, OrderedRealmCollectionImpl.this.className, uncheckedRow);
        }
    }

    RealmResults<E> createLoadedResults(OsResults newOsResults) {
        RealmResults<E> results;
        if (this.className != null) {
            results = new RealmResults<>(this.realm, newOsResults, this.className);
        } else {
            results = new RealmResults<>(this.realm, newOsResults, this.classSpec);
        }
        results.load();
        return results;
    }

    private SchemaConnector getSchemaConnector() {
        return new SchemaConnector(this.realm.getSchema());
    }
}
