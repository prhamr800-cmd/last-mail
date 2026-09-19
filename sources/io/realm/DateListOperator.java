package io.realm;

import io.realm.internal.OsList;
import java.util.Date;
import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RealmList.java */
/* JADX INFO: loaded from: classes2.dex */
final class DateListOperator extends ManagedListOperator<Date> {
    DateListOperator(BaseRealm realm, OsList osList, Class<Date> clazz) {
        super(realm, osList, clazz);
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    @Override // io.realm.ManagedListOperator
    @Nullable
    public Date get(int index) {
        return (Date) this.osList.getValue(index);
    }

    @Override // io.realm.ManagedListOperator
    protected void checkValidValue(@Nullable Object value) {
        if (value != null && !(value instanceof Date)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.util.Date", value.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object value) {
        this.osList.addDate((Date) value);
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int index, Object value) {
        this.osList.insertDate(index, (Date) value);
    }

    @Override // io.realm.ManagedListOperator
    protected void setValue(int index, Object value) {
        this.osList.setDate(index, (Date) value);
    }
}
