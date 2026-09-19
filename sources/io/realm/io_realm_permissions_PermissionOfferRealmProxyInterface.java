package io.realm;

import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public interface io_realm_permissions_PermissionOfferRealmProxyInterface {
    Date realmGet$createdAt();

    Date realmGet$expiresAt();

    String realmGet$id();

    boolean realmGet$mayManage();

    boolean realmGet$mayRead();

    boolean realmGet$mayWrite();

    String realmGet$realmUrl();

    Integer realmGet$statusCode();

    String realmGet$statusMessage();

    String realmGet$token();

    Date realmGet$updatedAt();

    void realmSet$createdAt(Date date);

    void realmSet$expiresAt(Date date);

    void realmSet$id(String str);

    void realmSet$mayManage(boolean z);

    void realmSet$mayRead(boolean z);

    void realmSet$mayWrite(boolean z);

    void realmSet$realmUrl(String str);

    void realmSet$statusCode(Integer num);

    void realmSet$statusMessage(String str);

    void realmSet$token(String str);

    void realmSet$updatedAt(Date date);
}
