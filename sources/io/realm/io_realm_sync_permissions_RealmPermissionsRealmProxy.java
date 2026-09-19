package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import io.realm.BaseRealm;
import io.realm.exceptions.RealmException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsList;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Table;
import io.realm.io_realm_sync_permissions_PermissionRealmProxy;
import io.realm.sync.permissions.Permission;
import io.realm.sync.permissions.RealmPermissions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class io_realm_sync_permissions_RealmPermissionsRealmProxy extends RealmPermissions implements RealmObjectProxy, io_realm_sync_permissions_RealmPermissionsRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private RealmPermissionsColumnInfo columnInfo;
    private RealmList<Permission> permissionsRealmList;
    private ProxyState<RealmPermissions> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "__Realm";
    }

    static final class RealmPermissionsColumnInfo extends ColumnInfo {
        long idIndex;
        long permissionsIndex;

        RealmPermissionsColumnInfo(OsSchemaInfo schemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.permissionsIndex = addColumnDetails("permissions", "permissions", objectSchemaInfo);
        }

        RealmPermissionsColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new RealmPermissionsColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            RealmPermissionsColumnInfo src = (RealmPermissionsColumnInfo) rawSrc;
            RealmPermissionsColumnInfo dst = (RealmPermissionsColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.permissionsIndex = src.permissionsIndex;
        }
    }

    io_realm_sync_permissions_RealmPermissionsRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (RealmPermissionsColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // io.realm.sync.permissions.RealmPermissions, io.realm.io_realm_sync_permissions_RealmPermissionsRealmProxyInterface
    public int realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // io.realm.sync.permissions.RealmPermissions, io.realm.io_realm_sync_permissions_RealmPermissionsRealmProxyInterface
    public void realmSet$id(int value) {
        if (this.proxyState.isUnderConstruction()) {
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // io.realm.sync.permissions.RealmPermissions, io.realm.io_realm_sync_permissions_RealmPermissionsRealmProxyInterface
    public RealmList<Permission> realmGet$permissions() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.permissionsRealmList != null) {
            return this.permissionsRealmList;
        }
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.permissionsIndex);
        this.permissionsRealmList = new RealmList<>(Permission.class, osList, this.proxyState.getRealm$realm());
        return this.permissionsRealmList;
    }

    @Override // io.realm.sync.permissions.RealmPermissions, io.realm.io_realm_sync_permissions_RealmPermissionsRealmProxyInterface
    public void realmSet$permissions(RealmList<Permission> value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains("permissions")) {
                return;
            }
            if (value != null && !value.isManaged()) {
                Realm realm = (Realm) this.proxyState.getRealm$realm();
                value = new RealmList<>();
                for (Permission item : value) {
                    if (item == null || RealmObject.isManaged(item)) {
                        value.add(item);
                    } else {
                        value.add((Permission) realm.copyToRealm(item));
                    }
                }
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.permissionsIndex);
        int i = 0;
        if (value != null && value.size() == osList.size()) {
            int objects = value.size();
            while (i < objects) {
                RealmModel realmModel = (Permission) value.get(i);
                this.proxyState.checkValidObject(realmModel);
                osList.setRow(i, ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex());
                i++;
            }
            return;
        }
        osList.removeAll();
        if (value == null) {
            return;
        }
        int objects2 = value.size();
        while (i < objects2) {
            RealmModel realmModel2 = (Permission) value.get(i);
            this.proxyState.checkValidObject(realmModel2);
            osList.addRow(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex());
            i++;
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedLinkProperty("permissions", RealmFieldType.LIST, io_realm_sync_permissions_PermissionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static RealmPermissionsColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new RealmPermissionsColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static RealmPermissions createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws Throwable {
        List<String> excludeFields = new ArrayList<>(1);
        RealmPermissions obj = null;
        if (update) {
            Table table = realm.getTable(RealmPermissions.class);
            RealmPermissionsColumnInfo columnInfo = (RealmPermissionsColumnInfo) realm.getSchema().getColumnInfo(RealmPermissions.class);
            long pkColumnIndex = columnInfo.idIndex;
            long rowIndex = -1;
            if (!json.isNull("id")) {
                rowIndex = table.findFirstLong(pkColumnIndex, json.getLong("id"));
            }
            long rowIndex2 = rowIndex;
            if (rowIndex2 != -1) {
                BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
                try {
                    try {
                        objectContext.set(realm, table.getUncheckedRow(rowIndex2), realm.getSchema().getColumnInfo(RealmPermissions.class), false, Collections.emptyList());
                        obj = new io_realm_sync_permissions_RealmPermissionsRealmProxy();
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
            if (json.has("permissions")) {
                excludeFields.add("permissions");
            }
            if (json.has("id")) {
                obj = json.isNull("id") ? (io_realm_sync_permissions_RealmPermissionsRealmProxy) realm.createObjectInternal(RealmPermissions.class, null, true, excludeFields) : (io_realm_sync_permissions_RealmPermissionsRealmProxy) realm.createObjectInternal(RealmPermissions.class, Integer.valueOf(json.getInt("id")), true, excludeFields);
            } else {
                throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
            }
        }
        io_realm_sync_permissions_RealmPermissionsRealmProxyInterface objProxy = obj;
        if (json.has("permissions")) {
            if (json.isNull("permissions")) {
                objProxy.realmSet$permissions(null);
            } else {
                objProxy.realmGet$permissions().clear();
                JSONArray array = json.getJSONArray("permissions");
                for (int i = 0; i < array.length(); i++) {
                    Permission item = io_realm_sync_permissions_PermissionRealmProxy.createOrUpdateUsingJsonObject(realm, array.getJSONObject(i), update);
                    objProxy.realmGet$permissions().add(item);
                }
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static RealmPermissions createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        boolean jsonHasPrimaryKey = false;
        RealmPermissions obj = new RealmPermissions();
        RealmPermissions objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("id")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$id(reader.nextInt());
                    jsonHasPrimaryKey = true;
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (name.equals("permissions")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$permissions(null);
                } else {
                    objProxy.realmSet$permissions(new RealmList<>());
                    reader.beginArray();
                    while (reader.hasNext()) {
                        Permission item = io_realm_sync_permissions_PermissionRealmProxy.createUsingJsonStream(realm, reader);
                        objProxy.realmGet$permissions().add(item);
                    }
                    reader.endArray();
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        if (!jsonHasPrimaryKey) {
            throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
        }
        return (RealmPermissions) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static RealmPermissions copyOrUpdate(Realm realm, RealmPermissions realmPermissions, boolean update, Map<RealmModel, RealmObjectProxy> cache) throws Throwable {
        if ((realmPermissions instanceof RealmObjectProxy) && ((RealmObjectProxy) realmPermissions).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) realmPermissions).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return realmPermissions;
            }
        }
        BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(realmPermissions);
        if (realmModel != null) {
            return (RealmPermissions) realmModel;
        }
        io_realm_sync_permissions_RealmPermissionsRealmProxy io_realm_sync_permissions_realmpermissionsrealmproxy = null;
        boolean canUpdate = update;
        if (canUpdate) {
            Table table = realm.getTable(RealmPermissions.class);
            RealmPermissionsColumnInfo columnInfo = (RealmPermissionsColumnInfo) realm.getSchema().getColumnInfo(RealmPermissions.class);
            long pkColumnIndex = columnInfo.idIndex;
            long rowIndex = table.findFirstLong(pkColumnIndex, realmPermissions.realmGet$id());
            if (rowIndex == -1) {
                canUpdate = false;
            } else {
                try {
                    try {
                        objectContext.set(realm, table.getUncheckedRow(rowIndex), realm.getSchema().getColumnInfo(RealmPermissions.class), false, Collections.emptyList());
                        io_realm_sync_permissions_realmpermissionsrealmproxy = new io_realm_sync_permissions_RealmPermissionsRealmProxy();
                        cache.put(realmPermissions, io_realm_sync_permissions_realmpermissionsrealmproxy);
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
        return canUpdate ? update(realm, io_realm_sync_permissions_realmpermissionsrealmproxy, realmPermissions, cache) : copy(realm, realmPermissions, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static RealmPermissions copy(Realm realm, RealmPermissions newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (RealmPermissions) realmModel;
        }
        RealmPermissions realmPermissions = (RealmPermissions) realm.createObjectInternal(RealmPermissions.class, Integer.valueOf(newObject.realmGet$id()), false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) realmPermissions);
        RealmPermissions realmObjectSource = newObject;
        RealmPermissions realmObjectCopy = realmPermissions;
        RealmList<Permission> permissionsList = realmObjectSource.realmGet$permissions();
        if (permissionsList != null) {
            RealmList<Permission> permissionsRealmList = realmObjectCopy.realmGet$permissions();
            permissionsRealmList.clear();
            for (int i = 0; i < permissionsList.size(); i++) {
                Permission permissionsItem = permissionsList.get(i);
                Permission cachepermissions = (Permission) cache.get(permissionsItem);
                if (cachepermissions != null) {
                    permissionsRealmList.add(cachepermissions);
                } else {
                    permissionsRealmList.add(io_realm_sync_permissions_PermissionRealmProxy.copyOrUpdate(realm, permissionsItem, update, cache));
                }
            }
        }
        return realmPermissions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, RealmPermissions realmPermissions, Map<RealmModel, Long> cache) {
        Realm realm2 = realm;
        if ((realmPermissions instanceof RealmObjectProxy) && ((RealmObjectProxy) realmPermissions).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmPermissions).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) realmPermissions).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm2.getTable(RealmPermissions.class);
        long tableNativePtr = table.getNativePtr();
        RealmPermissionsColumnInfo columnInfo = (RealmPermissionsColumnInfo) realm.getSchema().getColumnInfo(RealmPermissions.class);
        long pkColumnIndex = columnInfo.idIndex;
        long rowIndex = -1;
        Object primaryKeyValue = Integer.valueOf(realmPermissions.realmGet$id());
        if (primaryKeyValue != null) {
            rowIndex = Table.nativeFindFirstInt(tableNativePtr, pkColumnIndex, realmPermissions.realmGet$id());
        }
        if (rowIndex == -1) {
            rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, Integer.valueOf(realmPermissions.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
        }
        long rowIndex2 = rowIndex;
        cache.put(realmPermissions, Long.valueOf(rowIndex2));
        RealmList<Permission> permissionsList = realmPermissions.realmGet$permissions();
        if (permissionsList != null) {
            OsList permissionsOsList = new OsList(table.getUncheckedRow(rowIndex2), columnInfo.permissionsIndex);
            for (Permission permissionsItem : permissionsList) {
                Long cacheItemIndexpermissions = cache.get(permissionsItem);
                if (cacheItemIndexpermissions == null) {
                    cacheItemIndexpermissions = Long.valueOf(io_realm_sync_permissions_PermissionRealmProxy.insert(realm2, permissionsItem, cache));
                }
                permissionsOsList.addRow(cacheItemIndexpermissions.longValue());
                realm2 = realm;
            }
        }
        return rowIndex2;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table;
        Table table2 = realm.getTable(RealmPermissions.class);
        long tableNativePtr = table2.getNativePtr();
        RealmPermissionsColumnInfo columnInfo = (RealmPermissionsColumnInfo) realm.getSchema().getColumnInfo(RealmPermissions.class);
        long pkColumnIndex = columnInfo.idIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (RealmPermissions) objects.next();
            if (cache.containsKey(realmModel)) {
                table = table2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                table = table2;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = Integer.valueOf(((io_realm_sync_permissions_RealmPermissionsRealmProxyInterface) realmModel).realmGet$id());
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstInt(tableNativePtr, pkColumnIndex, ((io_realm_sync_permissions_RealmPermissionsRealmProxyInterface) realmModel).realmGet$id());
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table2, pkColumnIndex, Integer.valueOf(((io_realm_sync_permissions_RealmPermissionsRealmProxyInterface) realmModel).realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
                }
                long rowIndex2 = rowIndex;
                cache.put(realmModel, Long.valueOf(rowIndex2));
                RealmList<Permission> permissionsList = ((io_realm_sync_permissions_RealmPermissionsRealmProxyInterface) realmModel).realmGet$permissions();
                if (permissionsList != null) {
                    table = table2;
                    OsList permissionsOsList = new OsList(table2.getUncheckedRow(rowIndex2), columnInfo.permissionsIndex);
                    for (Permission permissionsItem : permissionsList) {
                        Long cacheItemIndexpermissions = cache.get(permissionsItem);
                        if (cacheItemIndexpermissions == null) {
                            cacheItemIndexpermissions = Long.valueOf(io_realm_sync_permissions_PermissionRealmProxy.insert(realm, permissionsItem, cache));
                        }
                        permissionsOsList.addRow(cacheItemIndexpermissions.longValue());
                    }
                } else {
                    table = table2;
                }
            }
            table2 = table;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, RealmPermissions realmPermissions, Map<RealmModel, Long> cache) {
        if (!(realmPermissions instanceof RealmObjectProxy) || ((RealmObjectProxy) realmPermissions).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) realmPermissions).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(RealmPermissions.class);
            long tableNativePtr = table.getNativePtr();
            RealmPermissionsColumnInfo columnInfo = (RealmPermissionsColumnInfo) realm.getSchema().getColumnInfo(RealmPermissions.class);
            long pkColumnIndex = columnInfo.idIndex;
            long rowIndex = -1;
            Object primaryKeyValue = Integer.valueOf(realmPermissions.realmGet$id());
            if (primaryKeyValue != null) {
                rowIndex = Table.nativeFindFirstInt(tableNativePtr, pkColumnIndex, realmPermissions.realmGet$id());
            }
            if (rowIndex == -1) {
                rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, Integer.valueOf(realmPermissions.realmGet$id()));
            }
            long rowIndex2 = rowIndex;
            cache.put(realmPermissions, Long.valueOf(rowIndex2));
            OsList permissionsOsList = new OsList(table.getUncheckedRow(rowIndex2), columnInfo.permissionsIndex);
            RealmList<Permission> permissionsList = realmPermissions.realmGet$permissions();
            if (permissionsList != null && permissionsList.size() == permissionsOsList.size()) {
                int objects = permissionsList.size();
                int i = 0;
                while (i < objects) {
                    Permission permissionsItem = permissionsList.get(i);
                    Long cacheItemIndexpermissions = cache.get(permissionsItem);
                    if (cacheItemIndexpermissions == null) {
                        cacheItemIndexpermissions = Long.valueOf(io_realm_sync_permissions_PermissionRealmProxy.insertOrUpdate(realm, permissionsItem, cache));
                    }
                    permissionsOsList.setRow(i, cacheItemIndexpermissions.longValue());
                    i++;
                    tableNativePtr = tableNativePtr;
                    columnInfo = columnInfo;
                    pkColumnIndex = pkColumnIndex;
                }
            } else {
                permissionsOsList.removeAll();
                if (permissionsList != null) {
                    for (Permission permissionsItem2 : permissionsList) {
                        Long cacheItemIndexpermissions2 = cache.get(permissionsItem2);
                        if (cacheItemIndexpermissions2 == null) {
                            cacheItemIndexpermissions2 = Long.valueOf(io_realm_sync_permissions_PermissionRealmProxy.insertOrUpdate(realm, permissionsItem2, cache));
                        }
                        permissionsOsList.addRow(cacheItemIndexpermissions2.longValue());
                    }
                }
            }
            return rowIndex2;
        }
        return ((RealmObjectProxy) realmPermissions).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table;
        long tableNativePtr;
        Table table2 = realm.getTable(RealmPermissions.class);
        long tableNativePtr2 = table2.getNativePtr();
        RealmPermissionsColumnInfo columnInfo = (RealmPermissionsColumnInfo) realm.getSchema().getColumnInfo(RealmPermissions.class);
        long pkColumnIndex = columnInfo.idIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (RealmPermissions) objects.next();
            if (cache.containsKey(realmModel)) {
                table = table2;
                tableNativePtr = tableNativePtr2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                table = table2;
                tableNativePtr = tableNativePtr2;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = Integer.valueOf(((io_realm_sync_permissions_RealmPermissionsRealmProxyInterface) realmModel).realmGet$id());
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstInt(tableNativePtr2, pkColumnIndex, ((io_realm_sync_permissions_RealmPermissionsRealmProxyInterface) realmModel).realmGet$id());
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table2, pkColumnIndex, Integer.valueOf(((io_realm_sync_permissions_RealmPermissionsRealmProxyInterface) realmModel).realmGet$id()));
                }
                long rowIndex2 = rowIndex;
                cache.put(realmModel, Long.valueOf(rowIndex2));
                OsList permissionsOsList = new OsList(table2.getUncheckedRow(rowIndex2), columnInfo.permissionsIndex);
                RealmList<Permission> permissionsList = ((io_realm_sync_permissions_RealmPermissionsRealmProxyInterface) realmModel).realmGet$permissions();
                if (permissionsList != null && permissionsList.size() == permissionsOsList.size()) {
                    int objectCount = permissionsList.size();
                    int i = 0;
                    while (i < objectCount) {
                        Permission permissionsItem = permissionsList.get(i);
                        Long cacheItemIndexpermissions = cache.get(permissionsItem);
                        if (cacheItemIndexpermissions == null) {
                            cacheItemIndexpermissions = Long.valueOf(io_realm_sync_permissions_PermissionRealmProxy.insertOrUpdate(realm, permissionsItem, cache));
                        }
                        long tableNativePtr3 = tableNativePtr2;
                        long tableNativePtr4 = cacheItemIndexpermissions.longValue();
                        permissionsOsList.setRow(i, tableNativePtr4);
                        i++;
                        table2 = table2;
                        rowIndex2 = rowIndex2;
                        tableNativePtr2 = tableNativePtr3;
                    }
                    table = table2;
                    tableNativePtr = tableNativePtr2;
                } else {
                    table = table2;
                    tableNativePtr = tableNativePtr2;
                    permissionsOsList.removeAll();
                    if (permissionsList != null) {
                        for (Permission permissionsItem2 : permissionsList) {
                            Long cacheItemIndexpermissions2 = cache.get(permissionsItem2);
                            if (cacheItemIndexpermissions2 == null) {
                                cacheItemIndexpermissions2 = Long.valueOf(io_realm_sync_permissions_PermissionRealmProxy.insertOrUpdate(realm, permissionsItem2, cache));
                            }
                            permissionsOsList.addRow(cacheItemIndexpermissions2.longValue());
                        }
                    }
                }
            }
            table2 = table;
            tableNativePtr2 = tableNativePtr;
        }
    }

    public static RealmPermissions createDetachedCopy(RealmPermissions realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        RealmPermissions unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new RealmPermissions();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (RealmPermissions) cachedObject.object;
            }
            unmanagedObject = (RealmPermissions) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        io_realm_sync_permissions_RealmPermissionsRealmProxyInterface unmanagedCopy = unmanagedObject;
        RealmPermissions realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        if (currentDepth == maxDepth) {
            unmanagedCopy.realmSet$permissions(null);
        } else {
            RealmList<Permission> managedpermissionsList = realmSource.realmGet$permissions();
            RealmList<Permission> unmanagedpermissionsList = new RealmList<>();
            unmanagedCopy.realmSet$permissions(unmanagedpermissionsList);
            int nextDepth = currentDepth + 1;
            int size = managedpermissionsList.size();
            for (int i = 0; i < size; i++) {
                Permission item = io_realm_sync_permissions_PermissionRealmProxy.createDetachedCopy(managedpermissionsList.get(i), nextDepth, maxDepth, cache);
                unmanagedpermissionsList.add(item);
            }
        }
        return unmanagedObject;
    }

    static RealmPermissions update(Realm realm, RealmPermissions realmObject, RealmPermissions newObject, Map<RealmModel, RealmObjectProxy> cache) {
        RealmPermissions realmObjectTarget = realmObject;
        RealmPermissions realmObjectSource = newObject;
        RealmList<Permission> permissionsList = realmObjectSource.realmGet$permissions();
        RealmList<Permission> permissionsRealmList = realmObjectTarget.realmGet$permissions();
        int i = 0;
        if (permissionsList != null && permissionsList.size() == permissionsRealmList.size()) {
            int objects = permissionsList.size();
            while (i < objects) {
                Permission permissionsItem = permissionsList.get(i);
                Permission cachepermissions = (Permission) cache.get(permissionsItem);
                if (cachepermissions != null) {
                    permissionsRealmList.set(i, cachepermissions);
                } else {
                    permissionsRealmList.set(i, io_realm_sync_permissions_PermissionRealmProxy.copyOrUpdate(realm, permissionsItem, true, cache));
                }
                i++;
            }
        } else {
            permissionsRealmList.clear();
            if (permissionsList != null) {
                while (i < permissionsList.size()) {
                    Permission permissionsItem2 = permissionsList.get(i);
                    Permission cachepermissions2 = (Permission) cache.get(permissionsItem2);
                    if (cachepermissions2 != null) {
                        permissionsRealmList.add(cachepermissions2);
                    } else {
                        permissionsRealmList.add(io_realm_sync_permissions_PermissionRealmProxy.copyOrUpdate(realm, permissionsItem2, true, cache));
                    }
                    i++;
                }
            }
        }
        return realmObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "RealmPermissions = proxy[{id:" + realmGet$id() + "},{permissions:RealmList<Permission>[" + realmGet$permissions().size() + "]}]";
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
        io_realm_sync_permissions_RealmPermissionsRealmProxy aRealmPermissions = (io_realm_sync_permissions_RealmPermissionsRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aRealmPermissions.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aRealmPermissions.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aRealmPermissions.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
