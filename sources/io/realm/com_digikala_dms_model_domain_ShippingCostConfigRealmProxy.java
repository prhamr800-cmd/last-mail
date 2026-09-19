package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.ShippingCostConfig;
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
public class com_digikala_dms_model_domain_ShippingCostConfigRealmProxy extends ShippingCostConfig implements RealmObjectProxy, com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private ShippingCostConfigColumnInfo columnInfo;
    private ProxyState<ShippingCostConfig> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "ShippingCostConfig";
    }

    static final class ShippingCostConfigColumnInfo extends ColumnInfo {
        long shippingCostIndex;
        long thresholdIndex;

        ShippingCostConfigColumnInfo(OsSchemaInfo schemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.thresholdIndex = addColumnDetails("threshold", "threshold", objectSchemaInfo);
            this.shippingCostIndex = addColumnDetails("shippingCost", "shippingCost", objectSchemaInfo);
        }

        ShippingCostConfigColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new ShippingCostConfigColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            ShippingCostConfigColumnInfo src = (ShippingCostConfigColumnInfo) rawSrc;
            ShippingCostConfigColumnInfo dst = (ShippingCostConfigColumnInfo) rawDst;
            dst.thresholdIndex = src.thresholdIndex;
            dst.shippingCostIndex = src.shippingCostIndex;
        }
    }

    com_digikala_dms_model_domain_ShippingCostConfigRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (ShippingCostConfigColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.ShippingCostConfig, io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface
    public int realmGet$threshold() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.thresholdIndex);
    }

    @Override // com.digikala.dms.model.domain.ShippingCostConfig, io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface
    public void realmSet$threshold(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.thresholdIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.thresholdIndex, value);
    }

    @Override // com.digikala.dms.model.domain.ShippingCostConfig, io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface
    public int realmGet$shippingCost() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.shippingCostIndex);
    }

    @Override // com.digikala.dms.model.domain.ShippingCostConfig, io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface
    public void realmSet$shippingCost(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.shippingCostIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.shippingCostIndex, value);
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("threshold", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("shippingCost", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static ShippingCostConfigColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new ShippingCostConfigColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static ShippingCostConfig createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = Collections.emptyList();
        ShippingCostConfig obj = (ShippingCostConfig) realm.createObjectInternal(ShippingCostConfig.class, true, excludeFields);
        ShippingCostConfig objProxy = obj;
        if (json.has("threshold")) {
            if (json.isNull("threshold")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'threshold' to null.");
            }
            objProxy.realmSet$threshold(json.getInt("threshold"));
        }
        if (json.has("shippingCost")) {
            if (json.isNull("shippingCost")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'shippingCost' to null.");
            }
            objProxy.realmSet$shippingCost(json.getInt("shippingCost"));
        }
        return obj;
    }

    @TargetApi(11)
    public static ShippingCostConfig createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        ShippingCostConfig obj = new ShippingCostConfig();
        ShippingCostConfig objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("threshold")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$threshold(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'threshold' to null.");
                }
            } else if (name.equals("shippingCost")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$shippingCost(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'shippingCost' to null.");
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (ShippingCostConfig) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ShippingCostConfig copyOrUpdate(Realm realm, ShippingCostConfig shippingCostConfig, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((shippingCostConfig instanceof RealmObjectProxy) && ((RealmObjectProxy) shippingCostConfig).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) shippingCostConfig).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return shippingCostConfig;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(shippingCostConfig);
        if (realmModel != null) {
            return (ShippingCostConfig) realmModel;
        }
        return copy(realm, shippingCostConfig, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ShippingCostConfig copy(Realm realm, ShippingCostConfig newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (ShippingCostConfig) realmModel;
        }
        ShippingCostConfig shippingCostConfig = (ShippingCostConfig) realm.createObjectInternal(ShippingCostConfig.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) shippingCostConfig);
        ShippingCostConfig realmObjectSource = newObject;
        ShippingCostConfig realmObjectCopy = shippingCostConfig;
        realmObjectCopy.realmSet$threshold(realmObjectSource.realmGet$threshold());
        realmObjectCopy.realmSet$shippingCost(realmObjectSource.realmGet$shippingCost());
        return shippingCostConfig;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, ShippingCostConfig shippingCostConfig, Map<RealmModel, Long> cache) {
        if ((shippingCostConfig instanceof RealmObjectProxy) && ((RealmObjectProxy) shippingCostConfig).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) shippingCostConfig).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) shippingCostConfig).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(ShippingCostConfig.class);
        long tableNativePtr = table.getNativePtr();
        ShippingCostConfigColumnInfo columnInfo = (ShippingCostConfigColumnInfo) realm.getSchema().getColumnInfo(ShippingCostConfig.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(shippingCostConfig, Long.valueOf(rowIndex));
        Table.nativeSetLong(tableNativePtr, columnInfo.thresholdIndex, rowIndex, shippingCostConfig.realmGet$threshold(), false);
        Table.nativeSetLong(tableNativePtr, columnInfo.shippingCostIndex, rowIndex, shippingCostConfig.realmGet$shippingCost(), false);
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(ShippingCostConfig.class);
        long tableNativePtr = table.getNativePtr();
        ShippingCostConfigColumnInfo columnInfo = (ShippingCostConfigColumnInfo) realm.getSchema().getColumnInfo(ShippingCostConfig.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (ShippingCostConfig) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetLong(tableNativePtr, columnInfo.thresholdIndex, rowIndex, ((com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface) realmModel).realmGet$threshold(), false);
                    Table.nativeSetLong(tableNativePtr, columnInfo.shippingCostIndex, rowIndex, ((com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface) realmModel).realmGet$shippingCost(), false);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, ShippingCostConfig shippingCostConfig, Map<RealmModel, Long> cache) {
        if ((shippingCostConfig instanceof RealmObjectProxy) && ((RealmObjectProxy) shippingCostConfig).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) shippingCostConfig).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) shippingCostConfig).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(ShippingCostConfig.class);
        long tableNativePtr = table.getNativePtr();
        ShippingCostConfigColumnInfo columnInfo = (ShippingCostConfigColumnInfo) realm.getSchema().getColumnInfo(ShippingCostConfig.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(shippingCostConfig, Long.valueOf(rowIndex));
        Table.nativeSetLong(tableNativePtr, columnInfo.thresholdIndex, rowIndex, shippingCostConfig.realmGet$threshold(), false);
        Table.nativeSetLong(tableNativePtr, columnInfo.shippingCostIndex, rowIndex, shippingCostConfig.realmGet$shippingCost(), false);
        return rowIndex;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(ShippingCostConfig.class);
        long tableNativePtr = table.getNativePtr();
        ShippingCostConfigColumnInfo columnInfo = (ShippingCostConfigColumnInfo) realm.getSchema().getColumnInfo(ShippingCostConfig.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (ShippingCostConfig) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    Table.nativeSetLong(tableNativePtr, columnInfo.thresholdIndex, rowIndex, ((com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface) realmModel).realmGet$threshold(), false);
                    Table.nativeSetLong(tableNativePtr, columnInfo.shippingCostIndex, rowIndex, ((com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface) realmModel).realmGet$shippingCost(), false);
                }
            }
        }
    }

    public static ShippingCostConfig createDetachedCopy(ShippingCostConfig realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        ShippingCostConfig unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new ShippingCostConfig();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (ShippingCostConfig) cachedObject.object;
            }
            unmanagedObject = (ShippingCostConfig) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface unmanagedCopy = unmanagedObject;
        ShippingCostConfig realmSource = realmObject;
        unmanagedCopy.realmSet$threshold(realmSource.realmGet$threshold());
        unmanagedCopy.realmSet$shippingCost(realmSource.realmGet$shippingCost());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "ShippingCostConfig = proxy[{threshold:" + realmGet$threshold() + "},{shippingCost:" + realmGet$shippingCost() + "}]";
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
        com_digikala_dms_model_domain_ShippingCostConfigRealmProxy aShippingCostConfig = (com_digikala_dms_model_domain_ShippingCostConfigRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aShippingCostConfig.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aShippingCostConfig.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aShippingCostConfig.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
