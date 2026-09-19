###### Class io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxyInterface (io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxyInterface)
.class public interface abstract Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;
.super Ljava/lang/Object;
.source "io_realm_sync_permissions_ClassPermissionsRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$name()Ljava/lang/String;
.end method

.method public abstract realmGet$permissions()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmSet$name(Ljava/lang/String;)V
.end method

.method public abstract realmSet$permissions(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/Permission;",
            ">;)V"
        }
    .end annotation
.end method
