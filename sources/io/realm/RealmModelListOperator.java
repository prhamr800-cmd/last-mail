package io.realm;

import io.realm.internal.OsList;
import io.realm.internal.OsObjectStore;
import io.realm.internal.RealmObjectProxy;
import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RealmList.java */
/* JADX INFO: loaded from: classes2.dex */
final class RealmModelListOperator<T> extends ManagedListOperator<T> {

    @Nullable
    private final String className;

    RealmModelListOperator(BaseRealm realm, OsList osList, @Nullable Class<T> clazz, @Nullable String className) {
        super(realm, osList, clazz);
        this.className = className;
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return true;
    }

    @Override // io.realm.ManagedListOperator
    public T get(int i) {
        return (T) this.realm.get(this.clazz, this.className, this.osList.getUncheckedRow(i));
    }

    @Override // io.realm.ManagedListOperator
    protected void checkValidValue(@Nullable Object value) {
        if (value == null) {
            throw new IllegalArgumentException("RealmList does not accept null values.");
        }
        if (!(value instanceof RealmModel)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.String", value.getClass().getName()));
        }
    }

    private void checkInsertIndex(int index) {
        int size = size();
        if (index < 0 || size < index) {
            throw new IndexOutOfBoundsException("Invalid index " + index + ", size is " + this.osList.size());
        }
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object value) {
        RealmObjectProxy proxy = (RealmObjectProxy) copyToRealmIfNeeded((RealmModel) value);
        this.osList.addRow(proxy.realmGet$proxyState().getRow$realm().getIndex());
    }

    @Override // io.realm.ManagedListOperator
    protected void insertNull(int index) {
        throw new RuntimeException("Should not reach here.");
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int index, Object value) {
        checkInsertIndex(index);
        RealmObjectProxy proxy = (RealmObjectProxy) copyToRealmIfNeeded((RealmModel) value);
        this.osList.insertRow(index, proxy.realmGet$proxyState().getRow$realm().getIndex());
    }

    @Override // io.realm.ManagedListOperator
    protected void setNull(int index) {
        throw new RuntimeException("Should not reach here.");
    }

    @Override // io.realm.ManagedListOperator
    protected void setValue(int index, Object value) {
        RealmObjectProxy proxy = (RealmObjectProxy) copyToRealmIfNeeded((RealmModel) value);
        this.osList.setRow(index, proxy.realmGet$proxyState().getRow$realm().getIndex());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <E extends RealmModel> E copyToRealmIfNeeded(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            if (realmObjectProxy instanceof DynamicRealmObject) {
                String str = this.className;
                if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != this.realm) {
                    if (this.realm.threadId == realmObjectProxy.realmGet$proxyState().getRealm$realm().threadId) {
                        throw new IllegalArgumentException("Cannot copy DynamicRealmObject between Realm instances.");
                    }
                    throw new IllegalStateException("Cannot copy an object to a Realm instance created in another thread.");
                }
                String type = ((DynamicRealmObject) e).getType();
                if (str.equals(type)) {
                    return e;
                }
                throw new IllegalArgumentException(String.format(Locale.US, "The object has a different type from list's. Type of the list is '%s', type of object is '%s'.", str, type));
            }
            if (realmObjectProxy.realmGet$proxyState().getRow$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(this.realm.getPath())) {
                if (this.realm != realmObjectProxy.realmGet$proxyState().getRealm$realm()) {
                    throw new IllegalArgumentException("Cannot copy an object from another Realm instance.");
                }
                return e;
            }
        }
        Realm realm = (Realm) this.realm;
        if (OsObjectStore.getPrimaryKeyForObject(realm.getSharedRealm(), realm.getConfiguration().getSchemaMediator().getSimpleClassName(e.getClass())) != null) {
            return (E) realm.copyToRealmOrUpdate(e);
        }
        return (E) realm.copyToRealm(e);
    }
}
