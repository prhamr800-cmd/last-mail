package io.realm;

import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public interface io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface {
    Date realmGet$createdAt();

    String realmGet$id();

    String realmGet$realmUrl();

    Integer realmGet$statusCode();

    String realmGet$statusMessage();

    String realmGet$token();

    Date realmGet$updatedAt();

    void realmSet$createdAt(Date date);

    void realmSet$id(String str);

    void realmSet$realmUrl(String str);

    void realmSet$statusCode(Integer num);

    void realmSet$statusMessage(String str);

    void realmSet$token(String str);

    void realmSet$updatedAt(Date date);
}
