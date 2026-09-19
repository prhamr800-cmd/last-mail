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
import io.realm.permissions.PermissionOffer;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class io_realm_permissions_PermissionOfferRealmProxy extends PermissionOffer implements RealmObjectProxy, io_realm_permissions_PermissionOfferRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private PermissionOfferColumnInfo columnInfo;
    private ProxyState<PermissionOffer> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "PermissionOffer";
    }

    static final class PermissionOfferColumnInfo extends ColumnInfo {
        long createdAtIndex;
        long expiresAtIndex;
        long idIndex;
        long mayManageIndex;
        long mayReadIndex;
        long mayWriteIndex;
        long realmUrlIndex;
        long statusCodeIndex;
        long statusMessageIndex;
        long tokenIndex;
        long updatedAtIndex;

        PermissionOfferColumnInfo(OsSchemaInfo schemaInfo) {
            super(11);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.createdAtIndex = addColumnDetails("createdAt", "createdAt", objectSchemaInfo);
            this.updatedAtIndex = addColumnDetails("updatedAt", "updatedAt", objectSchemaInfo);
            this.statusCodeIndex = addColumnDetails("statusCode", "statusCode", objectSchemaInfo);
            this.statusMessageIndex = addColumnDetails("statusMessage", "statusMessage", objectSchemaInfo);
            this.tokenIndex = addColumnDetails("token", "token", objectSchemaInfo);
            this.realmUrlIndex = addColumnDetails("realmUrl", "realmUrl", objectSchemaInfo);
            this.mayReadIndex = addColumnDetails("mayRead", "mayRead", objectSchemaInfo);
            this.mayWriteIndex = addColumnDetails("mayWrite", "mayWrite", objectSchemaInfo);
            this.mayManageIndex = addColumnDetails("mayManage", "mayManage", objectSchemaInfo);
            this.expiresAtIndex = addColumnDetails("expiresAt", "expiresAt", objectSchemaInfo);
        }

        PermissionOfferColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new PermissionOfferColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            PermissionOfferColumnInfo src = (PermissionOfferColumnInfo) rawSrc;
            PermissionOfferColumnInfo dst = (PermissionOfferColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.createdAtIndex = src.createdAtIndex;
            dst.updatedAtIndex = src.updatedAtIndex;
            dst.statusCodeIndex = src.statusCodeIndex;
            dst.statusMessageIndex = src.statusMessageIndex;
            dst.tokenIndex = src.tokenIndex;
            dst.realmUrlIndex = src.realmUrlIndex;
            dst.mayReadIndex = src.mayReadIndex;
            dst.mayWriteIndex = src.mayWriteIndex;
            dst.mayManageIndex = src.mayManageIndex;
            dst.expiresAtIndex = src.expiresAtIndex;
        }
    }

    io_realm_permissions_PermissionOfferRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (PermissionOfferColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public String realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.idIndex);
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public void realmSet$id(String value) {
        if (this.proxyState.isUnderConstruction()) {
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public Date realmGet$createdAt() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDate(this.columnInfo.createdAtIndex);
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
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

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public Date realmGet$updatedAt() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDate(this.columnInfo.updatedAtIndex);
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
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

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public Integer realmGet$statusCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.statusCodeIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.statusCodeIndex));
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
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

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public String realmGet$statusMessage() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.statusMessageIndex);
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
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

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public String realmGet$token() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.tokenIndex);
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public void realmSet$token(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.tokenIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.tokenIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.tokenIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.tokenIndex, value);
        }
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public String realmGet$realmUrl() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.realmUrlIndex);
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public void realmSet$realmUrl(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'realmUrl' to null.");
            }
            row.getTable().setString(this.columnInfo.realmUrlIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            throw new IllegalArgumentException("Trying to set non-nullable field 'realmUrl' to null.");
        }
        this.proxyState.getRow$realm().setString(this.columnInfo.realmUrlIndex, value);
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public boolean realmGet$mayRead() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.mayReadIndex);
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
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

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public boolean realmGet$mayWrite() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.mayWriteIndex);
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
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

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public boolean realmGet$mayManage() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.mayManageIndex);
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
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

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public Date realmGet$expiresAt() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.expiresAtIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.expiresAtIndex);
    }

    @Override // io.realm.permissions.PermissionOffer, io.realm.io_realm_permissions_PermissionOfferRealmProxyInterface
    public void realmSet$expiresAt(Date value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.expiresAtIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setDate(this.columnInfo.expiresAtIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.expiresAtIndex);
        } else {
            this.proxyState.getRow$realm().setDate(this.columnInfo.expiresAtIndex, value);
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 11, 0);
        builder.addPersistedProperty("id", RealmFieldType.STRING, true, true, true);
        builder.addPersistedProperty("createdAt", RealmFieldType.DATE, false, false, true);
        builder.addPersistedProperty("updatedAt", RealmFieldType.DATE, false, false, true);
        builder.addPersistedProperty("statusCode", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("statusMessage", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("token", RealmFieldType.STRING, false, true, false);
        builder.addPersistedProperty("realmUrl", RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty("mayRead", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("mayWrite", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("mayManage", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("expiresAt", RealmFieldType.DATE, false, false, false);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static PermissionOfferColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new PermissionOfferColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static PermissionOffer createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws Throwable {
        List<String> excludeFields = Collections.emptyList();
        PermissionOffer obj = null;
        if (update) {
            Table table = realm.getTable(PermissionOffer.class);
            PermissionOfferColumnInfo columnInfo = (PermissionOfferColumnInfo) realm.getSchema().getColumnInfo(PermissionOffer.class);
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
                        objectContext.set(realm, table.getUncheckedRow(rowIndex2), realm.getSchema().getColumnInfo(PermissionOffer.class), false, Collections.emptyList());
                        obj = new io_realm_permissions_PermissionOfferRealmProxy();
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
                obj = json.isNull("id") ? (io_realm_permissions_PermissionOfferRealmProxy) realm.createObjectInternal(PermissionOffer.class, null, true, excludeFields) : (io_realm_permissions_PermissionOfferRealmProxy) realm.createObjectInternal(PermissionOffer.class, json.getString("id"), true, excludeFields);
            } else {
                throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
            }
        }
        io_realm_permissions_PermissionOfferRealmProxyInterface objProxy = obj;
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
        if (json.has("expiresAt")) {
            if (json.isNull("expiresAt")) {
                objProxy.realmSet$expiresAt(null);
            } else {
                Object timestamp3 = json.get("expiresAt");
                if (timestamp3 instanceof String) {
                    objProxy.realmSet$expiresAt(JsonUtils.stringToDate((String) timestamp3));
                } else {
                    objProxy.realmSet$expiresAt(new Date(json.getLong("expiresAt")));
                }
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static PermissionOffer createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        boolean jsonHasPrimaryKey = false;
        PermissionOffer obj = new PermissionOffer();
        PermissionOffer objProxy = obj;
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
            } else if (name.equals("expiresAt")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$expiresAt(null);
                } else if (reader.peek() == JsonToken.NUMBER) {
                    long timestamp3 = reader.nextLong();
                    if (timestamp3 > -1) {
                        objProxy.realmSet$expiresAt(new Date(timestamp3));
                    }
                } else {
                    objProxy.realmSet$expiresAt(JsonUtils.stringToDate(reader.nextString()));
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        if (!jsonHasPrimaryKey) {
            throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
        }
        return (PermissionOffer) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PermissionOffer copyOrUpdate(Realm realm, PermissionOffer permissionOffer, boolean update, Map<RealmModel, RealmObjectProxy> cache) throws Throwable {
        if ((permissionOffer instanceof RealmObjectProxy) && ((RealmObjectProxy) permissionOffer).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) permissionOffer).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return permissionOffer;
            }
        }
        BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(permissionOffer);
        if (realmModel != null) {
            return (PermissionOffer) realmModel;
        }
        io_realm_permissions_PermissionOfferRealmProxy io_realm_permissions_permissionofferrealmproxy = null;
        boolean canUpdate = update;
        if (canUpdate) {
            Table table = realm.getTable(PermissionOffer.class);
            PermissionOfferColumnInfo columnInfo = (PermissionOfferColumnInfo) realm.getSchema().getColumnInfo(PermissionOffer.class);
            long pkColumnIndex = columnInfo.idIndex;
            long rowIndex = table.findFirstString(pkColumnIndex, permissionOffer.realmGet$id());
            if (rowIndex == -1) {
                canUpdate = false;
            } else {
                try {
                    try {
                        objectContext.set(realm, table.getUncheckedRow(rowIndex), realm.getSchema().getColumnInfo(PermissionOffer.class), false, Collections.emptyList());
                        io_realm_permissions_permissionofferrealmproxy = new io_realm_permissions_PermissionOfferRealmProxy();
                        cache.put(permissionOffer, io_realm_permissions_permissionofferrealmproxy);
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
        return canUpdate ? update(realm, io_realm_permissions_permissionofferrealmproxy, permissionOffer, cache) : copy(realm, permissionOffer, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PermissionOffer copy(Realm realm, PermissionOffer newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (PermissionOffer) realmModel;
        }
        PermissionOffer permissionOffer = (PermissionOffer) realm.createObjectInternal(PermissionOffer.class, newObject.realmGet$id(), false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) permissionOffer);
        PermissionOffer realmObjectSource = newObject;
        PermissionOffer realmObjectCopy = permissionOffer;
        realmObjectCopy.realmSet$createdAt(realmObjectSource.realmGet$createdAt());
        realmObjectCopy.realmSet$updatedAt(realmObjectSource.realmGet$updatedAt());
        realmObjectCopy.realmSet$statusCode(realmObjectSource.realmGet$statusCode());
        realmObjectCopy.realmSet$statusMessage(realmObjectSource.realmGet$statusMessage());
        realmObjectCopy.realmSet$token(realmObjectSource.realmGet$token());
        realmObjectCopy.realmSet$realmUrl(realmObjectSource.realmGet$realmUrl());
        realmObjectCopy.realmSet$mayRead(realmObjectSource.realmGet$mayRead());
        realmObjectCopy.realmSet$mayWrite(realmObjectSource.realmGet$mayWrite());
        realmObjectCopy.realmSet$mayManage(realmObjectSource.realmGet$mayManage());
        realmObjectCopy.realmSet$expiresAt(realmObjectSource.realmGet$expiresAt());
        return permissionOffer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, PermissionOffer permissionOffer, Map<RealmModel, Long> cache) {
        if ((permissionOffer instanceof RealmObjectProxy) && ((RealmObjectProxy) permissionOffer).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) permissionOffer).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) permissionOffer).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(PermissionOffer.class);
        long tableNativePtr = table.getNativePtr();
        PermissionOfferColumnInfo columnInfo = (PermissionOfferColumnInfo) realm.getSchema().getColumnInfo(PermissionOffer.class);
        long pkColumnIndex = columnInfo.idIndex;
        long rowIndex = -1;
        Object primaryKeyValue = permissionOffer.realmGet$id();
        if (primaryKeyValue != null) {
            rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
        }
        if (rowIndex == -1) {
            rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
        } else {
            Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
        }
        long rowIndex2 = rowIndex;
        cache.put(permissionOffer, Long.valueOf(rowIndex2));
        Date realmGet$createdAt = permissionOffer.realmGet$createdAt();
        if (realmGet$createdAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
        }
        Date realmGet$updatedAt = permissionOffer.realmGet$updatedAt();
        if (realmGet$updatedAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
        }
        Number realmGet$statusCode = permissionOffer.realmGet$statusCode();
        if (realmGet$statusCode != null) {
            Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
        }
        String realmGet$statusMessage = permissionOffer.realmGet$statusMessage();
        if (realmGet$statusMessage != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
        }
        String realmGet$token = permissionOffer.realmGet$token();
        if (realmGet$token != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.tokenIndex, rowIndex2, realmGet$token, false);
        }
        String realmGet$realmUrl = permissionOffer.realmGet$realmUrl();
        if (realmGet$realmUrl != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
        }
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex2, permissionOffer.realmGet$mayRead(), false);
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex2, permissionOffer.realmGet$mayWrite(), false);
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex2, permissionOffer.realmGet$mayManage(), false);
        Date realmGet$expiresAt = permissionOffer.realmGet$expiresAt();
        if (realmGet$expiresAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.expiresAtIndex, rowIndex2, realmGet$expiresAt.getTime(), false);
        }
        return rowIndex2;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long pkColumnIndex;
        Table table = realm.getTable(PermissionOffer.class);
        long tableNativePtr = table.getNativePtr();
        PermissionOfferColumnInfo columnInfo = (PermissionOfferColumnInfo) realm.getSchema().getColumnInfo(PermissionOffer.class);
        long pkColumnIndex2 = columnInfo.idIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (PermissionOffer) objects.next();
            if (cache.containsKey(realmModel)) {
                pkColumnIndex = pkColumnIndex2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                pkColumnIndex = pkColumnIndex2;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$id();
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
                Date realmGet$createdAt = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$createdAt();
                if (realmGet$createdAt != null) {
                    pkColumnIndex = pkColumnIndex2;
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
                } else {
                    pkColumnIndex = pkColumnIndex2;
                }
                Date realmGet$updatedAt = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$updatedAt();
                if (realmGet$updatedAt != null) {
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
                }
                Number realmGet$statusCode = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$statusCode();
                if (realmGet$statusCode != null) {
                    Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
                }
                String realmGet$statusMessage = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$statusMessage();
                if (realmGet$statusMessage != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
                }
                String realmGet$token = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$token();
                if (realmGet$token != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.tokenIndex, rowIndex2, realmGet$token, false);
                }
                String realmGet$realmUrl = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$realmUrl();
                if (realmGet$realmUrl != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
                }
                Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex2, ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$mayRead(), false);
                Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex2, ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$mayWrite(), false);
                Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex2, ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$mayManage(), false);
                Date realmGet$expiresAt = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$expiresAt();
                if (realmGet$expiresAt != null) {
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.expiresAtIndex, rowIndex2, realmGet$expiresAt.getTime(), false);
                }
            }
            pkColumnIndex2 = pkColumnIndex;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, PermissionOffer permissionOffer, Map<RealmModel, Long> cache) {
        if ((permissionOffer instanceof RealmObjectProxy) && ((RealmObjectProxy) permissionOffer).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) permissionOffer).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) permissionOffer).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(PermissionOffer.class);
        long tableNativePtr = table.getNativePtr();
        PermissionOfferColumnInfo columnInfo = (PermissionOfferColumnInfo) realm.getSchema().getColumnInfo(PermissionOffer.class);
        long pkColumnIndex = columnInfo.idIndex;
        long rowIndex = -1;
        Object primaryKeyValue = permissionOffer.realmGet$id();
        if (primaryKeyValue != null) {
            rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
        }
        if (rowIndex == -1) {
            rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
        }
        long rowIndex2 = rowIndex;
        cache.put(permissionOffer, Long.valueOf(rowIndex2));
        Date realmGet$createdAt = permissionOffer.realmGet$createdAt();
        if (realmGet$createdAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, false);
        }
        Date realmGet$updatedAt = permissionOffer.realmGet$updatedAt();
        if (realmGet$updatedAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, false);
        }
        Number realmGet$statusCode = permissionOffer.realmGet$statusCode();
        if (realmGet$statusCode != null) {
            Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, false);
        }
        String realmGet$statusMessage = permissionOffer.realmGet$statusMessage();
        if (realmGet$statusMessage != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, false);
        }
        String realmGet$token = permissionOffer.realmGet$token();
        if (realmGet$token != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.tokenIndex, rowIndex2, realmGet$token, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.tokenIndex, rowIndex2, false);
        }
        String realmGet$realmUrl = permissionOffer.realmGet$realmUrl();
        if (realmGet$realmUrl != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, false);
        }
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex2, permissionOffer.realmGet$mayRead(), false);
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex2, permissionOffer.realmGet$mayWrite(), false);
        Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex2, permissionOffer.realmGet$mayManage(), false);
        Date realmGet$expiresAt = permissionOffer.realmGet$expiresAt();
        if (realmGet$expiresAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.expiresAtIndex, rowIndex2, realmGet$expiresAt.getTime(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.expiresAtIndex, rowIndex2, false);
        }
        return rowIndex2;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long pkColumnIndex;
        Table table = realm.getTable(PermissionOffer.class);
        long tableNativePtr = table.getNativePtr();
        PermissionOfferColumnInfo columnInfo = (PermissionOfferColumnInfo) realm.getSchema().getColumnInfo(PermissionOffer.class);
        long pkColumnIndex2 = columnInfo.idIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (PermissionOffer) objects.next();
            if (cache.containsKey(realmModel)) {
                pkColumnIndex = pkColumnIndex2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                pkColumnIndex = pkColumnIndex2;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$id();
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex2, (String) primaryKeyValue);
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex2, primaryKeyValue);
                }
                long rowIndex2 = rowIndex;
                cache.put(realmModel, Long.valueOf(rowIndex2));
                Date realmGet$createdAt = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$createdAt();
                if (realmGet$createdAt != null) {
                    pkColumnIndex = pkColumnIndex2;
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
                } else {
                    pkColumnIndex = pkColumnIndex2;
                    Table.nativeSetNull(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, false);
                }
                Date realmGet$updatedAt = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$updatedAt();
                if (realmGet$updatedAt != null) {
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, false);
                }
                Number realmGet$statusCode = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$statusCode();
                if (realmGet$statusCode != null) {
                    Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, false);
                }
                String realmGet$statusMessage = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$statusMessage();
                if (realmGet$statusMessage != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, false);
                }
                String realmGet$token = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$token();
                if (realmGet$token != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.tokenIndex, rowIndex2, realmGet$token, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.tokenIndex, rowIndex2, false);
                }
                String realmGet$realmUrl = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$realmUrl();
                if (realmGet$realmUrl != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, false);
                }
                Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex2, ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$mayRead(), false);
                Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex2, ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$mayWrite(), false);
                Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex2, ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$mayManage(), false);
                Date realmGet$expiresAt = ((io_realm_permissions_PermissionOfferRealmProxyInterface) realmModel).realmGet$expiresAt();
                if (realmGet$expiresAt != null) {
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.expiresAtIndex, rowIndex2, realmGet$expiresAt.getTime(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.expiresAtIndex, rowIndex2, false);
                }
            }
            pkColumnIndex2 = pkColumnIndex;
        }
    }

    public static PermissionOffer createDetachedCopy(PermissionOffer realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        PermissionOffer unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new PermissionOffer();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (PermissionOffer) cachedObject.object;
            }
            unmanagedObject = (PermissionOffer) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        io_realm_permissions_PermissionOfferRealmProxyInterface unmanagedCopy = unmanagedObject;
        PermissionOffer realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$createdAt(realmSource.realmGet$createdAt());
        unmanagedCopy.realmSet$updatedAt(realmSource.realmGet$updatedAt());
        unmanagedCopy.realmSet$statusCode(realmSource.realmGet$statusCode());
        unmanagedCopy.realmSet$statusMessage(realmSource.realmGet$statusMessage());
        unmanagedCopy.realmSet$token(realmSource.realmGet$token());
        unmanagedCopy.realmSet$realmUrl(realmSource.realmGet$realmUrl());
        unmanagedCopy.realmSet$mayRead(realmSource.realmGet$mayRead());
        unmanagedCopy.realmSet$mayWrite(realmSource.realmGet$mayWrite());
        unmanagedCopy.realmSet$mayManage(realmSource.realmGet$mayManage());
        unmanagedCopy.realmSet$expiresAt(realmSource.realmGet$expiresAt());
        return unmanagedObject;
    }

    static PermissionOffer update(Realm realm, PermissionOffer realmObject, PermissionOffer newObject, Map<RealmModel, RealmObjectProxy> cache) {
        PermissionOffer realmObjectTarget = realmObject;
        PermissionOffer realmObjectSource = newObject;
        realmObjectTarget.realmSet$createdAt(realmObjectSource.realmGet$createdAt());
        realmObjectTarget.realmSet$updatedAt(realmObjectSource.realmGet$updatedAt());
        realmObjectTarget.realmSet$statusCode(realmObjectSource.realmGet$statusCode());
        realmObjectTarget.realmSet$statusMessage(realmObjectSource.realmGet$statusMessage());
        realmObjectTarget.realmSet$token(realmObjectSource.realmGet$token());
        realmObjectTarget.realmSet$realmUrl(realmObjectSource.realmGet$realmUrl());
        realmObjectTarget.realmSet$mayRead(realmObjectSource.realmGet$mayRead());
        realmObjectTarget.realmSet$mayWrite(realmObjectSource.realmGet$mayWrite());
        realmObjectTarget.realmSet$mayManage(realmObjectSource.realmGet$mayManage());
        realmObjectTarget.realmSet$expiresAt(realmObjectSource.realmGet$expiresAt());
        return realmObject;
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
        io_realm_permissions_PermissionOfferRealmProxy aPermissionOffer = (io_realm_permissions_PermissionOfferRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aPermissionOffer.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aPermissionOffer.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aPermissionOffer.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
