###### Class io.realm.io_realm_sync_permissions_RealmPermissionsRealmProxyInterface (io.realm.io_realm_sync_permissions_RealmPermissionsRealmProxyInterface)
.class public interface abstract Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxyInterface;
.super Ljava/lang/Object;
.source "io_realm_sync_permissions_RealmPermissionsRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$id()I
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

.method public abstract realmSet$id(I)V
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
