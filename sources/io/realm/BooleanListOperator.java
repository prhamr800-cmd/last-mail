package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RealmList.java */
/* JADX INFO: loaded from: classes2.dex */
final class BooleanListOperator extends ManagedListOperator<Boolean> {
    BooleanListOperator(BaseRealm realm, OsList osList, Class<Boolean> clazz) {
        super(realm, osList, clazz);
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.realm.ManagedListOperator
    @Nullable
    public Boolean get(int index) {
        return (Boolean) this.osList.getValue(index);
    }

    @Override // io.realm.ManagedListOperator
    protected void checkValidValue(@Nullable Object value) {
        if (value != null && !(value instanceof Boolean)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Boolean", value.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object value) {
        this.osList.addBoolean(((Boolean) value).booleanValue());
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int index, Object value) {
        this.osList.insertBoolean(index, ((Boolean) value).booleanValue());
    }

    @Override // io.realm.ManagedListOperator
    protected void setValue(int index, Object value) {
        this.osList.setBoolean(index, ((Boolean) value).booleanValue());
    }
}
