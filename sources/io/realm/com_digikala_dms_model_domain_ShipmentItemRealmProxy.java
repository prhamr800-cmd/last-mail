package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.digikala.dms.model.domain.BatchItem;
import com.digikala.dms.model.domain.ShipmentItem;
import io.realm.BaseRealm;
import io.realm.com_digikala_dms_model_domain_BatchItemRealmProxy;
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
public class com_digikala_dms_model_domain_ShipmentItemRealmProxy extends ShipmentItem implements RealmObjectProxy, com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private RealmList<String> SerialItemListRealmList;
    private RealmList<BatchItem> batchItemsRealmList;
    private ShipmentItemColumnInfo columnInfo;
    private ProxyState<ShipmentItem> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "ShipmentItem";
    }

    static final class ShipmentItemColumnInfo extends ColumnInfo {
        long BasketIdIndex;
        long OrderItemIdIndex;
        long SerialItemListIndex;
        long amountPerQuantityIndex;
        long batchItemsIndex;
        long brandNameIndex;
        long descriptionIndex;
        long rejectReasonIdIndex;
        long totalCountIndex;

        ShipmentItemColumnInfo(OsSchemaInfo schemaInfo) {
            super(9);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.OrderItemIdIndex = addColumnDetails("OrderItemId", "OrderItemId", objectSchemaInfo);
            this.descriptionIndex = addColumnDetails("description", "description", objectSchemaInfo);
            this.brandNameIndex = addColumnDetails("brandName", "brandName", objectSchemaInfo);
            this.totalCountIndex = addColumnDetails("totalCount", "totalCount", objectSchemaInfo);
            this.amountPerQuantityIndex = addColumnDetails("amountPerQuantity", "amountPerQuantity", objectSchemaInfo);
            this.batchItemsIndex = addColumnDetails("batchItems", "batchItems", objectSchemaInfo);
            this.SerialItemListIndex = addColumnDetails("SerialItemList", "SerialItemList", objectSchemaInfo);
            this.BasketIdIndex = addColumnDetails("BasketId", "BasketId", objectSchemaInfo);
            this.rejectReasonIdIndex = addColumnDetails("rejectReasonId", "rejectReasonId", objectSchemaInfo);
        }

        ShipmentItemColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new ShipmentItemColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            ShipmentItemColumnInfo src = (ShipmentItemColumnInfo) rawSrc;
            ShipmentItemColumnInfo dst = (ShipmentItemColumnInfo) rawDst;
            dst.OrderItemIdIndex = src.OrderItemIdIndex;
            dst.descriptionIndex = src.descriptionIndex;
            dst.brandNameIndex = src.brandNameIndex;
            dst.totalCountIndex = src.totalCountIndex;
            dst.amountPerQuantityIndex = src.amountPerQuantityIndex;
            dst.batchItemsIndex = src.batchItemsIndex;
            dst.SerialItemListIndex = src.SerialItemListIndex;
            dst.BasketIdIndex = src.BasketIdIndex;
            dst.rejectReasonIdIndex = src.rejectReasonIdIndex;
        }
    }

    com_digikala_dms_model_domain_ShipmentItemRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (ShipmentItemColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public String realmGet$OrderItemId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.OrderItemIdIndex);
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
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

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public String realmGet$description() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.descriptionIndex);
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$description(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.descriptionIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.descriptionIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.descriptionIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.descriptionIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public String realmGet$brandName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.brandNameIndex);
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$brandName(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.brandNameIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.brandNameIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.brandNameIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.brandNameIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public int realmGet$totalCount() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.totalCountIndex);
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$totalCount(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.totalCountIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.totalCountIndex, value);
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public int realmGet$amountPerQuantity() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.amountPerQuantityIndex);
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$amountPerQuantity(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.amountPerQuantityIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.amountPerQuantityIndex, value);
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public RealmList<BatchItem> realmGet$batchItems() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.batchItemsRealmList != null) {
            return this.batchItemsRealmList;
        }
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.batchItemsIndex);
        this.batchItemsRealmList = new RealmList<>(BatchItem.class, osList, this.proxyState.getRealm$realm());
        return this.batchItemsRealmList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [io.realm.RealmList, io.realm.RealmList<com.digikala.dms.model.domain.BatchItem>] */
    /* JADX WARN: Type inference failed for: r9v1, types: [io.realm.RealmList] */
    /* JADX WARN: Type inference failed for: r9v2, types: [io.realm.RealmList] */
    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$batchItems(RealmList<BatchItem> realmList) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains("batchItems")) {
                return;
            }
            if (realmList != 0 && !realmList.isManaged()) {
                Realm realm = (Realm) this.proxyState.getRealm$realm();
                realmList = new RealmList();
                for (BatchItem item : realmList) {
                    if (item == null || RealmObject.isManaged(item)) {
                        realmList.add(item);
                    } else {
                        realmList.add(realm.copyToRealm(item));
                    }
                }
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.batchItemsIndex);
        int i = 0;
        if (realmList != 0 && realmList.size() == osList.size()) {
            int objects = realmList.size();
            while (i < objects) {
                RealmModel realmModel = (BatchItem) realmList.get(i);
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
            RealmModel realmModel2 = (BatchItem) realmList.get(i);
            this.proxyState.checkValidObject(realmModel2);
            osList.addRow(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex());
            i++;
        }
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public RealmList<String> realmGet$SerialItemList() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.SerialItemListRealmList != null) {
            return this.SerialItemListRealmList;
        }
        OsList osList = this.proxyState.getRow$realm().getValueList(this.columnInfo.SerialItemListIndex, RealmFieldType.STRING_LIST);
        this.SerialItemListRealmList = new RealmList<>(String.class, osList, this.proxyState.getRealm$realm());
        return this.SerialItemListRealmList;
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$SerialItemList(RealmList<String> value) {
        if (this.proxyState.isUnderConstruction() && (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains("SerialItemList"))) {
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList osList = this.proxyState.getRow$realm().getValueList(this.columnInfo.SerialItemListIndex, RealmFieldType.STRING_LIST);
        osList.removeAll();
        if (value == null) {
            return;
        }
        for (String item : value) {
            if (item == null) {
                osList.addNull();
            } else {
                osList.addString(item);
            }
        }
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public String realmGet$BasketId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.BasketIdIndex);
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$BasketId(String value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            if (value == null) {
                row.getTable().setNull(this.columnInfo.BasketIdIndex, row.getIndex(), true);
                return;
            } else {
                row.getTable().setString(this.columnInfo.BasketIdIndex, row.getIndex(), value, true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (value == null) {
            this.proxyState.getRow$realm().setNull(this.columnInfo.BasketIdIndex);
        } else {
            this.proxyState.getRow$realm().setString(this.columnInfo.BasketIdIndex, value);
        }
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public int realmGet$rejectReasonId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.rejectReasonIdIndex);
    }

    @Override // com.digikala.dms.model.domain.ShipmentItem, io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$rejectReasonId(int value) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Row row = this.proxyState.getRow$realm();
            row.getTable().setLong(this.columnInfo.rejectReasonIdIndex, row.getIndex(), value, true);
            return;
        }
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setLong(this.columnInfo.rejectReasonIdIndex, value);
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 9, 0);
        builder.addPersistedProperty("OrderItemId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("description", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("brandName", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("totalCount", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("amountPerQuantity", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedLinkProperty("batchItems", RealmFieldType.LIST, com_digikala_dms_model_domain_BatchItemRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedValueListProperty("SerialItemList", RealmFieldType.STRING_LIST, false);
        builder.addPersistedProperty("BasketId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("rejectReasonId", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static ShipmentItemColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new ShipmentItemColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static ShipmentItem createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = new ArrayList<>(2);
        if (json.has("batchItems")) {
            excludeFields.add("batchItems");
        }
        if (json.has("SerialItemList")) {
            excludeFields.add("SerialItemList");
        }
        ShipmentItem obj = (ShipmentItem) realm.createObjectInternal(ShipmentItem.class, true, excludeFields);
        ShipmentItem objProxy = obj;
        if (json.has("OrderItemId")) {
            if (json.isNull("OrderItemId")) {
                objProxy.realmSet$OrderItemId(null);
            } else {
                objProxy.realmSet$OrderItemId(json.getString("OrderItemId"));
            }
        }
        if (json.has("description")) {
            if (json.isNull("description")) {
                objProxy.realmSet$description(null);
            } else {
                objProxy.realmSet$description(json.getString("description"));
            }
        }
        if (json.has("brandName")) {
            if (json.isNull("brandName")) {
                objProxy.realmSet$brandName(null);
            } else {
                objProxy.realmSet$brandName(json.getString("brandName"));
            }
        }
        if (json.has("totalCount")) {
            if (json.isNull("totalCount")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'totalCount' to null.");
            }
            objProxy.realmSet$totalCount(json.getInt("totalCount"));
        }
        if (json.has("amountPerQuantity")) {
            if (json.isNull("amountPerQuantity")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'amountPerQuantity' to null.");
            }
            objProxy.realmSet$amountPerQuantity(json.getInt("amountPerQuantity"));
        }
        if (json.has("batchItems")) {
            if (json.isNull("batchItems")) {
                objProxy.realmSet$batchItems(null);
            } else {
                objProxy.realmGet$batchItems().clear();
                JSONArray array = json.getJSONArray("batchItems");
                for (int i = 0; i < array.length(); i++) {
                    BatchItem item = com_digikala_dms_model_domain_BatchItemRealmProxy.createOrUpdateUsingJsonObject(realm, array.getJSONObject(i), update);
                    objProxy.realmGet$batchItems().add(item);
                }
            }
        }
        ProxyUtils.setRealmListWithJsonObject(objProxy.realmGet$SerialItemList(), json, "SerialItemList");
        if (json.has("BasketId")) {
            if (json.isNull("BasketId")) {
                objProxy.realmSet$BasketId(null);
            } else {
                objProxy.realmSet$BasketId(json.getString("BasketId"));
            }
        }
        if (json.has("rejectReasonId")) {
            if (json.isNull("rejectReasonId")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'rejectReasonId' to null.");
            }
            objProxy.realmSet$rejectReasonId(json.getInt("rejectReasonId"));
        }
        return obj;
    }

    @TargetApi(11)
    public static ShipmentItem createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        ShipmentItem obj = new ShipmentItem();
        ShipmentItem objProxy = obj;
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
            } else if (name.equals("description")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$description(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$description(null);
                }
            } else if (name.equals("brandName")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$brandName(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$brandName(null);
                }
            } else if (name.equals("totalCount")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$totalCount(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'totalCount' to null.");
                }
            } else if (name.equals("amountPerQuantity")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$amountPerQuantity(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'amountPerQuantity' to null.");
                }
            } else if (name.equals("batchItems")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$batchItems(null);
                } else {
                    objProxy.realmSet$batchItems(new RealmList<>());
                    reader.beginArray();
                    while (reader.hasNext()) {
                        BatchItem item = com_digikala_dms_model_domain_BatchItemRealmProxy.createUsingJsonStream(realm, reader);
                        objProxy.realmGet$batchItems().add(item);
                    }
                    reader.endArray();
                }
            } else if (name.equals("SerialItemList")) {
                objProxy.realmSet$SerialItemList(ProxyUtils.createRealmListWithJsonStream(String.class, reader));
            } else if (name.equals("BasketId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$BasketId(reader.nextString());
                } else {
                    reader.skipValue();
                    objProxy.realmSet$BasketId(null);
                }
            } else if (name.equals("rejectReasonId")) {
                if (reader.peek() != JsonToken.NULL) {
                    objProxy.realmSet$rejectReasonId(reader.nextInt());
                } else {
                    reader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'rejectReasonId' to null.");
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (ShipmentItem) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ShipmentItem copyOrUpdate(Realm realm, ShipmentItem shipmentItem, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((shipmentItem instanceof RealmObjectProxy) && ((RealmObjectProxy) shipmentItem).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) shipmentItem).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return shipmentItem;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(shipmentItem);
        if (realmModel != null) {
            return (ShipmentItem) realmModel;
        }
        return copy(realm, shipmentItem, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ShipmentItem copy(Realm realm, ShipmentItem newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (ShipmentItem) realmModel;
        }
        ShipmentItem shipmentItem = (ShipmentItem) realm.createObjectInternal(ShipmentItem.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) shipmentItem);
        ShipmentItem realmObjectSource = newObject;
        ShipmentItem realmObjectCopy = shipmentItem;
        realmObjectCopy.realmSet$OrderItemId(realmObjectSource.realmGet$OrderItemId());
        realmObjectCopy.realmSet$description(realmObjectSource.realmGet$description());
        realmObjectCopy.realmSet$brandName(realmObjectSource.realmGet$brandName());
        realmObjectCopy.realmSet$totalCount(realmObjectSource.realmGet$totalCount());
        realmObjectCopy.realmSet$amountPerQuantity(realmObjectSource.realmGet$amountPerQuantity());
        RealmList<BatchItem> batchItemsList = realmObjectSource.realmGet$batchItems();
        if (batchItemsList != null) {
            RealmList<BatchItem> batchItemsRealmList = realmObjectCopy.realmGet$batchItems();
            batchItemsRealmList.clear();
            for (int i = 0; i < batchItemsList.size(); i++) {
                BatchItem batchItemsItem = batchItemsList.get(i);
                BatchItem cachebatchItems = (BatchItem) cache.get(batchItemsItem);
                if (cachebatchItems != null) {
                    batchItemsRealmList.add(cachebatchItems);
                } else {
                    batchItemsRealmList.add(com_digikala_dms_model_domain_BatchItemRealmProxy.copyOrUpdate(realm, batchItemsItem, update, cache));
                }
            }
        }
        realmObjectCopy.realmSet$SerialItemList(realmObjectSource.realmGet$SerialItemList());
        realmObjectCopy.realmSet$BasketId(realmObjectSource.realmGet$BasketId());
        realmObjectCopy.realmSet$rejectReasonId(realmObjectSource.realmGet$rejectReasonId());
        return shipmentItem;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, ShipmentItem shipmentItem, Map<RealmModel, Long> cache) {
        long rowIndex;
        long rowIndex2;
        long rowIndex3;
        if (!(shipmentItem instanceof RealmObjectProxy) || ((RealmObjectProxy) shipmentItem).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) shipmentItem).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(ShipmentItem.class);
            long tableNativePtr = table.getNativePtr();
            ShipmentItemColumnInfo columnInfo = (ShipmentItemColumnInfo) realm.getSchema().getColumnInfo(ShipmentItem.class);
            long rowIndex4 = OsObject.createRow(table);
            cache.put(shipmentItem, Long.valueOf(rowIndex4));
            String realmGet$OrderItemId = shipmentItem.realmGet$OrderItemId();
            if (realmGet$OrderItemId != null) {
                rowIndex = rowIndex4;
                Table.nativeSetString(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex4, realmGet$OrderItemId, false);
            } else {
                rowIndex = rowIndex4;
            }
            String realmGet$description = shipmentItem.realmGet$description();
            if (realmGet$description != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.descriptionIndex, rowIndex, realmGet$description, false);
            }
            String realmGet$brandName = shipmentItem.realmGet$brandName();
            if (realmGet$brandName != null) {
                Table.nativeSetString(tableNativePtr, columnInfo.brandNameIndex, rowIndex, realmGet$brandName, false);
            }
            long j = rowIndex;
            Table.nativeSetLong(tableNativePtr, columnInfo.totalCountIndex, j, shipmentItem.realmGet$totalCount(), false);
            Table.nativeSetLong(tableNativePtr, columnInfo.amountPerQuantityIndex, j, shipmentItem.realmGet$amountPerQuantity(), false);
            RealmList<BatchItem> batchItemsList = shipmentItem.realmGet$batchItems();
            if (batchItemsList != null) {
                rowIndex2 = rowIndex;
                OsList batchItemsOsList = new OsList(table.getUncheckedRow(rowIndex2), columnInfo.batchItemsIndex);
                for (BatchItem batchItemsItem : batchItemsList) {
                    Long cacheItemIndexbatchItems = cache.get(batchItemsItem);
                    if (cacheItemIndexbatchItems == null) {
                        cacheItemIndexbatchItems = Long.valueOf(com_digikala_dms_model_domain_BatchItemRealmProxy.insert(realm, batchItemsItem, cache));
                    }
                    batchItemsOsList.addRow(cacheItemIndexbatchItems.longValue());
                }
            } else {
                rowIndex2 = rowIndex;
            }
            RealmList<String> SerialItemListList = shipmentItem.realmGet$SerialItemList();
            if (SerialItemListList != null) {
                OsList SerialItemListOsList = new OsList(table.getUncheckedRow(rowIndex2), columnInfo.SerialItemListIndex);
                for (String SerialItemListItem : SerialItemListList) {
                    if (SerialItemListItem == null) {
                        SerialItemListOsList.addNull();
                    } else {
                        SerialItemListOsList.addString(SerialItemListItem);
                    }
                }
            }
            String realmGet$BasketId = shipmentItem.realmGet$BasketId();
            if (realmGet$BasketId != null) {
                rowIndex3 = rowIndex2;
                Table.nativeSetString(tableNativePtr, columnInfo.BasketIdIndex, rowIndex2, realmGet$BasketId, false);
            } else {
                rowIndex3 = rowIndex2;
            }
            Table.nativeSetLong(tableNativePtr, columnInfo.rejectReasonIdIndex, rowIndex3, shipmentItem.realmGet$rejectReasonId(), false);
            return rowIndex3;
        }
        return ((RealmObjectProxy) shipmentItem).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long rowIndex;
        long rowIndex2;
        long rowIndex3;
        Table table = realm.getTable(ShipmentItem.class);
        long tableNativePtr = table.getNativePtr();
        ShipmentItemColumnInfo columnInfo = (ShipmentItemColumnInfo) realm.getSchema().getColumnInfo(ShipmentItem.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (ShipmentItem) objects.next();
            if (!cache.containsKey(realmModel)) {
                if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                    cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                } else {
                    long rowIndex4 = OsObject.createRow(table);
                    cache.put(realmModel, Long.valueOf(rowIndex4));
                    String realmGet$OrderItemId = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$OrderItemId();
                    if (realmGet$OrderItemId != null) {
                        rowIndex = rowIndex4;
                        Table.nativeSetString(tableNativePtr, columnInfo.OrderItemIdIndex, rowIndex4, realmGet$OrderItemId, false);
                    } else {
                        rowIndex = rowIndex4;
                    }
                    String realmGet$description = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$description();
                    if (realmGet$description != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.descriptionIndex, rowIndex, realmGet$description, false);
                    }
                    String realmGet$brandName = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$brandName();
                    if (realmGet$brandName != null) {
                        Table.nativeSetString(tableNativePtr, columnInfo.brandNameIndex, rowIndex, realmGet$brandName, false);
                    }
                    long j = rowIndex;
                    Table.nativeSetLong(tableNativePtr, columnInfo.totalCountIndex, j, ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$totalCount(), false);
                    Table.nativeSetLong(tableNativePtr, columnInfo.amountPerQuantityIndex, j, ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$amountPerQuantity(), false);
                    RealmList<BatchItem> batchItemsList = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$batchItems();
                    if (batchItemsList != null) {
                        rowIndex2 = rowIndex;
                        OsList batchItemsOsList = new OsList(table.getUncheckedRow(rowIndex2), columnInfo.batchItemsIndex);
                        for (BatchItem batchItemsItem : batchItemsList) {
                            Long cacheItemIndexbatchItems = cache.get(batchItemsItem);
                            if (cacheItemIndexbatchItems == null) {
                                cacheItemIndexbatchItems = Long.valueOf(com_digikala_dms_model_domain_BatchItemRealmProxy.insert(realm, batchItemsItem, cache));
                            }
                            batchItemsOsList.addRow(cacheItemIndexbatchItems.longValue());
                        }
                    } else {
                        rowIndex2 = rowIndex;
                    }
                    RealmList<String> SerialItemListList = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$SerialItemList();
                    if (SerialItemListList != null) {
                        OsList SerialItemListOsList = new OsList(table.getUncheckedRow(rowIndex2), columnInfo.SerialItemListIndex);
                        for (String SerialItemListItem : SerialItemListList) {
                            if (SerialItemListItem == null) {
                                SerialItemListOsList.addNull();
                            } else {
                                SerialItemListOsList.addString(SerialItemListItem);
                            }
                        }
                    }
                    String realmGet$BasketId = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$BasketId();
                    if (realmGet$BasketId != null) {
                        rowIndex3 = rowIndex2;
                        Table.nativeSetString(tableNativePtr, columnInfo.BasketIdIndex, rowIndex2, realmGet$BasketId, false);
                    } else {
                        rowIndex3 = rowIndex2;
                    }
                    Table.nativeSetLong(tableNativePtr, columnInfo.rejectReasonIdIndex, rowIndex3, ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$rejectReasonId(), false);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, ShipmentItem shipmentItem, Map<RealmModel, Long> cache) {
        long rowIndex;
        Table table;
        long tableNativePtr;
        long rowIndex2;
        if (!(shipmentItem instanceof RealmObjectProxy) || ((RealmObjectProxy) shipmentItem).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) shipmentItem).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table2 = realm.getTable(ShipmentItem.class);
            long tableNativePtr2 = table2.getNativePtr();
            ShipmentItemColumnInfo columnInfo = (ShipmentItemColumnInfo) realm.getSchema().getColumnInfo(ShipmentItem.class);
            long rowIndex3 = OsObject.createRow(table2);
            cache.put(shipmentItem, Long.valueOf(rowIndex3));
            String realmGet$OrderItemId = shipmentItem.realmGet$OrderItemId();
            if (realmGet$OrderItemId != null) {
                rowIndex = rowIndex3;
                Table.nativeSetString(tableNativePtr2, columnInfo.OrderItemIdIndex, rowIndex3, realmGet$OrderItemId, false);
            } else {
                rowIndex = rowIndex3;
                Table.nativeSetNull(tableNativePtr2, columnInfo.OrderItemIdIndex, rowIndex, false);
            }
            String realmGet$description = shipmentItem.realmGet$description();
            if (realmGet$description != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.descriptionIndex, rowIndex, realmGet$description, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.descriptionIndex, rowIndex, false);
            }
            String realmGet$brandName = shipmentItem.realmGet$brandName();
            if (realmGet$brandName != null) {
                Table.nativeSetString(tableNativePtr2, columnInfo.brandNameIndex, rowIndex, realmGet$brandName, false);
            } else {
                Table.nativeSetNull(tableNativePtr2, columnInfo.brandNameIndex, rowIndex, false);
            }
            long j = rowIndex;
            Table.nativeSetLong(tableNativePtr2, columnInfo.totalCountIndex, j, shipmentItem.realmGet$totalCount(), false);
            Table.nativeSetLong(tableNativePtr2, columnInfo.amountPerQuantityIndex, j, shipmentItem.realmGet$amountPerQuantity(), false);
            long rowIndex4 = rowIndex;
            OsList batchItemsOsList = new OsList(table2.getUncheckedRow(rowIndex4), columnInfo.batchItemsIndex);
            RealmList<BatchItem> batchItemsList = shipmentItem.realmGet$batchItems();
            if (batchItemsList != null && batchItemsList.size() == batchItemsOsList.size()) {
                int i = 0;
                for (int objects = batchItemsList.size(); i < objects; objects = objects) {
                    BatchItem batchItemsItem = batchItemsList.get(i);
                    Long cacheItemIndexbatchItems = cache.get(batchItemsItem);
                    if (cacheItemIndexbatchItems == null) {
                        cacheItemIndexbatchItems = Long.valueOf(com_digikala_dms_model_domain_BatchItemRealmProxy.insertOrUpdate(realm, batchItemsItem, cache));
                    }
                    batchItemsOsList.setRow(i, cacheItemIndexbatchItems.longValue());
                    i++;
                    tableNativePtr2 = tableNativePtr2;
                    table2 = table2;
                }
                table = table2;
                tableNativePtr = tableNativePtr2;
            } else {
                table = table2;
                tableNativePtr = tableNativePtr2;
                batchItemsOsList.removeAll();
                if (batchItemsList != null) {
                    for (BatchItem batchItemsItem2 : batchItemsList) {
                        Long cacheItemIndexbatchItems2 = cache.get(batchItemsItem2);
                        if (cacheItemIndexbatchItems2 == null) {
                            cacheItemIndexbatchItems2 = Long.valueOf(com_digikala_dms_model_domain_BatchItemRealmProxy.insertOrUpdate(realm, batchItemsItem2, cache));
                        }
                        batchItemsOsList.addRow(cacheItemIndexbatchItems2.longValue());
                    }
                }
            }
            OsList SerialItemListOsList = new OsList(table.getUncheckedRow(rowIndex4), columnInfo.SerialItemListIndex);
            SerialItemListOsList.removeAll();
            RealmList<String> SerialItemListList = shipmentItem.realmGet$SerialItemList();
            if (SerialItemListList != null) {
                for (String SerialItemListItem : SerialItemListList) {
                    if (SerialItemListItem == null) {
                        SerialItemListOsList.addNull();
                    } else {
                        SerialItemListOsList.addString(SerialItemListItem);
                    }
                }
            }
            String realmGet$BasketId = shipmentItem.realmGet$BasketId();
            if (realmGet$BasketId != null) {
                rowIndex2 = rowIndex4;
                Table.nativeSetString(tableNativePtr, columnInfo.BasketIdIndex, rowIndex4, realmGet$BasketId, false);
            } else {
                rowIndex2 = rowIndex4;
                Table.nativeSetNull(tableNativePtr, columnInfo.BasketIdIndex, rowIndex2, false);
            }
            Table.nativeSetLong(tableNativePtr, columnInfo.rejectReasonIdIndex, rowIndex2, shipmentItem.realmGet$rejectReasonId(), false);
            return rowIndex2;
        }
        return ((RealmObjectProxy) shipmentItem).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long rowIndex;
        long tableNativePtr;
        ShipmentItemColumnInfo columnInfo;
        RealmModel realmModel;
        ShipmentItemColumnInfo columnInfo2;
        long rowIndex2;
        Table table = realm.getTable(ShipmentItem.class);
        long tableNativePtr2 = table.getNativePtr();
        ShipmentItemColumnInfo columnInfo3 = (ShipmentItemColumnInfo) realm.getSchema().getColumnInfo(ShipmentItem.class);
        while (objects.hasNext()) {
            RealmModel realmModel2 = (ShipmentItem) objects.next();
            if (cache.containsKey(realmModel2)) {
                tableNativePtr = tableNativePtr2;
                columnInfo2 = columnInfo3;
                realmModel = realmModel2;
            } else if ((realmModel2 instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel2).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel2).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel2, Long.valueOf(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex()));
                tableNativePtr = tableNativePtr2;
                columnInfo2 = columnInfo3;
                realmModel = realmModel2;
            } else {
                long rowIndex3 = OsObject.createRow(table);
                cache.put(realmModel2, Long.valueOf(rowIndex3));
                String realmGet$OrderItemId = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel2).realmGet$OrderItemId();
                if (realmGet$OrderItemId != null) {
                    rowIndex = rowIndex3;
                    Table.nativeSetString(tableNativePtr2, columnInfo3.OrderItemIdIndex, rowIndex3, realmGet$OrderItemId, false);
                } else {
                    rowIndex = rowIndex3;
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.OrderItemIdIndex, rowIndex, false);
                }
                String realmGet$description = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel2).realmGet$description();
                if (realmGet$description != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.descriptionIndex, rowIndex, realmGet$description, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.descriptionIndex, rowIndex, false);
                }
                String realmGet$brandName = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel2).realmGet$brandName();
                if (realmGet$brandName != null) {
                    Table.nativeSetString(tableNativePtr2, columnInfo3.brandNameIndex, rowIndex, realmGet$brandName, false);
                } else {
                    Table.nativeSetNull(tableNativePtr2, columnInfo3.brandNameIndex, rowIndex, false);
                }
                long j = rowIndex;
                Table.nativeSetLong(tableNativePtr2, columnInfo3.totalCountIndex, j, ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel2).realmGet$totalCount(), false);
                Table.nativeSetLong(tableNativePtr2, columnInfo3.amountPerQuantityIndex, j, ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel2).realmGet$amountPerQuantity(), false);
                long rowIndex4 = rowIndex;
                OsList batchItemsOsList = new OsList(table.getUncheckedRow(rowIndex4), columnInfo3.batchItemsIndex);
                RealmList<BatchItem> batchItemsList = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel2).realmGet$batchItems();
                if (batchItemsList != null && batchItemsList.size() == batchItemsOsList.size()) {
                    int objectCount = batchItemsList.size();
                    int i = 0;
                    while (i < objectCount) {
                        BatchItem batchItemsItem = batchItemsList.get(i);
                        Long cacheItemIndexbatchItems = cache.get(batchItemsItem);
                        if (cacheItemIndexbatchItems == null) {
                            cacheItemIndexbatchItems = Long.valueOf(com_digikala_dms_model_domain_BatchItemRealmProxy.insertOrUpdate(realm, batchItemsItem, cache));
                        }
                        long tableNativePtr3 = tableNativePtr2;
                        long tableNativePtr4 = i;
                        batchItemsOsList.setRow(tableNativePtr4, cacheItemIndexbatchItems.longValue());
                        i++;
                        tableNativePtr2 = tableNativePtr3;
                        columnInfo3 = columnInfo3;
                        realmModel2 = realmModel2;
                    }
                    tableNativePtr = tableNativePtr2;
                    columnInfo = columnInfo3;
                    realmModel = realmModel2;
                } else {
                    tableNativePtr = tableNativePtr2;
                    columnInfo = columnInfo3;
                    realmModel = realmModel2;
                    batchItemsOsList.removeAll();
                    if (batchItemsList != null) {
                        for (BatchItem batchItemsItem2 : batchItemsList) {
                            Long cacheItemIndexbatchItems2 = cache.get(batchItemsItem2);
                            if (cacheItemIndexbatchItems2 == null) {
                                cacheItemIndexbatchItems2 = Long.valueOf(com_digikala_dms_model_domain_BatchItemRealmProxy.insertOrUpdate(realm, batchItemsItem2, cache));
                            }
                            batchItemsOsList.addRow(cacheItemIndexbatchItems2.longValue());
                        }
                    }
                }
                columnInfo2 = columnInfo;
                OsList SerialItemListOsList = new OsList(table.getUncheckedRow(rowIndex4), columnInfo2.SerialItemListIndex);
                SerialItemListOsList.removeAll();
                RealmList<String> SerialItemListList = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$SerialItemList();
                if (SerialItemListList != null) {
                    for (String SerialItemListItem : SerialItemListList) {
                        if (SerialItemListItem == null) {
                            SerialItemListOsList.addNull();
                        } else {
                            SerialItemListOsList.addString(SerialItemListItem);
                        }
                    }
                }
                String realmGet$BasketId = ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$BasketId();
                if (realmGet$BasketId != null) {
                    rowIndex2 = rowIndex4;
                    Table.nativeSetString(tableNativePtr, columnInfo2.BasketIdIndex, rowIndex4, realmGet$BasketId, false);
                } else {
                    rowIndex2 = rowIndex4;
                    Table.nativeSetNull(tableNativePtr, columnInfo2.BasketIdIndex, rowIndex2, false);
                }
                Table.nativeSetLong(tableNativePtr, columnInfo2.rejectReasonIdIndex, rowIndex2, ((com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface) realmModel).realmGet$rejectReasonId(), false);
            }
            columnInfo3 = columnInfo2;
            tableNativePtr2 = tableNativePtr;
        }
    }

    public static ShipmentItem createDetachedCopy(ShipmentItem realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        ShipmentItem unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new ShipmentItem();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (ShipmentItem) cachedObject.object;
            }
            unmanagedObject = (ShipmentItem) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface unmanagedCopy = unmanagedObject;
        ShipmentItem realmSource = realmObject;
        unmanagedCopy.realmSet$OrderItemId(realmSource.realmGet$OrderItemId());
        unmanagedCopy.realmSet$description(realmSource.realmGet$description());
        unmanagedCopy.realmSet$brandName(realmSource.realmGet$brandName());
        unmanagedCopy.realmSet$totalCount(realmSource.realmGet$totalCount());
        unmanagedCopy.realmSet$amountPerQuantity(realmSource.realmGet$amountPerQuantity());
        if (currentDepth == maxDepth) {
            unmanagedCopy.realmSet$batchItems(null);
        } else {
            RealmList<BatchItem> managedbatchItemsList = realmSource.realmGet$batchItems();
            RealmList<BatchItem> unmanagedbatchItemsList = new RealmList<>();
            unmanagedCopy.realmSet$batchItems(unmanagedbatchItemsList);
            int nextDepth = currentDepth + 1;
            int size = managedbatchItemsList.size();
            for (int i = 0; i < size; i++) {
                BatchItem item = com_digikala_dms_model_domain_BatchItemRealmProxy.createDetachedCopy(managedbatchItemsList.get(i), nextDepth, maxDepth, cache);
                unmanagedbatchItemsList.add(item);
            }
        }
        unmanagedCopy.realmSet$SerialItemList(new RealmList<>());
        unmanagedCopy.realmGet$SerialItemList().addAll(realmSource.realmGet$SerialItemList());
        unmanagedCopy.realmSet$BasketId(realmSource.realmGet$BasketId());
        unmanagedCopy.realmSet$rejectReasonId(realmSource.realmGet$rejectReasonId());
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("ShipmentItem = proxy[");
        stringBuilder.append("{OrderItemId:");
        stringBuilder.append(realmGet$OrderItemId() != null ? realmGet$OrderItemId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{description:");
        stringBuilder.append(realmGet$description() != null ? realmGet$description() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{brandName:");
        stringBuilder.append(realmGet$brandName() != null ? realmGet$brandName() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{totalCount:");
        stringBuilder.append(realmGet$totalCount());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{amountPerQuantity:");
        stringBuilder.append(realmGet$amountPerQuantity());
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{batchItems:");
        stringBuilder.append("RealmList<BatchItem>[");
        stringBuilder.append(realmGet$batchItems().size());
        stringBuilder.append("]");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{SerialItemList:");
        stringBuilder.append("RealmList<String>[");
        stringBuilder.append(realmGet$SerialItemList().size());
        stringBuilder.append("]");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{BasketId:");
        stringBuilder.append(realmGet$BasketId() != null ? realmGet$BasketId() : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{rejectReasonId:");
        stringBuilder.append(realmGet$rejectReasonId());
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
        com_digikala_dms_model_domain_ShipmentItemRealmProxy aShipmentItem = (com_digikala_dms_model_domain_ShipmentItemRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aShipmentItem.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aShipmentItem.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aShipmentItem.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
