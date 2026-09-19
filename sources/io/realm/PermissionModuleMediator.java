package io.realm;

import android.util.JsonReader;
import io.realm.BaseRealm;
import io.realm.annotations.RealmModule;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import io.realm.io_realm_permissions_PermissionRealmProxy;
import io.realm.permissions.Permission;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@RealmModule
class PermissionModuleMediator extends RealmProxyMediator {
    private static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    @Override // io.realm.internal.RealmProxyMediator
    public boolean transformerApplied() {
        return true;
    }

    PermissionModuleMediator() {
    }

    static {
        Set<Class<? extends RealmModel>> modelClasses = new HashSet<>(1);
        modelClasses.add(Permission.class);
        MODEL_CLASSES = Collections.unmodifiableSet(modelClasses);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        Map<Class<? extends RealmModel>, OsObjectSchemaInfo> infoMap = new HashMap<>(1);
        infoMap.put(Permission.class, io_realm_permissions_PermissionRealmProxy.getExpectedObjectSchemaInfo());
        return infoMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> clazz, OsSchemaInfo schemaInfo) {
        checkClass(clazz);
        if (clazz.equals(Permission.class)) {
            return io_realm_permissions_PermissionRealmProxy.createColumnInfo(schemaInfo);
        }
        throw getMissingProxyClassException(clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> clazz) {
        checkClass(clazz);
        if (clazz.equals(Permission.class)) {
            return io_realm_permissions_PermissionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw getMissingProxyClassException(clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E newInstance(Class<E> clazz, Object baseRealm, Row row, ColumnInfo columnInfo, boolean acceptDefaultValue, List<String> excludeFields) {
        BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
        try {
            objectContext.set((BaseRealm) baseRealm, row, columnInfo, acceptDefaultValue, excludeFields);
            checkClass(clazz);
            if (clazz.equals(Permission.class)) {
                return clazz.cast(new io_realm_permissions_PermissionRealmProxy());
            }
            throw getMissingProxyClassException((Class<? extends RealmModel>) clazz);
        } finally {
            objectContext.clear();
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E obj, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        Class<?> superclass = obj instanceof RealmObjectProxy ? obj.getClass().getSuperclass() : obj.getClass();
        if (superclass.equals(Permission.class)) {
            return (E) superclass.cast(io_realm_permissions_PermissionRealmProxy.copyOrUpdate(realm, (Permission) obj, update, cache));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel object, Map<RealmModel, Long> cache) {
        Class<?> superclass = object instanceof RealmObjectProxy ? object.getClass().getSuperclass() : object.getClass();
        if (superclass.equals(Permission.class)) {
            io_realm_permissions_PermissionRealmProxy.insert(realm, (Permission) object, cache);
            return;
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, Collection<? extends RealmModel> objects) {
        Iterator<? extends RealmModel> iterator = objects.iterator();
        Map<RealmModel, Long> cache = new HashMap<>(objects.size());
        if (iterator.hasNext()) {
            RealmModel object = iterator.next();
            Class<?> superclass = object instanceof RealmObjectProxy ? object.getClass().getSuperclass() : object.getClass();
            if (superclass.equals(Permission.class)) {
                io_realm_permissions_PermissionRealmProxy.insert(realm, (Permission) object, cache);
                if (iterator.hasNext()) {
                    if (superclass.equals(Permission.class)) {
                        io_realm_permissions_PermissionRealmProxy.insert(realm, iterator, cache);
                        return;
                    }
                    throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
                }
                return;
            }
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel obj, Map<RealmModel, Long> cache) {
        Class<?> superclass = obj instanceof RealmObjectProxy ? obj.getClass().getSuperclass() : obj.getClass();
        if (superclass.equals(Permission.class)) {
            io_realm_permissions_PermissionRealmProxy.insertOrUpdate(realm, (Permission) obj, cache);
            return;
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, Collection<? extends RealmModel> objects) {
        Iterator<? extends RealmModel> iterator = objects.iterator();
        Map<RealmModel, Long> cache = new HashMap<>(objects.size());
        if (iterator.hasNext()) {
            RealmModel object = iterator.next();
            Class<?> superclass = object instanceof RealmObjectProxy ? object.getClass().getSuperclass() : object.getClass();
            if (superclass.equals(Permission.class)) {
                io_realm_permissions_PermissionRealmProxy.insertOrUpdate(realm, (Permission) object, cache);
                if (iterator.hasNext()) {
                    if (superclass.equals(Permission.class)) {
                        io_realm_permissions_PermissionRealmProxy.insertOrUpdate(realm, iterator, cache);
                        return;
                    }
                    throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
                }
                return;
            }
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> clazz, Realm realm, JSONObject json, boolean update) throws JSONException {
        checkClass(clazz);
        if (clazz.equals(Permission.class)) {
            return clazz.cast(io_realm_permissions_PermissionRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> clazz, Realm realm, JsonReader reader) throws IOException {
        checkClass(clazz);
        if (clazz.equals(Permission.class)) {
            return clazz.cast(io_realm_permissions_PermissionRealmProxy.createUsingJsonStream(realm, reader));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) clazz);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E realmObject, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Class<? super Object> superclass = realmObject.getClass().getSuperclass();
        if (superclass.equals(Permission.class)) {
            return (E) superclass.cast(io_realm_permissions_PermissionRealmProxy.createDetachedCopy((Permission) realmObject, 0, maxDepth, cache));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }
}
