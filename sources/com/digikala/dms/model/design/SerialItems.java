package com.digikala.dms.model.design;

import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class SerialItems extends RealmObject implements com_digikala_dms_model_design_SerialItemsRealmProxyInterface {
    private String BasketId;
    private int Count;
    private String ItemBatchId;
    private String OrderItemId;
    private String ReasonId;
    private String SerialItem;

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public String realmGet$BasketId() {
        return this.BasketId;
    }

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public int realmGet$Count() {
        return this.Count;
    }

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public String realmGet$ItemBatchId() {
        return this.ItemBatchId;
    }

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public String realmGet$OrderItemId() {
        return this.OrderItemId;
    }

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public String realmGet$ReasonId() {
        return this.ReasonId;
    }

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public String realmGet$SerialItem() {
        return this.SerialItem;
    }

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$BasketId(String str) {
        this.BasketId = str;
    }

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$Count(int i) {
        this.Count = i;
    }

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$ItemBatchId(String str) {
        this.ItemBatchId = str;
    }

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$OrderItemId(String str) {
        this.OrderItemId = str;
    }

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$ReasonId(String str) {
        this.ReasonId = str;
    }

    @Override // io.realm.com_digikala_dms_model_design_SerialItemsRealmProxyInterface
    public void realmSet$SerialItem(String str) {
        this.SerialItem = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SerialItems() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$SerialItem("");
        realmSet$ItemBatchId("");
        realmSet$BasketId("");
        realmSet$Count(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SerialItems(String mSerialItem, String mReasonId, String mItemBatchId, String orderItemId, int count, String basketId) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$SerialItem("");
        realmSet$ItemBatchId("");
        realmSet$BasketId("");
        realmSet$Count(0);
        realmSet$SerialItem(mSerialItem);
        realmSet$ReasonId(mReasonId);
        realmSet$ItemBatchId(mItemBatchId);
        realmSet$OrderItemId(orderItemId);
        realmSet$BasketId(basketId);
        realmSet$Count(count);
    }

    public String getSerialItem() {
        return realmGet$SerialItem();
    }

    public void setSerialItem(String serialItem) {
        realmSet$SerialItem(serialItem);
    }

    public String getReasonId() {
        return realmGet$ReasonId();
    }

    public void setReasonId(String reasonId) {
        realmSet$ReasonId(reasonId);
    }

    public String getItemBatchId() {
        return realmGet$ItemBatchId();
    }

    public void setItemBatchId(String itemBatchId) {
        realmSet$ItemBatchId(itemBatchId);
    }

    public String getOrderItemId() {
        return realmGet$OrderItemId();
    }

    public void setOrderItemId(String orderItemId) {
        realmSet$OrderItemId(orderItemId);
    }

    public int getCount() {
        return realmGet$Count();
    }

    public void setCount(int count) {
        realmSet$Count(count);
    }

    public String getBasketId() {
        return realmGet$BasketId();
    }

    public void setBasketId(String basketId) {
        realmSet$BasketId(basketId);
    }
}
