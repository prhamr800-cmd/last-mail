package io.realm;

import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public interface io_realm_internal_permissions_PermissionChangeRealmProxyInterface {
    Date realmGet$createdAt();

    String realmGet$id();

    Boolean realmGet$mayManage();

    Boolean realmGet$mayRead();

    Boolean realmGet$mayWrite();

    String realmGet$metadataKey();

    String realmGet$metadataNameSpace();

    String realmGet$metadataValue();

    String realmGet$realmUrl();

    Integer realmGet$statusCode();

    String realmGet$statusMessage();

    Date realmGet$updatedAt();

    String realmGet$userId();

    void realmSet$createdAt(Date date);

    void realmSet$id(String str);

    void realmSet$mayManage(Boolean bool);

    void realmSet$mayRead(Boolean bool);

    void realmSet$mayWrite(Boolean bool);

    void realmSet$metadataKey(String str);

    void realmSet$metadataNameSpace(String str);

    void realmSet$metadataValue(String str);

    void realmSet$realmUrl(String str);

    void realmSet$statusCode(Integer num);

    void realmSet$statusMessage(String str);

    void realmSet$updatedAt(Date date);

    void realmSet$userId(String str);
}
