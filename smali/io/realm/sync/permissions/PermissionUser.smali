###### Class io.realm.sync.permissions.PermissionUser (io.realm.sync.permissions.PermissionUser)
.class public Lio/realm/sync/permissions/PermissionUser;
.super Lio/realm/RealmObject;
.source "PermissionUser.java"

# interfaces
.implements Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;


# annotations
.annotation runtime Lio/realm/annotations/RealmClass;
    name = "__User"
.end annotation

.annotation build Lio/realm/internal/annotations/ObjectServer;
.end annotation


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field

.field private role:Lio/realm/sync/permissions/Role;

.field final roles:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/sync/permissions/Role;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/realm/annotations/LinkingObjects;
        value = "members"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 44
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/sync/permissions/PermissionUser;->realmSet$roles(Lio/realm/RealmResults;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 44
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/sync/permissions/PermissionUser;->realmSet$roles(Lio/realm/RealmResults;)V

    .line 57
    invoke-virtual {p0, p1}, Lio/realm/sync/permissions/PermissionUser;->realmSet$id(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lio/realm/sync/permissions/PermissionUser;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateRole()Lio/realm/sync/permissions/Role;
    .registers 2

    .line 85
    invoke-virtual {p0}, Lio/realm/sync/permissions/PermissionUser;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v0

    return-object v0
.end method

.method public getRoles()Lio/realm/RealmResults;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lio/realm/sync/permissions/Role;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 75
    invoke-virtual {p0}, Lio/realm/sync/permissions/PermissionUser;->realmGet$roles()Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/sync/permissions/PermissionUser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$role()Lio/realm/sync/permissions/Role;
    .registers 2

    iget-object v0, p0, Lio/realm/sync/permissions/PermissionUser;->role:Lio/realm/sync/permissions/Role;

    return-object v0
.end method

.method public realmGet$roles()Lio/realm/RealmResults;
    .registers 2

    iget-object v0, p0, Lio/realm/sync/permissions/PermissionUser;->roles:Lio/realm/RealmResults;

    return-object v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/sync/permissions/PermissionUser;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$role(Lio/realm/sync/permissions/Role;)V
    .registers 2

    iput-object p1, p0, Lio/realm/sync/permissions/PermissionUser;->role:Lio/realm/sync/permissions/Role;

    return-void
.end method

.method public realmSet$roles(Lio/realm/RealmResults;)V
    .registers 2

    iput-object p1, p0, Lio/realm/sync/permissions/PermissionUser;->roles:Lio/realm/RealmResults;

    return-void
.end method
