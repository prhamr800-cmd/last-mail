package io.realm;

import io.realm.sync.permissions.Permission;

/* JADX INFO: loaded from: classes.dex */
public interface io_realm_sync_permissions_ClassPermissionsRealmProxyInterface {
    String realmGet$name();

    RealmList<Permission> realmGet$permissions();

    void realmSet$name(String str);

    void realmSet$permissions(RealmList<Permission> realmList);
}
