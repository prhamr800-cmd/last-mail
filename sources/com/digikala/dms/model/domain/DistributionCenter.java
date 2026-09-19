package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;
import io.realm.com_digikala_dms_model_domain_LatLongRealmProxy;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class DistributionCenter extends RealmObject implements com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface {

    @SerializedName("Id")
    private int id;

    @SerializedName(com_digikala_dms_model_domain_LatLongRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
    private LatLong latLong;

    @SerializedName("ManagerName")
    private String managerName;

    @SerializedName("Title")
    private String title;

    @Override // io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public int realmGet$id() {
        return this.id;
    }

    @Override // io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public LatLong realmGet$latLong() {
        return this.latLong;
    }

    @Override // io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public String realmGet$managerName() {
        return this.managerName;
    }

    @Override // io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public String realmGet$title() {
        return this.title;
    }

    @Override // io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public void realmSet$id(int i) {
        this.id = i;
    }

    @Override // io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public void realmSet$latLong(LatLong latLong) {
        this.latLong = latLong;
    }

    @Override // io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public void realmSet$managerName(String str) {
        this.managerName = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface
    public void realmSet$title(String str) {
        this.title = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DistributionCenter() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getTitle() {
        return realmGet$title();
    }

    public void setTitle(String title) {
        realmSet$title(title);
    }

    public String getManagerName() {
        return realmGet$managerName();
    }

    public void setManagerName(String managerName) {
        realmSet$managerName(managerName);
    }

    public LatLong getLatLong() {
        return realmGet$latLong();
    }

    public void setLatLong(LatLong latLong) {
        realmSet$latLong(latLong);
    }

    public int getId() {
        return realmGet$id();
    }

    public void setId(int id) {
        realmSet$id(id);
    }
}
