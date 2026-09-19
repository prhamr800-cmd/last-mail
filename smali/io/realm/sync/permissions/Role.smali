###### Class io.realm.sync.permissions.Role (io.realm.sync.permissions.Role)
.class public Lio/realm/sync/permissions/Role;
.super Lio/realm/RealmObject;
.source "Role.java"

# interfaces
.implements Lio/realm/io_realm_sync_permissions_RoleRealmProxyInterface;


# annotations
.annotation runtime Lio/realm/annotations/RealmClass;
    name = "__Role"
.end annotation

.annotation build Lio/realm/internal/annotations/ObjectServer;
.end annotation


# instance fields
.field private members:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/PermissionUser;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation runtime Lio/realm/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 40
    :cond_d
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/sync/permissions/Role;->realmSet$members(Lio/realm/RealmList;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 40
    :cond_d
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/sync/permissions/Role;->realmSet$members(Lio/realm/RealmList;)V

    .line 52
    invoke-virtual {p0, p1}, Lio/realm/sync/permissions/Role;->realmSet$name(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public addMember(Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lio/realm/sync/permissions/Role;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 73
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 76
    invoke-virtual {p0}, Lio/realm/sync/permissions/Role;->getRealm()Lio/realm/Realm;

    move-result-object v0

    .line 77
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    .line 78
    .local v1, "user":Lio/realm/sync/permissions/PermissionUser;
    if-nez v1, :cond_2d

    .line 79
    const-class v2, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v2, p1}, Lio/realm/Realm;->createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    .line 81
    :cond_2d
    invoke-virtual {p0}, Lio/realm/sync/permissions/Role;->realmGet$members()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v0    # "realm":Lio/realm/Realm;
    .end local v1    # "user":Lio/realm/sync/permissions/PermissionUser;
    nop

    .line 86
    return-void

    .line 74
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty \'userId\' required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not add a member to a non managed Role"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMembers()Lio/realm/RealmList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/PermissionUser;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lio/realm/sync/permissions/Role;->realmGet$members()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 61
    invoke-virtual {p0}, Lio/realm/sync/permissions/Role;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMember(Ljava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lio/realm/sync/permissions/Role;->realmGet$members()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->where()Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public realmGet$members()Lio/realm/RealmList;
    .registers 2

    iget-object v0, p0, Lio/realm/sync/permissions/Role;->members:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/sync/permissions/Role;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$members(Lio/realm/RealmList;)V
    .registers 2

    iput-object p1, p0, Lio/realm/sync/permissions/Role;->members:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/sync/permissions/Role;->name:Ljava/lang/String;

    return-void
.end method

.method public removeMember(Ljava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lio/realm/sync/permissions/Role;->getRealm()Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/sync/permissions/PermissionUser;

    .line 97
    .local v0, "user":Lio/realm/sync/permissions/PermissionUser;
    if-eqz v0, :cond_21

    .line 98
    invoke-virtual {p0}, Lio/realm/sync/permissions/Role;->realmGet$members()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 100
    :cond_21
    const/4 v1, 0x0

    return v1
.end method
