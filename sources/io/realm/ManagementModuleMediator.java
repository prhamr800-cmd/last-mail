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
import io.realm.internal.permissions.PermissionChange;
import io.realm.internal.permissions.PermissionOfferResponse;
import io.realm.io_realm_internal_permissions_PermissionChangeRealmProxy;
import io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxy;
import io.realm.io_realm_permissions_PermissionOfferRealmProxy;
import io.realm.permissions.PermissionOffer;
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
class ManagementModuleMediator extends RealmProxyMediator {
    private static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    @Override // io.realm.internal.RealmProxyMediator
    public boolean transformerApplied() {
        return true;
    }

    ManagementModuleMediator() {
    }

    static {
        Set<Class<? extends RealmModel>> modelClasses = new HashSet<>(3);
        modelClasses.add(PermissionOfferResponse.class);
        modelClasses.add(PermissionChange.class);
        modelClasses.add(PermissionOffer.class);
        MODEL_CLASSES = Collections.unmodifiableSet(modelClasses);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        Map<Class<? extends RealmModel>, OsObjectSchemaInfo> infoMap = new HashMap<>(3);
        infoMap.put(PermissionOfferResponse.class, io_realm_internal_permissions_PermissionOfferResponseRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(PermissionChange.class, io_realm_internal_permissions_PermissionChangeRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(PermissionOffer.class, io_realm_permissions_PermissionOfferRealmProxy.getExpectedObjectSchemaInfo());
        return infoMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> clazz, OsSchemaInfo schemaInfo) {
        checkClass(clazz);
        if (clazz.equals(PermissionOfferResponse.class)) {
            return io_realm_internal_permissions_PermissionOfferResponseRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(PermissionChange.class)) {
            return io_realm_internal_permissions_PermissionChangeRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(PermissionOffer.class)) {
            return io_realm_permissions_PermissionOfferRealmProxy.createColumnInfo(schemaInfo);
        }
        throw getMissingProxyClassException(clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> clazz) {
        checkClass(clazz);
        if (clazz.equals(PermissionOfferResponse.class)) {
            return io_realm_internal_permissions_PermissionOfferResponseRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(PermissionChange.class)) {
            return io_realm_internal_permissions_PermissionChangeRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(PermissionOffer.class)) {
            return io_realm_permissions_PermissionOfferRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw getMissingProxyClassException(clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E newInstance(Class<E> clazz, Object baseRealm, Row row, ColumnInfo columnInfo, boolean acceptDefaultValue, List<String> excludeFields) {
        BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
        try {
            objectContext.set((BaseRealm) baseRealm, row, columnInfo, acceptDefaultValue, excludeFields);
            checkClass(clazz);
            if (clazz.equals(PermissionOfferResponse.class)) {
                return clazz.cast(new io_realm_internal_permissions_PermissionOfferResponseRealmProxy());
            }
            if (clazz.equals(PermissionChange.class)) {
                return clazz.cast(new io_realm_internal_permissions_PermissionChangeRealmProxy());
            }
            if (clazz.equals(PermissionOffer.class)) {
                return clazz.cast(new io_realm_permissions_PermissionOfferRealmProxy());
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
        if (superclass.equals(PermissionOfferResponse.class)) {
            return (E) superclass.cast(io_realm_internal_permissions_PermissionOfferResponseRealmProxy.copyOrUpdate(realm, (PermissionOfferResponse) obj, update, cache));
        }
        if (superclass.equals(PermissionChange.class)) {
            return (E) superclass.cast(io_realm_internal_permissions_PermissionChangeRealmProxy.copyOrUpdate(realm, (PermissionChange) obj, update, cache));
        }
        if (superclass.equals(PermissionOffer.class)) {
            return (E) superclass.cast(io_realm_permissions_PermissionOfferRealmProxy.copyOrUpdate(realm, (PermissionOffer) obj, update, cache));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel object, Map<RealmModel, Long> cache) {
        Class<?> superclass = object instanceof RealmObjectProxy ? object.getClass().getSuperclass() : object.getClass();
        if (superclass.equals(PermissionOfferResponse.class)) {
            io_realm_internal_permissions_PermissionOfferResponseRealmProxy.insert(realm, (PermissionOfferResponse) object, cache);
        } else if (superclass.equals(PermissionChange.class)) {
            io_realm_internal_permissions_PermissionChangeRealmProxy.insert(realm, (PermissionChange) object, cache);
        } else {
            if (superclass.equals(PermissionOffer.class)) {
                io_realm_permissions_PermissionOfferRealmProxy.insert(realm, (PermissionOffer) object, cache);
                return;
            }
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, Collection<? extends RealmModel> objects) {
        Iterator<? extends RealmModel> iterator = objects.iterator();
        Map<RealmModel, Long> cache = new HashMap<>(objects.size());
        if (iterator.hasNext()) {
            RealmModel object = iterator.next();
            Class<?> superclass = object instanceof RealmObjectProxy ? object.getClass().getSuperclass() : object.getClass();
            if (superclass.equals(PermissionOfferResponse.class)) {
                io_realm_internal_permissions_PermissionOfferResponseRealmProxy.insert(realm, (PermissionOfferResponse) object, cache);
            } else if (superclass.equals(PermissionChange.class)) {
                io_realm_internal_permissions_PermissionChangeRealmProxy.insert(realm, (PermissionChange) object, cache);
            } else if (superclass.equals(PermissionOffer.class)) {
                io_realm_permissions_PermissionOfferRealmProxy.insert(realm, (PermissionOffer) object, cache);
            } else {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (iterator.hasNext()) {
                if (superclass.equals(PermissionOfferResponse.class)) {
                    io_realm_internal_permissions_PermissionOfferResponseRealmProxy.insert(realm, iterator, cache);
                } else if (superclass.equals(PermissionChange.class)) {
                    io_realm_internal_permissions_PermissionChangeRealmProxy.insert(realm, iterator, cache);
                } else {
                    if (superclass.equals(PermissionOffer.class)) {
                        io_realm_permissions_PermissionOfferRealmProxy.insert(realm, iterator, cache);
                        return;
                    }
                    throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
                }
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel obj, Map<RealmModel, Long> cache) {
        Class<?> superclass = obj instanceof RealmObjectProxy ? obj.getClass().getSuperclass() : obj.getClass();
        if (superclass.equals(PermissionOfferResponse.class)) {
            io_realm_internal_permissions_PermissionOfferResponseRealmProxy.insertOrUpdate(realm, (PermissionOfferResponse) obj, cache);
        } else if (superclass.equals(PermissionChange.class)) {
            io_realm_internal_permissions_PermissionChangeRealmProxy.insertOrUpdate(realm, (PermissionChange) obj, cache);
        } else {
            if (superclass.equals(PermissionOffer.class)) {
                io_realm_permissions_PermissionOfferRealmProxy.insertOrUpdate(realm, (PermissionOffer) obj, cache);
                return;
            }
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, Collection<? extends RealmModel> objects) {
        Iterator<? extends RealmModel> iterator = objects.iterator();
        Map<RealmModel, Long> cache = new HashMap<>(objects.size());
        if (iterator.hasNext()) {
            RealmModel object = iterator.next();
            Class<?> superclass = object instanceof RealmObjectProxy ? object.getClass().getSuperclass() : object.getClass();
            if (superclass.equals(PermissionOfferResponse.class)) {
                io_realm_internal_permissions_PermissionOfferResponseRealmProxy.insertOrUpdate(realm, (PermissionOfferResponse) object, cache);
            } else if (superclass.equals(PermissionChange.class)) {
                io_realm_internal_permissions_PermissionChangeRealmProxy.insertOrUpdate(realm, (PermissionChange) object, cache);
            } else if (superclass.equals(PermissionOffer.class)) {
                io_realm_permissions_PermissionOfferRealmProxy.insertOrUpdate(realm, (PermissionOffer) object, cache);
            } else {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (iterator.hasNext()) {
                if (superclass.equals(PermissionOfferResponse.class)) {
                    io_realm_internal_permissions_PermissionOfferResponseRealmProxy.insertOrUpdate(realm, iterator, cache);
                } else if (superclass.equals(PermissionChange.class)) {
                    io_realm_internal_permissions_PermissionChangeRealmProxy.insertOrUpdate(realm, iterator, cache);
                } else {
                    if (superclass.equals(PermissionOffer.class)) {
                        io_realm_permissions_PermissionOfferRealmProxy.insertOrUpdate(realm, iterator, cache);
                        return;
                    }
                    throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
                }
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> clazz, Realm realm, JSONObject json, boolean update) throws JSONException {
        checkClass(clazz);
        if (clazz.equals(PermissionOfferResponse.class)) {
            return clazz.cast(io_realm_internal_permissions_PermissionOfferResponseRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(PermissionChange.class)) {
            return clazz.cast(io_realm_internal_permissions_PermissionChangeRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(PermissionOffer.class)) {
            return clazz.cast(io_realm_permissions_PermissionOfferRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> clazz, Realm realm, JsonReader reader) throws IOException {
        checkClass(clazz);
        if (clazz.equals(PermissionOfferResponse.class)) {
            return clazz.cast(io_realm_internal_permissions_PermissionOfferResponseRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(PermissionChange.class)) {
            return clazz.cast(io_realm_internal_permissions_PermissionChangeRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(PermissionOffer.class)) {
            return clazz.cast(io_realm_permissions_PermissionOfferRealmProxy.createUsingJsonStream(realm, reader));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) clazz);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E realmObject, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Class<? super Object> superclass = realmObject.getClass().getSuperclass();
        if (superclass.equals(PermissionOfferResponse.class)) {
            return (E) superclass.cast(io_realm_internal_permissions_PermissionOfferResponseRealmProxy.createDetachedCopy((PermissionOfferResponse) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(PermissionChange.class)) {
            return (E) superclass.cast(io_realm_internal_permissions_PermissionChangeRealmProxy.createDetachedCopy((PermissionChange) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(PermissionOffer.class)) {
            return (E) superclass.cast(io_realm_permissions_PermissionOfferRealmProxy.createDetachedCopy((PermissionOffer) realmObject, 0, maxDepth, cache));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }
}
