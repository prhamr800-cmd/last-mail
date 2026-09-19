package io.realm;

import io.realm.sync.permissions.Permission;

/* JADX INFO: loaded from: classes.dex */
public interface io_realm_sync_permissions_RealmPermissionsRealmProxyInterface {
    int realmGet$id();

    RealmList<Permission> realmGet$permissions();

    void realmSet$id(int i);

    void realmSet$permissions(RealmList<Permission> realmList);
}
