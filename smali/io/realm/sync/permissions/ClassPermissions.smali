###### Class io.realm.sync.permissions.ClassPermissions (io.realm.sync.permissions.ClassPermissions)
.class public Lio/realm/sync/permissions/ClassPermissions;
.super Lio/realm/RealmObject;
.source "ClassPermissions.java"

# interfaces
.implements Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;


# annotations
.annotation runtime Lio/realm/annotations/RealmClass;
    name = "__Class"
.end annotation

.annotation build Lio/realm/internal/annotations/ObjectServer;
.end annotation


# instance fields
.field modelClassRef:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/realm/annotations/Ignore;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation

    .annotation runtime Lio/realm/annotations/Required;
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

    .line 53
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 48
    :cond_d
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/sync/permissions/ClassPermissions;->realmSet$permissions(Lio/realm/RealmList;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 48
    :cond_d
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lio/realm/sync/permissions/ClassPermissions;->realmSet$permissions(Lio/realm/RealmList;)V

    .line 64
    if-eqz p1, :cond_21

    .line 67
    iput-object p1, p0, Lio/realm/sync/permissions/ClassPermissions;->modelClassRef:Ljava/lang/Class;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/sync/permissions/ClassPermissions;->realmSet$name(Ljava/lang/String;)V

    .line 69
    return-void

    .line 65
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'clazz\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 79
    invoke-virtual {p0}, Lio/realm/sync/permissions/ClassPermissions;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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

    .line 90
    invoke-virtual {p0}, Lio/realm/sync/permissions/ClassPermissions;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/realm/sync/permissions/ClassPermissions;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$permissions()Lio/realm/RealmList;
    .registers 2

    iget-object v0, p0, Lio/realm/sync/permissions/ClassPermissions;->permissions:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/realm/sync/permissions/ClassPermissions;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$permissions(Lio/realm/RealmList;)V
    .registers 2

    iput-object p1, p0, Lio/realm/sync/permissions/ClassPermissions;->permissions:Lio/realm/RealmList;

    return-void
.end method
