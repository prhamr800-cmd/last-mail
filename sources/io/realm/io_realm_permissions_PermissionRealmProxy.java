package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.huxq17.download.DownloadProvider;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import io.realm.BaseRealm;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.android.JsonUtils;
import io.realm.permissions.Permission;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class io_realm_permissions_PermissionRealmProxy extends Permission implements RealmObjectProxy, io_realm_permissions_PermissionRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private PermissionColumnInfo columnInfo;
    private ProxyState<Permission> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "Permission";
    }

    static final class PermissionColumnInfo extends ColumnInfo {
        long mayManageIndex;
        long mayReadIndex;
        long mayWriteIndex;
        long pathIndex;
        long updatedAtIndex;
        long userIdIndex;

        PermissionColumnInfo(OsSchemaInfo schemaInfo) {
            super(6);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.userIdIndex = addColumnDetails(Parameters.SESSION_USER_ID, Parameters.SESSION_USER_ID, objectSchemaInfo);
            this.pathIndex = addColumnDetails(DownloadProvider.DownloadTable.PATH, DownloadProvider.DownloadTable.PATH, objectSchemaInfo);
            this.mayReadIndex = addColumnDetails("mayRead", "mayRead", objectSchemaInfo);
            this.mayWriteIndex = addColumnDetails("mayWrite", "mayWrite", objectSchemaInfo);
            this.mayManageIndex = addColumnDetails("mayManage", "mayManage", objectSchemaInfo);
            this.updatedAtIndex = addColumnDetails("updatedAt", "updatedAt", objectSchemaInfo);
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
            dst.userIdIndex = src.userIdIndex;
            dst.pathIndex = src.pathIndex;
            dst.mayReadIndex = src.mayReadIndex;
            dst.mayWriteIndex = src.mayWriteIndex;
            dst.mayManageIndex = src.mayManageIndex;
            dst.updatedAtIndex = src.updatedAtIndex;
        }
    }

    io_realm_permissions_PermissionRealmProxy() {
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

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public String realmGet$userId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.userIdIndex);
    }

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public void realmSet$userId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'userId' to null.");
            }
            row.getTable().setString(this.columnInfo.userIdIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            throw new IllegalArgumentException("Trying to set non-nullable field 'userId' to null.");
        }
        this.proxyState.getRow$realm().setString(this.columnInfo.userIdIndex, value);
    }

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public String realmGet$path() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.pathIndex);
    }

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public void realmSet$path(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'path' to null.");
            }
            row.getTable().setString(this.columnInfo.pathIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            throw new IllegalArgumentException("Trying to set non-nullable field 'path' to null.");
        }
        this.proxyState.getRow$realm().setString(this.columnInfo.pathIndex, value);
    }

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public boolean realmGet$mayRead() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.mayReadIndex);
    }

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public void realmSet$mayRead(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.mayReadIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.mayReadIndex, value);
    }

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public boolean realmGet$mayWrite() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.mayWriteIndex);
    }

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public void realmSet$mayWrite(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.mayWriteIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.mayWriteIndex, value);
    }

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public boolean realmGet$mayManage() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.mayManageIndex);
    }

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public void realmSet$mayManage(boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setBoolean(this.columnInfo.mayManageIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.columnInfo.mayManageIndex, value);
    }

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public Date realmGet$updatedAt() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDate(this.columnInfo.updatedAtIndex);
    }

    @Override // io.realm.permissions.Permission, io.realm.io_realm_permissions_PermissionRealmProxyInterface
    public void realmSet$updatedAt(Date value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'updatedAt' to null.");
            }
            row.getTable().setDate(this.columnInfo.updatedAtIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            throw new IllegalArgumentException("Trying to set non-nullable field 'updatedAt' to null.");
        }
        this.proxyState.getRow$realm().setDate(this.columnInfo.updatedAtIndex, value);
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 6, 0);
        builder.addPersistedProperty(Parameters.SESSION_USER_ID, RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty(DownloadProvider.DownloadTable.PATH, RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty("mayRead", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("mayWrite", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("mayManage", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("updatedAt", RealmFieldType.DATE, false, false, true);
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
        List<String> excludeFields = Collections.emptyList();
        Permission obj = (Permission) realm.createObjectInternal(Permission.class, true, excludeFields);
        Permission objProxy = obj;
        if (json.has(Parameters.SESSION_USER_ID)) {
            if (json.isNull(Parameters.SESSION_USER_ID)) {
                objProxy.realmSet$userId(null);
            } else {
                objProxy.realmSet$userId(json.getString(Parameters.SESSION_USER_ID));
            }
        }
        if (json.has(DownloadProvider.DownloadTable.PATH)) {
            if (json.isNull(DownloadProvider.DownloadTable.PATH)) {
                objProxy.realmSet$path(null);
            } else {
                objProxy.realmSet$path(json.getString(DownloadProvider.DownloadTable.PATH));
            }
        }
        if (json.has("mayRead")) {
            if (json.isNull("mayRead")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'mayRead' to null.");
            }
            objProxy.realmSet$mayRead(json.getBoolean("mayRead"));
        }
        if (json.has("mayWrite")) {
            if (json.isNull("mayWrite")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'mayWrite' to null.");
            }
            objProxy.realmSet$mayWrite(json.getBoolean("mayWrite"));
        }
        if (json.has("mayManage")) {
            if (json.isNull("mayManage")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'mayManage' to null.");
            }
            objProxy.realmSet$mayManage(json.getBoolean("mayManage"));
        }
        if (json.has("updatedAt")) {
            if (json.isNull("updatedAt")) {
                objProxy.realmSet$updatedAt(null);
            } else {
                Object timestamp = json.get("updatedAt");
                if (timestamp instanceof String) {
                    objProxy.realmSet$updatedAt(JsonUtils.stringToDate((String) timestamp));
                } else {
                    objProxy.realmSet$updatedAt(new Date(json.getLong("updatedAt")));
                }
            }
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
            if (name.equals(Parameters.SESSION_USER_ID)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$userId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$userId(null);
                }
            } else if (name.equals(DownloadProvider.DownloadTable.PATH)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$path(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$path(null);
                }
            } else if (name.equals("mayRead")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$mayRead(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'mayRead' to null.");
                }
            } else if (name.equals("mayWrite")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$mayWrite(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'mayWrite' to null.");
                }
            } else if (name.equals("mayManage")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$mayManage(reader.nextBoolean());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'mayManage' to null.");
                }
            } else if (name.equals("updatedAt")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$updatedAt(null);
                } else if (reader.peek() == JsonToken.NUMBER) {
                    long timestamp = reader.nextLong();
                    if (timestamp > -1) {
                        objProxy.realmSet$updatedAt(new Date(timestamp));
                    }
                } else {
                    objProxy.realmSet$updatedAt(JsonUtils.stringToDate(reader.nextString()));
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
        realmObjectCopy.realmSet$userId(realmObjectSource.realmGet$userId());
        realmObjectCopy.realmSet$path(realmObjectSource.realmGet$path());
        realmObjectCopy.realmSet$mayRead(realmObjectSource.realmGet$mayRead());
        realmObjectCopy.realmSet$mayWrite(realmObjectSource.realmGet$mayWrite());
        realmObjectCopy.realmSet$mayManage(realmObjectSource.realmGet$mayManage());
        realmObjectCopy.realmSet$updatedAt(realmObjectSource.realmGet$updatedAt());
        return permission;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, Permission permission, Map<RealmModel, Long> cache) {
        if ((permission instanceof RealmObjectProxy) && ((RealmObjectProxy) permission).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) permission).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) permission).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(Permission.class);
        long tableNativePtr = table.getNativePtr();
        PermissionColumnInfo columnInfo = (PermissionColumnInfo) realm.getSchema().getColumnInfo(Permission.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(permission, Long.valueOf(rowIndex));
        String realmGet$userId = permission.realmGet$userId();
        if (realmGet$userId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.userIdIndex, rowIndex, realmGet$userId, false);
        }
        String realmGet$path = permission.realmGet$path();
        if (realmGet$path != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.pathIndex, rowIndex, realmGet$path, false);
        }
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex, permission.realmGet$mayRead(), false);
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex, permission.realmGet$mayWrite(), false);
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex, permission.realmGet$mayManage(), false);
        Date realmGet$updatedAt = permission.realmGet$updatedAt();
        if (realmGet$updatedAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex, realmGet$updatedAt.getTime(), false);
        }
        return rowIndex;
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
                    String realmGet$userId = ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$userId();
                    if (realmGet$userId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.userIdIndex, rowIndex, realmGet$userId, false);
                    }
                    String realmGet$path = ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$path();
                    if (realmGet$path != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.pathIndex, rowIndex, realmGet$path, false);
                    }
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex, ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$mayRead(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex, ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$mayWrite(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex, ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$mayManage(), false);
                    Date realmGet$updatedAt = ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$updatedAt();
                    if (realmGet$updatedAt != null) {
                        Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex, realmGet$updatedAt.getTime(), false);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, Permission permission, Map<RealmModel, Long> cache) {
        if ((permission instanceof RealmObjectProxy) && ((RealmObjectProxy) permission).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) permission).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) permission).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(Permission.class);
        long tableNativePtr = table.getNativePtr();
        PermissionColumnInfo columnInfo = (PermissionColumnInfo) realm.getSchema().getColumnInfo(Permission.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(permission, Long.valueOf(rowIndex));
        String realmGet$userId = permission.realmGet$userId();
        if (realmGet$userId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.userIdIndex, rowIndex, realmGet$userId, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.userIdIndex, rowIndex, false);
        }
        String realmGet$path = permission.realmGet$path();
        if (realmGet$path != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.pathIndex, rowIndex, realmGet$path, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.pathIndex, rowIndex, false);
        }
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex, permission.realmGet$mayRead(), false);
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex, permission.realmGet$mayWrite(), false);
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex, permission.realmGet$mayManage(), false);
        Date realmGet$updatedAt = permission.realmGet$updatedAt();
        if (realmGet$updatedAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex, realmGet$updatedAt.getTime(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.updatedAtIndex, rowIndex, false);
        }
        return rowIndex;
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
                    String realmGet$userId = ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$userId();
                    if (realmGet$userId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.userIdIndex, rowIndex, realmGet$userId, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.userIdIndex, rowIndex, false);
                    }
                    String realmGet$path = ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$path();
                    if (realmGet$path != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.pathIndex, rowIndex, realmGet$path, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.pathIndex, rowIndex, false);
                    }
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex, ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$mayRead(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex, ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$mayWrite(), false);
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex, ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$mayManage(), false);
                    Date realmGet$updatedAt = ((io_realm_permissions_PermissionRealmProxyInterface) realmModel).realmGet$updatedAt();
                    if (realmGet$updatedAt != null) {
                        Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex, realmGet$updatedAt.getTime(), false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.updatedAtIndex, rowIndex, false);
                    }
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
        io_realm_permissions_PermissionRealmProxyInterface unmanagedCopy = unmanagedObject;
        Permission realmSource = realmObject;
        unmanagedCopy.realmSet$userId(realmSource.realmGet$userId());
        unmanagedCopy.realmSet$path(realmSource.realmGet$path());
        unmanagedCopy.realmSet$mayRead(realmSource.realmGet$mayRead());
        unmanagedCopy.realmSet$mayWrite(realmSource.realmGet$mayWrite());
        unmanagedCopy.realmSet$mayManage(realmSource.realmGet$mayManage());
        unmanagedCopy.realmSet$updatedAt(realmSource.realmGet$updatedAt());
        return unmanagedObject;
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
        io_realm_permissions_PermissionRealmProxy aPermission = (io_realm_permissions_PermissionRealmProxy) o;
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
