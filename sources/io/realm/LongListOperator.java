package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RealmList.java */
/* JADX INFO: loaded from: classes2.dex */
final class LongListOperator<T> extends ManagedListOperator<T> {
    LongListOperator(BaseRealm realm, OsList osList, Class<T> clazz) {
        super(realm, osList, clazz);
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Long] */
    @Override // io.realm.ManagedListOperator
    @Nullable
    public T get(int i) {
        ?? r0 = (T) ((Long) this.osList.getValue(i));
        if (r0 == 0) {
            return null;
        }
        if (this.clazz == Long.class) {
            return r0;
        }
        if (this.clazz == Integer.class) {
            return this.clazz.cast(Integer.valueOf(r0.intValue()));
        }
        if (this.clazz == Short.class) {
            return this.clazz.cast(Short.valueOf(r0.shortValue()));
        }
        if (this.clazz == Byte.class) {
            return this.clazz.cast(Byte.valueOf(r0.byteValue()));
        }
        throw new IllegalStateException("Unexpected element type: " + this.clazz.getName());
    }

    @Override // io.realm.ManagedListOperator
    protected void checkValidValue(@Nullable Object value) {
        if (value != null && !(value instanceof Number)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Long, java.lang.Integer, java.lang.Short, java.lang.Byte", value.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object value) {
        this.osList.addLong(((Number) value).longValue());
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int index, Object value) {
        this.osList.insertLong(index, ((Number) value).longValue());
    }

    @Override // io.realm.ManagedListOperator
    protected void setValue(int index, Object value) {
        this.osList.setLong(index, ((Number) value).longValue());
    }
}
