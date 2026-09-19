###### Class io.realm.io_realm_sync_permissions_RoleRealmProxyInterface (io.realm.io_realm_sync_permissions_RoleRealmProxyInterface)
.class public interface abstract Lio/realm/io_realm_sync_permissions_RoleRealmProxyInterface;
.super Ljava/lang/Object;
.source "io_realm_sync_permissions_RoleRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$members()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/PermissionUser;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$name()Ljava/lang/String;
.end method

.method public abstract realmSet$members(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/PermissionUser;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$name(Ljava/lang/String;)V
.end method
