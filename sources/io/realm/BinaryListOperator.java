package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RealmList.java */
/* JADX INFO: loaded from: classes2.dex */
final class BinaryListOperator extends ManagedListOperator<byte[]> {
    BinaryListOperator(BaseRealm realm, OsList osList, Class<byte[]> clazz) {
        super(realm, osList, clazz);
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    @Override // io.realm.ManagedListOperator
    @Nullable
    public byte[] get(int index) {
        return (byte[]) this.osList.getValue(index);
    }

    @Override // io.realm.ManagedListOperator
    protected void checkValidValue(@Nullable Object value) {
        if (value != null && !(value instanceof byte[])) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "byte[]", value.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object value) {
        this.osList.addBinary((byte[]) value);
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int index, Object value) {
        this.osList.insertBinary(index, (byte[]) value);
    }

    @Override // io.realm.ManagedListOperator
    protected void setValue(int index, Object value) {
        this.osList.setBinary(index, (byte[]) value);
    }
}
