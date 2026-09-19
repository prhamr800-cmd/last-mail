###### Class io.realm.sync.permissions.RealmPermissions (io.realm.sync.permissions.RealmPermissions)
.class public Lio/realm/sync/permissions/RealmPermissions;
.super Lio/realm/RealmObject;
.source "RealmPermissions.java"

# interfaces
.implements Lio/realm/io_realm_sync_permissions_RealmPermissionsRealmProxyInterface;


# annotations
.annotation runtime Lio/realm/annotations/RealmClass;
    name = "__Realm"
.end annotation

.annotation build Lio/realm/internal/annotations/ObjectServer;
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation
.end field

.field private permissions:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 35
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/sync/permissions/RealmPermissions;->realmSet$id(I)V

    .line 37
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/sync/permissions/RealmPermissions;->realmSet$permissions(Lio/realm/RealmList;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getPermissions()Lio/realm/RealmList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/Permission;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lio/realm/sync/permissions/RealmPermissions;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()I
    .registers 2

    iget v0, p0, Lio/realm/sync/permissions/RealmPermissions;->id:I

    return v0
.end method

.method public realmGet$permissions()Lio/realm/RealmList;
    .registers 2

    iget-object v0, p0, Lio/realm/sync/permissions/RealmPermissions;->permissions:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmSet$id(I)V
    .registers 2

    iput p1, p0, Lio/realm/sync/permissions/RealmPermissions;->id:I

    return-void
.end method

.method public realmSet$permissions(Lio/realm/RealmList;)V
    .registers 2

    iput-object p1, p0, Lio/realm/sync/permissions/RealmPermissions;->permissions:Lio/realm/RealmList;

    return-void
.end method
