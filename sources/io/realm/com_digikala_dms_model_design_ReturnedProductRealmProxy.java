package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.design.ReturnedProduct;
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
public class com_digikala_dms_model_design_ReturnedProductRealmProxy extends ReturnedProduct implements RealmObjectProxy, com_digikala_dms_model_design_ReturnedProductRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private ReturnedProductColumnInfo columnInfo;
    private ProxyState<ReturnedProduct> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "ReturnedProduct";
    }

    static final class ReturnedProductColumnInfo extends ColumnInfo {
        long CountIndex;
        long ItemBatchIdIndex;
        long OrderItemIdIndex;
        long ReasonIdIndex;

        ReturnedProductColumnInfo(OsSchemaInfo schemaInfo) {
            super(4);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.OrderItemIdIndex = addColumnDetails("OrderItemId", "OrderItemId", objectSchemaInfo);
            this.ReasonIdIndex = addColumnDetails("ReasonId", "ReasonId", objectSchemaInfo);
            this.CountIndex = addColumnDetails("Count", "Count", objectSchemaInfo);
            this.ItemBatchIdIndex = addColumnDetails("ItemBatchId", "ItemBatchId", objectSchemaInfo);
        }

        ReturnedProductColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new ReturnedProductColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            ReturnedProductColumnInfo src = (ReturnedProductColumnInfo) rawSrc;
            ReturnedProductColumnInfo dst = (ReturnedProductColumnInfo) rawDst;
            dst.OrderItemIdIndex = src.OrderItemIdIndex;
            dst.ReasonIdIndex = src.ReasonIdIndex;
            dst.CountIndex = src.CountIndex;
            dst.ItemBatchIdIndex = src.ItemBatchIdIndex;
        }
    }

    com_digikala_dms_model_design_ReturnedProductRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (ReturnedProductColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.design.ReturnedProduct, io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public String realmGet$OrderItemId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.OrderItemIdIndex);
    }

    @Override // com.digikala.dms.model.design.ReturnedProduct, io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public void realmSet$OrderItemId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.OrderItemIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.OrderItemIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.OrderItemIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.OrderItemIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.design.ReturnedProduct, io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public String realmGet$ReasonId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.ReasonIdIndex);
    }

    @Override // com.digikala.dms.model.design.ReturnedProduct, io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public void realmSet$ReasonId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.ReasonIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.ReasonIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.ReasonIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.ReasonIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.design.ReturnedProduct, io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public String realmGet$Count() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.CountIndex);
    }

    @Override // com.digikala.dms.model.design.ReturnedProduct, io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public void realmSet$Count(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.CountIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.CountIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.CountIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.CountIndex, value);
        }
    }

    @Override // com.digikala.dms.model.design.ReturnedProduct, io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public int realmGet$ItemBatchId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.ItemBatchIdIndex);
    }

    @Override // com.digikala.dms.model.design.ReturnedProduct, io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public void realmSet$ItemBatchId(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.ItemBatchIdIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.ItemBatchIdIndex, value);
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 4, 0);
        builder.addPersistedProperty("OrderItemId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("ReasonId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("Count", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("ItemBatchId", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static ReturnedProductColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new ReturnedProductColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static ReturnedProduct createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = Collections.emptyList();
        ReturnedProduct obj = (ReturnedProduct) realm.createObjectInternal(ReturnedProduct.class, true, excludeFields);
        ReturnedProduct objProxy = obj;
        if (json.has("OrderItemId")) {
            if (json.isNull("OrderItemId")) {
                objProxy.realmSet$OrderItemId(null);
            } else {
                objProxy.realmSet$OrderItemId(json.getString("OrderItemId"));
            }
        }
        if (json.has("ReasonId")) {
            if (json.isNull("ReasonId")) {
                objProxy.realmSet$ReasonId(null);
            } else {
                objProxy.realmSet$ReasonId(json.getString("ReasonId"));
            }
        }
        if (json.has("Count")) {
            if (json.isNull("Count")) {
                objProxy.realmSet$Count(null);
            } else {
                objProxy.realmSet$Count(json.getString("Count"));
            }
        }
        if (json.has("ItemBatchId")) {
            if (json.isNull("ItemBatchId")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'ItemBatchId' to null.");
            }
            objProxy.realmSet$ItemBatchId(json.getInt("ItemBatchId"));
        }
        return obj;
    }

    @TargetApi(11)
    public static ReturnedProduct createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        ReturnedProduct obj = new ReturnedProduct();
        ReturnedProduct objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("OrderItemId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$OrderItemId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$OrderItemId(null);
                }
            } else if (name.equals("ReasonId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$ReasonId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$ReasonId(null);
                }
            } else if (name.equals("Count")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$Count(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$Count(null);
                }
            } else if (name.equals("ItemBatchId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$ItemBatchId(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'ItemBatchId' to null.");
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (ReturnedProduct) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ReturnedProduct copyOrUpdate(Realm realm, ReturnedProduct returnedProduct, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((returnedProduct instanceof RealmObjectProxy) && ((RealmObjectProxy) returnedProduct).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) returnedProduct).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return returnedProduct;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(returnedProduct);
        if (realmModel != null) {
            return (ReturnedProduct) realmModel;
        }
        return copy(realm, returnedProduct, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ReturnedProduct copy(Realm realm, ReturnedProduct newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (ReturnedProduct) realmModel;
        }
        ReturnedProduct returnedProduct = (ReturnedProduct) realm.createObjectInternal(ReturnedProduct.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) returnedProduct);
        ReturnedProduct realmObjectSource = newObject;
        ReturnedProduct realmObjectCopy = returnedProduct;
        realmObjectCopy.realmSet$OrderItemId(realmObjectSource.realmGet$OrderItemId());
        realmObjectCopy.realmSet$ReasonId(realmObjectSource.realmGet$ReasonId());
        realmObjectCopy.realmSet$Count(realmObjectSource.realmGet$Count());
        realmObjectCopy.realmSet$ItemBatchId(realmObjectSource.realmGet$ItemBatchId());
        return returnedProduct;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, ReturnedProduct returnedProduct, Map<RealmModel, Long> cache) {
        if ((returnedProduct instanceof RealmObjectProxy) && ((RealmObjectProxy) returnedProduct).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) returnedProduct).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) returnedProduct).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(ReturnedProduct.class);
        long tableNativePtr = table.getNativePtr();
        ReturnedProductColumnInfo columnInfo = (ReturnedProductColumnInfo) realm.getSchema().getColumnInfo(ReturnedProduct.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(returnedProduct, Long.valueOf(rowIndex));
        String realmGet$OrderItemId = returnedProduct.realmGet$OrderItemId();
        if (realmGet$OrderItemId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, realmGet$OrderItemId, false);
        }
        String realmGet$ReasonId = returnedProduct.realmGet$ReasonId();
        if (realmGet$ReasonId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, realmGet$ReasonId, false);
        }
        String realmGet$Count = returnedProduct.realmGet$Count();
        if (realmGet$Count != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.CountIndex, rowIndex, realmGet$Count, false);
        }
        Table.nativeSetLong(tableNativePtr, columnInfo.ItemBatchIdIndex, rowIndex, returnedProduct.realmGet$ItemBatchId(), false);
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(ReturnedProduct.class);
        long tableNativePtr = table.getNativePtr();
        ReturnedProductColumnInfo columnInfo = (ReturnedProductColumnInfo) realm.getSchema().getColumnInfo(ReturnedProduct.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (ReturnedProduct) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$OrderItemId = ((com_digikala_dms_model_design_ReturnedProductRealmProxyInterface) realmModel).realmGet$OrderItemId();
                    if (realmGet$OrderItemId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, realmGet$OrderItemId, false);
                    }
                    String realmGet$ReasonId = ((com_digikala_dms_model_design_ReturnedProductRealmProxyInterface) realmModel).realmGet$ReasonId();
                    if (realmGet$ReasonId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, realmGet$ReasonId, false);
                    }
                    String realmGet$Count = ((com_digikala_dms_model_design_ReturnedProductRealmProxyInterface) realmModel).realmGet$Count();
                    if (realmGet$Count != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.CountIndex, rowIndex, realmGet$Count, false);
                    }
                    Table.nativeSetLong(tableNativePtr, columnInfo.ItemBatchIdIndex, rowIndex, ((com_digikala_dms_model_design_ReturnedProductRealmProxyInterface) realmModel).realmGet$ItemBatchId(), false);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, ReturnedProduct returnedProduct, Map<RealmModel, Long> cache) {
        if ((returnedProduct instanceof RealmObjectProxy) && ((RealmObjectProxy) returnedProduct).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) returnedProduct).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) returnedProduct).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(ReturnedProduct.class);
        long tableNativePtr = table.getNativePtr();
        ReturnedProductColumnInfo columnInfo = (ReturnedProductColumnInfo) realm.getSchema().getColumnInfo(ReturnedProduct.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(returnedProduct, Long.valueOf(rowIndex));
        String realmGet$OrderItemId = returnedProduct.realmGet$OrderItemId();
        if (realmGet$OrderItemId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, realmGet$OrderItemId, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, false);
        }
        String realmGet$ReasonId = returnedProduct.realmGet$ReasonId();
        if (realmGet$ReasonId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, realmGet$ReasonId, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, false);
        }
        String realmGet$Count = returnedProduct.realmGet$Count();
        if (realmGet$Count != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.CountIndex, rowIndex, realmGet$Count, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.CountIndex, rowIndex, false);
        }
        Table.nativeSetLong(tableNativePtr, columnInfo.ItemBatchIdIndex, rowIndex, returnedProduct.realmGet$ItemBatchId(), false);
        return rowIndex;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(ReturnedProduct.class);
        long tableNativePtr = table.getNativePtr();
        ReturnedProductColumnInfo columnInfo = (ReturnedProductColumnInfo) realm.getSchema().getColumnInfo(ReturnedProduct.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (ReturnedProduct) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$OrderItemId = ((com_digikala_dms_model_design_ReturnedProductRealmProxyInterface) realmModel).realmGet$OrderItemId();
                    if (realmGet$OrderItemId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, realmGet$OrderItemId, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex, false);
                    }
                    String realmGet$ReasonId = ((com_digikala_dms_model_design_ReturnedProductRealmProxyInterface) realmModel).realmGet$ReasonId();
                    if (realmGet$ReasonId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, realmGet$ReasonId, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.ReasonIdIndex, rowIndex, false);
                    }
                    String realmGet$Count = ((com_digikala_dms_model_design_ReturnedProductRealmProxyInterface) realmModel).realmGet$Count();
                    if (realmGet$Count != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.CountIndex, rowIndex, realmGet$Count, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.CountIndex, rowIndex, false);
                    }
                    Table.nativeSetLong(tableNativePtr, columnInfo.ItemBatchIdIndex, rowIndex, ((com_digikala_dms_model_design_ReturnedProductRealmProxyInterface) realmModel).realmGet$ItemBatchId(), false);
                }
            }
        }
    }

    public static ReturnedProduct createDetachedCopy(ReturnedProduct realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        ReturnedProduct unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new ReturnedProduct();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (ReturnedProduct) cachedObject.object;
            }
            unmanagedObject = (ReturnedProduct) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_design_ReturnedProductRealmProxyInterface unmanagedCopy = unmanagedObject;
        ReturnedProduct realmSource = realmObject;
        unmanagedCopy.realmSet$OrderItemId(realmSource.realmGet$OrderItemId());
        unmanagedCopy.realmSet$ReasonId(realmSource.realmGet$ReasonId());
        unmanagedCopy.realmSet$Count(realmSource.realmGet$Count());
        unmanagedCopy.realmSet$ItemBatchId(realmSource.realmGet$ItemBatchId());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("ReturnedProduct = proxy[");
        stringBuilder.append("{OrderItemId:");
        stringBuilder.append(realmGet$OrderItemId() != null ? realmGet$OrderItemId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{ReasonId:");
        stringBuilder.append(realmGet$ReasonId() != null ? realmGet$ReasonId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{Count:");
        stringBuilder.append(realmGet$Count() != null ? realmGet$Count() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{ItemBatchId:");
        stringBuilder.append(realmGet$ItemBatchId());
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
        com_digikala_dms_model_design_ReturnedProductRealmProxy aReturnedProduct = (com_digikala_dms_model_design_ReturnedProductRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aReturnedProduct.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aReturnedProduct.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aReturnedProduct.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
