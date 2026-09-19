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
import io.realm.io_realm_sync_permissions_PermissionUserRealmProxy;
import io.realm.sync.permissions.PermissionUser;
import io.realm.sync.permissions.Role;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class io_realm_sync_permissions_RoleRealmProxy extends Role implements RealmObjectProxy, io_realm_sync_permissions_RoleRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private RoleColumnInfo columnInfo;
    private RealmList<PermissionUser> membersRealmList;
    private ProxyState<Role> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "__Role";
    }

    static final class RoleColumnInfo extends ColumnInfo {
        long membersIndex;
        long nameIndex;

        RoleColumnInfo(OsSchemaInfo schemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.membersIndex = addColumnDetails("members", "members", objectSchemaInfo);
        }

        RoleColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new RoleColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            RoleColumnInfo src = (RoleColumnInfo) rawSrc;
            RoleColumnInfo dst = (RoleColumnInfo) rawDst;
            dst.nameIndex = src.nameIndex;
            dst.membersIndex = src.membersIndex;
        }
    }

    io_realm_sync_permissions_RoleRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (RoleColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // io.realm.sync.permissions.Role, io.realm.io_realm_sync_permissions_RoleRealmProxyInterface
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // io.realm.sync.permissions.Role, io.realm.io_realm_sync_permissions_RoleRealmProxyInterface
    public void realmSet$name(String value) {
        if (this.proxyState.isUnderConstruction()) {
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        throw new RealmException("Primary key field 'name' cannot be changed after object was created.");
    }

    @Override // io.realm.sync.permissions.Role, io.realm.io_realm_sync_permissions_RoleRealmProxyInterface
    public RealmList<PermissionUser> realmGet$members() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.membersRealmList != null) {
            return this.membersRealmList;
        }
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.membersIndex);
        this.membersRealmList = new RealmList<>(PermissionUser.class, osList, this.proxyState.getRealm$realm());
        return this.membersRealmList;
    }

    @Override // io.realm.sync.permissions.Role, io.realm.io_realm_sync_permissions_RoleRealmProxyInterface
    public void realmSet$members(RealmList<PermissionUser> value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains("members")) {
                return;
            }
            if (value != null && !value.isManaged()) {
                Realm realm = (Realm) this.proxyState.getRealm$realm();
                value = new RealmList<>();
                for (PermissionUser item : value) {
                    if (item == null || RealmObject.isManaged(item)) {
                        value.add(item);
                    } else {
                        value.add((PermissionUser) realm.copyToRealm(item));
                    }
                }
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.membersIndex);
        int i = 0;
        if (value != null && value.size() == osList.size()) {
            int objects = value.size();
            while (i < objects) {
                RealmModel realmModel = (PermissionUser) value.get(i);
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
            RealmModel realmModel2 = (PermissionUser) value.get(i);
            this.proxyState.checkValidObject(realmModel2);
            osList.addRow(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex());
            i++;
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("name", RealmFieldType.STRING, true, true, true);
        builder.addPersistedLinkProperty("members", RealmFieldType.LIST, io_realm_sync_permissions_PermissionUserRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static RoleColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new RoleColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static Role createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = new ArrayList<>(1);
        Role obj = null;
        if (update) {
            Table table = realm.getTable(Role.class);
            RoleColumnInfo columnInfo = (RoleColumnInfo) realm.getSchema().getColumnInfo(Role.class);
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
                        objectContext.set(realm, table.getUncheckedRow(rowIndex2), realm.getSchema().getColumnInfo(Role.class), false, Collections.emptyList());
                        obj = new io_realm_sync_permissions_RoleRealmProxy();
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
            if (json.has("members")) {
                excludeFields.add("members");
            }
            if (json.has("name")) {
                obj = json.isNull("name") ? (io_realm_sync_permissions_RoleRealmProxy) realm.createObjectInternal(Role.class, null, true, excludeFields) : (io_realm_sync_permissions_RoleRealmProxy) realm.createObjectInternal(Role.class, json.getString("name"), true, excludeFields);
            } else {
                throw new IllegalArgumentException("JSON object doesn't have the primary key field 'name'.");
            }
        }
        io_realm_sync_permissions_RoleRealmProxyInterface objProxy = obj;
        if (json.has("members")) {
            if (json.isNull("members")) {
                objProxy.realmSet$members(null);
            } else {
                objProxy.realmGet$members().clear();
                JSONArray array = json.getJSONArray("members");
                for (int i = 0; i < array.length(); i++) {
                    PermissionUser item = io_realm_sync_permissions_PermissionUserRealmProxy.createOrUpdateUsingJsonObject(realm, array.getJSONObject(i), update);
                    objProxy.realmGet$members().add(item);
                }
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static Role createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        boolean jsonHasPrimaryKey = false;
        Role obj = new Role();
        Role objProxy = obj;
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
            } else if (name.equals("members")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$members(null);
                } else {
                    objProxy.realmSet$members(new RealmList<>());
                    reader.beginArray();
                    while (reader.hasNext()) {
                        PermissionUser item = io_realm_sync_permissions_PermissionUserRealmProxy.createUsingJsonStream(realm, reader);
                        objProxy.realmGet$members().add(item);
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
        return (Role) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Role copyOrUpdate(Realm realm, Role role, boolean update, Map<RealmModel, RealmObjectProxy> cache) throws Throwable {
        if ((role instanceof RealmObjectProxy) && ((RealmObjectProxy) role).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) role).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return role;
            }
        }
        BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(role);
        if (realmModel != null) {
            return (Role) realmModel;
        }
        io_realm_sync_permissions_RoleRealmProxy io_realm_sync_permissions_rolerealmproxy = null;
        boolean canUpdate = update;
        if (canUpdate) {
            Table table = realm.getTable(Role.class);
            RoleColumnInfo columnInfo = (RoleColumnInfo) realm.getSchema().getColumnInfo(Role.class);
            long pkColumnIndex = columnInfo.nameIndex;
            long rowIndex = table.findFirstString(pkColumnIndex, role.realmGet$name());
            if (rowIndex == -1) {
                canUpdate = false;
            } else {
                try {
                    try {
                        objectContext.set(realm, table.getUncheckedRow(rowIndex), realm.getSchema().getColumnInfo(Role.class), false, Collections.emptyList());
                        io_realm_sync_permissions_rolerealmproxy = new io_realm_sync_permissions_RoleRealmProxy();
                        cache.put(role, io_realm_sync_permissions_rolerealmproxy);
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
        return canUpdate ? update(realm, io_realm_sync_permissions_rolerealmproxy, role, cache) : copy(realm, role, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Role copy(Realm realm, Role newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (Role) realmModel;
        }
        Role role = (Role) realm.createObjectInternal(Role.class, newObject.realmGet$name(), false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) role);
        Role realmObjectSource = newObject;
        Role realmObjectCopy = role;
        RealmList<PermissionUser> membersList = realmObjectSource.realmGet$members();
        if (membersList != null) {
            RealmList<PermissionUser> membersRealmList = realmObjectCopy.realmGet$members();
            membersRealmList.clear();
            for (int i = 0; i < membersList.size(); i++) {
                PermissionUser membersItem = membersList.get(i);
                PermissionUser cachemembers = (PermissionUser) cache.get(membersItem);
                if (cachemembers != null) {
                    membersRealmList.add(cachemembers);
                } else {
                    membersRealmList.add(io_realm_sync_permissions_PermissionUserRealmProxy.copyOrUpdate(realm, membersItem, update, cache));
                }
            }
        }
        return role;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, Role role, Map<RealmModel, Long> cache) {
        Realm realm2 = realm;
        if ((role instanceof RealmObjectProxy) && ((RealmObjectProxy) role).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) role).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) role).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm2.getTable(Role.class);
        long tableNativePtr = table.getNativePtr();
        RoleColumnInfo columnInfo = (RoleColumnInfo) realm.getSchema().getColumnInfo(Role.class);
        long pkColumnIndex = columnInfo.nameIndex;
        long rowIndex = -1;
        Object primaryKeyValue = role.realmGet$name();
        if (primaryKeyValue != null) {
            rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
        }
        if (rowIndex == -1) {
            rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
        } else {
            Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
        }
        cache.put(role, Long.valueOf(rowIndex));
        RealmList<PermissionUser> membersList = role.realmGet$members();
        if (membersList != null) {
            OsList membersOsList = new OsList(table.getUncheckedRow(rowIndex), columnInfo.membersIndex);
            for (PermissionUser membersItem : membersList) {
                Long cacheItemIndexmembers = cache.get(membersItem);
                if (cacheItemIndexmembers == null) {
                    cacheItemIndexmembers = Long.valueOf(io_realm_sync_permissions_PermissionUserRealmProxy.insert(realm2, membersItem, cache));
                }
                membersOsList.addRow(cacheItemIndexmembers.longValue());
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
        Table table2 = realm2.getTable(Role.class);
        long tableNativePtr = table2.getNativePtr();
        RoleColumnInfo columnInfo = (RoleColumnInfo) realm.getSchema().getColumnInfo(Role.class);
        long pkColumnIndex = columnInfo.nameIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (Role) objects.next();
            if (map.containsKey(realmModel)) {
                table = table2;
                j = tableNativePtr;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                map.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                table = table2;
                j = tableNativePtr;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = ((io_realm_sync_permissions_RoleRealmProxyInterface) realmModel).realmGet$name();
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table2, pkColumnIndex, primaryKeyValue);
                } else {
                    Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
                }
                map.put(realmModel, Long.valueOf(rowIndex));
                RealmList<PermissionUser> membersList = ((io_realm_sync_permissions_RoleRealmProxyInterface) realmModel).realmGet$members();
                if (membersList != null) {
                    table = table2;
                    j = tableNativePtr;
                    OsList membersOsList = new OsList(table2.getUncheckedRow(rowIndex), columnInfo.membersIndex);
                    for (PermissionUser membersItem : membersList) {
                        Long cacheItemIndexmembers = map.get(membersItem);
                        if (cacheItemIndexmembers == null) {
                            cacheItemIndexmembers = Long.valueOf(io_realm_sync_permissions_PermissionUserRealmProxy.insert(realm2, membersItem, map));
                        }
                        membersOsList.addRow(cacheItemIndexmembers.longValue());
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
    public static long insertOrUpdate(Realm realm, Role role, Map<RealmModel, Long> cache) {
        if (!(role instanceof RealmObjectProxy) || ((RealmObjectProxy) role).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) role).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(Role.class);
            long tableNativePtr = table.getNativePtr();
            RoleColumnInfo columnInfo = (RoleColumnInfo) realm.getSchema().getColumnInfo(Role.class);
            long pkColumnIndex = columnInfo.nameIndex;
            long rowIndex = -1;
            Object primaryKeyValue = role.realmGet$name();
            if (primaryKeyValue != null) {
                rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
            }
            if (rowIndex == -1) {
                rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
            }
            cache.put(role, Long.valueOf(rowIndex));
            OsList membersOsList = new OsList(table.getUncheckedRow(rowIndex), columnInfo.membersIndex);
            RealmList<PermissionUser> membersList = role.realmGet$members();
            if (membersList != null && membersList.size() == membersOsList.size()) {
                int objects = membersList.size();
                int i = 0;
                while (i < objects) {
                    PermissionUser membersItem = membersList.get(i);
                    Long cacheItemIndexmembers = cache.get(membersItem);
                    if (cacheItemIndexmembers == null) {
                        cacheItemIndexmembers = Long.valueOf(io_realm_sync_permissions_PermissionUserRealmProxy.insertOrUpdate(realm, membersItem, cache));
                    }
                    membersOsList.setRow(i, cacheItemIndexmembers.longValue());
                    i++;
                    table = table;
                    tableNativePtr = tableNativePtr;
                    columnInfo = columnInfo;
                }
            } else {
                membersOsList.removeAll();
                if (membersList != null) {
                    for (PermissionUser membersItem2 : membersList) {
                        Long cacheItemIndexmembers2 = cache.get(membersItem2);
                        if (cacheItemIndexmembers2 == null) {
                            cacheItemIndexmembers2 = Long.valueOf(io_realm_sync_permissions_PermissionUserRealmProxy.insertOrUpdate(realm, membersItem2, cache));
                        }
                        membersOsList.addRow(cacheItemIndexmembers2.longValue());
                    }
                }
            }
            return rowIndex;
        }
        return ((RealmObjectProxy) role).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table;
        long tableNativePtr;
        RoleColumnInfo columnInfo;
        Table table2 = realm.getTable(Role.class);
        long tableNativePtr2 = table2.getNativePtr();
        RoleColumnInfo columnInfo2 = (RoleColumnInfo) realm.getSchema().getColumnInfo(Role.class);
        long pkColumnIndex = columnInfo2.nameIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (Role) objects.next();
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
                Object primaryKeyValue = ((io_realm_sync_permissions_RoleRealmProxyInterface) realmModel).realmGet$name();
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstString(tableNativePtr2, pkColumnIndex, (String) primaryKeyValue);
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table2, pkColumnIndex, primaryKeyValue);
                }
                cache.put(realmModel, Long.valueOf(rowIndex));
                OsList membersOsList = new OsList(table2.getUncheckedRow(rowIndex), columnInfo2.membersIndex);
                RealmList<PermissionUser> membersList = ((io_realm_sync_permissions_RoleRealmProxyInterface) realmModel).realmGet$members();
                if (membersList != null && membersList.size() == membersOsList.size()) {
                    int objectCount = membersList.size();
                    int i = 0;
                    while (i < objectCount) {
                        Table table3 = table2;
                        PermissionUser membersItem = membersList.get(i);
                        Long cacheItemIndexmembers = cache.get(membersItem);
                        if (cacheItemIndexmembers == null) {
                            cacheItemIndexmembers = Long.valueOf(io_realm_sync_permissions_PermissionUserRealmProxy.insertOrUpdate(realm, membersItem, cache));
                        }
                        membersOsList.setRow(i, cacheItemIndexmembers.longValue());
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
                    membersOsList.removeAll();
                    if (membersList != null) {
                        for (PermissionUser membersItem2 : membersList) {
                            Long cacheItemIndexmembers2 = cache.get(membersItem2);
                            if (cacheItemIndexmembers2 == null) {
                                cacheItemIndexmembers2 = Long.valueOf(io_realm_sync_permissions_PermissionUserRealmProxy.insertOrUpdate(realm, membersItem2, cache));
                            }
                            membersOsList.addRow(cacheItemIndexmembers2.longValue());
                        }
                    }
                }
            }
            table2 = table;
            tableNativePtr2 = tableNativePtr;
            columnInfo2 = columnInfo;
        }
    }

    public static Role createDetachedCopy(Role realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Role unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new Role();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (Role) cachedObject.object;
            }
            unmanagedObject = (Role) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        io_realm_sync_permissions_RoleRealmProxyInterface unmanagedCopy = unmanagedObject;
        Role realmSource = realmObject;
        unmanagedCopy.realmSet$name(realmSource.realmGet$name());
        if (currentDepth == maxDepth) {
            unmanagedCopy.realmSet$members(null);
        } else {
            RealmList<PermissionUser> managedmembersList = realmSource.realmGet$members();
            RealmList<PermissionUser> unmanagedmembersList = new RealmList<>();
            unmanagedCopy.realmSet$members(unmanagedmembersList);
            int nextDepth = currentDepth + 1;
            int size = managedmembersList.size();
            for (int i = 0; i < size; i++) {
                PermissionUser item = io_realm_sync_permissions_PermissionUserRealmProxy.createDetachedCopy(managedmembersList.get(i), nextDepth, maxDepth, cache);
                unmanagedmembersList.add(item);
            }
        }
        return unmanagedObject;
    }

    static Role update(Realm realm, Role realmObject, Role newObject, Map<RealmModel, RealmObjectProxy> cache) {
        Role realmObjectTarget = realmObject;
        Role realmObjectSource = newObject;
        RealmList<PermissionUser> membersList = realmObjectSource.realmGet$members();
        RealmList<PermissionUser> membersRealmList = realmObjectTarget.realmGet$members();
        int i = 0;
        if (membersList != null && membersList.size() == membersRealmList.size()) {
            int objects = membersList.size();
            while (i < objects) {
                PermissionUser membersItem = membersList.get(i);
                PermissionUser cachemembers = (PermissionUser) cache.get(membersItem);
                if (cachemembers != null) {
                    membersRealmList.set(i, cachemembers);
                } else {
                    membersRealmList.set(i, io_realm_sync_permissions_PermissionUserRealmProxy.copyOrUpdate(realm, membersItem, true, cache));
                }
                i++;
            }
        } else {
            membersRealmList.clear();
            if (membersList != null) {
                while (i < membersList.size()) {
                    PermissionUser membersItem2 = membersList.get(i);
                    PermissionUser cachemembers2 = (PermissionUser) cache.get(membersItem2);
                    if (cachemembers2 != null) {
                        membersRealmList.add(cachemembers2);
                    } else {
                        membersRealmList.add(io_realm_sync_permissions_PermissionUserRealmProxy.copyOrUpdate(realm, membersItem2, true, cache));
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
        return "Role = proxy[{name:" + realmGet$name() + "},{members:RealmList<PermissionUser>[" + realmGet$members().size() + "]}]";
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
        io_realm_sync_permissions_RoleRealmProxy aRole = (io_realm_sync_permissions_RoleRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aRole.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aRole.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aRole.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
