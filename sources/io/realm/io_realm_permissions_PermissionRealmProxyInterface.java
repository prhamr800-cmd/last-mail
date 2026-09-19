package io.realm;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public interface io_realm_permissions_PermissionRealmProxyInterface {
    boolean realmGet$mayManage();

    boolean realmGet$mayRead();

    boolean realmGet$mayWrite();

    String realmGet$path();

    Date realmGet$updatedAt();

    String realmGet$userId();

    void realmSet$mayManage(boolean z);

    void realmSet$mayRead(boolean z);

    void realmSet$mayWrite(boolean z);

    void realmSet$path(String str);

    void realmSet$updatedAt(Date date);

    void realmSet$userId(String str);
}
