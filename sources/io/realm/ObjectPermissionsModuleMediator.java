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
import io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxy;
import io.realm.io_realm_sync_permissions_PermissionRealmProxy;
import io.realm.io_realm_sync_permissions_PermissionUserRealmProxy;
import io.realm.io_realm_sync_permissions_RealmPermissionsRealmProxy;
import io.realm.io_realm_sync_permissions_RoleRealmProxy;
import io.realm.sync.permissions.ClassPermissions;
import io.realm.sync.permissions.Permission;
import io.realm.sync.permissions.PermissionUser;
import io.realm.sync.permissions.RealmPermissions;
import io.realm.sync.permissions.Role;
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
class ObjectPermissionsModuleMediator extends RealmProxyMediator {
    private static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    @Override // io.realm.internal.RealmProxyMediator
    public boolean transformerApplied() {
        return true;
    }

    ObjectPermissionsModuleMediator() {
    }

    static {
        Set<Class<? extends RealmModel>> modelClasses = new HashSet<>(5);
        modelClasses.add(RealmPermissions.class);
        modelClasses.add(Permission.class);
        modelClasses.add(PermissionUser.class);
        modelClasses.add(Role.class);
        modelClasses.add(ClassPermissions.class);
        MODEL_CLASSES = Collections.unmodifiableSet(modelClasses);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        Map<Class<? extends RealmModel>, OsObjectSchemaInfo> infoMap = new HashMap<>(5);
        infoMap.put(RealmPermissions.class, io_realm_sync_permissions_RealmPermissionsRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(Permission.class, io_realm_sync_permissions_PermissionRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(PermissionUser.class, io_realm_sync_permissions_PermissionUserRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(Role.class, io_realm_sync_permissions_RoleRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(ClassPermissions.class, io_realm_sync_permissions_ClassPermissionsRealmProxy.getExpectedObjectSchemaInfo());
        return infoMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> clazz, OsSchemaInfo schemaInfo) {
        checkClass(clazz);
        if (clazz.equals(RealmPermissions.class)) {
            return io_realm_sync_permissions_RealmPermissionsRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(Permission.class)) {
            return io_realm_sync_permissions_PermissionRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(PermissionUser.class)) {
            return io_realm_sync_permissions_PermissionUserRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(Role.class)) {
            return io_realm_sync_permissions_RoleRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(ClassPermissions.class)) {
            return io_realm_sync_permissions_ClassPermissionsRealmProxy.createColumnInfo(schemaInfo);
        }
        throw getMissingProxyClassException(clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> clazz) {
        checkClass(clazz);
        if (clazz.equals(RealmPermissions.class)) {
            return io_realm_sync_permissions_RealmPermissionsRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(Permission.class)) {
            return io_realm_sync_permissions_PermissionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(PermissionUser.class)) {
            return io_realm_sync_permissions_PermissionUserRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(Role.class)) {
            return io_realm_sync_permissions_RoleRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(ClassPermissions.class)) {
            return io_realm_sync_permissions_ClassPermissionsRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw getMissingProxyClassException(clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E newInstance(Class<E> clazz, Object baseRealm, Row row, ColumnInfo columnInfo, boolean acceptDefaultValue, List<String> excludeFields) {
        BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
        try {
            objectContext.set((BaseRealm) baseRealm, row, columnInfo, acceptDefaultValue, excludeFields);
            checkClass(clazz);
            if (clazz.equals(RealmPermissions.class)) {
                return clazz.cast(new io_realm_sync_permissions_RealmPermissionsRealmProxy());
            }
            if (clazz.equals(Permission.class)) {
                return clazz.cast(new io_realm_sync_permissions_PermissionRealmProxy());
            }
            if (clazz.equals(PermissionUser.class)) {
                return clazz.cast(new io_realm_sync_permissions_PermissionUserRealmProxy());
            }
            if (clazz.equals(Role.class)) {
                return clazz.cast(new io_realm_sync_permissions_RoleRealmProxy());
            }
            if (clazz.equals(ClassPermissions.class)) {
                return clazz.cast(new io_realm_sync_permissions_ClassPermissionsRealmProxy());
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
        if (superclass.equals(RealmPermissions.class)) {
            return (E) superclass.cast(io_realm_sync_permissions_RealmPermissionsRealmProxy.copyOrUpdate(realm, (RealmPermissions) obj, update, cache));
        }
        if (superclass.equals(Permission.class)) {
            return (E) superclass.cast(io_realm_sync_permissions_PermissionRealmProxy.copyOrUpdate(realm, (Permission) obj, update, cache));
        }
        if (superclass.equals(PermissionUser.class)) {
            return (E) superclass.cast(io_realm_sync_permissions_PermissionUserRealmProxy.copyOrUpdate(realm, (PermissionUser) obj, update, cache));
        }
        if (superclass.equals(Role.class)) {
            return (E) superclass.cast(io_realm_sync_permissions_RoleRealmProxy.copyOrUpdate(realm, (Role) obj, update, cache));
        }
        if (superclass.equals(ClassPermissions.class)) {
            return (E) superclass.cast(io_realm_sync_permissions_ClassPermissionsRealmProxy.copyOrUpdate(realm, (ClassPermissions) obj, update, cache));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel object, Map<RealmModel, Long> cache) {
        Class<?> superclass = object instanceof RealmObjectProxy ? object.getClass().getSuperclass() : object.getClass();
        if (superclass.equals(RealmPermissions.class)) {
            io_realm_sync_permissions_RealmPermissionsRealmProxy.insert(realm, (RealmPermissions) object, cache);
            return;
        }
        if (superclass.equals(Permission.class)) {
            io_realm_sync_permissions_PermissionRealmProxy.insert(realm, (Permission) object, cache);
            return;
        }
        if (superclass.equals(PermissionUser.class)) {
            io_realm_sync_permissions_PermissionUserRealmProxy.insert(realm, (PermissionUser) object, cache);
        } else if (superclass.equals(Role.class)) {
            io_realm_sync_permissions_RoleRealmProxy.insert(realm, (Role) object, cache);
        } else {
            if (superclass.equals(ClassPermissions.class)) {
                io_realm_sync_permissions_ClassPermissionsRealmProxy.insert(realm, (ClassPermissions) object, cache);
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
            if (superclass.equals(RealmPermissions.class)) {
                io_realm_sync_permissions_RealmPermissionsRealmProxy.insert(realm, (RealmPermissions) object, cache);
            } else if (superclass.equals(Permission.class)) {
                io_realm_sync_permissions_PermissionRealmProxy.insert(realm, (Permission) object, cache);
            } else if (superclass.equals(PermissionUser.class)) {
                io_realm_sync_permissions_PermissionUserRealmProxy.insert(realm, (PermissionUser) object, cache);
            } else if (superclass.equals(Role.class)) {
                io_realm_sync_permissions_RoleRealmProxy.insert(realm, (Role) object, cache);
            } else if (superclass.equals(ClassPermissions.class)) {
                io_realm_sync_permissions_ClassPermissionsRealmProxy.insert(realm, (ClassPermissions) object, cache);
            } else {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (iterator.hasNext()) {
                if (superclass.equals(RealmPermissions.class)) {
                    io_realm_sync_permissions_RealmPermissionsRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(Permission.class)) {
                    io_realm_sync_permissions_PermissionRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(PermissionUser.class)) {
                    io_realm_sync_permissions_PermissionUserRealmProxy.insert(realm, iterator, cache);
                } else if (superclass.equals(Role.class)) {
                    io_realm_sync_permissions_RoleRealmProxy.insert(realm, iterator, cache);
                } else {
                    if (superclass.equals(ClassPermissions.class)) {
                        io_realm_sync_permissions_ClassPermissionsRealmProxy.insert(realm, iterator, cache);
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
        if (superclass.equals(RealmPermissions.class)) {
            io_realm_sync_permissions_RealmPermissionsRealmProxy.insertOrUpdate(realm, (RealmPermissions) obj, cache);
            return;
        }
        if (superclass.equals(Permission.class)) {
            io_realm_sync_permissions_PermissionRealmProxy.insertOrUpdate(realm, (Permission) obj, cache);
            return;
        }
        if (superclass.equals(PermissionUser.class)) {
            io_realm_sync_permissions_PermissionUserRealmProxy.insertOrUpdate(realm, (PermissionUser) obj, cache);
        } else if (superclass.equals(Role.class)) {
            io_realm_sync_permissions_RoleRealmProxy.insertOrUpdate(realm, (Role) obj, cache);
        } else {
            if (superclass.equals(ClassPermissions.class)) {
                io_realm_sync_permissions_ClassPermissionsRealmProxy.insertOrUpdate(realm, (ClassPermissions) obj, cache);
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
            if (superclass.equals(RealmPermissions.class)) {
                io_realm_sync_permissions_RealmPermissionsRealmProxy.insertOrUpdate(realm, (RealmPermissions) object, cache);
            } else if (superclass.equals(Permission.class)) {
                io_realm_sync_permissions_PermissionRealmProxy.insertOrUpdate(realm, (Permission) object, cache);
            } else if (superclass.equals(PermissionUser.class)) {
                io_realm_sync_permissions_PermissionUserRealmProxy.insertOrUpdate(realm, (PermissionUser) object, cache);
            } else if (superclass.equals(Role.class)) {
                io_realm_sync_permissions_RoleRealmProxy.insertOrUpdate(realm, (Role) object, cache);
            } else if (superclass.equals(ClassPermissions.class)) {
                io_realm_sync_permissions_ClassPermissionsRealmProxy.insertOrUpdate(realm, (ClassPermissions) object, cache);
            } else {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (iterator.hasNext()) {
                if (superclass.equals(RealmPermissions.class)) {
                    io_realm_sync_permissions_RealmPermissionsRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(Permission.class)) {
                    io_realm_sync_permissions_PermissionRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(PermissionUser.class)) {
                    io_realm_sync_permissions_PermissionUserRealmProxy.insertOrUpdate(realm, iterator, cache);
                } else if (superclass.equals(Role.class)) {
                    io_realm_sync_permissions_RoleRealmProxy.insertOrUpdate(realm, iterator, cache);
                } else {
                    if (superclass.equals(ClassPermissions.class)) {
                        io_realm_sync_permissions_ClassPermissionsRealmProxy.insertOrUpdate(realm, iterator, cache);
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
        if (clazz.equals(RealmPermissions.class)) {
            return clazz.cast(io_realm_sync_permissions_RealmPermissionsRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(Permission.class)) {
            return clazz.cast(io_realm_sync_permissions_PermissionRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(PermissionUser.class)) {
            return clazz.cast(io_realm_sync_permissions_PermissionUserRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(Role.class)) {
            return clazz.cast(io_realm_sync_permissions_RoleRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(ClassPermissions.class)) {
            return clazz.cast(io_realm_sync_permissions_ClassPermissionsRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> clazz, Realm realm, JsonReader reader) throws IOException {
        checkClass(clazz);
        if (clazz.equals(RealmPermissions.class)) {
            return clazz.cast(io_realm_sync_permissions_RealmPermissionsRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(Permission.class)) {
            return clazz.cast(io_realm_sync_permissions_PermissionRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(PermissionUser.class)) {
            return clazz.cast(io_realm_sync_permissions_PermissionUserRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(Role.class)) {
            return clazz.cast(io_realm_sync_permissions_RoleRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(ClassPermissions.class)) {
            return clazz.cast(io_realm_sync_permissions_ClassPermissionsRealmProxy.createUsingJsonStream(realm, reader));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) clazz);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E realmObject, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Class<? super Object> superclass = realmObject.getClass().getSuperclass();
        if (superclass.equals(RealmPermissions.class)) {
            return (E) superclass.cast(io_realm_sync_permissions_RealmPermissionsRealmProxy.createDetachedCopy((RealmPermissions) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(Permission.class)) {
            return (E) superclass.cast(io_realm_sync_permissions_PermissionRealmProxy.createDetachedCopy((Permission) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(PermissionUser.class)) {
            return (E) superclass.cast(io_realm_sync_permissions_PermissionUserRealmProxy.createDetachedCopy((PermissionUser) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(Role.class)) {
            return (E) superclass.cast(io_realm_sync_permissions_RoleRealmProxy.createDetachedCopy((Role) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(ClassPermissions.class)) {
            return (E) superclass.cast(io_realm_sync_permissions_ClassPermissionsRealmProxy.createDetachedCopy((ClassPermissions) realmObject, 0, maxDepth, cache));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }
}
