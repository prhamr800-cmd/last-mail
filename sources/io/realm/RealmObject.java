package io.realm;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.realm.ProxyState;
import io.realm.annotations.RealmClass;
import io.realm.internal.InvalidRow;
import io.realm.internal.ManagableObject;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.rx.ObjectChange;

/* JADX INFO: loaded from: classes.dex */
@RealmClass
public abstract class RealmObject implements RealmModel, ManagableObject {
    static final String MSG_DELETED_OBJECT = "the object is already deleted.";
    static final String MSG_DYNAMIC_OBJECT = "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead.";
    static final String MSG_NULL_OBJECT = "'model' is null.";

    public final void deleteFromRealm() {
        deleteFromRealm(this);
    }

    public static <E extends RealmModel> void deleteFromRealm(E object) {
        if (!(object instanceof RealmObjectProxy)) {
            throw new IllegalArgumentException("Object not managed by Realm, so it cannot be removed.");
        }
        RealmObjectProxy proxy = (RealmObjectProxy) object;
        if (proxy.realmGet$proxyState().getRow$realm() == null) {
            throw new IllegalStateException("Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
        }
        if (proxy.realmGet$proxyState().getRealm$realm() == null) {
            throw new IllegalStateException("Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
        }
        proxy.realmGet$proxyState().getRealm$realm().checkIfValid();
        Row row = proxy.realmGet$proxyState().getRow$realm();
        row.getTable().moveLastOver(row.getIndex());
        proxy.realmGet$proxyState().setRow$realm(InvalidRow.INSTANCE);
    }

    @Override // io.realm.internal.ManagableObject
    public final boolean isValid() {
        return isValid(this);
    }

    public static <E extends RealmModel> boolean isValid(E object) {
        if (!(object instanceof RealmObjectProxy)) {
            return object != null;
        }
        RealmObjectProxy proxy = (RealmObjectProxy) object;
        Row row = proxy.realmGet$proxyState().getRow$realm();
        return row != null && row.isAttached();
    }

    public final boolean isLoaded() {
        return isLoaded(this);
    }

    public static <E extends RealmModel> boolean isLoaded(E object) {
        if (object instanceof RealmObjectProxy) {
            RealmObjectProxy proxy = (RealmObjectProxy) object;
            proxy.realmGet$proxyState().getRealm$realm().checkIfValid();
            return proxy.realmGet$proxyState().isLoaded();
        }
        return true;
    }

    @Override // io.realm.internal.ManagableObject
    public boolean isManaged() {
        return isManaged(this);
    }

    public static <E extends RealmModel> boolean isManaged(E object) {
        return object instanceof RealmObjectProxy;
    }

    public Realm getRealm() {
        return getRealm(this);
    }

    public static Realm getRealm(RealmModel model) {
        if (model == null) {
            throw new IllegalArgumentException(MSG_NULL_OBJECT);
        }
        if (model instanceof DynamicRealmObject) {
            throw new IllegalStateException(MSG_DYNAMIC_OBJECT);
        }
        if (!(model instanceof RealmObjectProxy)) {
            return null;
        }
        BaseRealm realm = ((RealmObjectProxy) model).realmGet$proxyState().getRealm$realm();
        realm.checkIfValid();
        if (!isValid(model)) {
            throw new IllegalStateException(MSG_DELETED_OBJECT);
        }
        return (Realm) realm;
    }

    public final boolean load() {
        return load(this);
    }

    public static <E extends RealmModel> boolean load(E object) {
        if (isLoaded(object)) {
            return true;
        }
        if (object instanceof RealmObjectProxy) {
            ((RealmObjectProxy) object).realmGet$proxyState().load();
            return true;
        }
        return false;
    }

    public final <E extends RealmModel> void addChangeListener(RealmObjectChangeListener<E> listener) {
        addChangeListener(this, (RealmObjectChangeListener<RealmObject>) listener);
    }

    public final <E extends RealmModel> void addChangeListener(RealmChangeListener<E> listener) {
        addChangeListener(this, (RealmChangeListener<RealmObject>) listener);
    }

    public static <E extends RealmModel> void addChangeListener(E object, RealmObjectChangeListener<E> listener) {
        if (object == null) {
            throw new IllegalArgumentException("Object should not be null");
        }
        if (listener == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        if (object instanceof RealmObjectProxy) {
            RealmObjectProxy proxy = (RealmObjectProxy) object;
            BaseRealm realm = proxy.realmGet$proxyState().getRealm$realm();
            realm.checkIfValid();
            realm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
            proxy.realmGet$proxyState().addChangeListener(listener);
            return;
        }
        throw new IllegalArgumentException("Cannot add listener from this unmanaged RealmObject (created outside of Realm)");
    }

    public static <E extends RealmModel> void addChangeListener(E object, RealmChangeListener<E> listener) {
        addChangeListener(object, new ProxyState.RealmChangeListenerWrapper(listener));
    }

    public final void removeChangeListener(RealmObjectChangeListener listener) {
        removeChangeListener(this, listener);
    }

    public final void removeChangeListener(RealmChangeListener listener) {
        removeChangeListener(this, (RealmChangeListener<RealmObject>) listener);
    }

    public static <E extends RealmModel> void removeChangeListener(E object, RealmObjectChangeListener listener) {
        if (object == null) {
            throw new IllegalArgumentException("Object should not be null");
        }
        if (listener == null) {
            throw new IllegalArgumentException("Listener should not be null");
        }
        if (object instanceof RealmObjectProxy) {
            RealmObjectProxy proxy = (RealmObjectProxy) object;
            BaseRealm realm = proxy.realmGet$proxyState().getRealm$realm();
            realm.checkIfValid();
            realm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
            proxy.realmGet$proxyState().removeChangeListener(listener);
            return;
        }
        throw new IllegalArgumentException("Cannot remove listener from this unmanaged RealmObject (created outside of Realm)");
    }

    public static <E extends RealmModel> void removeChangeListener(E object, RealmChangeListener<E> listener) {
        removeChangeListener(object, new ProxyState.RealmChangeListenerWrapper(listener));
    }

    public final void removeAllChangeListeners() {
        removeAllChangeListeners(this);
    }

    public static <E extends RealmModel> void removeAllChangeListeners(E object) {
        if (object instanceof RealmObjectProxy) {
            RealmObjectProxy proxy = (RealmObjectProxy) object;
            BaseRealm realm = proxy.realmGet$proxyState().getRealm$realm();
            realm.checkIfValid();
            realm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
            proxy.realmGet$proxyState().removeAllChangeListeners();
            return;
        }
        throw new IllegalArgumentException("Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)");
    }

    public final <E extends RealmObject> Flowable<E> asFlowable() {
        return asFlowable(this);
    }

    public final <E extends RealmObject> Observable<ObjectChange<E>> asChangesetObservable() {
        return asChangesetObservable(this);
    }

    public static <E extends RealmModel> Flowable<E> asFlowable(E object) {
        if (object instanceof RealmObjectProxy) {
            RealmObjectProxy proxy = (RealmObjectProxy) object;
            BaseRealm realm = proxy.realmGet$proxyState().getRealm$realm();
            if (realm instanceof Realm) {
                return realm.configuration.getRxFactory().from((Realm) realm, object);
            }
            if (realm instanceof DynamicRealm) {
                DynamicRealm dynamicRealm = (DynamicRealm) realm;
                DynamicRealmObject dynamicObject = (DynamicRealmObject) object;
                Flowable<E> observable = realm.configuration.getRxFactory().from(dynamicRealm, dynamicObject);
                return observable;
            }
            throw new UnsupportedOperationException(realm.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
    }

    public static <E extends RealmModel> Observable<ObjectChange<E>> asChangesetObservable(E object) {
        if (object instanceof RealmObjectProxy) {
            RealmObjectProxy proxy = (RealmObjectProxy) object;
            BaseRealm realm = proxy.realmGet$proxyState().getRealm$realm();
            if (realm instanceof Realm) {
                return realm.configuration.getRxFactory().changesetsFrom((Realm) realm, object);
            }
            if (realm instanceof DynamicRealm) {
                DynamicRealm dynamicRealm = (DynamicRealm) realm;
                DynamicRealmObject dynamicObject = (DynamicRealmObject) object;
                return realm.configuration.getRxFactory().changesetsFrom(dynamicRealm, dynamicObject);
            }
            throw new UnsupportedOperationException(realm.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
    }
}
