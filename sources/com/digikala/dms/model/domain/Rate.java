package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_RateRealmProxy;
import io.realm.com_digikala_dms_model_domain_RateRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class Rate extends RealmObject implements com_digikala_dms_model_domain_RateRealmProxyInterface {

    @SerializedName("Delta")
    private double delta;

    @SerializedName(com_digikala_dms_model_domain_RateRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
    private double rate;

    @Override // io.realm.com_digikala_dms_model_domain_RateRealmProxyInterface
    public double realmGet$delta() {
        return this.delta;
    }

    @Override // io.realm.com_digikala_dms_model_domain_RateRealmProxyInterface
    public double realmGet$rate() {
        return this.rate;
    }

    @Override // io.realm.com_digikala_dms_model_domain_RateRealmProxyInterface
    public void realmSet$delta(double d) {
        this.delta = d;
    }

    @Override // io.realm.com_digikala_dms_model_domain_RateRealmProxyInterface
    public void realmSet$rate(double d) {
        this.rate = d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Rate() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public double getRate() {
        return realmGet$rate();
    }

    public void setRate(double rate) {
        realmSet$rate(rate);
    }

    public double getDelta() {
        return realmGet$delta();
    }

    public void setDelta(double delta) {
        realmSet$delta(delta);
    }
}
