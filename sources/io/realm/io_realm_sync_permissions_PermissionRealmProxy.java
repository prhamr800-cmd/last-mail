package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import io.realm.BaseRealm;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.io_realm_sync_permissions_RoleRealmProxy;
import io.realm.sync.permissions.Permission;
import io.realm.sync.permissions.Role;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class io_realm_sync_permissions_PermissionRealmProxy extends Permission implements RealmObjectProxy, io_realm_sync_permissions_PermissionRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private PermissionColumnInfo columnInfo;
    private ProxyState<Permission> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "__Permission";
    }

    static final class PermissionColumnInfo extends ColumnInfo {
        long canCreateIndex;
        long canDeleteIndex;
        long canModifySchemaIndex;
        long canQueryIndex;
        long canReadIndex;
        long canSetPermissionsIndex;
        long canUpdateIndex;
        long roleIndex;

        PermissionColumnInfo(OsSchemaInfo schemaInfo) {
            super(8);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.roleIndex = addColumnDetails("role", "role", objectSchemaInfo);
            this.canReadIndex = addColumnDetails("canRead", "canRead", objectSchemaInfo);
            this.canUpdateIndex = addColumnDetails("canUpdate", "canUpdate", objectSchemaInfo);
            this.canDeleteIndex = addColumnDetails("canDelete", "canDelete", objectSchemaInfo);
            this.canSetPermissionsIndex = addColumnDetails("canSetPermissions", "canSetPermissions", objectSchemaInfo);
            this.canQueryIndex = addColumnDetails("canQuery", "canQuery", objectSchemaInfo);
            this.canCreateIndex = addColumnDetails("canCreate", "canCreate", objectSchemaInfo);
            this.canModifySchemaIndex = addColumnDetails("canModifySchema", "canModifySchema", objectSchemaInfo);
        }

        PermissionColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new PermissionColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            PermissionColumnInfo src = (PermissionColumnInfo) rawSrc;
            PermissionColumnInfo dst = (PermissionColumnInfo) rawDst;
            dst.roleIndex = src.roleIndex;
            dst.canReadIndex = src.canReadIndex;
            dst.canUpdateIndex = src.canUpdateIndex;
            dst.canDeleteIndex = src.canDeleteIndex;
            dst.canSetPermissionsIndex = src.canSetPermissionsIndex;
            dst.canQueryIndex = src.canQueryIndex;
            dst.canCreateIndex = src.canCreateIndex;
            dst.canModifySchemaIndex = src.canModifySchemaIndex;
        }
    }

    io_realm_sync_permissions_PermissionRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (PermissionColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public Role realmGet$role() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.roleIndex)) {
            return null;
        }
        return (Role) this.proxyState.getRealm$realm().get(Role.class, this.proxyState.getRow$realm().getLink(this.columnInfo.roleIndex), false, Collections.emptyList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
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

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public boolean realmGet$canRead() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.canReadIndex);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public void realmSet$canRead(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.canReadIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.canReadIndex, value);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public boolean realmGet$canUpdate() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.canUpdateIndex);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public void realmSet$canUpdate(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.canUpdateIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.canUpdateIndex, value);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public boolean realmGet$canDelete() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.canDeleteIndex);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public void realmSet$canDelete(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.canDeleteIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.canDeleteIndex, value);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public boolean realmGet$canSetPermissions() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.canSetPermissionsIndex);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public void realmSet$canSetPermissions(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.canSetPermissionsIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.canSetPermissionsIndex, value);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public boolean realmGet$canQuery() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.canQueryIndex);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public void realmSet$canQuery(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.canQueryIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.canQueryIndex, value);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public boolean realmGet$canCreate() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.canCreateIndex);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public void realmSet$canCreate(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.canCreateIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.canCreateIndex, value);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public boolean realmGet$canModifySchema() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.canModifySchemaIndex);
    }

    @Override // io.realm.sync.permissions.Permission, io.realm.io_realm_sync_permissions_PermissionRealmProxyInterface
    public void realmSet$canModifySchema(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.canModifySchemaIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.canModifySchemaIndex, value);
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 8, 0);
        builder.addPersistedLinkProperty("role", RealmFieldType.OBJECT, io_realm_sync_permissions_RoleRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedProperty("canRead", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("canUpdate", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("canDelete", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("canSetPermissions", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("canQuery", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("canCreate", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("canModifySchema", RealmFieldType.BOOLEAN, false, false, true);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static PermissionColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new PermissionColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static Permission createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = new ArrayList<>(1);
        if (json.has("role")) {
            excludeFields.add("role");
        }
        Permission obj = (Permission) realm.createObjectInternal(Permission.class, true, excludeFields);
        Permission objProxy = obj;
        if (json.has("role")) {
            if (json.isNull("role")) {
                objProxy.realmSet$role(null);
            } else {
                Role roleObj = io_realm_sync_permissions_RoleRealmProxy.createOrUpdateUsingJsonObject(realm, json.getJSONObject("role"), update);
                objProxy.realmSet$role(roleObj);
            }
        }
        if (json.has("canRead")) {
            if (json.isNull("canRead")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'canRead' to null.");
            }
            objProxy.realmSet$canRead(json.getBoolean("canRead"));
        }
        if (json.has("canUpdate")) {
            if (json.isNull("canUpdate")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'canUpdate' to null.");
            }
            objProxy.realmSet$canUpdate(json.getBoolean("canUpdate"));
        }
        if (json.has("canDelete")) {
            if (json.isNull("canDelete")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'canDelete' to null.");
            }
            objProxy.realmSet$canDelete(json.getBoolean("canDelete"));
        }
        if (json.has("canSetPermissions")) {
            if (json.isNull("canSetPermissions")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'canSetPermissions' to null.");
            }
            objProxy.realmSet$canSetPermissions(json.getBoolean("canSetPermissions"));
        }
        if (json.has("canQuery")) {
            if (json.isNull("canQuery")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'canQuery' to null.");
            }
            objProxy.realmSet$canQuery(json.getBoolean("canQuery"));
        }
        if (json.has("canCreate")) {
            if (json.isNull("canCreate")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'canCreate' to null.");
            }
            objProxy.realmSet$canCreate(json.getBoolean("canCreate"));
        }
        if (json.has("canModifySchema")) {
            if (json.isNull("canModifySchema")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'canModifySchema' to null.");
            }
            objProxy.realmSet$canModifySchema(json.getBoolean("canModifySchema"));
        }
        return obj;
    }

    @TargetApi(11)
    public static Permission createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        Permission obj = new Permission();
        Permission objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("role")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$role(null);
                } else {
                    Role roleObj = io_realm_sync_permissions_RoleRealmProxy.createUsingJsonStream(realm, reader);
                    objProxy.realmSet$role(roleObj);
                }
            } else if (name.equals("canRead")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$canRead(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'canRead' to null.");
                }
            } else if (name.equals("canUpdate")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$canUpdate(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'canUpdate' to null.");
                }
            } else if (name.equals("canDelete")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$canDelete(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'canDelete' to null.");
                }
            } else if (name.equals("canSetPermissions")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$canSetPermissions(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'canSetPermissions' to null.");
                }
            } else if (name.equals("canQuery")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$canQuery(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'canQuery' to null.");
                }
            } else if (name.equals("canCreate")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$canCreate(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'canCreate' to null.");
                }
            } else if (name.equals("canModifySchema")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$canModifySchema(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'canModifySchema' to null.");
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (Permission) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Permission copyOrUpdate(Realm realm, Permission permission, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((permission instanceof RealmObjectProxy) && ((RealmObjectProxy) permission).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) permission).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return permission;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(permission);
        if (realmModel != null) {
            return (Permission) realmModel;
        }
        return copy(realm, permission, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Permission copy(Realm realm, Permission newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (Permission) realmModel;
        }
        Permission permission = (Permission) realm.createObjectInternal(Permission.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) permission);
        Permission realmObjectSource = newObject;
        Permission realmObjectCopy = permission;
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
        realmObjectCopy.realmSet$canRead(realmObjectSource.realmGet$canRead());
        realmObjectCopy.realmSet$canUpdate(realmObjectSource.realmGet$canUpdate());
        realmObjectCopy.realmSet$canDelete(realmObjectSource.realmGet$canDelete());
        realmObjectCopy.realmSet$canSetPermissions(realmObjectSource.realmGet$canSetPermissions());
        realmObjectCopy.realmSet$canQuery(realmObjectSource.realmGet$canQuery());
        realmObjectCopy.realmSet$canCreate(realmObjectSource.realmGet$canCreate());
        realmObjectCopy.realmSet$canModifySchema(realmObjectSource.realmGet$canModifySchema());
        return permission;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, Permission permission, Map<RealmModel, Long> cache) {
        if (!(permission instanceof RealmObjectProxy) || ((RealmObjectProxy) permission).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) permission).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(Permission.class);
            long tableNativePtr = table.getNativePtr();
            PermissionColumnInfo columnInfo = (PermissionColumnInfo) realm.getSchema().getColumnInfo(Permission.class);
            long rowIndex = OsObject.createRow(table);
            cache.put(permission, Long.valueOf(rowIndex));
            Role roleObj = permission.realmGet$role();
            if (roleObj != null) {
                Long cacherole = cache.get(roleObj);
                if (cacherole == null) {
                    cacherole = Long.valueOf(io_realm_sync_permissions_RoleRealmProxy.insert(realm, roleObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.roleIndex, rowIndex, cacherole.longValue(), false);
            }
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canReadIndex, rowIndex, permission.realmGet$canRead(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canUpdateIndex, rowIndex, permission.realmGet$canUpdate(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canDeleteIndex, rowIndex, permission.realmGet$canDelete(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canSetPermissionsIndex, rowIndex, permission.realmGet$canSetPermissions(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canQueryIndex, rowIndex, permission.realmGet$canQuery(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canCreateIndex, rowIndex, permission.realmGet$canCreate(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canModifySchemaIndex, rowIndex, permission.realmGet$canModifySchema(), false);
            return rowIndex;
        }
        return ((RealmObjectProxy) permission).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(Permission.class);
        long tableNativePtr = table.getNativePtr();
        PermissionColumnInfo columnInfo = (PermissionColumnInfo) realm.getSchema().getColumnInfo(Permission.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Permission) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Role roleObj = ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$role();
                    if (roleObj != null) {
                        Long cacherole = cache.get(roleObj);
                        if (cacherole == null) {
                            cacherole = Long.valueOf(io_realm_sync_permissions_RoleRealmProxy.insert(realm, roleObj, cache));
                        }
                        table.setLink(columnInfo.roleIndex, rowIndex, cacherole.longValue(), false);
                    }
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canReadIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canRead(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canUpdateIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canUpdate(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canDeleteIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canDelete(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canSetPermissionsIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canSetPermissions(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canQueryIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canQuery(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canCreateIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canCreate(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canModifySchemaIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canModifySchema(), false);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, Permission permission, Map<RealmModel, Long> cache) {
        if (!(permission instanceof RealmObjectProxy) || ((RealmObjectProxy) permission).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) permission).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(Permission.class);
            long tableNativePtr = table.getNativePtr();
            PermissionColumnInfo columnInfo = (PermissionColumnInfo) realm.getSchema().getColumnInfo(Permission.class);
            long rowIndex = OsObject.createRow(table);
            cache.put(permission, Long.valueOf(rowIndex));
            Role roleObj = permission.realmGet$role();
            if (roleObj != null) {
                Long cacherole = cache.get(roleObj);
                if (cacherole == null) {
                    cacherole = Long.valueOf(io_realm_sync_permissions_RoleRealmProxy.insertOrUpdate(realm, roleObj, cache));
                }
                Table.nativeSetLink(tableNativePtr, columnInfo.roleIndex, rowIndex, cacherole.longValue(), false);
            } else {
                Table.nativeNullifyLink(tableNativePtr, columnInfo.roleIndex, rowIndex);
            }
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canReadIndex, rowIndex, permission.realmGet$canRead(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canUpdateIndex, rowIndex, permission.realmGet$canUpdate(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canDeleteIndex, rowIndex, permission.realmGet$canDelete(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canSetPermissionsIndex, rowIndex, permission.realmGet$canSetPermissions(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canQueryIndex, rowIndex, permission.realmGet$canQuery(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canCreateIndex, rowIndex, permission.realmGet$canCreate(), false);
            Table.nativeSetBoolean(tableNativePtr, columnInfo.canModifySchemaIndex, rowIndex, permission.realmGet$canModifySchema(), false);
            return rowIndex;
        }
        return ((RealmObjectProxy) permission).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(Permission.class);
        long tableNativePtr = table.getNativePtr();
        PermissionColumnInfo columnInfo = (PermissionColumnInfo) realm.getSchema().getColumnInfo(Permission.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (Permission) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Role roleObj = ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$role();
                    if (roleObj != null) {
                        Long cacherole = cache.get(roleObj);
                        if (cacherole == null) {
                            cacherole = Long.valueOf(io_realm_sync_permissions_RoleRealmProxy.insertOrUpdate(realm, roleObj, cache));
                        }
                        Table.nativeSetLink(tableNativePtr, columnInfo.roleIndex, rowIndex, cacherole.longValue(), false);
                    } else {
                        Table.nativeNullifyLink(tableNativePtr, columnInfo.roleIndex, rowIndex);
                    }
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canReadIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canRead(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canUpdateIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canUpdate(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canDeleteIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canDelete(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canSetPermissionsIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canSetPermissions(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canQueryIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canQuery(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canCreateIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canCreate(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.canModifySchemaIndex, rowIndex, ((io_realm_sync_permissions_PermissionRealmProxyInterface) realmModel).realmGet$canModifySchema(), false);
                }
            }
        }
    }

    public static Permission createDetachedCopy(Permission realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Permission unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new Permission();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (Permission) cachedObject.object;
            }
            unmanagedObject = (Permission) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        io_realm_sync_permissions_PermissionRealmProxyInterface unmanagedCopy = unmanagedObject;
        Permission realmSource = realmObject;
        unmanagedCopy.realmSet$role(io_realm_sync_permissions_RoleRealmProxy.createDetachedCopy(realmSource.realmGet$role(), currentDepth + 1, maxDepth, cache));
        unmanagedCopy.realmSet$canRead(realmSource.realmGet$canRead());
        unmanagedCopy.realmSet$canUpdate(realmSource.realmGet$canUpdate());
        unmanagedCopy.realmSet$canDelete(realmSource.realmGet$canDelete());
        unmanagedCopy.realmSet$canSetPermissions(realmSource.realmGet$canSetPermissions());
        unmanagedCopy.realmSet$canQuery(realmSource.realmGet$canQuery());
        unmanagedCopy.realmSet$canCreate(realmSource.realmGet$canCreate());
        unmanagedCopy.realmSet$canModifySchema(realmSource.realmGet$canModifySchema());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("Permission = proxy[");
        stringBuilder.append("{role:");
        stringBuilder.append(realmGet$role() != null ? "Role" : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{canRead:");
        stringBuilder.append(realmGet$canRead());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{canUpdate:");
        stringBuilder.append(realmGet$canUpdate());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{canDelete:");
        stringBuilder.append(realmGet$canDelete());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{canSetPermissions:");
        stringBuilder.append(realmGet$canSetPermissions());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{canQuery:");
        stringBuilder.append(realmGet$canQuery());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{canCreate:");
        stringBuilder.append(realmGet$canCreate());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{canModifySchema:");
        stringBuilder.append(realmGet$canModifySchema());
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
        io_realm_sync_permissions_PermissionRealmProxy aPermission = (io_realm_sync_permissions_PermissionRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aPermission.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aPermission.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aPermission.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
