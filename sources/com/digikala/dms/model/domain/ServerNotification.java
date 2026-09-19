package com.digikala.dms.model.domain;

import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class ServerNotification extends RealmObject implements com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface {
    private String id;
    private String status;

    @Override // io.realm.com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface
    public String realmGet$id() {
        return this.id;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface
    public String realmGet$status() {
        return this.status;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface
    public void realmSet$status(String str) {
        this.status = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ServerNotification() {
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

    public String getStatus() {
        return realmGet$status();
    }

    public void setStatus(String status) {
        realmSet$status(status);
    }
}
