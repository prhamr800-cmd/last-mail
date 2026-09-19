package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RealmList.java */
/* JADX INFO: loaded from: classes2.dex */
final class DoubleListOperator extends ManagedListOperator<Double> {
    DoubleListOperator(BaseRealm realm, OsList osList, Class<Double> clazz) {
        super(realm, osList, clazz);
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.realm.ManagedListOperator
    @Nullable
    public Double get(int index) {
        return (Double) this.osList.getValue(index);
    }

    @Override // io.realm.ManagedListOperator
    protected void checkValidValue(@Nullable Object value) {
        if (value != null && !(value instanceof Number)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.Number", value.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object value) {
        this.osList.addDouble(((Number) value).doubleValue());
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int index, Object value) {
        this.osList.insertDouble(index, ((Number) value).doubleValue());
    }

    @Override // io.realm.ManagedListOperator
    protected void setValue(int index, Object value) {
        this.osList.setDouble(index, ((Number) value).doubleValue());
    }
}
