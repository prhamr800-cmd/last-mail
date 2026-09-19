###### Class io.realm.io_realm_sync_permissions_PermissionUserRealmProxyInterface (io.realm.io_realm_sync_permissions_PermissionUserRealmProxyInterface)
.class public interface abstract Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;
.super Ljava/lang/Object;
.source "io_realm_sync_permissions_PermissionUserRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$id()Ljava/lang/String;
.end method

.method public abstract realmGet$role()Lio/realm/sync/permissions/Role;
.end method

.method public abstract realmGet$roles()Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lio/realm/sync/permissions/Role;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmSet$id(Ljava/lang/String;)V
.end method

.method public abstract realmSet$role(Lio/realm/sync/permissions/Role;)V
.end method
