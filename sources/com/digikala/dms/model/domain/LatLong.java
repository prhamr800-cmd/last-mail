package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_LatLongRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class LatLong extends RealmObject implements com_digikala_dms_model_domain_LatLongRealmProxyInterface {

    @SerializedName("Latitude")
    private double latitude;

    @SerializedName("Longitude")
    private double longitude;

    @Override // io.realm.com_digikala_dms_model_domain_LatLongRealmProxyInterface
    public double realmGet$latitude() {
        return this.latitude;
    }

    @Override // io.realm.com_digikala_dms_model_domain_LatLongRealmProxyInterface
    public double realmGet$longitude() {
        return this.longitude;
    }

    @Override // io.realm.com_digikala_dms_model_domain_LatLongRealmProxyInterface
    public void realmSet$latitude(double d) {
        this.latitude = d;
    }

    @Override // io.realm.com_digikala_dms_model_domain_LatLongRealmProxyInterface
    public void realmSet$longitude(double d) {
        this.longitude = d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LatLong() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LatLong(double latitude, double longitude) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$latitude(latitude);
        realmSet$longitude(longitude);
    }

    public double getLatitude() {
        return realmGet$latitude();
    }

    public void setLatitude(double latitude) {
        realmSet$latitude(latitude);
    }

    public double getLongitude() {
        return realmGet$longitude();
    }

    public void setLongitude(double longitude) {
        realmSet$longitude(longitude);
    }
}
