package io.realm;

import io.realm.sync.permissions.PermissionUser;

/* JADX INFO: loaded from: classes.dex */
public interface io_realm_sync_permissions_RoleRealmProxyInterface {
    RealmList<PermissionUser> realmGet$members();

    String realmGet$name();

    void realmSet$members(RealmList<PermissionUser> realmList);

    void realmSet$name(String str);
}
