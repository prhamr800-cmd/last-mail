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
import io.realm.sync.permissions.ClassPermissions;
import io.realm.sync.permissions.Permission;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class io_realm_sync_permissions_ClassPermissionsRealmProxy extends ClassPermissions implements RealmObjectProxy, io_realm_sync_permissions_ClassPermissionsRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private ClassPermissionsColumnInfo columnInfo;
    private RealmList<Permission> permissionsRealmList;
    private ProxyState<ClassPermissions> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "__Class";
    }

    static final class ClassPermissionsColumnInfo extends ColumnInfo {
        long nameIndex;
        long permissionsIndex;

        ClassPermissionsColumnInfo(OsSchemaInfo schemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.permissionsIndex = addColumnDetails("permissions", "permissions", objectSchemaInfo);
        }

        ClassPermissionsColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new ClassPermissionsColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            ClassPermissionsColumnInfo src = (ClassPermissionsColumnInfo) rawSrc;
            ClassPermissionsColumnInfo dst = (ClassPermissionsColumnInfo) rawDst;
            dst.nameIndex = src.nameIndex;
            dst.permissionsIndex = src.permissionsIndex;
        }
    }

    io_realm_sync_permissions_ClassPermissionsRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (ClassPermissionsColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // io.realm.sync.permissions.ClassPermissions, io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxyInterface
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // io.realm.sync.permissions.ClassPermissions, io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxyInterface
    public void realmSet$name(String value) {
        if (this.proxyState.isUnderConstruction()) {
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        throw new RealmException("Primary key field 'name' cannot be changed after object was created.");
    }

    @Override // io.realm.sync.permissions.ClassPermissions, io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxyInterface
    public RealmList<Permission> realmGet$permissions() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.permissionsRealmList != null) {
            return this.permissionsRealmList;
        }
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.permissionsIndex);
        this.permissionsRealmList = new RealmList<>(Permission.class, osList, this.proxyState.getRealm$realm());
        return this.permissionsRealmList;
    }

    @Override // io.realm.sync.permissions.ClassPermissions, io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxyInterface
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
        builder.addPersistedProperty("name", RealmFieldType.STRING, true, true, true);
        builder.addPersistedLinkProperty("permissions", RealmFieldType.LIST, io_realm_sync_permissions_PermissionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static ClassPermissionsColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new ClassPermissionsColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static ClassPermissions createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws Throwable {
        List<String> excludeFields = new ArrayList<>(1);
        ClassPermissions obj = null;
        if (update) {
            Table table = realm.getTable(ClassPermissions.class);
            ClassPermissionsColumnInfo columnInfo = (ClassPermissionsColumnInfo) realm.getSchema().getColumnInfo(ClassPermissions.class);
            long pkColumnIndex = columnInfo.nameIndex;
            long rowIndex = -1;
            if (!json.isNull("name")) {
                rowIndex = table.findFirstString(pkColumnIndex, json.getString("name"));
            }
            long rowIndex2 = rowIndex;
            if (rowIndex2 != -1) {
                BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
                try {
                    try {
                        objectContext.set(realm, table.getUncheckedRow(rowIndex2), realm.getSchema().getColumnInfo(ClassPermissions.class), false, Collections.emptyList());
                        obj = new io_realm_sync_permissions_ClassPermissionsRealmProxy();
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
            if (json.has("name")) {
                obj = json.isNull("name") ? (io_realm_sync_permissions_ClassPermissionsRealmProxy) realm.createObjectInternal(ClassPermissions.class, null, true, excludeFields) : (io_realm_sync_permissions_ClassPermissionsRealmProxy) realm.createObjectInternal(ClassPermissions.class, json.getString("name"), true, excludeFields);
            } else {
                throw new IllegalArgumentException("JSON object doesn't have the primary key field 'name'.");
            }
        }
        io_realm_sync_permissions_ClassPermissionsRealmProxyInterface objProxy = obj;
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
    public static ClassPermissions createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        boolean jsonHasPrimaryKey = false;
        ClassPermissions obj = new ClassPermissions();
        ClassPermissions objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("name")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$name(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$name(null);
                }
                jsonHasPrimaryKey = true;
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
            throw new IllegalArgumentException("JSON object doesn't have the primary key field 'name'.");
        }
        return (ClassPermissions) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ClassPermissions copyOrUpdate(Realm realm, ClassPermissions classPermissions, boolean update, Map<RealmModel, RealmObjectProxy> cache) throws Throwable {
        if ((classPermissions instanceof RealmObjectProxy) && ((RealmObjectProxy) classPermissions).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) classPermissions).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return classPermissions;
            }
        }
        BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(classPermissions);
        if (realmModel != null) {
            return (ClassPermissions) realmModel;
        }
        io_realm_sync_permissions_ClassPermissionsRealmProxy io_realm_sync_permissions_classpermissionsrealmproxy = null;
        boolean canUpdate = update;
        if (canUpdate) {
            Table table = realm.getTable(ClassPermissions.class);
            ClassPermissionsColumnInfo columnInfo = (ClassPermissionsColumnInfo) realm.getSchema().getColumnInfo(ClassPermissions.class);
            long pkColumnIndex = columnInfo.nameIndex;
            long rowIndex = table.findFirstString(pkColumnIndex, classPermissions.realmGet$name());
            if (rowIndex == -1) {
                canUpdate = false;
            } else {
                try {
                    try {
                        objectContext.set(realm, table.getUncheckedRow(rowIndex), realm.getSchema().getColumnInfo(ClassPermissions.class), false, Collections.emptyList());
                        io_realm_sync_permissions_classpermissionsrealmproxy = new io_realm_sync_permissions_ClassPermissionsRealmProxy();
                        cache.put(classPermissions, io_realm_sync_permissions_classpermissionsrealmproxy);
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
        return canUpdate ? update(realm, io_realm_sync_permissions_classpermissionsrealmproxy, classPermissions, cache) : copy(realm, classPermissions, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ClassPermissions copy(Realm realm, ClassPermissions newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (ClassPermissions) realmModel;
        }
        ClassPermissions classPermissions = (ClassPermissions) realm.createObjectInternal(ClassPermissions.class, newObject.realmGet$name(), false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) classPermissions);
        ClassPermissions realmObjectSource = newObject;
        ClassPermissions realmObjectCopy = classPermissions;
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
        return classPermissions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, ClassPermissions classPermissions, Map<RealmModel, Long> cache) {
        Realm realm2 = realm;
        if ((classPermissions instanceof RealmObjectProxy) && ((RealmObjectProxy) classPermissions).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) classPermissions).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) classPermissions).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm2.getTable(ClassPermissions.class);
        long tableNativePtr = table.getNativePtr();
        ClassPermissionsColumnInfo columnInfo = (ClassPermissionsColumnInfo) realm.getSchema().getColumnInfo(ClassPermissions.class);
        long pkColumnIndex = columnInfo.nameIndex;
        long rowIndex = -1;
        Object primaryKeyValue = classPermissions.realmGet$name();
        if (primaryKeyValue != null) {
            rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
        }
        if (rowIndex == -1) {
            rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
        } else {
            Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
        }
        cache.put(classPermissions, Long.valueOf(rowIndex));
        RealmList<Permission> permissionsList = classPermissions.realmGet$permissions();
        if (permissionsList != null) {
            OsList permissionsOsList = new OsList(table.getUncheckedRow(rowIndex), columnInfo.permissionsIndex);
            for (Permission permissionsItem : permissionsList) {
                Long cacheItemIndexpermissions = cache.get(permissionsItem);
                if (cacheItemIndexpermissions == null) {
                    cacheItemIndexpermissions = Long.valueOf(io_realm_sync_permissions_PermissionRealmProxy.insert(realm2, permissionsItem, cache));
                }
                permissionsOsList.addRow(cacheItemIndexpermissions.longValue());
                realm2 = realm;
            }
        }
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table;
        long j;
        Realm realm2 = realm;
        Map<RealmModel, Long> map = cache;
        Table table2 = realm2.getTable(ClassPermissions.class);
        long tableNativePtr = table2.getNativePtr();
        ClassPermissionsColumnInfo columnInfo = (ClassPermissionsColumnInfo) realm.getSchema().getColumnInfo(ClassPermissions.class);
        long pkColumnIndex = columnInfo.nameIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (ClassPermissions) objects.next();
            if (map.containsKey(realmModel)) {
                table = table2;
                j = tableNativePtr;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                map.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                table = table2;
                j = tableNativePtr;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = ((io_realm_sync_permissions_ClassPermissionsRealmProxyInterface) realmModel).realmGet$name();
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table2, pkColumnIndex, primaryKeyValue);
                } else {
                    Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
                }
                map.put(realmModel, Long.valueOf(rowIndex));
                RealmList<Permission> permissionsList = ((io_realm_sync_permissions_ClassPermissionsRealmProxyInterface) realmModel).realmGet$permissions();
                if (permissionsList != null) {
                    table = table2;
                    j = tableNativePtr;
                    OsList permissionsOsList = new OsList(table2.getUncheckedRow(rowIndex), columnInfo.permissionsIndex);
                    for (Permission permissionsItem : permissionsList) {
                        Long cacheItemIndexpermissions = map.get(permissionsItem);
                        if (cacheItemIndexpermissions == null) {
                            cacheItemIndexpermissions = Long.valueOf(io_realm_sync_permissions_PermissionRealmProxy.insert(realm2, permissionsItem, map));
                        }
                        permissionsOsList.addRow(cacheItemIndexpermissions.longValue());
                        realm2 = realm;
                        map = cache;
                    }
                } else {
                    table = table2;
                    j = tableNativePtr;
                }
            }
            table2 = table;
            tableNativePtr = j;
            realm2 = realm;
            map = cache;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, ClassPermissions classPermissions, Map<RealmModel, Long> cache) {
        if (!(classPermissions instanceof RealmObjectProxy) || ((RealmObjectProxy) classPermissions).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) classPermissions).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(ClassPermissions.class);
            long tableNativePtr = table.getNativePtr();
            ClassPermissionsColumnInfo columnInfo = (ClassPermissionsColumnInfo) realm.getSchema().getColumnInfo(ClassPermissions.class);
            long pkColumnIndex = columnInfo.nameIndex;
            long rowIndex = -1;
            Object primaryKeyValue = classPermissions.realmGet$name();
            if (primaryKeyValue != null) {
                rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
            }
            if (rowIndex == -1) {
                rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
            }
            cache.put(classPermissions, Long.valueOf(rowIndex));
            OsList permissionsOsList = new OsList(table.getUncheckedRow(rowIndex), columnInfo.permissionsIndex);
            RealmList<Permission> permissionsList = classPermissions.realmGet$permissions();
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
                    table = table;
                    tableNativePtr = tableNativePtr;
                    columnInfo = columnInfo;
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
            return rowIndex;
        }
        return ((RealmObjectProxy) classPermissions).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table;
        long tableNativePtr;
        ClassPermissionsColumnInfo columnInfo;
        Table table2 = realm.getTable(ClassPermissions.class);
        long tableNativePtr2 = table2.getNativePtr();
        ClassPermissionsColumnInfo columnInfo2 = (ClassPermissionsColumnInfo) realm.getSchema().getColumnInfo(ClassPermissions.class);
        long pkColumnIndex = columnInfo2.nameIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (ClassPermissions) objects.next();
            if (cache.containsKey(realmModel)) {
                table = table2;
                tableNativePtr = tableNativePtr2;
                columnInfo = columnInfo2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                table = table2;
                tableNativePtr = tableNativePtr2;
                columnInfo = columnInfo2;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = ((io_realm_sync_permissions_ClassPermissionsRealmProxyInterface) realmModel).realmGet$name();
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstString(tableNativePtr2, pkColumnIndex, (String) primaryKeyValue);
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table2, pkColumnIndex, primaryKeyValue);
                }
                cache.put(realmModel, Long.valueOf(rowIndex));
                OsList permissionsOsList = new OsList(table2.getUncheckedRow(rowIndex), columnInfo2.permissionsIndex);
                RealmList<Permission> permissionsList = ((io_realm_sync_permissions_ClassPermissionsRealmProxyInterface) realmModel).realmGet$permissions();
                if (permissionsList != null && permissionsList.size() == permissionsOsList.size()) {
                    int objectCount = permissionsList.size();
                    int i = 0;
                    while (i < objectCount) {
                        Table table3 = table2;
                        Permission permissionsItem = permissionsList.get(i);
                        Long cacheItemIndexpermissions = cache.get(permissionsItem);
                        if (cacheItemIndexpermissions == null) {
                            cacheItemIndexpermissions = Long.valueOf(io_realm_sync_permissions_PermissionRealmProxy.insertOrUpdate(realm, permissionsItem, cache));
                        }
                        permissionsOsList.setRow(i, cacheItemIndexpermissions.longValue());
                        i++;
                        table2 = table3;
                        tableNativePtr2 = tableNativePtr2;
                        columnInfo2 = columnInfo2;
                    }
                    table = table2;
                    tableNativePtr = tableNativePtr2;
                    columnInfo = columnInfo2;
                } else {
                    table = table2;
                    tableNativePtr = tableNativePtr2;
                    columnInfo = columnInfo2;
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
            columnInfo2 = columnInfo;
        }
    }

    public static ClassPermissions createDetachedCopy(ClassPermissions realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        ClassPermissions unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new ClassPermissions();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (ClassPermissions) cachedObject.object;
            }
            unmanagedObject = (ClassPermissions) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        io_realm_sync_permissions_ClassPermissionsRealmProxyInterface unmanagedCopy = unmanagedObject;
        ClassPermissions realmSource = realmObject;
        unmanagedCopy.realmSet$name(realmSource.realmGet$name());
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

    static ClassPermissions update(Realm realm, ClassPermissions realmObject, ClassPermissions newObject, Map<RealmModel, RealmObjectProxy> cache) {
        ClassPermissions realmObjectTarget = realmObject;
        ClassPermissions realmObjectSource = newObject;
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
        return "ClassPermissions = proxy[{name:" + realmGet$name() + "},{permissions:RealmList<Permission>[" + realmGet$permissions().size() + "]}]";
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
        io_realm_sync_permissions_ClassPermissionsRealmProxy aClassPermissions = (io_realm_sync_permissions_ClassPermissionsRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aClassPermissions.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aClassPermissions.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aClassPermissions.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
