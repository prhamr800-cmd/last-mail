package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class Batch extends RealmObject implements com_digikala_dms_model_domain_BatchRealmProxyInterface {
    public static final String COLUMN_ID = "id";
    public static final int STATUS_CONFIRMED = 3;

    @SerializedName("Id")
    private String id;

    @SerializedName("Orders")
    private RealmList<Shipment> shipments;

    @SerializedName("Status")
    private int status;

    @Override // io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
    public String realmGet$id() {
        return this.id;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
    public RealmList realmGet$shipments() {
        return this.shipments;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
    public int realmGet$status() {
        return this.status;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
    public void realmSet$shipments(RealmList realmList) {
        this.shipments = realmList;
    }

    @Override // io.realm.com_digikala_dms_model_domain_BatchRealmProxyInterface
    public void realmSet$status(int i) {
        this.status = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Batch() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getId() {
        return realmGet$id();
    }

    public void setId(String id) {
        realmSet$id(id);
    }

    public int getStatus() {
        return realmGet$status();
    }

    public void setStatus(int status) {
        realmSet$status(status);
    }

    public RealmList<Shipment> getShipments() {
        return realmGet$shipments();
    }

    public void setShipments(RealmList<Shipment> shipments) {
        realmSet$shipments(shipments);
    }
}
