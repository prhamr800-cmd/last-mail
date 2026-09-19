package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.BatchItem;
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
public class com_digikala_dms_model_domain_BatchItemRealmProxy extends BatchItem implements RealmObjectProxy, com_digikala_dms_model_domain_BatchItemRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private BatchItemColumnInfo columnInfo;
    private ProxyState<BatchItem> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "BatchItem";
    }

    static final class BatchItemColumnInfo extends ColumnInfo {
        long consumerPriceIndex;
        long countIndex;
        long expireDateIndex;
        long itemBatchIdIndex;

        BatchItemColumnInfo(OsSchemaInfo schemaInfo) {
            super(4);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.itemBatchIdIndex = addColumnDetails("itemBatchId", "itemBatchId", objectSchemaInfo);
            this.consumerPriceIndex = addColumnDetails("consumerPrice", "consumerPrice", objectSchemaInfo);
            this.expireDateIndex = addColumnDetails("expireDate", "expireDate", objectSchemaInfo);
            this.countIndex = addColumnDetails("count", "count", objectSchemaInfo);
        }

        BatchItemColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new BatchItemColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            BatchItemColumnInfo src = (BatchItemColumnInfo) rawSrc;
            BatchItemColumnInfo dst = (BatchItemColumnInfo) rawDst;
            dst.itemBatchIdIndex = src.itemBatchIdIndex;
            dst.consumerPriceIndex = src.consumerPriceIndex;
            dst.expireDateIndex = src.expireDateIndex;
            dst.countIndex = src.countIndex;
        }
    }

    com_digikala_dms_model_domain_BatchItemRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (BatchItemColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.BatchItem, io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public String realmGet$itemBatchId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.itemBatchIdIndex);
    }

    @Override // com.digikala.dms.model.domain.BatchItem, io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public void realmSet$itemBatchId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.itemBatchIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.itemBatchIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.itemBatchIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.itemBatchIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.BatchItem, io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public String realmGet$consumerPrice() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.consumerPriceIndex);
    }

    @Override // com.digikala.dms.model.domain.BatchItem, io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public void realmSet$consumerPrice(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.consumerPriceIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.consumerPriceIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.consumerPriceIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.consumerPriceIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.BatchItem, io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public String realmGet$expireDate() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.expireDateIndex);
    }

    @Override // com.digikala.dms.model.domain.BatchItem, io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public void realmSet$expireDate(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.expireDateIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.expireDateIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.expireDateIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.expireDateIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.BatchItem, io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public String realmGet$count() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.countIndex);
    }

    @Override // com.digikala.dms.model.domain.BatchItem, io.realm.com_digikala_dms_model_domain_BatchItemRealmProxyInterface
    public void realmSet$count(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.countIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.countIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.countIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.countIndex, value);
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 4, 0);
        builder.addPersistedProperty("itemBatchId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("consumerPrice", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("expireDate", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("count", RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static BatchItemColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new BatchItemColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static BatchItem createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = Collections.emptyList();
        BatchItem obj = (BatchItem) realm.createObjectInternal(BatchItem.class, true, excludeFields);
        BatchItem objProxy = obj;
        if (json.has("itemBatchId")) {
            if (json.isNull("itemBatchId")) {
                objProxy.realmSet$itemBatchId(null);
            } else {
                objProxy.realmSet$itemBatchId(json.getString("itemBatchId"));
            }
        }
        if (json.has("consumerPrice")) {
            if (json.isNull("consumerPrice")) {
                objProxy.realmSet$consumerPrice(null);
            } else {
                objProxy.realmSet$consumerPrice(json.getString("consumerPrice"));
            }
        }
        if (json.has("expireDate")) {
            if (json.isNull("expireDate")) {
                objProxy.realmSet$expireDate(null);
            } else {
                objProxy.realmSet$expireDate(json.getString("expireDate"));
            }
        }
        if (json.has("count")) {
            if (json.isNull("count")) {
                objProxy.realmSet$count(null);
            } else {
                objProxy.realmSet$count(json.getString("count"));
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static BatchItem createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        BatchItem obj = new BatchItem();
        BatchItem objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("itemBatchId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$itemBatchId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$itemBatchId(null);
                }
            } else if (name.equals("consumerPrice")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$consumerPrice(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$consumerPrice(null);
                }
            } else if (name.equals("expireDate")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$expireDate(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$expireDate(null);
                }
            } else if (name.equals("count")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$count(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$count(null);
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (BatchItem) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static BatchItem copyOrUpdate(Realm realm, BatchItem batchItem, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((batchItem instanceof RealmObjectProxy) && ((RealmObjectProxy) batchItem).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) batchItem).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return batchItem;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(batchItem);
        if (realmModel != null) {
            return (BatchItem) realmModel;
        }
        return copy(realm, batchItem, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static BatchItem copy(Realm realm, BatchItem newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (BatchItem) realmModel;
        }
        BatchItem batchItem = (BatchItem) realm.createObjectInternal(BatchItem.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) batchItem);
        BatchItem realmObjectSource = newObject;
        BatchItem realmObjectCopy = batchItem;
        realmObjectCopy.realmSet$itemBatchId(realmObjectSource.realmGet$itemBatchId());
        realmObjectCopy.realmSet$consumerPrice(realmObjectSource.realmGet$consumerPrice());
        realmObjectCopy.realmSet$expireDate(realmObjectSource.realmGet$expireDate());
        realmObjectCopy.realmSet$count(realmObjectSource.realmGet$count());
        return batchItem;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, BatchItem batchItem, Map<RealmModel, Long> cache) {
        if ((batchItem instanceof RealmObjectProxy) && ((RealmObjectProxy) batchItem).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) batchItem).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) batchItem).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(BatchItem.class);
        long tableNativePtr = table.getNativePtr();
        BatchItemColumnInfo columnInfo = (BatchItemColumnInfo) realm.getSchema().getColumnInfo(BatchItem.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(batchItem, Long.valueOf(rowIndex));
        String realmGet$itemBatchId = batchItem.realmGet$itemBatchId();
        if (realmGet$itemBatchId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.itemBatchIdIndex, rowIndex, realmGet$itemBatchId, false);
        }
        String realmGet$consumerPrice = batchItem.realmGet$consumerPrice();
        if (realmGet$consumerPrice != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.consumerPriceIndex, rowIndex, realmGet$consumerPrice, false);
        }
        String realmGet$expireDate = batchItem.realmGet$expireDate();
        if (realmGet$expireDate != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.expireDateIndex, rowIndex, realmGet$expireDate, false);
        }
        String realmGet$count = batchItem.realmGet$count();
        if (realmGet$count != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.countIndex, rowIndex, realmGet$count, false);
        }
        return rowIndex;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(BatchItem.class);
        long tableNativePtr = table.getNativePtr();
        BatchItemColumnInfo columnInfo = (BatchItemColumnInfo) realm.getSchema().getColumnInfo(BatchItem.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (BatchItem) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$itemBatchId = ((com_digikala_dms_model_domain_BatchItemRealmProxyInterface) realmModel).realmGet$itemBatchId();
                    if (realmGet$itemBatchId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.itemBatchIdIndex, rowIndex, realmGet$itemBatchId, false);
                    }
                    String realmGet$consumerPrice = ((com_digikala_dms_model_domain_BatchItemRealmProxyInterface) realmModel).realmGet$consumerPrice();
                    if (realmGet$consumerPrice != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.consumerPriceIndex, rowIndex, realmGet$consumerPrice, false);
                    }
                    String realmGet$expireDate = ((com_digikala_dms_model_domain_BatchItemRealmProxyInterface) realmModel).realmGet$expireDate();
                    if (realmGet$expireDate != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.expireDateIndex, rowIndex, realmGet$expireDate, false);
                    }
                    String realmGet$count = ((com_digikala_dms_model_domain_BatchItemRealmProxyInterface) realmModel).realmGet$count();
                    if (realmGet$count != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.countIndex, rowIndex, realmGet$count, false);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, BatchItem batchItem, Map<RealmModel, Long> cache) {
        if ((batchItem instanceof RealmObjectProxy) && ((RealmObjectProxy) batchItem).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) batchItem).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            return ((RealmObjectProxy) batchItem).realmGet$proxyState().getRow$realm().getIndex();
        }
        Table table = realm.getTable(BatchItem.class);
        long tableNativePtr = table.getNativePtr();
        BatchItemColumnInfo columnInfo = (BatchItemColumnInfo) realm.getSchema().getColumnInfo(BatchItem.class);
        long rowIndex = OsObject.createRow(table);
        cache.put(batchItem, Long.valueOf(rowIndex));
        String realmGet$itemBatchId = batchItem.realmGet$itemBatchId();
        if (realmGet$itemBatchId != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.itemBatchIdIndex, rowIndex, realmGet$itemBatchId, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.itemBatchIdIndex, rowIndex, false);
        }
        String realmGet$consumerPrice = batchItem.realmGet$consumerPrice();
        if (realmGet$consumerPrice != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.consumerPriceIndex, rowIndex, realmGet$consumerPrice, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.consumerPriceIndex, rowIndex, false);
        }
        String realmGet$expireDate = batchItem.realmGet$expireDate();
        if (realmGet$expireDate != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.expireDateIndex, rowIndex, realmGet$expireDate, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.expireDateIndex, rowIndex, false);
        }
        String realmGet$count = batchItem.realmGet$count();
        if (realmGet$count != null) {
            Table.nativeSetString(tableNativePtr, columnInfo.countIndex, rowIndex, realmGet$count, false);
        } else {
            Table.nativeSetNull(tableNativePtr, columnInfo.countIndex, rowIndex, false);
        }
        return rowIndex;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        Table table = realm.getTable(BatchItem.class);
        long tableNativePtr = table.getNativePtr();
        BatchItemColumnInfo columnInfo = (BatchItemColumnInfo) realm.getSchema().getColumnInfo(BatchItem.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (BatchItem) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex));
                    String realmGet$itemBatchId = ((com_digikala_dms_model_domain_BatchItemRealmProxyInterface) realmModel).realmGet$itemBatchId();
                    if (realmGet$itemBatchId != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.itemBatchIdIndex, rowIndex, realmGet$itemBatchId, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.itemBatchIdIndex, rowIndex, false);
                    }
                    String realmGet$consumerPrice = ((com_digikala_dms_model_domain_BatchItemRealmProxyInterface) realmModel).realmGet$consumerPrice();
                    if (realmGet$consumerPrice != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.consumerPriceIndex, rowIndex, realmGet$consumerPrice, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.consumerPriceIndex, rowIndex, false);
                    }
                    String realmGet$expireDate = ((com_digikala_dms_model_domain_BatchItemRealmProxyInterface) realmModel).realmGet$expireDate();
                    if (realmGet$expireDate != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.expireDateIndex, rowIndex, realmGet$expireDate, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.expireDateIndex, rowIndex, false);
                    }
                    String realmGet$count = ((com_digikala_dms_model_domain_BatchItemRealmProxyInterface) realmModel).realmGet$count();
                    if (realmGet$count != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.countIndex, rowIndex, realmGet$count, false);
                    } else {
                        Table.nativeSetNull(tableNativePtr, columnInfo.countIndex, rowIndex, false);
                    }
                }
            }
        }
    }

    public static BatchItem createDetachedCopy(BatchItem realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        BatchItem unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new BatchItem();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (BatchItem) cachedObject.object;
            }
            unmanagedObject = (BatchItem) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_BatchItemRealmProxyInterface unmanagedCopy = unmanagedObject;
        BatchItem realmSource = realmObject;
        unmanagedCopy.realmSet$itemBatchId(realmSource.realmGet$itemBatchId());
        unmanagedCopy.realmSet$consumerPrice(realmSource.realmGet$consumerPrice());
        unmanagedCopy.realmSet$expireDate(realmSource.realmGet$expireDate());
        unmanagedCopy.realmSet$count(realmSource.realmGet$count());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("BatchItem = proxy[");
        stringBuilder.append("{itemBatchId:");
        stringBuilder.append(realmGet$itemBatchId() != null ? realmGet$itemBatchId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{consumerPrice:");
        stringBuilder.append(realmGet$consumerPrice() != null ? realmGet$consumerPrice() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{expireDate:");
        stringBuilder.append(realmGet$expireDate() != null ? realmGet$expireDate() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{count:");
        stringBuilder.append(realmGet$count() != null ? realmGet$count() : "null");
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
        com_digikala_dms_model_domain_BatchItemRealmProxy aBatchItem = (com_digikala_dms_model_domain_BatchItemRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aBatchItem.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aBatchItem.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aBatchItem.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
