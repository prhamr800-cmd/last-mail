package io.realm;

import io.realm.sync.permissions.Role;

/* JADX INFO: loaded from: classes.dex */
public interface io_realm_sync_permissions_PermissionRealmProxyInterface {
    boolean realmGet$canCreate();

    boolean realmGet$canDelete();

    boolean realmGet$canModifySchema();

    boolean realmGet$canQuery();

    boolean realmGet$canRead();

    boolean realmGet$canSetPermissions();

    boolean realmGet$canUpdate();

    Role realmGet$role();

    void realmSet$canCreate(boolean z);

    void realmSet$canDelete(boolean z);

    void realmSet$canModifySchema(boolean z);

    void realmSet$canQuery(boolean z);

    void realmSet$canRead(boolean z);

    void realmSet$canSetPermissions(boolean z);

    void realmSet$canUpdate(boolean z);

    void realmSet$role(Role role);
}
