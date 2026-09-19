package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_design_SerialItemsRealmProxy;
import io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class ShipmentItem extends RealmObject implements com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface {
    private String BasketId;

    @SerializedName("OrderItemId")
    private String OrderItemId;

    @SerializedName(com_digikala_dms_model_design_SerialItemsRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
    private RealmList<String> SerialItemList;

    @SerializedName("AmountPerQuantity")
    private int amountPerQuantity;

    @SerializedName("BatchItems")
    private RealmList<BatchItem> batchItems;

    @SerializedName("BrandName")
    private String brandName;

    @SerializedName("Title")
    private String description;
    private int rejectReasonId;

    @SerializedName("TotalCount")
    private int totalCount;

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public String realmGet$BasketId() {
        return this.BasketId;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public String realmGet$OrderItemId() {
        return this.OrderItemId;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public RealmList realmGet$SerialItemList() {
        return this.SerialItemList;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public int realmGet$amountPerQuantity() {
        return this.amountPerQuantity;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public RealmList realmGet$batchItems() {
        return this.batchItems;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public String realmGet$brandName() {
        return this.brandName;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public String realmGet$description() {
        return this.description;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public int realmGet$rejectReasonId() {
        return this.rejectReasonId;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public int realmGet$totalCount() {
        return this.totalCount;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$BasketId(String str) {
        this.BasketId = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$OrderItemId(String str) {
        this.OrderItemId = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$SerialItemList(RealmList realmList) {
        this.SerialItemList = realmList;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$amountPerQuantity(int i) {
        this.amountPerQuantity = i;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$batchItems(RealmList realmList) {
        this.batchItems = realmList;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$brandName(String str) {
        this.brandName = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$description(String str) {
        this.description = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$rejectReasonId(int i) {
        this.rejectReasonId = i;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface
    public void realmSet$totalCount(int i) {
        this.totalCount = i;
    }

    public RealmList<BatchItem> getBatchItems() {
        return realmGet$batchItems();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ShipmentItem(String orderItemId, String description, int totalCount, int amountPerQuantity, RealmList<BatchItem> batchItems, RealmList<String> serialItemList, String basketId, int rejectReasonId) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$BasketId("");
        realmSet$OrderItemId(orderItemId);
        realmSet$description(description);
        realmSet$totalCount(totalCount);
        realmSet$amountPerQuantity(amountPerQuantity);
        realmSet$batchItems(batchItems);
        realmSet$SerialItemList(serialItemList);
        realmSet$BasketId(basketId);
        realmSet$rejectReasonId(rejectReasonId);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ShipmentItem() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$BasketId("");
    }

    public void setBatchItems(RealmList<BatchItem> batchItems) {
        realmSet$batchItems(batchItems);
    }

    public String getOrderItemId() {
        return realmGet$OrderItemId();
    }

    public void setOrderItemId(String orderItemId) {
        realmSet$OrderItemId(orderItemId);
    }

    public String getDescription() {
        return realmGet$description();
    }

    public void setDescription(String description) {
        realmSet$description(description);
    }

    public int getTotalCount() {
        return realmGet$totalCount();
    }

    public void setTotalCount(int totalCount) {
        realmSet$totalCount(totalCount);
    }

    public int getRejectReasonId() {
        return realmGet$rejectReasonId();
    }

    public void setRejectReasonId(int rejectReasonId) {
        realmSet$rejectReasonId(rejectReasonId);
    }

    public int getAmountPerQuantity() {
        return realmGet$amountPerQuantity();
    }

    public void setAmountPerQuantity(int amountPerQuantity) {
        realmSet$amountPerQuantity(amountPerQuantity);
    }

    public RealmList<String> getSerialItemList() {
        return realmGet$SerialItemList();
    }

    public void setSerialItemList(RealmList<String> serialItemList) {
        realmSet$SerialItemList(serialItemList);
    }

    public String getBasketId() {
        return realmGet$BasketId();
    }

    public void setBasketId(String basketId) {
        realmSet$BasketId(basketId);
    }

    public String getBrandName() {
        return realmGet$brandName();
    }

    public void setBrandName(String brandName) {
        realmSet$brandName(brandName);
    }
}
