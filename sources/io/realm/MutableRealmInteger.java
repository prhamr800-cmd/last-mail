package io.realm;

import io.realm.internal.ManagableObject;
import io.realm.internal.Row;
import io.realm.internal.Table;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MutableRealmInteger implements Comparable<MutableRealmInteger>, ManagableObject {
    public abstract void decrement(long j);

    @Nullable
    public abstract Long get();

    public abstract void increment(long j);

    public abstract void set(@Nullable Long l);

    private static final class Unmanaged extends MutableRealmInteger {

        @Nullable
        private Long value;

        @Override // io.realm.MutableRealmInteger, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(MutableRealmInteger mutableRealmInteger) {
            return super.compareTo(mutableRealmInteger);
        }

        Unmanaged(@Nullable Long value) {
            this.value = value;
        }

        @Override // io.realm.internal.ManagableObject
        public boolean isManaged() {
            return false;
        }

        @Override // io.realm.internal.ManagableObject
        public boolean isValid() {
            return true;
        }

        @Override // io.realm.MutableRealmInteger
        public void set(@Nullable Long newValue) {
            this.value = newValue;
        }

        @Override // io.realm.MutableRealmInteger
        @Nullable
        public Long get() {
            return this.value;
        }

        @Override // io.realm.MutableRealmInteger
        public void increment(long inc) {
            if (this.value == null) {
                throw new IllegalStateException("Cannot increment a MutableRealmInteger whose value is null. Set its value first.");
            }
            this.value = Long.valueOf(this.value.longValue() + inc);
        }

        @Override // io.realm.MutableRealmInteger
        public void decrement(long dec) {
            increment(-dec);
        }
    }

    static abstract class Managed<T extends RealmModel> extends MutableRealmInteger {
        protected abstract long getColumnIndex();

        protected abstract ProxyState<T> getProxyState();

        @Override // io.realm.MutableRealmInteger, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(MutableRealmInteger mutableRealmInteger) {
            return super.compareTo(mutableRealmInteger);
        }

        Managed() {
        }

        @Override // io.realm.internal.ManagableObject
        public final boolean isManaged() {
            return true;
        }

        @Override // io.realm.internal.ManagableObject
        public final boolean isValid() {
            return !getRealm().isClosed() && getRow().isAttached();
        }

        @Override // io.realm.MutableRealmInteger
        public final Long get() {
            Row row = getRow();
            row.checkIfAttached();
            long columnIndex = getColumnIndex();
            if (row.isNull(columnIndex)) {
                return null;
            }
            return Long.valueOf(row.getLong(columnIndex));
        }

        @Override // io.realm.MutableRealmInteger
        public final void set(@Nullable Long value) {
            ProxyState<T> proxyState = getProxyState();
            proxyState.getRealm$realm().checkIfValidAndInTransaction();
            if (!proxyState.isUnderConstruction()) {
                setValue(value, false);
            } else {
                if (!proxyState.getAcceptDefaultValue$realm()) {
                    return;
                }
                setValue(value, true);
            }
        }

        @Override // io.realm.MutableRealmInteger
        public final void increment(long inc) {
            getRealm().checkIfValidAndInTransaction();
            Row row = getRow();
            row.getTable().incrementLong(getColumnIndex(), row.getIndex(), inc);
        }

        @Override // io.realm.MutableRealmInteger
        public final void decrement(long dec) {
            increment(-dec);
        }

        private BaseRealm getRealm() {
            return getProxyState().getRealm$realm();
        }

        private Row getRow() {
            return getProxyState().getRow$realm();
        }

        private void setValue(@Nullable Long value, boolean isDefault) {
            Row row = getRow();
            Table table = row.getTable();
            long rowIndex = row.getIndex();
            long columnIndex = getColumnIndex();
            if (value == null) {
                table.setNull(columnIndex, rowIndex, isDefault);
            } else {
                table.setLong(columnIndex, rowIndex, value.longValue(), isDefault);
            }
        }
    }

    public static MutableRealmInteger valueOf(Long value) {
        return new Unmanaged(value);
    }

    public static MutableRealmInteger ofNull() {
        return new Unmanaged(null);
    }

    public static MutableRealmInteger valueOf(long value) {
        return valueOf(Long.valueOf(value));
    }

    public static MutableRealmInteger valueOf(String value) {
        return valueOf(Long.parseLong(value));
    }

    MutableRealmInteger() {
    }

    public final void set(long newValue) {
        set(Long.valueOf(newValue));
    }

    public final boolean isNull() {
        return get() == null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(MutableRealmInteger o) {
        Long thisValue = get();
        Long otherValue = o.get();
        if (thisValue == null) {
            return otherValue == null ? 0 : -1;
        }
        if (otherValue == null) {
            return 1;
        }
        return thisValue.compareTo(otherValue);
    }

    public final int hashCode() {
        Long thisValue = get();
        if (thisValue == null) {
            return 0;
        }
        return thisValue.hashCode();
    }

    public final boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof MutableRealmInteger)) {
            return false;
        }
        Long thisValue = get();
        Long otherValue = ((MutableRealmInteger) o).get();
        return thisValue == null ? otherValue == null : thisValue.equals(otherValue);
    }
}
