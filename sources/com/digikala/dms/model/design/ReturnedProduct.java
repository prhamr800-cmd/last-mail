package com.digikala.dms.model.design;

import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class ReturnedProduct extends RealmObject implements com_digikala_dms_model_design_ReturnedProductRealmProxyInterface {
    private String Count;
    private int ItemBatchId;
    private String OrderItemId;
    private String ReasonId;

    @Override // io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public String realmGet$Count() {
        return this.Count;
    }

    @Override // io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public int realmGet$ItemBatchId() {
        return this.ItemBatchId;
    }

    @Override // io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public String realmGet$OrderItemId() {
        return this.OrderItemId;
    }

    @Override // io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public String realmGet$ReasonId() {
        return this.ReasonId;
    }

    @Override // io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public void realmSet$Count(String str) {
        this.Count = str;
    }

    @Override // io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public void realmSet$ItemBatchId(int i) {
        this.ItemBatchId = i;
    }

    @Override // io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public void realmSet$OrderItemId(String str) {
        this.OrderItemId = str;
    }

    @Override // io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxyInterface
    public void realmSet$ReasonId(String str) {
        this.ReasonId = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ReturnedProduct() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ReturnedProduct(String orderItemId, String reasonId, String count, int itemBatchId) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$OrderItemId(orderItemId);
        realmSet$ReasonId(reasonId);
        realmSet$Count(count);
        realmSet$ItemBatchId(itemBatchId);
    }

    public String getOrderItemId() {
        return realmGet$OrderItemId();
    }

    public void setOrderItemId(String OrderItemId) {
        realmSet$OrderItemId(OrderItemId);
    }

    public String getReasonId() {
        return realmGet$ReasonId();
    }

    public void setReasonId(String reasonId) {
        realmSet$ReasonId(reasonId);
    }

    public String getCount() {
        return realmGet$Count();
    }

    public void setCount(String count) {
        realmSet$Count(count);
    }

    public int getItemBatchId() {
        return realmGet$ItemBatchId();
    }

    public void setItemBatchId(int itemBatchId) {
        realmSet$ItemBatchId(itemBatchId);
    }
}
