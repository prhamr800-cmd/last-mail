package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_CardTypeRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class CardType extends RealmObject implements com_digikala_dms_model_domain_CardTypeRealmProxyInterface {

    @SerializedName("CardTypeId")
    private String id;

    @SerializedName("Title")
    private String title;

    @Override // io.realm.com_digikala_dms_model_domain_CardTypeRealmProxyInterface
    public String realmGet$id() {
        return this.id;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CardTypeRealmProxyInterface
    public String realmGet$title() {
        return this.title;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CardTypeRealmProxyInterface
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_CardTypeRealmProxyInterface
    public void realmSet$title(String str) {
        this.title = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CardType() {
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

    public String getTitle() {
        return realmGet$title();
    }

    public void setTitle(String title) {
        realmSet$title(title);
    }
}
