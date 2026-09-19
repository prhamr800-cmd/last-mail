package com.digikala.dms.model.domain;

import io.realm.RealmObject;
import io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;

/* JADX INFO: loaded from: classes2.dex */
public class ServerMessages extends RealmObject implements com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface {
    private long date;
    private String id;
    private String message;
    private boolean seen;
    private String title;

    @Override // io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public long realmGet$date() {
        return this.date;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public String realmGet$id() {
        return this.id;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public String realmGet$message() {
        return this.message;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public boolean realmGet$seen() {
        return this.seen;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public String realmGet$title() {
        return this.title;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public void realmSet$date(long j) {
        this.date = j;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public void realmSet$id(String str) {
        this.id = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public void realmSet$message(String str) {
        this.message = str;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public void realmSet$seen(boolean z) {
        this.seen = z;
    }

    @Override // io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface
    public void realmSet$title(String str) {
        this.title = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ServerMessages() {
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

    public String getMessage() {
        return realmGet$message();
    }

    public void setMessage(String message) {
        realmSet$message(message);
    }

    public long getDate() {
        return realmGet$date();
    }

    public void setDate(long date) {
        realmSet$date(date);
    }

    public boolean isSeen() {
        return realmGet$seen();
    }

    public void setSeen(boolean seen) {
        realmSet$seen(seen);
    }
}
