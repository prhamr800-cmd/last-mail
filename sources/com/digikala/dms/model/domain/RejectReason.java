package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class RejectReason extends RealmObject implements com_digikala_dms_model_domain_RejectReasonRealmProxyInterface {

    @SerializedName("Id")
    private String id;

    @SerializedName("Title")
    private String title;

    @SerializedName("Type")
    private String type;

    @Override // io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
    public String realmGet$id() {
        return this.id;
    }

    @Override // io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
    public String realmGet$title() {
        return this.title;
    }

    @Override // io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
    public String realmGet$type() {
        return this.type;
    }

    @Override // io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
    public void realmSet$title(String str) {
        this.title = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxyInterface
    public void realmSet$type(String str) {
        this.type = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RejectReason() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RejectReason(String title, String id) {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$title(title);
        realmSet$id(id);
    }

    public String getTitle() {
        return realmGet$title();
    }

    public void setTitle(String title) {
        realmSet$title(title);
    }

    public String getId() {
        return realmGet$id();
    }

    public void setId(String id) {
        realmSet$id(id);
    }

    public String getType() {
        return realmGet$type();
    }

    public void setType(String type) {
        realmSet$type(type);
    }
}
