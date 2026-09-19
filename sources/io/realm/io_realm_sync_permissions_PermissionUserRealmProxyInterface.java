package io.realm;

import io.realm.sync.permissions.Role;

/* JADX INFO: loaded from: classes.dex */
public interface io_realm_sync_permissions_PermissionUserRealmProxyInterface {
    String realmGet$id();

    Role realmGet$role();

    RealmResults<Role> realmGet$roles();

    void realmSet$id(String str);

    void realmSet$role(Role role);
}
