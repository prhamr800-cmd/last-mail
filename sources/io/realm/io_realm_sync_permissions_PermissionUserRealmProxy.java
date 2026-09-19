package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import io.realm.BaseRealm;
import io.realm.exceptions.RealmException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.io_realm_sync_permissions_RoleRealmProxy;
import io.realm.sync.permissions.PermissionUser;
import io.realm.sync.permissions.Role;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class io_realm_sync_permissions_PermissionUserRealmProxy extends PermissionUser implements RealmObjectProxy, io_realm_sync_permissions_PermissionUserRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private PermissionUserColumnInfo columnInfo;
    private ProxyState<PermissionUser> proxyState;
    private RealmResults<Role> rolesBacklinks;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "__User";
    }

    static final class PermissionUserColumnInfo extends ColumnInfo {
        long idIndex;
        long roleIndex;

        PermissionUserColumnInfo(OsSchemaInfo schemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.roleIndex = addColumnDetails("role", "role", objectSchemaInfo);
            addBacklinkDetails(schemaInfo, "roles", io_realm_sync_permissions_RoleRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME, "members");
        }

        PermissionUserColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new PermissionUserColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            PermissionUserColumnInfo src = (PermissionUserColumnInfo) rawSrc;
            PermissionUserColumnInfo dst = (PermissionUserColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.roleIndex = src.roleIndex;
        }
    }

    io_realm_sync_permissions_PermissionUserRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (PermissionUserColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // io.realm.sync.permissions.PermissionUser, io.realm.io_realm_sync_permissions_PermissionUserRealmProxyInterface
    public String realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.idIndex);
    }

    @Override // io.realm.sync.permissions.PermissionUser, io.realm.io_realm_sync_permissions_PermissionUserRealmProxyInterface
    public void realmSet$id(String value) {
        if (this.proxyState.isUnderConstruction()) {
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // io.realm.sync.permissions.PermissionUser, io.realm.io_realm_sync_permissions_PermissionUserRealmProxyInterface
    public Role realmGet$role() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.roleIndex)) {
            return null;
        }
        return (Role) this.proxyState.getRealm$realm().get(Role.class, this.proxyState.getRow$realm().getLink(this.columnInfo.roleIndex), false, Collections.emptyList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.sync.permissions.PermissionUser, io.realm.io_realm_sync_permissions_PermissionUserRealmProxyInterface
    public void realmSet$role(Role role) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            RealmModel realmModel = role;
            if (this.proxyState.getExcludeFields$realm().contains("role")) {
                return;
            }
            if (role != 0) {
                boolean zIsManaged = RealmObject.isManaged(role);
                realmModel = role;
                if (!zIsManaged) {
                    realmModel = (Role) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(role);
                }
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (realmModel == null) {
                row$realm.nullifyLink(this.columnInfo.roleIndex);
                return;
            } else {
                this.proxyState.checkValidObject(realmModel);
                row$realm.getTable().setLink(this.columnInfo.roleIndex, row$realm.getIndex(), ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (role == 0) {
            this.proxyState.getRow$realm().nullifyLink(this.columnInfo.roleIndex);
        } else {
            this.proxyState.checkValidObject(role);
            this.proxyState.getRow$realm().setLink(this.columnInfo.roleIndex, ((RealmObjectProxy) role).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // io.realm.sync.permissions.PermissionUser, io.realm.io_realm_sync_permissions_PermissionUserRealmProxyInterface
    public RealmResults<Role> realmGet$roles() {
        BaseRealm realm = this.proxyState.getRealm$realm();
        realm.checkIfValid();
        this.proxyState.getRow$realm().checkIfAttached();
        if (this.rolesBacklinks == null) {
            this.rolesBacklinks = RealmResults.createBacklinkResults(realm, this.proxyState.getRow$realm(), Role.class, "members");
        }
        return this.rolesBacklinks;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 1);
        builder.addPersistedProperty("id", RealmFieldType.STRING, true, true, true);
        builder.addPersistedLinkProperty("role", RealmFieldType.OBJECT, io_realm_sync_permissions_RoleRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addComputedLinkProperty("roles", io_realm_sync_permissions_RoleRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME, "members");
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static PermissionUserColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new PermissionUserColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static PermissionUser createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws Throwable {
        List<String> excludeFields = new ArrayList<>(1);
        PermissionUser obj = null;
        if (update) {
            Table table = realm.getTable(PermissionUser.class);
            PermissionUserColumnInfo columnInfo = (PermissionUserColumnInfo) realm.getSchema().getColumnInfo(PermissionUser.class);
            long pkColumnIndex = columnInfo.idIndex;
            long rowIndex = -1;
            if (!json.isNull("id")) {
                rowIndex = table.findFirstString(pkColumnIndex, json.getString("id"));
            }
            long rowIndex2 = rowIndex;
            if (rowIndex2 != -1) {
                BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
                try {
                    try {
                        objectContext.set(realm, table.getUncheckedRow(rowIndex2), realm.getSchema().getColumnInfo(PermissionUser.class), false, Collections.emptyList());
                        obj = new io_realm_sync_permissions_PermissionUserRealmProxy();
                        objectContext.clear();
                    } catch (Throwable th) {
                        th = th;
                        objectContext.clear();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        if (obj == null) {
            if (json.has("role")) {
                excludeFields.add("role");
            }
            if (json.has("id")) {
                obj = json.isNull("id") ? (io_realm_sync_permissions_PermissionUserRealmProxy) realm.createObjectInternal(PermissionUser.class, null, true, excludeFields) : (io_realm_sync_permissions_PermissionUserRealmProxy) realm.createObjectInternal(PermissionUser.class, json.getString("id"), true, excludeFields);
            } else {
                throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
            }
        }
        io_realm_sync_permissions_PermissionUserRealmProxyInterface objProxy = obj;
        if (json.has("role")) {
            if (!json.isNull("role")) {
                Role roleObj = io_realm_sync_permissions_RoleRealmProxy.createOrUpdateUsingJsonObject(realm, json.getJSONObject("role"), update);
                objProxy.realmSet$role(roleObj);
            } else {
                objProxy.realmSet$role(null);
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static PermissionUser createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        boolean jsonHasPrimaryKey = false;
        PermissionUser obj = new PermissionUser();
        PermissionUser objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("id")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$id(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$id(null);
                }
                jsonHasPrimaryKey = true;
            } else if (name.equals("role")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$role(null);
                } else {
                    Role roleObj = io_realm_sync_permissions_RoleRealmProxy.createUsingJsonStream(realm, reader);
                    objProxy.realmSet$role(roleObj);
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        if (!jsonHasPrimaryKey) {
            throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
        }
        return (PermissionUser) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PermissionUser copyOrUpdate(Realm realm, PermissionUser permissionUser, boolean update, Map<RealmModel, RealmObjectProxy> cache) throws Throwable {
        if ((permissionUser instanceof RealmObjectProxy) && ((RealmObjectProxy) permissionUser).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) permissionUser).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return permissionUser;
            }
        }
        BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(permissionUser);
        if (realmModel != null) {
            return (PermissionUser) realmModel;
        }
        io_realm_sync_permissions_PermissionUserRealmProxy io_realm_sync_permissions_permissionuserrealmproxy = null;
        boolean canUpdate = update;
        if (canUpdate) {
            Table table = realm.getTable(PermissionUser.class);
            PermissionUserColumnInfo columnInfo = (PermissionUserColumnInfo) realm.getSchema().getColumnInfo(PermissionUser.class);
            long pkColumnIndex = columnInfo.idIndex;
            long rowIndex = table.findFirstString(pkColumnIndex, permissionUser.realmGet$id());
            if (rowIndex == -1) {
                canUpdate = false;
            } else {
                try {
                    try {
                        objectContext.set(realm, table.getUncheckedRow(rowIndex), realm.getSchema().getColumnInfo(PermissionUser.class), false, Collections.emptyList());
                        io_realm_sync_permissions_permissionuserrealmproxy = new io_realm_sync_permissions_PermissionUserRealmProxy();
                        cache.put(permissionUser, io_realm_sync_permissions_permissionuserrealmproxy);
                        objectContext.clear();
                    } catch (Throwable th) {
                        th = th;
                        objectContext.clear();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return canUpdate ? update(realm, io_realm_sync_permissions_permissionuserrealmproxy, permissionUser, cache) : copy(realm, permissionUser, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PermissionUser copy(Realm realm, PermissionUser newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (PermissionUser) realmModel;
        }
        PermissionUser permissionUser = (PermissionUser) realm.createObjectInternal(PermissionUser.class, newObject.realmGet$id(), false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) permissionUser);
        PermissionUser realmObjectSource = newObject;
        PermissionUser realmObjectCopy = permissionUser;
        Role roleObj = realmObjectSource.realmGet$role();
        if (roleObj == null) {
            realmObjectCopy.realmSet$role(null);
        } else {
            Role cacherole = (Role) cache.get(roleObj);
            if (cacherole != null) {
                realmObjectCopy.realmSet$role(cacherole);
            } else {
                realmObjectCopy.realmSet$role(io_realm_sync_permissions_RoleRealmProxy.copyOrUpdate(realm, roleObj, update, cache));
            }
        }
        return permissionUser;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, PermissionUser permissionUser, Map<RealmModel, Long> cache) {
        if (!(permissionUser instanceof RealmObjectProxy) || ((RealmObjectProxy) permissionUser).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) permissionUser).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(PermissionUser.class);
            long tableNativePtr = table.getNativePtr();
            PermissionUserColumnInfo columnInfo = (PermissionUserColumnInfo) realm.getSchema().getColumnInfo(PermissionUser.class);
            long pkColumnIndex = columnInfo.idIndex;
            long rowIndex = -1;
            Object primaryKeyValue = permissionUser.realmGet$id();
            if (primaryKeyValue != null) {
                rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
            }
            if (rowIndex == -1) {
                rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
            } else {
                Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
            }
            long rowIndex2 = rowIndex;
            cache.put(permissionUser, Long.valueOf(rowIndex2));
            Role roleObj = permissionUser.realmGet$role();
            if (roleObj != null) {
                Long cacherole = cache.get(roleObj);
                if (cacherole == null) {
                    cacherole = Long.valueOf(io_realm_sync_permissions_RoleRealmProxy.insert(realm, roleObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.roleIndex, rowIndex2, cacherole.longValue(), false);
            }
            return rowIndex2;
        }
        return ((RealmObjectProxy) permissionUser).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        RealmModel realmModel;
        Table table = realm.getTable(PermissionUser.class);
        long tableNativePtr = table.getNativePtr();
        PermissionUserColumnInfo columnInfo = (PermissionUserColumnInfo) realm.getSchema().getColumnInfo(PermissionUser.class);
        long pkColumnIndex = columnInfo.idIndex;
        while (objects.hasNext()) {
            RealmModel realmModel2 = (PermissionUser) objects.next();
            if (cache.containsKey(realmModel2)) {
                realmModel = realmModel2;
            } else if ((realmModel2 instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel2).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel2).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel2, Long.valueOf(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex()));
                realmModel = realmModel2;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = ((io_realm_sync_permissions_PermissionUserRealmProxyInterface) realmModel2).realmGet$id();
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
                } else {
                    Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
                }
                long rowIndex2 = rowIndex;
                cache.put(realmModel2, Long.valueOf(rowIndex2));
                Role roleObj = ((io_realm_sync_permissions_PermissionUserRealmProxyInterface) realmModel2).realmGet$role();
                if (roleObj != null) {
                    Long cacherole = cache.get(roleObj);
                    if (cacherole == null) {
                        cacherole = Long.valueOf(io_realm_sync_permissions_RoleRealmProxy.insert(realm, roleObj, cache));
                    }
                    realmModel = realmModel2;
                    table.setLink(columnInfo.roleIndex, rowIndex2, cacherole.longValue(), false);
                } else {
                    realmModel = realmModel2;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, PermissionUser permissionUser, Map<RealmModel, Long> cache) {
        if (!(permissionUser instanceof RealmObjectProxy) || ((RealmObjectProxy) permissionUser).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) permissionUser).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(PermissionUser.class);
            long tableNativePtr = table.getNativePtr();
            PermissionUserColumnInfo columnInfo = (PermissionUserColumnInfo) realm.getSchema().getColumnInfo(PermissionUser.class);
            long pkColumnIndex = columnInfo.idIndex;
            long rowIndex = -1;
            Object primaryKeyValue = permissionUser.realmGet$id();
            if (primaryKeyValue != null) {
                rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
            }
            if (rowIndex == -1) {
                rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
            }
            long rowIndex2 = rowIndex;
            cache.put(permissionUser, Long.valueOf(rowIndex2));
            Role roleObj = permissionUser.realmGet$role();
            if (roleObj != null) {
                Long cacherole = cache.get(roleObj);
                if (cacherole == null) {
                    cacherole = Long.valueOf(io_realm_sync_permissions_RoleRealmProxy.insertOrUpdate(realm, roleObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.roleIndex, rowIndex2, cacherole.longValue(), false);
            } else {
                Table.nativeNullifyLink(tableNativePtr, columnInfo.roleIndex, rowIndex2);
            }
            return rowIndex2;
        }
        return ((RealmObjectProxy) permissionUser).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long pkColumnIndex;
        Table table = realm.getTable(PermissionUser.class);
        long tableNativePtr = table.getNativePtr();
        PermissionUserColumnInfo columnInfo = (PermissionUserColumnInfo) realm.getSchema().getColumnInfo(PermissionUser.class);
        long pkColumnIndex2 = columnInfo.idIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (PermissionUser) objects.next();
            if (cache.containsKey(realmModel)) {
                pkColumnIndex = pkColumnIndex2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                pkColumnIndex = pkColumnIndex2;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = ((io_realm_sync_permissions_PermissionUserRealmProxyInterface) realmModel).realmGet$id();
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex2, (String) primaryKeyValue);
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex2, primaryKeyValue);
                }
                long rowIndex2 = rowIndex;
                cache.put(realmModel, Long.valueOf(rowIndex2));
                Role roleObj = ((io_realm_sync_permissions_PermissionUserRealmProxyInterface) realmModel).realmGet$role();
                if (roleObj != null) {
                    Long cacherole = cache.get(roleObj);
                    if (cacherole == null) {
                        cacherole = Long.valueOf(io_realm_sync_permissions_RoleRealmProxy.insertOrUpdate(realm, roleObj, cache));
                    }
                    pkColumnIndex = pkColumnIndex2;
                    Table.nativeSetLink(tableNativePtr, columnInfo.roleIndex, rowIndex2, cacherole.longValue(), false);
                } else {
                    pkColumnIndex = pkColumnIndex2;
                    Table.nativeNullifyLink(tableNativePtr, columnInfo.roleIndex, rowIndex2);
                }
            }
            pkColumnIndex2 = pkColumnIndex;
        }
    }

    public static PermissionUser createDetachedCopy(PermissionUser realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        PermissionUser unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new PermissionUser();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (PermissionUser) cachedObject.object;
            }
            unmanagedObject = (PermissionUser) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        io_realm_sync_permissions_PermissionUserRealmProxyInterface unmanagedCopy = unmanagedObject;
        PermissionUser realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$role(io_realm_sync_permissions_RoleRealmProxy.createDetachedCopy(realmSource.realmGet$role(), currentDepth + 1, maxDepth, cache));
        return unmanagedObject;
    }

    static PermissionUser update(Realm realm, PermissionUser realmObject, PermissionUser newObject, Map<RealmModel, RealmObjectProxy> cache) {
        PermissionUser realmObjectTarget = realmObject;
        PermissionUser realmObjectSource = newObject;
        Role roleObj = realmObjectSource.realmGet$role();
        if (roleObj == null) {
            realmObjectTarget.realmSet$role(null);
        } else {
            Role cacherole = (Role) cache.get(roleObj);
            if (cacherole != null) {
                realmObjectTarget.realmSet$role(cacherole);
            } else {
                realmObjectTarget.realmSet$role(io_realm_sync_permissions_RoleRealmProxy.copyOrUpdate(realm, roleObj, true, cache));
            }
        }
        return realmObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("PermissionUser = proxy[");
        stringBuilder.append("{id:");
        stringBuilder.append(realmGet$id());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{role:");
        stringBuilder.append(realmGet$role() != null ? "Role" : "null");
        stringBuilder.append("}");
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    public int hashCode() {
        String realmName = this.proxyState.getRealm$realm().getPath();
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        long rowIndex = this.proxyState.getRow$realm().getIndex();
        int result = (17 * 31) + (realmName != null ? realmName.hashCode() : 0);
        return (((result * 31) + (tableName != null ? tableName.hashCode() : 0)) * 31) + ((int) ((rowIndex >>> 32) ^ rowIndex));
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        io_realm_sync_permissions_PermissionUserRealmProxy aPermissionUser = (io_realm_sync_permissions_PermissionUserRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aPermissionUser.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aPermissionUser.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aPermissionUser.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
