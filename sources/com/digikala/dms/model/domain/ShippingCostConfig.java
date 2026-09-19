package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class ShippingCostConfig extends RealmObject implements com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface {

    @SerializedName("ShippingCost")
    private int shippingCost;

    @SerializedName("Threshold")
    private int threshold;

    @Override // io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface
    public int realmGet$shippingCost() {
        return this.shippingCost;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface
    public int realmGet$threshold() {
        return this.threshold;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface
    public void realmSet$shippingCost(int i) {
        this.shippingCost = i;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface
    public void realmSet$threshold(int i) {
        this.threshold = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ShippingCostConfig() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public int getThreshold() {
        return realmGet$threshold();
    }

    public void setThreshold(int threshold) {
        realmSet$threshold(threshold);
    }

    public int getShippingCost() {
        return realmGet$shippingCost();
    }

    public void setShippingCost(int shippingCost) {
        realmSet$shippingCost(shippingCost);
    }
}
