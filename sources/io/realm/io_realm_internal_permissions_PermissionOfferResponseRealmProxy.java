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
import io.realm.internal.android.JsonUtils;
import io.realm.internal.permissions.PermissionOfferResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class io_realm_internal_permissions_PermissionOfferResponseRealmProxy extends PermissionOfferResponse implements RealmObjectProxy, io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private PermissionOfferResponseColumnInfo columnInfo;
    private ProxyState<PermissionOfferResponse> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "PermissionOfferResponse";
    }

    static final class PermissionOfferResponseColumnInfo extends ColumnInfo {
        long createdAtIndex;
        long idIndex;
        long realmUrlIndex;
        long statusCodeIndex;
        long statusMessageIndex;
        long tokenIndex;
        long updatedAtIndex;

        PermissionOfferResponseColumnInfo(OsSchemaInfo schemaInfo) {
            super(7);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.createdAtIndex = addColumnDetails("createdAt", "createdAt", objectSchemaInfo);
            this.updatedAtIndex = addColumnDetails("updatedAt", "updatedAt", objectSchemaInfo);
            this.statusCodeIndex = addColumnDetails("statusCode", "statusCode", objectSchemaInfo);
            this.statusMessageIndex = addColumnDetails("statusMessage", "statusMessage", objectSchemaInfo);
            this.tokenIndex = addColumnDetails("token", "token", objectSchemaInfo);
            this.realmUrlIndex = addColumnDetails("realmUrl", "realmUrl", objectSchemaInfo);
        }

        PermissionOfferResponseColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new PermissionOfferResponseColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            PermissionOfferResponseColumnInfo src = (PermissionOfferResponseColumnInfo) rawSrc;
            PermissionOfferResponseColumnInfo dst = (PermissionOfferResponseColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.createdAtIndex = src.createdAtIndex;
            dst.updatedAtIndex = src.updatedAtIndex;
            dst.statusCodeIndex = src.statusCodeIndex;
            dst.statusMessageIndex = src.statusMessageIndex;
            dst.tokenIndex = src.tokenIndex;
            dst.realmUrlIndex = src.realmUrlIndex;
        }
    }

    io_realm_internal_permissions_PermissionOfferResponseRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (PermissionOfferResponseColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public String realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$id(String value) {
        if (this.proxyState.isUnderConstruction()) {
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public Date realmGet$createdAt() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDate(this.columnInfo.createdAtIndex);
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$createdAt(Date value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'createdAt' to null.");
            }
            row.getTable().setDate(this.columnInfo.createdAtIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            throw new IllegalArgumentException("Trying to set non-nullable field 'createdAt' to null.");
        }
        this.proxyState.getRow$realm().setDate(this.columnInfo.createdAtIndex, value);
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public Date realmGet$updatedAt() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDate(this.columnInfo.updatedAtIndex);
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
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

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public Integer realmGet$statusCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.statusCodeIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.statusCodeIndex));
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$statusCode(Integer value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.statusCodeIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setLong(this.columnInfo.statusCodeIndex, row.getIndex(), value.intValue(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.statusCodeIndex);
        } else {
            this.proxyState.getRow$realm().setLong(this.columnInfo.statusCodeIndex, value.intValue());
        }
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public String realmGet$statusMessage() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.statusMessageIndex);
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$statusMessage(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.statusMessageIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.statusMessageIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.statusMessageIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.statusMessageIndex, value);
        }
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public String realmGet$token() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.tokenIndex);
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$token(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'token' to null.");
            }
            row.getTable().setString(this.columnInfo.tokenIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            throw new IllegalArgumentException("Trying to set non-nullable field 'token' to null.");
        }
        this.proxyState.getRow$realm().setString(this.columnInfo.tokenIndex, value);
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public String realmGet$realmUrl() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.realmUrlIndex);
    }

    @Override // io.realm.internal.permissions.PermissionOfferResponse, io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface
    public void realmSet$realmUrl(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.realmUrlIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.realmUrlIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.realmUrlIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.realmUrlIndex, value);
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 7, 0);
        builder.addPersistedProperty("id", RealmFieldType.STRING, true, true, true);
        builder.addPersistedProperty("createdAt", RealmFieldType.DATE, false, false, true);
        builder.addPersistedProperty("updatedAt", RealmFieldType.DATE, false, false, true);
        builder.addPersistedProperty("statusCode", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("statusMessage", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("token", RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty("realmUrl", RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static PermissionOfferResponseColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new PermissionOfferResponseColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static PermissionOfferResponse createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws Throwable {
        List<String> excludeFields = Collections.emptyList();
        PermissionOfferResponse obj = null;
        if (update) {
            Table table = realm.getTable(PermissionOfferResponse.class);
            PermissionOfferResponseColumnInfo columnInfo = (PermissionOfferResponseColumnInfo) realm.getSchema().getColumnInfo(PermissionOfferResponse.class);
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
                        objectContext.set(realm, table.getUncheckedRow(rowIndex2), realm.getSchema().getColumnInfo(PermissionOfferResponse.class), false, Collections.emptyList());
                        obj = new io_realm_internal_permissions_PermissionOfferResponseRealmProxy();
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
            if (json.has("id")) {
                obj = json.isNull("id") ? (io_realm_internal_permissions_PermissionOfferResponseRealmProxy) realm.createObjectInternal(PermissionOfferResponse.class, null, true, excludeFields) : (io_realm_internal_permissions_PermissionOfferResponseRealmProxy) realm.createObjectInternal(PermissionOfferResponse.class, json.getString("id"), true, excludeFields);
            } else {
                throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
            }
        }
        io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface objProxy = obj;
        if (json.has("createdAt")) {
            if (json.isNull("createdAt")) {
                objProxy.realmSet$createdAt(null);
            } else {
                Object timestamp = json.get("createdAt");
                if (timestamp instanceof String) {
                    objProxy.realmSet$createdAt(JsonUtils.stringToDate((String) timestamp));
                } else {
                    objProxy.realmSet$createdAt(new Date(json.getLong("createdAt")));
                }
            }
        }
        if (json.has("updatedAt")) {
            if (json.isNull("updatedAt")) {
                objProxy.realmSet$updatedAt(null);
            } else {
                Object timestamp2 = json.get("updatedAt");
                if (timestamp2 instanceof String) {
                    objProxy.realmSet$updatedAt(JsonUtils.stringToDate((String) timestamp2));
                } else {
                    objProxy.realmSet$updatedAt(new Date(json.getLong("updatedAt")));
                }
            }
        }
        if (json.has("statusCode")) {
            if (json.isNull("statusCode")) {
                objProxy.realmSet$statusCode(null);
            } else {
                objProxy.realmSet$statusCode(Integer.valueOf(json.getInt("statusCode")));
            }
        }
        if (json.has("statusMessage")) {
            if (json.isNull("statusMessage")) {
                objProxy.realmSet$statusMessage(null);
            } else {
                objProxy.realmSet$statusMessage(json.getString("statusMessage"));
            }
        }
        if (json.has("token")) {
            if (json.isNull("token")) {
                objProxy.realmSet$token(null);
            } else {
                objProxy.realmSet$token(json.getString("token"));
            }
        }
        if (json.has("realmUrl")) {
            if (json.isNull("realmUrl")) {
                objProxy.realmSet$realmUrl(null);
            } else {
                objProxy.realmSet$realmUrl(json.getString("realmUrl"));
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static PermissionOfferResponse createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        boolean jsonHasPrimaryKey = false;
        PermissionOfferResponse obj = new PermissionOfferResponse();
        PermissionOfferResponse objProxy = obj;
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
            } else if (name.equals("createdAt")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$createdAt(null);
                } else if (reader.peek() == JsonToken.NUMBER) {
                    long timestamp = reader.nextLong();
                    if (timestamp > -1) {
                        objProxy.realmSet$createdAt(new Date(timestamp));
                    }
                } else {
                    objProxy.realmSet$createdAt(JsonUtils.stringToDate(reader.nextString()));
                }
            } else if (name.equals("updatedAt")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$updatedAt(null);
                } else if (reader.peek() == JsonToken.NUMBER) {
                    long timestamp2 = reader.nextLong();
                    if (timestamp2 > -1) {
                        objProxy.realmSet$updatedAt(new Date(timestamp2));
                    }
                } else {
                    objProxy.realmSet$updatedAt(JsonUtils.stringToDate(reader.nextString()));
                }
            } else if (name.equals("statusCode")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$statusCode(Integer.valueOf(reader.nextInt()));
                } else {
                    reader.skipValue();
                    objProxy.realmSet$statusCode(null);
                }
            } else if (name.equals("statusMessage")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$statusMessage(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$statusMessage(null);
                }
            } else if (name.equals("token")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$token(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$token(null);
                }
            } else if (name.equals("realmUrl")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$realmUrl(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$realmUrl(null);
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        if (!jsonHasPrimaryKey) {
            throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
        }
        return (PermissionOfferResponse) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PermissionOfferResponse copyOrUpdate(Realm realm, PermissionOfferResponse permissionOfferResponse, boolean update, Map<RealmModel, RealmObjectProxy> cache) throws Throwable {
        if ((permissionOfferResponse instanceof RealmObjectProxy) && ((RealmObjectProxy) permissionOfferResponse).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) permissionOfferResponse).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return permissionOfferResponse;
            }
        }
        BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(permissionOfferResponse);
        if (realmModel != null) {
            return (PermissionOfferResponse) realmModel;
        }
        io_realm_internal_permissions_PermissionOfferResponseRealmProxy io_realm_internal_permissions_permissionofferresponserealmproxy = null;
        boolean canUpdate = update;
        if (canUpdate) {
            Table table = realm.getTable(PermissionOfferResponse.class);
            PermissionOfferResponseColumnInfo columnInfo = (PermissionOfferResponseColumnInfo) realm.getSchema().getColumnInfo(PermissionOfferResponse.class);
            long pkColumnIndex = columnInfo.idIndex;
            long rowIndex = table.findFirstString(pkColumnIndex, permissionOfferResponse.realmGet$id());
            if (rowIndex == -1) {
                canUpdate = false;
            } else {
                try {
                    try {
                        objectContext.set(realm, table.getUncheckedRow(rowIndex), realm.getSchema().getColumnInfo(PermissionOfferResponse.class), false, Collections.emptyList());
                        io_realm_internal_permissions_permissionofferresponserealmproxy = new io_realm_internal_permissions_PermissionOfferResponseRealmProxy();
                        cache.put(permissionOfferResponse, io_realm_internal_permissions_permissionofferresponserealmproxy);
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
        return canUpdate ? update(realm, io_realm_internal_permissions_permissionofferresponserealmproxy, permissionOfferResponse, cache) : copy(realm, permissionOfferResponse, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PermissionOfferResponse copy(Realm realm, PermissionOfferResponse newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (PermissionOfferResponse) realmModel;
        }
        PermissionOfferResponse permissionOfferResponse = (PermissionOfferResponse) realm.createObjectInternal(PermissionOfferResponse.class, newObject.realmGet$id(), false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) permissionOfferResponse);
        PermissionOfferResponse realmObjectSource = newObject;
        PermissionOfferResponse realmObjectCopy = permissionOfferResponse;
        realmObjectCopy.realmSet$createdAt(realmObjectSource.realmGet$createdAt());
        realmObjectCopy.realmSet$updatedAt(realmObjectSource.realmGet$updatedAt());
        realmObjectCopy.realmSet$statusCode(realmObjectSource.realmGet$statusCode());
        realmObjectCopy.realmSet$statusMessage(realmObjectSource.realmGet$statusMessage());
        realmObjectCopy.realmSet$token(realmObjectSource.realmGet$token());
        realmObjectCopy.realmSet$realmUrl(realmObjectSource.realmGet$realmUrl());
        return permissionOfferResponse;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, PermissionOfferResponse permissionOfferResponse, Map<RealmModel, Long> cache) {
        if ((permissionOfferResponse instanceof RealmObjectProxy) && ((RealmObjectProxy) permissionOfferResponse).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) permissionOfferResponse).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) permissionOfferResponse).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(PermissionOfferResponse.class);
        long tableNativePtr = table.getNativePtr();
        PermissionOfferResponseColumnInfo columnInfo = (PermissionOfferResponseColumnInfo) realm.getSchema().getColumnInfo(PermissionOfferResponse.class);
        long pkColumnIndex = columnInfo.idIndex;
        long rowIndex = -1;
        Object primaryKeyValue = permissionOfferResponse.realmGet$id();
        if (primaryKeyValue != null) {
            rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
        }
        if (rowIndex == -1) {
            rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
        } else {
            Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
        }
        long rowIndex2 = rowIndex;
        cache.put(permissionOfferResponse, Long.valueOf(rowIndex2));
        Date realmGet$createdAt = permissionOfferResponse.realmGet$createdAt();
        if (realmGet$createdAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
        }
        Date realmGet$updatedAt = permissionOfferResponse.realmGet$updatedAt();
        if (realmGet$updatedAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
        }
        Number realmGet$statusCode = permissionOfferResponse.realmGet$statusCode();
        if (realmGet$statusCode != null) {
            Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
        }
        String realmGet$statusMessage = permissionOfferResponse.realmGet$statusMessage();
        if (realmGet$statusMessage != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
        }
        String realmGet$token = permissionOfferResponse.realmGet$token();
        if (realmGet$token != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.tokenIndex, rowIndex2, realmGet$token, false);
        }
        String realmGet$realmUrl = permissionOfferResponse.realmGet$realmUrl();
        if (realmGet$realmUrl != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
        }
        return rowIndex2;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long pkColumnIndex;
        Table table = realm.getTable(PermissionOfferResponse.class);
        long tableNativePtr = table.getNativePtr();
        PermissionOfferResponseColumnInfo columnInfo = (PermissionOfferResponseColumnInfo) realm.getSchema().getColumnInfo(PermissionOfferResponse.class);
        long pkColumnIndex2 = columnInfo.idIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (PermissionOfferResponse) objects.next();
            if (cache.containsKey(realmModel)) {
                pkColumnIndex = pkColumnIndex2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                pkColumnIndex = pkColumnIndex2;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$id();
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex2, (String) primaryKeyValue);
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex2, primaryKeyValue);
                } else {
                    Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
                }
                long rowIndex2 = rowIndex;
                cache.put(realmModel, Long.valueOf(rowIndex2));
                Date realmGet$createdAt = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$createdAt();
                if (realmGet$createdAt != null) {
                    pkColumnIndex = pkColumnIndex2;
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
                } else {
                    pkColumnIndex = pkColumnIndex2;
                }
                Date realmGet$updatedAt = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$updatedAt();
                if (realmGet$updatedAt != null) {
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
                }
                Number realmGet$statusCode = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$statusCode();
                if (realmGet$statusCode != null) {
                    Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
                }
                String realmGet$statusMessage = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$statusMessage();
                if (realmGet$statusMessage != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
                }
                String realmGet$token = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$token();
                if (realmGet$token != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.tokenIndex, rowIndex2, realmGet$token, false);
                }
                String realmGet$realmUrl = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$realmUrl();
                if (realmGet$realmUrl != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
                }
            }
            pkColumnIndex2 = pkColumnIndex;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, PermissionOfferResponse permissionOfferResponse, Map<RealmModel, Long> cache) {
        if ((permissionOfferResponse instanceof RealmObjectProxy) && ((RealmObjectProxy) permissionOfferResponse).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) permissionOfferResponse).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) permissionOfferResponse).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(PermissionOfferResponse.class);
        long tableNativePtr = table.getNativePtr();
        PermissionOfferResponseColumnInfo columnInfo = (PermissionOfferResponseColumnInfo) realm.getSchema().getColumnInfo(PermissionOfferResponse.class);
        long pkColumnIndex = columnInfo.idIndex;
        long rowIndex = -1;
        Object primaryKeyValue = permissionOfferResponse.realmGet$id();
        if (primaryKeyValue != null) {
            rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
        }
        if (rowIndex == -1) {
            rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
        }
        long rowIndex2 = rowIndex;
        cache.put(permissionOfferResponse, Long.valueOf(rowIndex2));
        Date realmGet$createdAt = permissionOfferResponse.realmGet$createdAt();
        if (realmGet$createdAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, false);
        }
        Date realmGet$updatedAt = permissionOfferResponse.realmGet$updatedAt();
        if (realmGet$updatedAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, false);
        }
        Number realmGet$statusCode = permissionOfferResponse.realmGet$statusCode();
        if (realmGet$statusCode != null) {
            Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, false);
        }
        String realmGet$statusMessage = permissionOfferResponse.realmGet$statusMessage();
        if (realmGet$statusMessage != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, false);
        }
        String realmGet$token = permissionOfferResponse.realmGet$token();
        if (realmGet$token != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.tokenIndex, rowIndex2, realmGet$token, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.tokenIndex, rowIndex2, false);
        }
        String realmGet$realmUrl = permissionOfferResponse.realmGet$realmUrl();
        if (realmGet$realmUrl != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, false);
        }
        return rowIndex2;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long pkColumnIndex;
        Table table = realm.getTable(PermissionOfferResponse.class);
        long tableNativePtr = table.getNativePtr();
        PermissionOfferResponseColumnInfo columnInfo = (PermissionOfferResponseColumnInfo) realm.getSchema().getColumnInfo(PermissionOfferResponse.class);
        long pkColumnIndex2 = columnInfo.idIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (PermissionOfferResponse) objects.next();
            if (cache.containsKey(realmModel)) {
                pkColumnIndex = pkColumnIndex2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                pkColumnIndex = pkColumnIndex2;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$id();
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex2, (String) primaryKeyValue);
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex2, primaryKeyValue);
                }
                long rowIndex2 = rowIndex;
                cache.put(realmModel, Long.valueOf(rowIndex2));
                Date realmGet$createdAt = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$createdAt();
                if (realmGet$createdAt != null) {
                    pkColumnIndex = pkColumnIndex2;
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
                } else {
                    pkColumnIndex = pkColumnIndex2;
                    Table.nativeSetNull(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, false);
                }
                Date realmGet$updatedAt = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$updatedAt();
                if (realmGet$updatedAt != null) {
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, false);
                }
                Number realmGet$statusCode = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$statusCode();
                if (realmGet$statusCode != null) {
                    Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, false);
                }
                String realmGet$statusMessage = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$statusMessage();
                if (realmGet$statusMessage != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, false);
                }
                String realmGet$token = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$token();
                if (realmGet$token != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.tokenIndex, rowIndex2, realmGet$token, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.tokenIndex, rowIndex2, false);
                }
                String realmGet$realmUrl = ((io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface) realmModel).realmGet$realmUrl();
                if (realmGet$realmUrl != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, false);
                }
            }
            pkColumnIndex2 = pkColumnIndex;
        }
    }

    public static PermissionOfferResponse createDetachedCopy(PermissionOfferResponse realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        PermissionOfferResponse unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new PermissionOfferResponse();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (PermissionOfferResponse) cachedObject.object;
            }
            unmanagedObject = (PermissionOfferResponse) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface unmanagedCopy = unmanagedObject;
        PermissionOfferResponse realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$createdAt(realmSource.realmGet$createdAt());
        unmanagedCopy.realmSet$updatedAt(realmSource.realmGet$updatedAt());
        unmanagedCopy.realmSet$statusCode(realmSource.realmGet$statusCode());
        unmanagedCopy.realmSet$statusMessage(realmSource.realmGet$statusMessage());
        unmanagedCopy.realmSet$token(realmSource.realmGet$token());
        unmanagedCopy.realmSet$realmUrl(realmSource.realmGet$realmUrl());
        return unmanagedObject;
    }

    static PermissionOfferResponse update(Realm realm, PermissionOfferResponse realmObject, PermissionOfferResponse newObject, Map<RealmModel, RealmObjectProxy> cache) {
        PermissionOfferResponse realmObjectTarget = realmObject;
        PermissionOfferResponse realmObjectSource = newObject;
        realmObjectTarget.realmSet$createdAt(realmObjectSource.realmGet$createdAt());
        realmObjectTarget.realmSet$updatedAt(realmObjectSource.realmGet$updatedAt());
        realmObjectTarget.realmSet$statusCode(realmObjectSource.realmGet$statusCode());
        realmObjectTarget.realmSet$statusMessage(realmObjectSource.realmGet$statusMessage());
        realmObjectTarget.realmSet$token(realmObjectSource.realmGet$token());
        realmObjectTarget.realmSet$realmUrl(realmObjectSource.realmGet$realmUrl());
        return realmObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("PermissionOfferResponse = proxy[");
        stringBuilder.append("{id:");
        stringBuilder.append(realmGet$id());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{createdAt:");
        stringBuilder.append(realmGet$createdAt());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{updatedAt:");
        stringBuilder.append(realmGet$updatedAt());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{statusCode:");
        stringBuilder.append(realmGet$statusCode() != null ? realmGet$statusCode() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{statusMessage:");
        stringBuilder.append(realmGet$statusMessage() != null ? realmGet$statusMessage() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{token:");
        stringBuilder.append(realmGet$token());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{realmUrl:");
        stringBuilder.append(realmGet$realmUrl() != null ? realmGet$realmUrl() : "null");
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
        io_realm_internal_permissions_PermissionOfferResponseRealmProxy aPermissionOfferResponse = (io_realm_internal_permissions_PermissionOfferResponseRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aPermissionOfferResponse.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aPermissionOfferResponse.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aPermissionOfferResponse.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
