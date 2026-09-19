package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
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
import io.realm.internal.permissions.PermissionChange;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class io_realm_internal_permissions_PermissionChangeRealmProxy extends PermissionChange implements RealmObjectProxy, io_realm_internal_permissions_PermissionChangeRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private PermissionChangeColumnInfo columnInfo;
    private ProxyState<PermissionChange> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "PermissionChange";
    }

    static final class PermissionChangeColumnInfo extends ColumnInfo {
        long createdAtIndex;
        long idIndex;
        long mayManageIndex;
        long mayReadIndex;
        long mayWriteIndex;
        long metadataKeyIndex;
        long metadataNameSpaceIndex;
        long metadataValueIndex;
        long realmUrlIndex;
        long statusCodeIndex;
        long statusMessageIndex;
        long updatedAtIndex;
        long userIdIndex;

        PermissionChangeColumnInfo(OsSchemaInfo schemaInfo) {
            super(13);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.createdAtIndex = addColumnDetails("createdAt", "createdAt", objectSchemaInfo);
            this.updatedAtIndex = addColumnDetails("updatedAt", "updatedAt", objectSchemaInfo);
            this.statusCodeIndex = addColumnDetails("statusCode", "statusCode", objectSchemaInfo);
            this.statusMessageIndex = addColumnDetails("statusMessage", "statusMessage", objectSchemaInfo);
            this.realmUrlIndex = addColumnDetails("realmUrl", "realmUrl", objectSchemaInfo);
            this.userIdIndex = addColumnDetails(Parameters.SESSION_USER_ID, Parameters.SESSION_USER_ID, objectSchemaInfo);
            this.metadataKeyIndex = addColumnDetails("metadataKey", "metadataKey", objectSchemaInfo);
            this.metadataValueIndex = addColumnDetails("metadataValue", "metadataValue", objectSchemaInfo);
            this.metadataNameSpaceIndex = addColumnDetails("metadataNameSpace", "metadataNameSpace", objectSchemaInfo);
            this.mayReadIndex = addColumnDetails("mayRead", "mayRead", objectSchemaInfo);
            this.mayWriteIndex = addColumnDetails("mayWrite", "mayWrite", objectSchemaInfo);
            this.mayManageIndex = addColumnDetails("mayManage", "mayManage", objectSchemaInfo);
        }

        PermissionChangeColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new PermissionChangeColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            PermissionChangeColumnInfo src = (PermissionChangeColumnInfo) rawSrc;
            PermissionChangeColumnInfo dst = (PermissionChangeColumnInfo) rawDst;
            dst.idIndex = src.idIndex;
            dst.createdAtIndex = src.createdAtIndex;
            dst.updatedAtIndex = src.updatedAtIndex;
            dst.statusCodeIndex = src.statusCodeIndex;
            dst.statusMessageIndex = src.statusMessageIndex;
            dst.realmUrlIndex = src.realmUrlIndex;
            dst.userIdIndex = src.userIdIndex;
            dst.metadataKeyIndex = src.metadataKeyIndex;
            dst.metadataValueIndex = src.metadataValueIndex;
            dst.metadataNameSpaceIndex = src.metadataNameSpaceIndex;
            dst.mayReadIndex = src.mayReadIndex;
            dst.mayWriteIndex = src.mayWriteIndex;
            dst.mayManageIndex = src.mayManageIndex;
        }
    }

    io_realm_internal_permissions_PermissionChangeRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (PermissionChangeColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$id(String value) {
        if (this.proxyState.isUnderConstruction()) {
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Date realmGet$createdAt() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDate(this.columnInfo.createdAtIndex);
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
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

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Date realmGet$updatedAt() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDate(this.columnInfo.updatedAtIndex);
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
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

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Integer realmGet$statusCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.statusCodeIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.statusCodeIndex));
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
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

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$statusMessage() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.statusMessageIndex);
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
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

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$realmUrl() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.realmUrlIndex);
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
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

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$userId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.userIdIndex);
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
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

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$metadataKey() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.metadataKeyIndex);
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$metadataKey(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.metadataKeyIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.metadataKeyIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.metadataKeyIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.metadataKeyIndex, value);
        }
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$metadataValue() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.metadataValueIndex);
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$metadataValue(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.metadataValueIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.metadataValueIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.metadataValueIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.metadataValueIndex, value);
        }
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public String realmGet$metadataNameSpace() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.metadataNameSpaceIndex);
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$metadataNameSpace(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.metadataNameSpaceIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.metadataNameSpaceIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.metadataNameSpaceIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.metadataNameSpaceIndex, value);
        }
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Boolean realmGet$mayRead() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.mayReadIndex)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(this.columnInfo.mayReadIndex));
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$mayRead(Boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.mayReadIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setBoolean(this.columnInfo.mayReadIndex, row.getIndex(), value.booleanValue(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.mayReadIndex);
        } else {
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.mayReadIndex, value.booleanValue());
        }
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Boolean realmGet$mayWrite() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.mayWriteIndex)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(this.columnInfo.mayWriteIndex));
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$mayWrite(Boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.mayWriteIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setBoolean(this.columnInfo.mayWriteIndex, row.getIndex(), value.booleanValue(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.mayWriteIndex);
        } else {
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.mayWriteIndex, value.booleanValue());
        }
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public Boolean realmGet$mayManage() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.mayManageIndex)) {
            return null;
        }
        return Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(this.columnInfo.mayManageIndex));
    }

    @Override // io.realm.internal.permissions.PermissionChange, io.realm.io_realm_internal_permissions_PermissionChangeRealmProxyInterface
    public void realmSet$mayManage(Boolean value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.mayManageIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setBoolean(this.columnInfo.mayManageIndex, row.getIndex(), value.booleanValue(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.mayManageIndex);
        } else {
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.mayManageIndex, value.booleanValue());
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 13, 0);
        builder.addPersistedProperty("id", RealmFieldType.STRING, true, true, true);
        builder.addPersistedProperty("createdAt", RealmFieldType.DATE, false, false, true);
        builder.addPersistedProperty("updatedAt", RealmFieldType.DATE, false, false, true);
        builder.addPersistedProperty("statusCode", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("statusMessage", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("realmUrl", RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty(Parameters.SESSION_USER_ID, RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty("metadataKey", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("metadataValue", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("metadataNameSpace", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("mayRead", RealmFieldType.BOOLEAN, false, false, false);
        builder.addPersistedProperty("mayWrite", RealmFieldType.BOOLEAN, false, false, false);
        builder.addPersistedProperty("mayManage", RealmFieldType.BOOLEAN, false, false, false);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static PermissionChangeColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new PermissionChangeColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static PermissionChange createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws Throwable {
        List<String> excludeFields = Collections.emptyList();
        PermissionChange obj = null;
        if (update) {
            Table table = realm.getTable(PermissionChange.class);
            PermissionChangeColumnInfo columnInfo = (PermissionChangeColumnInfo) realm.getSchema().getColumnInfo(PermissionChange.class);
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
                        objectContext.set(realm, table.getUncheckedRow(rowIndex2), realm.getSchema().getColumnInfo(PermissionChange.class), false, Collections.emptyList());
                        obj = new io_realm_internal_permissions_PermissionChangeRealmProxy();
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
                obj = json.isNull("id") ? (io_realm_internal_permissions_PermissionChangeRealmProxy) realm.createObjectInternal(PermissionChange.class, null, true, excludeFields) : (io_realm_internal_permissions_PermissionChangeRealmProxy) realm.createObjectInternal(PermissionChange.class, json.getString("id"), true, excludeFields);
            } else {
                throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
            }
        }
        io_realm_internal_permissions_PermissionChangeRealmProxyInterface objProxy = obj;
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
        if (json.has("realmUrl")) {
            if (json.isNull("realmUrl")) {
                objProxy.realmSet$realmUrl(null);
            } else {
                objProxy.realmSet$realmUrl(json.getString("realmUrl"));
            }
        }
        if (json.has(Parameters.SESSION_USER_ID)) {
            if (json.isNull(Parameters.SESSION_USER_ID)) {
                objProxy.realmSet$userId(null);
            } else {
                objProxy.realmSet$userId(json.getString(Parameters.SESSION_USER_ID));
            }
        }
        if (json.has("metadataKey")) {
            if (json.isNull("metadataKey")) {
                objProxy.realmSet$metadataKey(null);
            } else {
                objProxy.realmSet$metadataKey(json.getString("metadataKey"));
            }
        }
        if (json.has("metadataValue")) {
            if (json.isNull("metadataValue")) {
                objProxy.realmSet$metadataValue(null);
            } else {
                objProxy.realmSet$metadataValue(json.getString("metadataValue"));
            }
        }
        if (json.has("metadataNameSpace")) {
            if (json.isNull("metadataNameSpace")) {
                objProxy.realmSet$metadataNameSpace(null);
            } else {
                objProxy.realmSet$metadataNameSpace(json.getString("metadataNameSpace"));
            }
        }
        if (json.has("mayRead")) {
            if (json.isNull("mayRead")) {
                objProxy.realmSet$mayRead(null);
            } else {
                objProxy.realmSet$mayRead(Boolean.valueOf(json.getBoolean("mayRead")));
            }
        }
        if (json.has("mayWrite")) {
            if (json.isNull("mayWrite")) {
                objProxy.realmSet$mayWrite(null);
            } else {
                objProxy.realmSet$mayWrite(Boolean.valueOf(json.getBoolean("mayWrite")));
            }
        }
        if (json.has("mayManage")) {
            if (json.isNull("mayManage")) {
                objProxy.realmSet$mayManage(null);
            } else {
                objProxy.realmSet$mayManage(Boolean.valueOf(json.getBoolean("mayManage")));
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static PermissionChange createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        boolean jsonHasPrimaryKey = false;
        PermissionChange obj = new PermissionChange();
        PermissionChange objProxy = obj;
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
            } else if (name.equals("realmUrl")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$realmUrl(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$realmUrl(null);
                }
            } else if (name.equals(Parameters.SESSION_USER_ID)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$userId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$userId(null);
                }
            } else if (name.equals("metadataKey")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$metadataKey(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$metadataKey(null);
                }
            } else if (name.equals("metadataValue")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$metadataValue(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$metadataValue(null);
                }
            } else if (name.equals("metadataNameSpace")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$metadataNameSpace(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$metadataNameSpace(null);
                }
            } else if (name.equals("mayRead")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$mayRead(Boolean.valueOf(reader.nextBoolean()));
                } else {
                    reader.skipValue();
                    objProxy.realmSet$mayRead(null);
                }
            } else if (name.equals("mayWrite")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$mayWrite(Boolean.valueOf(reader.nextBoolean()));
                } else {
                    reader.skipValue();
                    objProxy.realmSet$mayWrite(null);
                }
            } else if (name.equals("mayManage")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$mayManage(Boolean.valueOf(reader.nextBoolean()));
                } else {
                    reader.skipValue();
                    objProxy.realmSet$mayManage(null);
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        if (!jsonHasPrimaryKey) {
            throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
        }
        return (PermissionChange) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PermissionChange copyOrUpdate(Realm realm, PermissionChange permissionChange, boolean update, Map<RealmModel, RealmObjectProxy> cache) throws Throwable {
        if ((permissionChange instanceof RealmObjectProxy) && ((RealmObjectProxy) permissionChange).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) permissionChange).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return permissionChange;
            }
        }
        BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(permissionChange);
        if (realmModel != null) {
            return (PermissionChange) realmModel;
        }
        io_realm_internal_permissions_PermissionChangeRealmProxy io_realm_internal_permissions_permissionchangerealmproxy = null;
        boolean canUpdate = update;
        if (canUpdate) {
            Table table = realm.getTable(PermissionChange.class);
            PermissionChangeColumnInfo columnInfo = (PermissionChangeColumnInfo) realm.getSchema().getColumnInfo(PermissionChange.class);
            long pkColumnIndex = columnInfo.idIndex;
            long rowIndex = table.findFirstString(pkColumnIndex, permissionChange.realmGet$id());
            if (rowIndex == -1) {
                canUpdate = false;
            } else {
                try {
                    try {
                        objectContext.set(realm, table.getUncheckedRow(rowIndex), realm.getSchema().getColumnInfo(PermissionChange.class), false, Collections.emptyList());
                        io_realm_internal_permissions_permissionchangerealmproxy = new io_realm_internal_permissions_PermissionChangeRealmProxy();
                        cache.put(permissionChange, io_realm_internal_permissions_permissionchangerealmproxy);
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
        return canUpdate ? update(realm, io_realm_internal_permissions_permissionchangerealmproxy, permissionChange, cache) : copy(realm, permissionChange, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PermissionChange copy(Realm realm, PermissionChange newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (PermissionChange) realmModel;
        }
        PermissionChange permissionChange = (PermissionChange) realm.createObjectInternal(PermissionChange.class, newObject.realmGet$id(), false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) permissionChange);
        PermissionChange realmObjectSource = newObject;
        PermissionChange realmObjectCopy = permissionChange;
        realmObjectCopy.realmSet$createdAt(realmObjectSource.realmGet$createdAt());
        realmObjectCopy.realmSet$updatedAt(realmObjectSource.realmGet$updatedAt());
        realmObjectCopy.realmSet$statusCode(realmObjectSource.realmGet$statusCode());
        realmObjectCopy.realmSet$statusMessage(realmObjectSource.realmGet$statusMessage());
        realmObjectCopy.realmSet$realmUrl(realmObjectSource.realmGet$realmUrl());
        realmObjectCopy.realmSet$userId(realmObjectSource.realmGet$userId());
        realmObjectCopy.realmSet$metadataKey(realmObjectSource.realmGet$metadataKey());
        realmObjectCopy.realmSet$metadataValue(realmObjectSource.realmGet$metadataValue());
        realmObjectCopy.realmSet$metadataNameSpace(realmObjectSource.realmGet$metadataNameSpace());
        realmObjectCopy.realmSet$mayRead(realmObjectSource.realmGet$mayRead());
        realmObjectCopy.realmSet$mayWrite(realmObjectSource.realmGet$mayWrite());
        realmObjectCopy.realmSet$mayManage(realmObjectSource.realmGet$mayManage());
        return permissionChange;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, PermissionChange permissionChange, Map<RealmModel, Long> cache) {
        if ((permissionChange instanceof RealmObjectProxy) && ((RealmObjectProxy) permissionChange).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) permissionChange).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) permissionChange).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(PermissionChange.class);
        long tableNativePtr = table.getNativePtr();
        PermissionChangeColumnInfo columnInfo = (PermissionChangeColumnInfo) realm.getSchema().getColumnInfo(PermissionChange.class);
        long pkColumnIndex = columnInfo.idIndex;
        long rowIndex = -1;
        Object primaryKeyValue = permissionChange.realmGet$id();
        if (primaryKeyValue != null) {
            rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
        }
        if (rowIndex == -1) {
            rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
        } else {
            Table.throwDuplicatePrimaryKeyException(primaryKeyValue);
        }
        long rowIndex2 = rowIndex;
        cache.put(permissionChange, Long.valueOf(rowIndex2));
        Date realmGet$createdAt = permissionChange.realmGet$createdAt();
        if (realmGet$createdAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
        }
        Date realmGet$updatedAt = permissionChange.realmGet$updatedAt();
        if (realmGet$updatedAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
        }
        Number realmGet$statusCode = permissionChange.realmGet$statusCode();
        if (realmGet$statusCode != null) {
            Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
        }
        String realmGet$statusMessage = permissionChange.realmGet$statusMessage();
        if (realmGet$statusMessage != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
        }
        String realmGet$realmUrl = permissionChange.realmGet$realmUrl();
        if (realmGet$realmUrl != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
        }
        String realmGet$userId = permissionChange.realmGet$userId();
        if (realmGet$userId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.userIdIndex, rowIndex2, realmGet$userId, false);
        }
        String realmGet$metadataKey = permissionChange.realmGet$metadataKey();
        if (realmGet$metadataKey != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.metadataKeyIndex, rowIndex2, realmGet$metadataKey, false);
        }
        String realmGet$metadataValue = permissionChange.realmGet$metadataValue();
        if (realmGet$metadataValue != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.metadataValueIndex, rowIndex2, realmGet$metadataValue, false);
        }
        String realmGet$metadataNameSpace = permissionChange.realmGet$metadataNameSpace();
        if (realmGet$metadataNameSpace != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.metadataNameSpaceIndex, rowIndex2, realmGet$metadataNameSpace, false);
        }
        Boolean realmGet$mayRead = permissionChange.realmGet$mayRead();
        if (realmGet$mayRead != null) {
            Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex2, realmGet$mayRead.booleanValue(), false);
        }
        Boolean realmGet$mayWrite = permissionChange.realmGet$mayWrite();
        if (realmGet$mayWrite != null) {
            Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex2, realmGet$mayWrite.booleanValue(), false);
        }
        Boolean realmGet$mayManage = permissionChange.realmGet$mayManage();
        if (realmGet$mayManage != null) {
            Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex2, realmGet$mayManage.booleanValue(), false);
        }
        return rowIndex2;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long pkColumnIndex;
        Table table = realm.getTable(PermissionChange.class);
        long tableNativePtr = table.getNativePtr();
        PermissionChangeColumnInfo columnInfo = (PermissionChangeColumnInfo) realm.getSchema().getColumnInfo(PermissionChange.class);
        long pkColumnIndex2 = columnInfo.idIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (PermissionChange) objects.next();
            if (cache.containsKey(realmModel)) {
                pkColumnIndex = pkColumnIndex2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                pkColumnIndex = pkColumnIndex2;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$id();
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
                Date realmGet$createdAt = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$createdAt();
                if (realmGet$createdAt != null) {
                    pkColumnIndex = pkColumnIndex2;
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
                } else {
                    pkColumnIndex = pkColumnIndex2;
                }
                Date realmGet$updatedAt = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$updatedAt();
                if (realmGet$updatedAt != null) {
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
                }
                Number realmGet$statusCode = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$statusCode();
                if (realmGet$statusCode != null) {
                    Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
                }
                String realmGet$statusMessage = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$statusMessage();
                if (realmGet$statusMessage != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
                }
                String realmGet$realmUrl = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$realmUrl();
                if (realmGet$realmUrl != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
                }
                String realmGet$userId = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$userId();
                if (realmGet$userId != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.userIdIndex, rowIndex2, realmGet$userId, false);
                }
                String realmGet$metadataKey = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$metadataKey();
                if (realmGet$metadataKey != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.metadataKeyIndex, rowIndex2, realmGet$metadataKey, false);
                }
                String realmGet$metadataValue = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$metadataValue();
                if (realmGet$metadataValue != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.metadataValueIndex, rowIndex2, realmGet$metadataValue, false);
                }
                String realmGet$metadataNameSpace = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$metadataNameSpace();
                if (realmGet$metadataNameSpace != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.metadataNameSpaceIndex, rowIndex2, realmGet$metadataNameSpace, false);
                }
                Boolean realmGet$mayRead = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$mayRead();
                if (realmGet$mayRead != null) {
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex2, realmGet$mayRead.booleanValue(), false);
                }
                Boolean realmGet$mayWrite = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$mayWrite();
                if (realmGet$mayWrite != null) {
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex2, realmGet$mayWrite.booleanValue(), false);
                }
                Boolean realmGet$mayManage = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$mayManage();
                if (realmGet$mayManage != null) {
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex2, realmGet$mayManage.booleanValue(), false);
                }
            }
            pkColumnIndex2 = pkColumnIndex;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, PermissionChange permissionChange, Map<RealmModel, Long> cache) {
        if ((permissionChange instanceof RealmObjectProxy) && ((RealmObjectProxy) permissionChange).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) permissionChange).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) permissionChange).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(PermissionChange.class);
        long tableNativePtr = table.getNativePtr();
        PermissionChangeColumnInfo columnInfo = (PermissionChangeColumnInfo) realm.getSchema().getColumnInfo(PermissionChange.class);
        long pkColumnIndex = columnInfo.idIndex;
        long rowIndex = -1;
        Object primaryKeyValue = permissionChange.realmGet$id();
        if (primaryKeyValue != null) {
            rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex, (String) primaryKeyValue);
        }
        if (rowIndex == -1) {
            rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex, primaryKeyValue);
        }
        long rowIndex2 = rowIndex;
        cache.put(permissionChange, Long.valueOf(rowIndex2));
        Date realmGet$createdAt = permissionChange.realmGet$createdAt();
        if (realmGet$createdAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, false);
        }
        Date realmGet$updatedAt = permissionChange.realmGet$updatedAt();
        if (realmGet$updatedAt != null) {
            Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, false);
        }
        Number realmGet$statusCode = permissionChange.realmGet$statusCode();
        if (realmGet$statusCode != null) {
            Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, false);
        }
        String realmGet$statusMessage = permissionChange.realmGet$statusMessage();
        if (realmGet$statusMessage != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, false);
        }
        String realmGet$realmUrl = permissionChange.realmGet$realmUrl();
        if (realmGet$realmUrl != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, false);
        }
        String realmGet$userId = permissionChange.realmGet$userId();
        if (realmGet$userId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.userIdIndex, rowIndex2, realmGet$userId, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.userIdIndex, rowIndex2, false);
        }
        String realmGet$metadataKey = permissionChange.realmGet$metadataKey();
        if (realmGet$metadataKey != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.metadataKeyIndex, rowIndex2, realmGet$metadataKey, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.metadataKeyIndex, rowIndex2, false);
        }
        String realmGet$metadataValue = permissionChange.realmGet$metadataValue();
        if (realmGet$metadataValue != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.metadataValueIndex, rowIndex2, realmGet$metadataValue, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.metadataValueIndex, rowIndex2, false);
        }
        String realmGet$metadataNameSpace = permissionChange.realmGet$metadataNameSpace();
        if (realmGet$metadataNameSpace != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.metadataNameSpaceIndex, rowIndex2, realmGet$metadataNameSpace, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.metadataNameSpaceIndex, rowIndex2, false);
        }
        Boolean realmGet$mayRead = permissionChange.realmGet$mayRead();
        if (realmGet$mayRead != null) {
            Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex2, realmGet$mayRead.booleanValue(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.mayReadIndex, rowIndex2, false);
        }
        Boolean realmGet$mayWrite = permissionChange.realmGet$mayWrite();
        if (realmGet$mayWrite != null) {
            Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex2, realmGet$mayWrite.booleanValue(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.mayWriteIndex, rowIndex2, false);
        }
        Boolean realmGet$mayManage = permissionChange.realmGet$mayManage();
        if (realmGet$mayManage != null) {
            Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex2, realmGet$mayManage.booleanValue(), false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.mayManageIndex, rowIndex2, false);
        }
        return rowIndex2;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long pkColumnIndex;
        Table table = realm.getTable(PermissionChange.class);
        long tableNativePtr = table.getNativePtr();
        PermissionChangeColumnInfo columnInfo = (PermissionChangeColumnInfo) realm.getSchema().getColumnInfo(PermissionChange.class);
        long pkColumnIndex2 = columnInfo.idIndex;
        while (objects.hasNext()) {
            RealmModel realmModel = (PermissionChange) objects.next();
            if (cache.containsKey(realmModel)) {
                pkColumnIndex = pkColumnIndex2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                pkColumnIndex = pkColumnIndex2;
            } else {
                long rowIndex = -1;
                Object primaryKeyValue = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$id();
                if (primaryKeyValue != null) {
                    rowIndex = Table.nativeFindFirstString(tableNativePtr, pkColumnIndex2, (String) primaryKeyValue);
                }
                if (rowIndex == -1) {
                    rowIndex = OsObject.createRowWithPrimaryKey(table, pkColumnIndex2, primaryKeyValue);
                }
                long rowIndex2 = rowIndex;
                cache.put(realmModel, Long.valueOf(rowIndex2));
                Date realmGet$createdAt = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$createdAt();
                if (realmGet$createdAt != null) {
                    pkColumnIndex = pkColumnIndex2;
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, realmGet$createdAt.getTime(), false);
                } else {
                    pkColumnIndex = pkColumnIndex2;
                    Table.nativeSetNull(tableNativePtr, columnInfo.createdAtIndex, rowIndex2, false);
                }
                Date realmGet$updatedAt = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$updatedAt();
                if (realmGet$updatedAt != null) {
                    Table.nativeSetTimestamp(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, realmGet$updatedAt.getTime(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.updatedAtIndex, rowIndex2, false);
                }
                Number realmGet$statusCode = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$statusCode();
                if (realmGet$statusCode != null) {
                    Table.nativeSetLong(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, realmGet$statusCode.longValue(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.statusCodeIndex, rowIndex2, false);
                }
                String realmGet$statusMessage = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$statusMessage();
                if (realmGet$statusMessage != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, realmGet$statusMessage, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.statusMessageIndex, rowIndex2, false);
                }
                String realmGet$realmUrl = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$realmUrl();
                if (realmGet$realmUrl != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, realmGet$realmUrl, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.realmUrlIndex, rowIndex2, false);
                }
                String realmGet$userId = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$userId();
                if (realmGet$userId != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.userIdIndex, rowIndex2, realmGet$userId, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.userIdIndex, rowIndex2, false);
                }
                String realmGet$metadataKey = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$metadataKey();
                if (realmGet$metadataKey != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.metadataKeyIndex, rowIndex2, realmGet$metadataKey, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.metadataKeyIndex, rowIndex2, false);
                }
                String realmGet$metadataValue = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$metadataValue();
                if (realmGet$metadataValue != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.metadataValueIndex, rowIndex2, realmGet$metadataValue, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.metadataValueIndex, rowIndex2, false);
                }
                String realmGet$metadataNameSpace = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$metadataNameSpace();
                if (realmGet$metadataNameSpace != null) {
                    Table.nativeSetString(tableNativePtr, columnInfo.metadataNameSpaceIndex, rowIndex2, realmGet$metadataNameSpace, false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.metadataNameSpaceIndex, rowIndex2, false);
                }
                Boolean realmGet$mayRead = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$mayRead();
                if (realmGet$mayRead != null) {
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayReadIndex, rowIndex2, realmGet$mayRead.booleanValue(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.mayReadIndex, rowIndex2, false);
                }
                Boolean realmGet$mayWrite = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$mayWrite();
                if (realmGet$mayWrite != null) {
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayWriteIndex, rowIndex2, realmGet$mayWrite.booleanValue(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.mayWriteIndex, rowIndex2, false);
                }
                Boolean realmGet$mayManage = ((io_realm_internal_permissions_PermissionChangeRealmProxyInterface) realmModel).realmGet$mayManage();
                if (realmGet$mayManage != null) {
                    Table.nativeSetBoolean(tableNativePtr, columnInfo.mayManageIndex, rowIndex2, realmGet$mayManage.booleanValue(), false);
                } else {
                    Table.nativeSetNull(tableNativePtr, columnInfo.mayManageIndex, rowIndex2, false);
                }
            }
            pkColumnIndex2 = pkColumnIndex;
        }
    }

    public static PermissionChange createDetachedCopy(PermissionChange realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        PermissionChange unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new PermissionChange();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (PermissionChange) cachedObject.object;
            }
            unmanagedObject = (PermissionChange) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        io_realm_internal_permissions_PermissionChangeRealmProxyInterface unmanagedCopy = unmanagedObject;
        PermissionChange realmSource = realmObject;
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$createdAt(realmSource.realmGet$createdAt());
        unmanagedCopy.realmSet$updatedAt(realmSource.realmGet$updatedAt());
        unmanagedCopy.realmSet$statusCode(realmSource.realmGet$statusCode());
        unmanagedCopy.realmSet$statusMessage(realmSource.realmGet$statusMessage());
        unmanagedCopy.realmSet$realmUrl(realmSource.realmGet$realmUrl());
        unmanagedCopy.realmSet$userId(realmSource.realmGet$userId());
        unmanagedCopy.realmSet$metadataKey(realmSource.realmGet$metadataKey());
        unmanagedCopy.realmSet$metadataValue(realmSource.realmGet$metadataValue());
        unmanagedCopy.realmSet$metadataNameSpace(realmSource.realmGet$metadataNameSpace());
        unmanagedCopy.realmSet$mayRead(realmSource.realmGet$mayRead());
        unmanagedCopy.realmSet$mayWrite(realmSource.realmGet$mayWrite());
        unmanagedCopy.realmSet$mayManage(realmSource.realmGet$mayManage());
        return unmanagedObject;
    }

    static PermissionChange update(Realm realm, PermissionChange realmObject, PermissionChange newObject, Map<RealmModel, RealmObjectProxy> cache) {
        PermissionChange realmObjectTarget = realmObject;
        PermissionChange realmObjectSource = newObject;
        realmObjectTarget.realmSet$createdAt(realmObjectSource.realmGet$createdAt());
        realmObjectTarget.realmSet$updatedAt(realmObjectSource.realmGet$updatedAt());
        realmObjectTarget.realmSet$statusCode(realmObjectSource.realmGet$statusCode());
        realmObjectTarget.realmSet$statusMessage(realmObjectSource.realmGet$statusMessage());
        realmObjectTarget.realmSet$realmUrl(realmObjectSource.realmGet$realmUrl());
        realmObjectTarget.realmSet$userId(realmObjectSource.realmGet$userId());
        realmObjectTarget.realmSet$metadataKey(realmObjectSource.realmGet$metadataKey());
        realmObjectTarget.realmSet$metadataValue(realmObjectSource.realmGet$metadataValue());
        realmObjectTarget.realmSet$metadataNameSpace(realmObjectSource.realmGet$metadataNameSpace());
        realmObjectTarget.realmSet$mayRead(realmObjectSource.realmGet$mayRead());
        realmObjectTarget.realmSet$mayWrite(realmObjectSource.realmGet$mayWrite());
        realmObjectTarget.realmSet$mayManage(realmObjectSource.realmGet$mayManage());
        return realmObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("PermissionChange = proxy[");
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
        stringBuilder.append("{realmUrl:");
        stringBuilder.append(realmGet$realmUrl());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{userId:");
        stringBuilder.append(realmGet$userId());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{metadataKey:");
        stringBuilder.append(realmGet$metadataKey() != null ? realmGet$metadataKey() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{metadataValue:");
        stringBuilder.append(realmGet$metadataValue() != null ? realmGet$metadataValue() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{metadataNameSpace:");
        stringBuilder.append(realmGet$metadataNameSpace() != null ? realmGet$metadataNameSpace() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{mayRead:");
        stringBuilder.append(realmGet$mayRead() != null ? realmGet$mayRead() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{mayWrite:");
        stringBuilder.append(realmGet$mayWrite() != null ? realmGet$mayWrite() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{mayManage:");
        stringBuilder.append(realmGet$mayManage() != null ? realmGet$mayManage() : "null");
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
        io_realm_internal_permissions_PermissionChangeRealmProxy aPermissionChange = (io_realm_internal_permissions_PermissionChangeRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aPermissionChange.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aPermissionChange.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aPermissionChange.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
