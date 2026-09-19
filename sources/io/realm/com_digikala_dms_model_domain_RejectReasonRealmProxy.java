package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.RejectReason;
import com.google.android.gms.measurement.AppMeasurement;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
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
public class com_digikala_dms_model_domain_RejectReasonRealmProxy extends RejectReason implements RealmObjectProxy, com_digikala_dms_model_domain_RejectReasonRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private RejectReasonColumnInfo columnInfo;
    private ProxyState<RejectReason> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "RejectReason";
    }

    static final class RejectReasonColumnInfo extends ColumnInfo {
        long idIndex;
        long titleIndex;
        long typeIndex;

        RejectReasonColumnInfo(OsSchemaInfo schemaInfo) {
            super(3);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.titleIndex = addColumnDetails(SettingsJsonConstants.PROMPT_TITLE_KEY, SettingsJsonConstants.PROMPT_TITLE_KEY, objectSchemaInfo);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.typeIndex = addColumnDetails(AppMeasurement.Param.TYPE, AppMeasurement.Param.TYPE, objectSchemaInfo);
        }

        RejectReasonColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new RejectReasonColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            RejectReasonColumnInfo src = (RejectReasonColumnInfo) rawSrc;
            RejectReasonColumnInfo dst = (RejectReasonColumnInfo) rawDst;
            dst.titleIndex = src.titleIndex;
            dst.idIndex = src.idIndex;
            dst.typeIndex = src.typeIndex;
        }
    }

    com_digikala_dms_model_domain_RejectReasonRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (RejectReasonColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.RejectReason, io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
    public String realmGet$title() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.titleIndex);
    }

    @Override // com.digikala.dms.model.domain.RejectReason, io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
    public void realmSet$title(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.titleIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.titleIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.titleIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.titleIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.RejectReason, io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
    public String realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.idIndex);
    }

    @Override // com.digikala.dms.model.domain.RejectReason, io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
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

    @Override // com.digikala.dms.model.domain.RejectReason, io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
    public String realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.typeIndex);
    }

    @Override // com.digikala.dms.model.domain.RejectReason, io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
    public void realmSet$type(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.typeIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.typeIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.typeIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.typeIndex, value);
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 3, 0);
        builder.addPersistedProperty(SettingsJsonConstants.PROMPT_TITLE_KEY, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("id", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(AppMeasurement.Param.TYPE, RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static RejectReasonColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new RejectReasonColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static RejectReason createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = Collections.emptyList();
        RejectReason obj = (RejectReason) realm.createObjectInternal(RejectReason.class, true, excludeFields);
        RejectReason objProxy = obj;
        if (json.has(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
            if (json.isNull(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                objProxy.realmSet$title(null);
            } else {
                objProxy.realmSet$title(json.getString(SettingsJsonConstants.PROMPT_TITLE_KEY));
            }
        }
        if (json.has("id")) {
            if (json.isNull("id")) {
                objProxy.realmSet$id(null);
            } else {
                objProxy.realmSet$id(json.getString("id"));
            }
        }
        if (json.has(AppMeasurement.Param.TYPE)) {
            if (json.isNull(AppMeasurement.Param.TYPE)) {
                objProxy.realmSet$type(null);
            } else {
                objProxy.realmSet$type(json.getString(AppMeasurement.Param.TYPE));
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static RejectReason createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        RejectReason obj = new RejectReason();
        RejectReason objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$title(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$title(null);
                }
            } else if (name.equals("id")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$id(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$id(null);
                }
            } else if (name.equals(AppMeasurement.Param.TYPE)) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$type(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$type(null);
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (RejectReason) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static RejectReason copyOrUpdate(Realm realm, RejectReason rejectReason, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((rejectReason instanceof RealmObjectProxy) && ((RealmObjectProxy) rejectReason).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) rejectReason).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return rejectReason;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(rejectReason);
        if (realmModel != null) {
            return (RejectReason) realmModel;
        }
        return copy(realm, rejectReason, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static RejectReason copy(Realm realm, RejectReason newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (RejectReason) realmModel;
        }
        RejectReason rejectReason = (RejectReason) realm.createObjectInternal(RejectReason.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) rejectReason);
        RejectReason realmObjectSource = newObject;
        RejectReason realmObjectCopy = rejectReason;
        realmObjectCopy.realmSet$title(realmObjectSource.realmGet$title());
        realmObjectCopy.realmSet$id(realmObjectSource.realmGet$id());
        realmObjectCopy.realmSet$type(realmObjectSource.realmGet$type());
        return rejectReason;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, RejectReason rejectReason, Map<RealmModel, Long> cache) {
        if ((rejectReason instanceof RealmObjectProxy) && ((RealmObjectProxy) rejectReason).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) rejectReason).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) rejectReason).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(RejectReason.class);
        long tableNativePtr = table.getNativePtr();
        RejectReasonColumnInfo columnInfo = (RejectReasonColumnInfo) realm.getSchema().getColumnInfo(RejectReason.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(rejectReason, Long.valueOf(rowIndex));
        String realmGet$title = rejectReason.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
        }
        String realmGet$id = rejectReason.realmGet$id();
        if (realmGet$id != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
        }
        String realmGet$type = rejectReason.realmGet$type();
        if (realmGet$type != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.typeIndex, rowIndex, realmGet$type, false);
        }
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(RejectReason.class);
        long tableNativePtr = table.getNativePtr();
        RejectReasonColumnInfo columnInfo = (RejectReasonColumnInfo) realm.getSchema().getColumnInfo(RejectReason.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (RejectReason) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$title = ((com_digikala_dms_model_domain_RejectReasonRealmProxyInterface) realmModel).realmGet$title();
                    if (realmGet$title != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
                    }
                    String realmGet$id = ((com_digikala_dms_model_domain_RejectReasonRealmProxyInterface) realmModel).realmGet$id();
                    if (realmGet$id != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
                    }
                    String realmGet$type = ((com_digikala_dms_model_domain_RejectReasonRealmProxyInterface) realmModel).realmGet$type();
                    if (realmGet$type != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.typeIndex, rowIndex, realmGet$type, false);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, RejectReason rejectReason, Map<RealmModel, Long> cache) {
        if ((rejectReason instanceof RealmObjectProxy) && ((RealmObjectProxy) rejectReason).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) rejectReason).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) rejectReason).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(RejectReason.class);
        long tableNativePtr = table.getNativePtr();
        RejectReasonColumnInfo columnInfo = (RejectReasonColumnInfo) realm.getSchema().getColumnInfo(RejectReason.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(rejectReason, Long.valueOf(rowIndex));
        String realmGet$title = rejectReason.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.titleIndex, rowIndex, false);
        }
        String realmGet$id = rejectReason.realmGet$id();
        if (realmGet$id != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.idIndex, rowIndex, false);
        }
        String realmGet$type = rejectReason.realmGet$type();
        if (realmGet$type != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.typeIndex, rowIndex, realmGet$type, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.typeIndex, rowIndex, false);
        }
        return rowIndex;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(RejectReason.class);
        long tableNativePtr = table.getNativePtr();
        RejectReasonColumnInfo columnInfo = (RejectReasonColumnInfo) realm.getSchema().getColumnInfo(RejectReason.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (RejectReason) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$title = ((com_digikala_dms_model_domain_RejectReasonRealmProxyInterface) realmModel).realmGet$title();
                    if (realmGet$title != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.titleIndex, rowIndex, realmGet$title, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.titleIndex, rowIndex, false);
                    }
                    String realmGet$id = ((com_digikala_dms_model_domain_RejectReasonRealmProxyInterface) realmModel).realmGet$id();
                    if (realmGet$id != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.idIndex, rowIndex, realmGet$id, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.idIndex, rowIndex, false);
                    }
                    String realmGet$type = ((com_digikala_dms_model_domain_RejectReasonRealmProxyInterface) realmModel).realmGet$type();
                    if (realmGet$type != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.typeIndex, rowIndex, realmGet$type, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.typeIndex, rowIndex, false);
                    }
                }
            }
        }
    }

    public static RejectReason createDetachedCopy(RejectReason realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        RejectReason unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new RejectReason();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (RejectReason) cachedObject.object;
            }
            unmanagedObject = (RejectReason) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_RejectReasonRealmProxyInterface unmanagedCopy = unmanagedObject;
        RejectReason realmSource = realmObject;
        unmanagedCopy.realmSet$title(realmSource.realmGet$title());
        unmanagedCopy.realmSet$id(realmSource.realmGet$id());
        unmanagedCopy.realmSet$type(realmSource.realmGet$type());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("RejectReason = proxy[");
        stringBuilder.append("{title:");
        stringBuilder.append(realmGet$title() != null ? realmGet$title() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{id:");
        stringBuilder.append(realmGet$id() != null ? realmGet$id() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{type:");
        stringBuilder.append(realmGet$type() != null ? realmGet$type() : "null");
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
        com_digikala_dms_model_domain_RejectReasonRealmProxy aRejectReason = (com_digikala_dms_model_domain_RejectReasonRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aRejectReason.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aRejectReason.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aRejectReason.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
