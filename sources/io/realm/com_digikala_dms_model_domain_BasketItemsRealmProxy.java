package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.BasketItems;
import com.digikala.dms.model.domain.ShipmentItem;
import io.realm.BaseRealm;
import io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxy;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsList;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
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
public class com_digikala_dms_model_domain_BasketItemsRealmProxy extends BasketItems implements RealmObjectProxy, com_digikala_dms_model_domain_BasketItemsRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private BasketItemsColumnInfo columnInfo;
    private RealmList<ShipmentItem> orderItemsRealmList;
    private ProxyState<BasketItems> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "BasketItems";
    }

    static final class BasketItemsColumnInfo extends ColumnInfo {
        long basketIdIndex;
        long orderItemsIndex;

        BasketItemsColumnInfo(OsSchemaInfo schemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.basketIdIndex = addColumnDetails("basketId", "basketId", objectSchemaInfo);
            this.orderItemsIndex = addColumnDetails("orderItems", "orderItems", objectSchemaInfo);
        }

        BasketItemsColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new BasketItemsColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            BasketItemsColumnInfo src = (BasketItemsColumnInfo) rawSrc;
            BasketItemsColumnInfo dst = (BasketItemsColumnInfo) rawDst;
            dst.basketIdIndex = src.basketIdIndex;
            dst.orderItemsIndex = src.orderItemsIndex;
        }
    }

    com_digikala_dms_model_domain_BasketItemsRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (BasketItemsColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.BasketItems, io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxyInterface
    public String realmGet$basketId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.basketIdIndex);
    }

    @Override // com.digikala.dms.model.domain.BasketItems, io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxyInterface
    public void realmSet$basketId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.basketIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.basketIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.basketIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.basketIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.BasketItems, io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxyInterface
    public RealmList<ShipmentItem> realmGet$orderItems() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.orderItemsRealmList != null) {
            return this.orderItemsRealmList;
        }
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.orderItemsIndex);
        this.orderItemsRealmList = new RealmList<>(ShipmentItem.class, osList, this.proxyState.getRealm$realm());
        return this.orderItemsRealmList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [io.realm.RealmList, io.realm.RealmList<com.digikala.dms.model.domain.ShipmentItem>] */
    /* JADX WARN: Type inference failed for: r9v1, types: [io.realm.RealmList] */
    /* JADX WARN: Type inference failed for: r9v2, types: [io.realm.RealmList] */
    @Override // com.digikala.dms.model.domain.BasketItems, io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxyInterface
    public void realmSet$orderItems(RealmList<ShipmentItem> realmList) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains("orderItems")) {
                return;
            }
            if (realmList != 0 && !realmList.isManaged()) {
                Realm realm = (Realm) this.proxyState.getRealm$realm();
                realmList = new RealmList();
                for (ShipmentItem item : realmList) {
                    if (item == null || RealmObject.isManaged(item)) {
                        realmList.add(item);
                    } else {
                        realmList.add(realm.copyToRealm(item));
                    }
                }
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.orderItemsIndex);
        int i = 0;
        if (realmList != 0 && realmList.size() == osList.size()) {
            int objects = realmList.size();
            while (i < objects) {
                RealmModel realmModel = (ShipmentItem) realmList.get(i);
                this.proxyState.checkValidObject(realmModel);
                osList.setRow(i, ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex());
                i++;
            }
            return;
        }
        osList.removeAll();
        if (realmList == 0) {
            return;
        }
        int objects2 = realmList.size();
        while (i < objects2) {
            RealmModel realmModel2 = (ShipmentItem) realmList.get(i);
            this.proxyState.checkValidObject(realmModel2);
            osList.addRow(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex());
            i++;
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("basketId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedLinkProperty("orderItems", RealmFieldType.LIST, com_digikala_dms_model_domain_ShipmentItemRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static BasketItemsColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new BasketItemsColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static BasketItems createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = new ArrayList<>(1);
        if (json.has("orderItems")) {
            excludeFields.add("orderItems");
        }
        BasketItems obj = (BasketItems) realm.createObjectInternal(BasketItems.class, true, excludeFields);
        BasketItems objProxy = obj;
        if (json.has("basketId")) {
            if (json.isNull("basketId")) {
                objProxy.realmSet$basketId(null);
            } else {
                objProxy.realmSet$basketId(json.getString("basketId"));
            }
        }
        if (json.has("orderItems")) {
            if (json.isNull("orderItems")) {
                objProxy.realmSet$orderItems(null);
            } else {
                objProxy.realmGet$orderItems().clear();
                JSONArray array = json.getJSONArray("orderItems");
                for (int i = 0; i < array.length(); i++) {
                    ShipmentItem item = com_digikala_dms_model_domain_ShipmentItemRealmProxy.createOrUpdateUsingJsonObject(realm, array.getJSONObject(i), update);
                    objProxy.realmGet$orderItems().add(item);
                }
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static BasketItems createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        BasketItems obj = new BasketItems();
        BasketItems objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("basketId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$basketId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$basketId(null);
                }
            } else if (name.equals("orderItems")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$orderItems(null);
                } else {
                    objProxy.realmSet$orderItems(new RealmList<>());
                    reader.beginArray();
                    while (reader.hasNext()) {
                        ShipmentItem item = com_digikala_dms_model_domain_ShipmentItemRealmProxy.createUsingJsonStream(realm, reader);
                        objProxy.realmGet$orderItems().add(item);
                    }
                    reader.endArray();
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (BasketItems) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static BasketItems copyOrUpdate(Realm realm, BasketItems basketItems, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((basketItems instanceof RealmObjectProxy) && ((RealmObjectProxy) basketItems).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) basketItems).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return basketItems;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(basketItems);
        if (realmModel != null) {
            return (BasketItems) realmModel;
        }
        return copy(realm, basketItems, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static BasketItems copy(Realm realm, BasketItems newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (BasketItems) realmModel;
        }
        BasketItems basketItems = (BasketItems) realm.createObjectInternal(BasketItems.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) basketItems);
        BasketItems realmObjectSource = newObject;
        BasketItems realmObjectCopy = basketItems;
        realmObjectCopy.realmSet$basketId(realmObjectSource.realmGet$basketId());
        RealmList<ShipmentItem> orderItemsList = realmObjectSource.realmGet$orderItems();
        if (orderItemsList != null) {
            RealmList<ShipmentItem> orderItemsRealmList = realmObjectCopy.realmGet$orderItems();
            orderItemsRealmList.clear();
            for (int i = 0; i < orderItemsList.size(); i++) {
                ShipmentItem orderItemsItem = orderItemsList.get(i);
                ShipmentItem cacheorderItems = (ShipmentItem) cache.get(orderItemsItem);
                if (cacheorderItems != null) {
                    orderItemsRealmList.add(cacheorderItems);
                } else {
                    orderItemsRealmList.add(com_digikala_dms_model_domain_ShipmentItemRealmProxy.copyOrUpdate(realm, orderItemsItem, update, cache));
                }
            }
        }
        return basketItems;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, BasketItems basketItems, Map<RealmModel, Long> cache) {
        long tableNativePtr;
        if (!(basketItems instanceof RealmObjectProxy) || ((RealmObjectProxy) basketItems).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) basketItems).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(BasketItems.class);
            long tableNativePtr2 = table.getNativePtr();
            BasketItemsColumnInfo columnInfo = (BasketItemsColumnInfo) realm.getSchema().getColumnInfo(BasketItems.class);
            long rowIndex = OsObject.createRow(table);
            cache.put(basketItems, Long.valueOf(rowIndex));
            String realmGet$basketId = basketItems.realmGet$basketId();
            if (realmGet$basketId != null) {
                tableNativePtr = rowIndex;
                Table.nativeSetString(tableNativePtr2, columnInfo.basketIdIndex, rowIndex, realmGet$basketId, false);
            } else {
                tableNativePtr = rowIndex;
            }
            RealmList<ShipmentItem> orderItemsList = basketItems.realmGet$orderItems();
            if (orderItemsList != null) {
                OsList orderItemsOsList = new OsList(table.getUncheckedRow(tableNativePtr), columnInfo.orderItemsIndex);
                for (ShipmentItem orderItemsItem : orderItemsList) {
                    Long cacheItemIndexorderItems = cache.get(orderItemsItem);
                    if (cacheItemIndexorderItems == null) {
                        cacheItemIndexorderItems = Long.valueOf(com_digikala_dms_model_domain_ShipmentItemRealmProxy.insert(realm, orderItemsItem, cache));
                    }
                    orderItemsOsList.addRow(cacheItemIndexorderItems.longValue());
                }
            }
            return tableNativePtr;
        }
        return ((RealmObjectProxy) basketItems).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long tableNativePtr;
        long tableNativePtr2;
        Table table = realm.getTable(BasketItems.class);
        long tableNativePtr3 = table.getNativePtr();
        BasketItemsColumnInfo columnInfo = (BasketItemsColumnInfo) realm.getSchema().getColumnInfo(BasketItems.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (BasketItems) objects.next();
            if (cache.containsKey(realmModel)) {
                tableNativePtr = tableNativePtr3;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                tableNativePtr = tableNativePtr3;
            } else {
                long rowIndex = OsObject.createRow(table);
                cache.put(realmModel, Long.valueOf(rowIndex));
                String realmGet$basketId = ((com_digikala_dms_model_domain_BasketItemsRealmProxyInterface) realmModel).realmGet$basketId();
                if (realmGet$basketId != null) {
                    long j = tableNativePtr3;
                    tableNativePtr = tableNativePtr3;
                    tableNativePtr2 = rowIndex;
                    Table.nativeSetString(j, columnInfo.basketIdIndex, rowIndex, realmGet$basketId, false);
                } else {
                    tableNativePtr = tableNativePtr3;
                    tableNativePtr2 = rowIndex;
                }
                RealmList<ShipmentItem> orderItemsList = ((com_digikala_dms_model_domain_BasketItemsRealmProxyInterface) realmModel).realmGet$orderItems();
                if (orderItemsList != null) {
                    OsList orderItemsOsList = new OsList(table.getUncheckedRow(tableNativePtr2), columnInfo.orderItemsIndex);
                    for (ShipmentItem orderItemsItem : orderItemsList) {
                        Long cacheItemIndexorderItems = cache.get(orderItemsItem);
                        if (cacheItemIndexorderItems == null) {
                            cacheItemIndexorderItems = Long.valueOf(com_digikala_dms_model_domain_ShipmentItemRealmProxy.insert(realm, orderItemsItem, cache));
                        }
                        orderItemsOsList.addRow(cacheItemIndexorderItems.longValue());
                    }
                }
            }
            tableNativePtr3 = tableNativePtr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, BasketItems basketItems, Map<RealmModel, Long> cache) {
        long rowIndex;
        if (!(basketItems instanceof RealmObjectProxy) || ((RealmObjectProxy) basketItems).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) basketItems).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(BasketItems.class);
            long tableNativePtr = table.getNativePtr();
            BasketItemsColumnInfo columnInfo = (BasketItemsColumnInfo) realm.getSchema().getColumnInfo(BasketItems.class);
            long rowIndex2 = OsObject.createRow(table);
            cache.put(basketItems, Long.valueOf(rowIndex2));
            String realmGet$basketId = basketItems.realmGet$basketId();
            if (realmGet$basketId != null) {
                rowIndex = rowIndex2;
                Table.nativeSetString(tableNativePtr, columnInfo.basketIdIndex, rowIndex2, realmGet$basketId, false);
            } else {
                rowIndex = rowIndex2;
                Table.nativeSetNull(tableNativePtr, columnInfo.basketIdIndex, rowIndex, false);
            }
            long rowIndex3 = rowIndex;
            OsList orderItemsOsList = new OsList(table.getUncheckedRow(rowIndex3), columnInfo.orderItemsIndex);
            RealmList<ShipmentItem> orderItemsList = basketItems.realmGet$orderItems();
            if (orderItemsList != null && orderItemsList.size() == orderItemsOsList.size()) {
                int objects = orderItemsList.size();
                int i = 0;
                while (i < objects) {
                    ShipmentItem orderItemsItem = orderItemsList.get(i);
                    Long cacheItemIndexorderItems = cache.get(orderItemsItem);
                    if (cacheItemIndexorderItems == null) {
                        cacheItemIndexorderItems = Long.valueOf(com_digikala_dms_model_domain_ShipmentItemRealmProxy.insertOrUpdate(realm, orderItemsItem, cache));
                    }
                    orderItemsOsList.setRow(i, cacheItemIndexorderItems.longValue());
                    i++;
                    tableNativePtr = tableNativePtr;
                    columnInfo = columnInfo;
                    realmGet$basketId = realmGet$basketId;
                }
            } else {
                orderItemsOsList.removeAll();
                if (orderItemsList != null) {
                    for (ShipmentItem orderItemsItem2 : orderItemsList) {
                        Long cacheItemIndexorderItems2 = cache.get(orderItemsItem2);
                        if (cacheItemIndexorderItems2 == null) {
                            cacheItemIndexorderItems2 = Long.valueOf(com_digikala_dms_model_domain_ShipmentItemRealmProxy.insertOrUpdate(realm, orderItemsItem2, cache));
                        }
                        orderItemsOsList.addRow(cacheItemIndexorderItems2.longValue());
                    }
                }
            }
            return rowIndex3;
        }
        return ((RealmObjectProxy) basketItems).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long rowIndex;
        long tableNativePtr;
        Table table = realm.getTable(BasketItems.class);
        long tableNativePtr2 = table.getNativePtr();
        BasketItemsColumnInfo columnInfo = (BasketItemsColumnInfo) realm.getSchema().getColumnInfo(BasketItems.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (BasketItems) objects.next();
            if (cache.containsKey(realmModel)) {
                tableNativePtr = tableNativePtr2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                tableNativePtr = tableNativePtr2;
            } else {
                long rowIndex2 = OsObject.createRow(table);
                cache.put(realmModel, Long.valueOf(rowIndex2));
                String realmGet$basketId = ((com_digikala_dms_model_domain_BasketItemsRealmProxyInterface) realmModel).realmGet$basketId();
                if (realmGet$basketId != null) {
                    rowIndex = rowIndex2;
                    Table.nativeSetString(tableNativePtr2, columnInfo.basketIdIndex, rowIndex2, realmGet$basketId, false);
                } else {
                    rowIndex = rowIndex2;
                    Table.nativeSetNull(tableNativePtr2, columnInfo.basketIdIndex, rowIndex, false);
                }
                long rowIndex3 = rowIndex;
                OsList orderItemsOsList = new OsList(table.getUncheckedRow(rowIndex3), columnInfo.orderItemsIndex);
                RealmList<ShipmentItem> orderItemsList = ((com_digikala_dms_model_domain_BasketItemsRealmProxyInterface) realmModel).realmGet$orderItems();
                if (orderItemsList != null && orderItemsList.size() == orderItemsOsList.size()) {
                    int objectCount = orderItemsList.size();
                    int i = 0;
                    while (i < objectCount) {
                        ShipmentItem orderItemsItem = orderItemsList.get(i);
                        Long cacheItemIndexorderItems = cache.get(orderItemsItem);
                        if (cacheItemIndexorderItems == null) {
                            cacheItemIndexorderItems = Long.valueOf(com_digikala_dms_model_domain_ShipmentItemRealmProxy.insertOrUpdate(realm, orderItemsItem, cache));
                        }
                        long tableNativePtr3 = tableNativePtr2;
                        long tableNativePtr4 = cacheItemIndexorderItems.longValue();
                        orderItemsOsList.setRow(i, tableNativePtr4);
                        i++;
                        rowIndex3 = rowIndex3;
                        tableNativePtr2 = tableNativePtr3;
                    }
                    tableNativePtr = tableNativePtr2;
                } else {
                    tableNativePtr = tableNativePtr2;
                    orderItemsOsList.removeAll();
                    if (orderItemsList != null) {
                        for (ShipmentItem orderItemsItem2 : orderItemsList) {
                            Long cacheItemIndexorderItems2 = cache.get(orderItemsItem2);
                            if (cacheItemIndexorderItems2 == null) {
                                cacheItemIndexorderItems2 = Long.valueOf(com_digikala_dms_model_domain_ShipmentItemRealmProxy.insertOrUpdate(realm, orderItemsItem2, cache));
                            }
                            orderItemsOsList.addRow(cacheItemIndexorderItems2.longValue());
                        }
                    }
                }
            }
            tableNativePtr2 = tableNativePtr;
        }
    }

    public static BasketItems createDetachedCopy(BasketItems realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        BasketItems unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new BasketItems();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (BasketItems) cachedObject.object;
            }
            unmanagedObject = (BasketItems) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_BasketItemsRealmProxyInterface unmanagedCopy = unmanagedObject;
        BasketItems realmSource = realmObject;
        unmanagedCopy.realmSet$basketId(realmSource.realmGet$basketId());
        if (currentDepth == maxDepth) {
            unmanagedCopy.realmSet$orderItems(null);
        } else {
            RealmList<ShipmentItem> managedorderItemsList = realmSource.realmGet$orderItems();
            RealmList<ShipmentItem> unmanagedorderItemsList = new RealmList<>();
            unmanagedCopy.realmSet$orderItems(unmanagedorderItemsList);
            int nextDepth = currentDepth + 1;
            int size = managedorderItemsList.size();
            for (int i = 0; i < size; i++) {
                ShipmentItem item = com_digikala_dms_model_domain_ShipmentItemRealmProxy.createDetachedCopy(managedorderItemsList.get(i), nextDepth, maxDepth, cache);
                unmanagedorderItemsList.add(item);
            }
        }
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("BasketItems = proxy[");
        stringBuilder.append("{basketId:");
        stringBuilder.append(realmGet$basketId() != null ? realmGet$basketId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{orderItems:");
        stringBuilder.append("RealmList<ShipmentItem>[");
        stringBuilder.append(realmGet$orderItems().size());
        stringBuilder.append("]");
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
        com_digikala_dms_model_domain_BasketItemsRealmProxy aBasketItems = (com_digikala_dms_model_domain_BasketItemsRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aBasketItems.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aBasketItems.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aBasketItems.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
