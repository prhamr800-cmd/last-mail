package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.ServerNotification;
import io.realm.BaseRealm;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class com_digikala_dms_model_domain_ServerNotificationRealmProxy extends ServerNotification implements RealmObjectProxy, com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private ServerNotificationColumnInfo columnInfo;
    private ProxyState<ServerNotification> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "ServerNotification";
    }

    static final class ServerNotificationColumnInfo extends ColumnInfo {
        long idIndex;
        long statusIndex;

        ServerNotificationColumnInfo(OsSchemaInfo schemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.statusIndex = addColumnDetails("status", "status", objectSchemaInfo);
        }

        ServerNotificationColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new ServerNotificationColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            ServerNotificationColumnInfo src = (ServerNotificationColumnInfo) rawSrc;
            ServerNotificationColumnInfo dst = (ServerNotificationColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.statusIndex = src.statusIndex;
        }
    }

    com_digikala_dms_model_domain_ServerNotificationRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (ServerNotificationColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.ServerNotification, io.realm.com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface
    public String realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.idIndex);
    }

    @Override // com.digikala.dms.model.domain.ServerNotification, io.realm.com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface
    public void realmSet$id(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.idIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.idIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.idIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.idIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.ServerNotification, io.realm.com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface
    public String realmGet$status() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.statusIndex);
    }

    @Override // com.digikala.dms.model.domain.ServerNotification, io.realm.com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface
    public void realmSet$status(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.statusIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.statusIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.statusIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.statusIndex, value);
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("id", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("status", RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static ServerNotificationColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new ServerNotificationColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static ServerNotification createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = Collections.emptyList();
        ServerNotification obj = (ServerNotification) realm.createObjectInternal(ServerNotification.class, true, excludeFields);
        ServerNotification objProxy = obj;
        if (json.has("id")) {
            if (json.isNull("id")) {
                objProxy.realmSet$id(null);
            } else {
                objProxy.realmSet$id(json.getString("id"));
            }
        }
        if (json.has("status")) {
            if (json.isNull("status")) {
                objProxy.realmSet$status(null);
            } else {
                objProxy.realmSet$status(json.getString("status"));
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static ServerNotification createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        ServerNotification obj = new ServerNotification();
        ServerNotification objProxy = obj;
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
            } else if (name.equals("status")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$status(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$status(null);
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (ServerNotification) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ServerNotification copyOrUpdate(Realm realm, ServerNotification serverNotification, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((serverNotification instanceof RealmObjectProxy) && ((RealmObjectProxy) serverNotification).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) serverNotification).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return serverNotification;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(serverNotification);
        if (realmModel != null) {
            return (ServerNotification) realmModel;
        }
        return copy(realm, serverNotification, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ServerNotification copy(Realm realm, ServerNotification newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (ServerNotification) realmModel;
        }
        ServerNotification serverNotification = (ServerNotification) realm.createObjectInternal(ServerNotification.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) serverNotification);
        ServerNotification realmObjectSource = newObject;
        ServerNotification realmObjectCopy = serverNotification;
        realmObjectCopy.realmSet$id(realmObjectSource.realmGet$id());
        realmObjectCopy.realmSet$status(realmObjectSource.realmGet$status());
        return serverNotification;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, ServerNotification serverNotification, Map<RealmModel, Long> cache) {
        if ((serverNotification instanceof RealmObjectProxy) && ((RealmObjectProxy) serverNotification).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) serverNotification).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) serverNotification).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(ServerNotification.class);
        long tableNativePtr = table.getNativePtr();
        ServerNotificationColumnInfo columnInfo = (ServerNotificationColumnInfo) realm.getSchema().getColumnInfo(ServerNotification.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(serverNotification, Long.valueOf(rowIndex));
        String realmGet$id = serverNotification.realmGet$id();
        if (realmGet$id != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
        }
        String realmGet$status = serverNotification.realmGet$status();
        if (realmGet$status != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.statusIndex, rowIndex, realmGet$status, false);
        }
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(ServerNotification.class);
        long tableNativePtr = table.getNativePtr();
        ServerNotificationColumnInfo columnInfo = (ServerNotificationColumnInfo) realm.getSchema().getColumnInfo(ServerNotification.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (ServerNotification) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$id = ((com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface) realmModel).realmGet$id();
                    if (realmGet$id != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
                    }
                    String realmGet$status = ((com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface) realmModel).realmGet$status();
                    if (realmGet$status != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.statusIndex, rowIndex, realmGet$status, false);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, ServerNotification serverNotification, Map<RealmModel, Long> cache) {
        if ((serverNotification instanceof RealmObjectProxy) && ((RealmObjectProxy) serverNotification).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) serverNotification).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) serverNotification).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(ServerNotification.class);
        long tableNativePtr = table.getNativePtr();
        ServerNotificationColumnInfo columnInfo = (ServerNotificationColumnInfo) realm.getSchema().getColumnInfo(ServerNotification.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(serverNotification, Long.valueOf(rowIndex));
        String realmGet$id = serverNotification.realmGet$id();
        if (realmGet$id != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.idIndex, rowIndex, false);
        }
        String realmGet$status = serverNotification.realmGet$status();
        if (realmGet$status != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.statusIndex, rowIndex, realmGet$status, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.statusIndex, rowIndex, false);
        }
        return rowIndex;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(ServerNotification.class);
        long tableNativePtr = table.getNativePtr();
        ServerNotificationColumnInfo columnInfo = (ServerNotificationColumnInfo) realm.getSchema().getColumnInfo(ServerNotification.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (ServerNotification) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$id = ((com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface) realmModel).realmGet$id();
                    if (realmGet$id != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.idIndex, rowIndex, false);
                    }
                    String realmGet$status = ((com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface) realmModel).realmGet$status();
                    if (realmGet$status != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.statusIndex, rowIndex, realmGet$status, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.statusIndex, rowIndex, false);
                    }
                }
            }
        }
    }

    public static ServerNotification createDetachedCopy(ServerNotification realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        ServerNotification unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new ServerNotification();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (ServerNotification) cachedObject.object;
            }
            unmanagedObject = (ServerNotification) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface unmanagedCopy = unmanagedObject;
        ServerNotification realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$status(realmSource.realmGet$status());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("ServerNotification = proxy[");
        stringBuilder.append("{id:");
        stringBuilder.append(realmGet$id() != null ? realmGet$id() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{status:");
        stringBuilder.append(realmGet$status() != null ? realmGet$status() : "null");
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
        com_digikala_dms_model_domain_ServerNotificationRealmProxy aServerNotification = (com_digikala_dms_model_domain_ServerNotificationRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aServerNotification.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aServerNotification.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aServerNotification.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
