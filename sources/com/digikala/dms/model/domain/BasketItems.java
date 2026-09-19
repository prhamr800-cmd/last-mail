package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class BasketItems extends RealmObject implements com_digikala_dms_model_domain_BasketItemsRealmProxyInterface {

    @SerializedName("Id")
    private String basketId;

    @SerializedName("OrderItems")
    private RealmList<ShipmentItem> orderItems;

    @Override // io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxyInterface
    public String realmGet$basketId() {
        return this.basketId;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxyInterface
    public RealmList realmGet$orderItems() {
        return this.orderItems;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxyInterface
    public void realmSet$basketId(String str) {
        this.basketId = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxyInterface
    public void realmSet$orderItems(RealmList realmList) {
        this.orderItems = realmList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BasketItems() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getBasketId() {
        return realmGet$basketId();
    }

    public void setBasketId(String basketId) {
        realmSet$basketId(basketId);
    }

    public RealmList<ShipmentItem> getOrderItems() {
        return realmGet$orderItems();
    }

    public void setOrderItems(RealmList<ShipmentItem> orderItems) {
        realmSet$orderItems(orderItems);
    }
}
