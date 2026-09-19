package io.realm;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.realm.internal.InvalidRow;
import io.realm.internal.OsList;
import io.realm.internal.OsResults;
import io.realm.internal.RealmObjectProxy;
import io.realm.rx.CollectionChange;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class RealmList<E> extends AbstractList<E> implements OrderedRealmCollection<E> {
    static final String ALLOWED_ONLY_FOR_REALM_MODEL_ELEMENT_MESSAGE = "This feature is available only when the element type is implementing RealmModel.";
    private static final String ONLY_IN_MANAGED_MODE_MESSAGE = "This method is only available in managed mode.";
    private static final String REMOVE_OUTSIDE_TRANSACTION_ERROR = "Objects can only be removed from inside a write transaction.";

    @Nullable
    protected String className;

    @Nullable
    protected Class<E> clazz;
    private final ManagedListOperator<E> osListOperator;
    protected final BaseRealm realm;
    private List<E> unmanagedList;

    public RealmList() {
        this.realm = null;
        this.osListOperator = null;
        this.unmanagedList = new ArrayList();
    }

    public RealmList(E... objects) {
        if (objects == null) {
            throw new IllegalArgumentException("The objects argument cannot be null");
        }
        this.realm = null;
        this.osListOperator = null;
        this.unmanagedList = new ArrayList(objects.length);
        Collections.addAll(this.unmanagedList, objects);
    }

    RealmList(Class<E> clazz, OsList osList, BaseRealm realm) {
        this.clazz = clazz;
        this.osListOperator = getOperator(realm, osList, clazz, null);
        this.realm = realm;
    }

    RealmList(String className, OsList osList, BaseRealm realm) {
        this.realm = realm;
        this.className = className;
        this.osListOperator = getOperator(realm, osList, null, className);
    }

    OsList getOsList() {
        return this.osListOperator.getOsList();
    }

    @Override // io.realm.RealmCollection, io.realm.internal.ManagableObject
    public boolean isValid() {
        if (this.realm == null) {
            return true;
        }
        if (this.realm.isClosed()) {
            return false;
        }
        return isAttached();
    }

    @Override // io.realm.RealmCollection, io.realm.internal.ManagableObject
    public boolean isManaged() {
        return this.realm != null;
    }

    private boolean isAttached() {
        return this.osListOperator != null && this.osListOperator.isValid();
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int location, @Nullable E element) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.insert(location, element);
        } else {
            this.unmanagedList.add(location, element);
        }
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(@Nullable E object) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.append(object);
        } else {
            this.unmanagedList.add(object);
        }
        this.modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int location, @Nullable E object) {
        if (isManaged()) {
            checkValidRealm();
            E oldObject = this.osListOperator.set(location, object);
            return oldObject;
        }
        E oldObject2 = this.unmanagedList.set(location, object);
        return oldObject2;
    }

    public void move(int oldPos, int newPos) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.move(oldPos, newPos);
            return;
        }
        int listSize = this.unmanagedList.size();
        if (oldPos < 0 || listSize <= oldPos) {
            throw new IndexOutOfBoundsException("Invalid index " + oldPos + ", size is " + listSize);
        }
        if (newPos < 0 || listSize <= newPos) {
            throw new IndexOutOfBoundsException("Invalid index " + newPos + ", size is " + listSize);
        }
        E object = this.unmanagedList.remove(oldPos);
        this.unmanagedList.add(newPos, object);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.removeAll();
        } else {
            this.unmanagedList.clear();
        }
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int location) {
        E removedItem;
        if (isManaged()) {
            checkValidRealm();
            removedItem = get(location);
            this.osListOperator.remove(location);
        } else {
            removedItem = this.unmanagedList.remove(location);
        }
        this.modCount++;
        return removedItem;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(@Nullable Object object) {
        if (isManaged() && !this.realm.isInTransaction()) {
            throw new IllegalStateException(REMOVE_OUTSIDE_TRANSACTION_ERROR);
        }
        return super.remove(object);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        if (isManaged() && !this.realm.isInTransaction()) {
            throw new IllegalStateException(REMOVE_OUTSIDE_TRANSACTION_ERROR);
        }
        return super.removeAll(collection);
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteFirstFromRealm() {
        if (isManaged()) {
            if (this.osListOperator.isEmpty()) {
                return false;
            }
            deleteFromRealm(0);
            this.modCount++;
            return true;
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.OrderedRealmCollection
    public boolean deleteLastFromRealm() {
        if (isManaged()) {
            if (!this.osListOperator.isEmpty()) {
                this.osListOperator.deleteLast();
                this.modCount++;
                return true;
            }
            return false;
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // java.util.AbstractList, java.util.List
    @Nullable
    public E get(int location) {
        if (isManaged()) {
            checkValidRealm();
            return this.osListOperator.get(location);
        }
        return this.unmanagedList.get(location);
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
    private E firstImpl(boolean shouldThrow, @Nullable E defaultValue) {
        if (isManaged()) {
            checkValidRealm();
            if (!this.osListOperator.isEmpty()) {
                return get(0);
            }
        } else if (this.unmanagedList != null && !this.unmanagedList.isEmpty()) {
            return this.unmanagedList.get(0);
        }
        if (shouldThrow) {
            throw new IndexOutOfBoundsException("The list is empty.");
        }
        return defaultValue;
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
    private E lastImpl(boolean shouldThrow, @Nullable E defaultValue) {
        if (isManaged()) {
            checkValidRealm();
            if (!this.osListOperator.isEmpty()) {
                return get(this.osListOperator.size() - 1);
            }
        } else if (this.unmanagedList != null && !this.unmanagedList.isEmpty()) {
            return this.unmanagedList.get(this.unmanagedList.size() - 1);
        }
        if (shouldThrow) {
            throw new IndexOutOfBoundsException("The list is empty.");
        }
        return defaultValue;
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String fieldName) {
        return sort(fieldName, Sort.ASCENDING);
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String fieldName, Sort sortOrder) {
        if (isManaged()) {
            return where().sort(fieldName, sortOrder).findAll();
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String fieldName1, Sort sortOrder1, String fieldName2, Sort sortOrder2) {
        return sort(new String[]{fieldName1, fieldName2}, new Sort[]{sortOrder1, sortOrder2});
    }

    @Override // io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String[] fieldNames, Sort[] sortOrders) {
        if (isManaged()) {
            return where().sort(fieldNames, sortOrders).findAll();
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.OrderedRealmCollection
    public void deleteFromRealm(int location) {
        if (isManaged()) {
            checkValidRealm();
            this.osListOperator.delete(location);
            this.modCount++;
            return;
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        if (isManaged()) {
            checkValidRealm();
            return this.osListOperator.size();
        }
        return this.unmanagedList.size();
    }

    @Override // io.realm.RealmCollection
    public RealmQuery<E> where() {
        if (isManaged()) {
            checkValidRealm();
            if (!this.osListOperator.forRealmModel()) {
                throw new UnsupportedOperationException(ALLOWED_ONLY_FOR_REALM_MODEL_ELEMENT_MESSAGE);
            }
            return RealmQuery.createQueryFromList(this);
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Number min(String fieldName) {
        return where().min(fieldName);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Number max(String fieldName) {
        return where().max(fieldName);
    }

    @Override // io.realm.RealmCollection
    public Number sum(String fieldName) {
        return where().sum(fieldName);
    }

    @Override // io.realm.RealmCollection
    public double average(String fieldName) {
        return where().average(fieldName);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Date maxDate(String fieldName) {
        return where().maximumDate(fieldName);
    }

    @Override // io.realm.RealmCollection
    @Nullable
    public Date minDate(String fieldName) {
        return where().minimumDate(fieldName);
    }

    @Override // io.realm.RealmCollection
    public boolean deleteAllFromRealm() {
        if (isManaged()) {
            checkValidRealm();
            if (!this.osListOperator.isEmpty()) {
                this.osListOperator.deleteAll();
                this.modCount++;
                return true;
            }
            return false;
        }
        throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
    }

    @Override // io.realm.RealmCollection
    public boolean isLoaded() {
        return true;
    }

    @Override // io.realm.RealmCollection
    public boolean load() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List, io.realm.RealmCollection
    public boolean contains(@Nullable Object object) {
        if (isManaged()) {
            this.realm.checkIfValid();
            if (object instanceof RealmObjectProxy) {
                RealmObjectProxy proxy = (RealmObjectProxy) object;
                if (proxy.realmGet$proxyState().getRow$realm() == InvalidRow.INSTANCE) {
                    return false;
                }
            }
            return super.contains(object);
        }
        return this.unmanagedList.contains(object);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @Nonnull
    public Iterator<E> iterator() {
        if (isManaged()) {
            return new RealmItr();
        }
        return super.iterator();
    }

    @Override // java.util.AbstractList, java.util.List
    @Nonnull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    @Nonnull
    public ListIterator<E> listIterator(int location) {
        if (isManaged()) {
            return new RealmListItr(location);
        }
        return super.listIterator(location);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkValidRealm() {
        this.realm.checkIfValid();
    }

    @Override // io.realm.OrderedRealmCollection
    public OrderedRealmCollectionSnapshot<E> createSnapshot() {
        if (!isManaged()) {
            throw new UnsupportedOperationException(ONLY_IN_MANAGED_MODE_MESSAGE);
        }
        checkValidRealm();
        if (!this.osListOperator.forRealmModel()) {
            throw new UnsupportedOperationException(ALLOWED_ONLY_FOR_REALM_MODEL_ELEMENT_MESSAGE);
        }
        if (this.className != null) {
            return new OrderedRealmCollectionSnapshot<>(this.realm, OsResults.createFromQuery(this.realm.sharedRealm, this.osListOperator.getOsList().getQuery()), this.className);
        }
        return new OrderedRealmCollectionSnapshot<>(this.realm, OsResults.createFromQuery(this.realm.sharedRealm, this.osListOperator.getOsList().getQuery()), this.clazz);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (!isManaged()) {
            sb.append("RealmList<?>@[");
            int size = size();
            while (i < size) {
                Object obj = get(i);
                if (obj instanceof RealmModel) {
                    sb.append(System.identityHashCode(obj));
                } else if (obj instanceof byte[]) {
                    sb.append("byte[");
                    sb.append(((byte[]) obj).length);
                    sb.append("]");
                } else {
                    sb.append(obj);
                }
                sb.append(",");
                i++;
            }
            if (size() > 0) {
                sb.setLength(sb.length() - ",".length());
            }
            sb.append("]");
        } else {
            sb.append("RealmList<");
            if (this.className != null) {
                sb.append(this.className);
            } else if (isClassForRealmModel(this.clazz)) {
                sb.append(this.realm.getSchema().getSchemaForClass((Class<? extends RealmModel>) this.clazz).getClassName());
            } else if (this.clazz == byte[].class) {
                sb.append(this.clazz.getSimpleName());
            } else {
                sb.append(this.clazz.getName());
            }
            sb.append(">@[");
            if (!isAttached()) {
                sb.append("invalid");
            } else if (isClassForRealmModel(this.clazz)) {
                while (true) {
                    int i2 = i;
                    if (i2 >= size()) {
                        break;
                    }
                    sb.append(((RealmObjectProxy) get(i2)).realmGet$proxyState().getRow$realm().getIndex());
                    sb.append(",");
                    i = i2 + 1;
                }
                if (size() > 0) {
                    sb.setLength(sb.length() - ",".length());
                }
            } else {
                while (true) {
                    int i3 = i;
                    if (i3 >= size()) {
                        break;
                    }
                    Object obj2 = get(i3);
                    if (obj2 instanceof byte[]) {
                        sb.append("byte[");
                        sb.append(((byte[]) obj2).length);
                        sb.append("]");
                    } else {
                        sb.append(obj2);
                    }
                    sb.append(",");
                    i = i3 + 1;
                }
                if (size() > 0) {
                    sb.setLength(sb.length() - ",".length());
                }
            }
            sb.append("]");
        }
        return sb.toString();
    }

    public Flowable<RealmList<E>> asFlowable() {
        if (this.realm instanceof Realm) {
            return this.realm.configuration.getRxFactory().from((Realm) this.realm, this);
        }
        if (this.realm instanceof DynamicRealm) {
            Flowable<RealmList<E>> results = this.realm.configuration.getRxFactory().from((DynamicRealm) this.realm, this);
            return results;
        }
        throw new UnsupportedOperationException(this.realm.getClass() + " does not support RxJava2.");
    }

    public Observable<CollectionChange<RealmList<E>>> asChangesetObservable() {
        if (this.realm instanceof Realm) {
            return this.realm.configuration.getRxFactory().changesetsFrom((Realm) this.realm, this);
        }
        if (this.realm instanceof DynamicRealm) {
            DynamicRealm dynamicRealm = (DynamicRealm) this.realm;
            return this.realm.configuration.getRxFactory().changesetsFrom(dynamicRealm, this);
        }
        throw new UnsupportedOperationException(this.realm.getClass() + " does not support RxJava2.");
    }

    private void checkForAddRemoveListener(@Nullable Object listener, boolean checkListener) {
        if (checkListener && listener == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        this.realm.checkIfValid();
        this.realm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
    }

    public void addChangeListener(OrderedRealmCollectionChangeListener<RealmList<E>> listener) {
        checkForAddRemoveListener(listener, true);
        this.osListOperator.getOsList().addListener(this, listener);
    }

    public void removeChangeListener(OrderedRealmCollectionChangeListener<RealmList<E>> listener) {
        checkForAddRemoveListener(listener, true);
        this.osListOperator.getOsList().removeListener(this, listener);
    }

    public void addChangeListener(RealmChangeListener<RealmList<E>> listener) {
        checkForAddRemoveListener(listener, true);
        this.osListOperator.getOsList().addListener(this, listener);
    }

    public void removeChangeListener(RealmChangeListener<RealmList<E>> listener) {
        checkForAddRemoveListener(listener, true);
        this.osListOperator.getOsList().removeListener(this, listener);
    }

    public void removeAllChangeListeners() {
        checkForAddRemoveListener(null, false);
        this.osListOperator.getOsList().removeAllListeners();
    }

    /* JADX INFO: loaded from: classes2.dex */
    private class RealmItr implements Iterator<E> {
        int cursor;
        int expectedModCount;
        int lastRet;

        private RealmItr() {
            this.cursor = 0;
            this.lastRet = -1;
            this.expectedModCount = RealmList.this.modCount;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            RealmList.this.checkValidRealm();
            checkConcurrentModification();
            return this.cursor != RealmList.this.size();
        }

        @Override // java.util.Iterator
        @Nullable
        public E next() {
            RealmList.this.checkValidRealm();
            checkConcurrentModification();
            int i = this.cursor;
            try {
                E e = (E) RealmList.this.get(i);
                this.lastRet = i;
                this.cursor = i + 1;
                return e;
            } catch (IndexOutOfBoundsException e2) {
                checkConcurrentModification();
                throw new NoSuchElementException("Cannot access index " + i + " when size is " + RealmList.this.size() + ". Remember to check hasNext() before using next().");
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            RealmList.this.checkValidRealm();
            if (this.lastRet < 0) {
                throw new IllegalStateException("Cannot call remove() twice. Must call next() in between.");
            }
            checkConcurrentModification();
            try {
                RealmList.this.remove(this.lastRet);
                if (this.lastRet < this.cursor) {
                    this.cursor--;
                }
                this.lastRet = -1;
                this.expectedModCount = RealmList.this.modCount;
            } catch (IndexOutOfBoundsException e) {
                throw new ConcurrentModificationException();
            }
        }

        final void checkConcurrentModification() {
            if (RealmList.this.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    private class RealmListItr extends RealmList<E>.RealmItr implements ListIterator<E> {
        RealmListItr(int index) {
            super();
            if (index >= 0 && index <= RealmList.this.size()) {
                this.cursor = index;
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Starting location must be a valid index: [0, ");
            sb.append(RealmList.this.size() - 1);
            sb.append("]. Index was ");
            sb.append(index);
            throw new IndexOutOfBoundsException(sb.toString());
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.cursor != 0;
        }

        @Override // java.util.ListIterator
        @Nullable
        public E previous() {
            checkConcurrentModification();
            int i = this.cursor - 1;
            try {
                E e = (E) RealmList.this.get(i);
                this.cursor = i;
                this.lastRet = i;
                return e;
            } catch (IndexOutOfBoundsException e2) {
                checkConcurrentModification();
                throw new NoSuchElementException("Cannot access index less than zero. This was " + i + ". Remember to check hasPrevious() before using previous().");
            }
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.cursor;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.cursor - 1;
        }

        @Override // java.util.ListIterator
        public void set(@Nullable E e) {
            RealmList.this.realm.checkIfValid();
            if (this.lastRet < 0) {
                throw new IllegalStateException();
            }
            checkConcurrentModification();
            try {
                RealmList.this.set(this.lastRet, e);
                this.expectedModCount = RealmList.this.modCount;
            } catch (IndexOutOfBoundsException e2) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        public void add(@Nullable E e) {
            RealmList.this.realm.checkIfValid();
            checkConcurrentModification();
            try {
                int i = this.cursor;
                RealmList.this.add(i, e);
                this.lastRet = -1;
                this.cursor = i + 1;
                this.expectedModCount = RealmList.this.modCount;
            } catch (IndexOutOfBoundsException e2) {
                throw new ConcurrentModificationException();
            }
        }
    }

    private static boolean isClassForRealmModel(Class<?> clazz) {
        return RealmModel.class.isAssignableFrom(clazz);
    }

    private ManagedListOperator<E> getOperator(BaseRealm realm, OsList osList, @Nullable Class<E> clazz, @Nullable String className) {
        if (clazz == null || isClassForRealmModel(clazz)) {
            return new RealmModelListOperator(realm, osList, clazz, className);
        }
        if (clazz == String.class) {
            return new StringListOperator(realm, osList, clazz);
        }
        if (clazz == Long.class || clazz == Integer.class || clazz == Short.class || clazz == Byte.class) {
            return new LongListOperator(realm, osList, clazz);
        }
        if (clazz == Boolean.class) {
            return new BooleanListOperator(realm, osList, clazz);
        }
        if (clazz == byte[].class) {
            return new BinaryListOperator(realm, osList, clazz);
        }
        if (clazz == Double.class) {
            return new DoubleListOperator(realm, osList, clazz);
        }
        if (clazz == Float.class) {
            return new FloatListOperator(realm, osList, clazz);
        }
        if (clazz == Date.class) {
            return new DateListOperator(realm, osList, clazz);
        }
        throw new IllegalArgumentException("Unexpected value class: " + clazz.getName());
    }
}
