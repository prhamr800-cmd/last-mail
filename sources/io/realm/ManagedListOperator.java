package io.realm;

import io.realm.internal.OsList;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RealmList.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class ManagedListOperator<T> {
    static final String INVALID_OBJECT_TYPE_MESSAGE = "Unacceptable value type. Acceptable: %1$s, actual: %2$s .";
    static final String NULL_OBJECTS_NOT_ALLOWED_MESSAGE = "RealmList does not accept null values.";

    @Nullable
    final Class<T> clazz;
    final OsList osList;
    final BaseRealm realm;

    protected abstract void appendValue(Object obj);

    protected abstract void checkValidValue(@Nullable Object obj);

    public abstract boolean forRealmModel();

    @Nullable
    public abstract T get(int i);

    protected abstract void insertValue(int i, Object obj);

    protected abstract void setValue(int i, Object obj);

    ManagedListOperator(BaseRealm realm, OsList osList, @Nullable Class<T> clazz) {
        this.realm = realm;
        this.clazz = clazz;
        this.osList = osList;
    }

    public final OsList getOsList() {
        return this.osList;
    }

    public final boolean isValid() {
        return this.osList.isValid();
    }

    public final int size() {
        long actualSize = this.osList.size();
        if (actualSize < 2147483647L) {
            return (int) actualSize;
        }
        return Integer.MAX_VALUE;
    }

    public final boolean isEmpty() {
        return this.osList.isEmpty();
    }

    public final void append(@Nullable Object value) {
        checkValidValue(value);
        if (value == null) {
            appendNull();
        } else {
            appendValue(value);
        }
    }

    private void appendNull() {
        this.osList.addNull();
    }

    public final void insert(int index, @Nullable Object value) {
        checkValidValue(value);
        if (value == null) {
            insertNull(index);
        } else {
            insertValue(index, value);
        }
    }

    protected void insertNull(int index) {
        this.osList.insertNull(index);
    }

    @Nullable
    public final T set(int index, @Nullable Object value) {
        checkValidValue(value);
        T oldObject = get(index);
        if (value == null) {
            setNull(index);
        } else {
            setValue(index, value);
        }
        return oldObject;
    }

    protected void setNull(int index) {
        this.osList.setNull(index);
    }

    final void move(int oldPos, int newPos) {
        this.osList.move(oldPos, newPos);
    }

    final void remove(int index) {
        this.osList.remove(index);
    }

    final void removeAll() {
        this.osList.removeAll();
    }

    final void delete(int index) {
        this.osList.delete(index);
    }

    final void deleteLast() {
        this.osList.delete(this.osList.size() - 1);
    }

    final void deleteAll() {
        this.osList.deleteAll();
    }
}
