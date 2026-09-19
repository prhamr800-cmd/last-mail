###### Class io.realm.sync.permissions.Permission (io.realm.sync.permissions.Permission)
.class public Lio/realm/sync/permissions/Permission;
.super Lio/realm/RealmObject;
.source "Permission.java"

# interfaces
.implements Lio/realm/io_realm_sync_permissions_PermissionRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/sync/permissions/Permission$Builder;
    }
.end annotation

.annotation runtime Lio/realm/annotations/RealmClass;
    name = "__Permission"
.end annotation

.annotation build Lio/realm/internal/annotations/ObjectServer;
.end annotation


# instance fields
.field private canCreate:Z

.field private canDelete:Z

.field private canModifySchema:Z

.field private canQuery:Z

.field private canRead:Z

.field private canSetPermissions:Z

.field private canUpdate:Z

.field private role:Lio/realm/sync/permissions/Role;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 310
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 312
    :cond_d
    return-void
.end method

.method public constructor <init>(Lio/realm/sync/permissions/Role;)V
    .registers 3
    .param p1, "role"    # Lio/realm/sync/permissions/Role;

    .line 317
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 318
    :cond_d
    invoke-virtual {p0, p1}, Lio/realm/sync/permissions/Permission;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    .line 319
    return-void
.end method

.method private constructor <init>(Lio/realm/sync/permissions/Role;ZZZZZZZ)V
    .registers 9
    .param p1, "role"    # Lio/realm/sync/permissions/Role;
    .param p2, "canRead"    # Z
    .param p3, "canUpdate"    # Z
    .param p4, "canDelete"    # Z
    .param p5, "canSetPermissions"    # Z
    .param p6, "canQuery"    # Z
    .param p7, "canCreate"    # Z
    .param p8, "canModifySchema"    # Z

    .line 324
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    .line 325
    invoke-virtual {p0, p1}, Lio/realm/sync/permissions/Permission;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    .line 326
    invoke-virtual {p0, p2}, Lio/realm/sync/permissions/Permission;->realmSet$canRead(Z)V

    .line 327
    invoke-virtual {p0, p3}, Lio/realm/sync/permissions/Permission;->realmSet$canUpdate(Z)V

    .line 328
    invoke-virtual {p0, p4}, Lio/realm/sync/permissions/Permission;->realmSet$canDelete(Z)V

    .line 329
    invoke-virtual {p0, p5}, Lio/realm/sync/permissions/Permission;->realmSet$canSetPermissions(Z)V

    .line 330
    invoke-virtual {p0, p6}, Lio/realm/sync/permissions/Permission;->realmSet$canQuery(Z)V

    .line 331
    invoke-virtual {p0, p7}, Lio/realm/sync/permissions/Permission;->realmSet$canCreate(Z)V

    .line 332
    invoke-virtual {p0, p8}, Lio/realm/sync/permissions/Permission;->realmSet$canModifySchema(Z)V

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Lio/realm/sync/permissions/Role;ZZZZZZZLio/realm/sync/permissions/Permission$1;)V
    .registers 11
    .param p1, "x0"    # Lio/realm/sync/permissions/Role;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Lio/realm/sync/permissions/Permission$1;

    .line 44
    invoke-direct/range {p0 .. p8}, Lio/realm/sync/permissions/Permission;-><init>(Lio/realm/sync/permissions/Role;ZZZZZZZ)V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_d
    return-void
.end method


# virtual methods
.method public canCreate()Z
    .registers 2

    .line 515
    invoke-virtual {p0}, Lio/realm/sync/permissions/Permission;->realmGet$canCreate()Z

    move-result v0

    return v0
.end method

.method public canDelete()Z
    .registers 2

    .line 417
    invoke-virtual {p0}, Lio/realm/sync/permissions/Permission;->realmGet$canDelete()Z

    move-result v0

    return v0
.end method

.method public canModifySchema()Z
    .registers 2

    .line 547
    invoke-virtual {p0}, Lio/realm/sync/permissions/Permission;->realmGet$canModifySchema()Z

    move-result v0

    return v0
.end method

.method public canQuery()Z
    .registers 2

    .line 482
    invoke-virtual {p0}, Lio/realm/sync/permissions/Permission;->realmGet$canQuery()Z

    move-result v0

    return v0
.end method

.method public canRead()Z
    .registers 2

    .line 348
    invoke-virtual {p0}, Lio/realm/sync/permissions/Permission;->realmGet$canRead()Z

    move-result v0

    return v0
.end method

.method public canSetPermissions()Z
    .registers 2

    .line 448
    invoke-virtual {p0}, Lio/realm/sync/permissions/Permission;->realmGet$canSetPermissions()Z

    move-result v0

    return v0
.end method

.method public canUpdate()Z
    .registers 2

    .line 383
    invoke-virtual {p0}, Lio/realm/sync/permissions/Permission;->realmGet$canUpdate()Z

    move-result v0

    return v0
.end method

.method public getRole()Lio/realm/sync/permissions/Role;
    .registers 2

    .line 341
    invoke-virtual {p0}, Lio/realm/sync/permissions/Permission;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$canCreate()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canCreate:Z

    return v0
.end method

.method public realmGet$canDelete()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canDelete:Z

    return v0
.end method

.method public realmGet$canModifySchema()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canModifySchema:Z

    return v0
.end method

.method public realmGet$canQuery()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canQuery:Z

    return v0
.end method

.method public realmGet$canRead()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canRead:Z

    return v0
.end method

.method public realmGet$canSetPermissions()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canSetPermissions:Z

    return v0
.end method

.method public realmGet$canUpdate()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/sync/permissions/Permission;->canUpdate:Z

    return v0
.end method

.method public realmGet$role()Lio/realm/sync/permissions/Role;
    .registers 2

    iget-object v0, p0, Lio/realm/sync/permissions/Permission;->role:Lio/realm/sync/permissions/Role;

    return-object v0
.end method

.method public realmSet$canCreate(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canCreate:Z

    return-void
.end method

.method public realmSet$canDelete(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canDelete:Z

    return-void
.end method

.method public realmSet$canModifySchema(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canModifySchema:Z

    return-void
.end method

.method public realmSet$canQuery(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canQuery:Z

    return-void
.end method

.method public realmSet$canRead(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canRead:Z

    return-void
.end method

.method public realmSet$canSetPermissions(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canSetPermissions:Z

    return-void
.end method

.method public realmSet$canUpdate(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission;->canUpdate:Z

    return-void
.end method

.method public realmSet$role(Lio/realm/sync/permissions/Role;)V
    .registers 2

    iput-object p1, p0, Lio/realm/sync/permissions/Permission;->role:Lio/realm/sync/permissions/Role;

    return-void
.end method

.method public setCanCreate(Z)V
    .registers 2
    .param p1, "canCreate"    # Z

    .line 539
    invoke-virtual {p0, p1}, Lio/realm/sync/permissions/Permission;->realmSet$canCreate(Z)V

    .line 540
    return-void
.end method

.method public setCanDelete(Z)V
    .registers 2
    .param p1, "canDelete"    # Z

    .line 441
    invoke-virtual {p0, p1}, Lio/realm/sync/permissions/Permission;->realmSet$canDelete(Z)V

    .line 442
    return-void
.end method

.method public setCanModifySchema(Z)V
    .registers 2
    .param p1, "canModifySchema"    # Z

    .line 571
    invoke-virtual {p0, p1}, Lio/realm/sync/permissions/Permission;->realmSet$canModifySchema(Z)V

    .line 572
    return-void
.end method

.method public setCanQuery(Z)V
    .registers 2
    .param p1, "canQuery"    # Z

    .line 508
    invoke-virtual {p0, p1}, Lio/realm/sync/permissions/Permission;->realmSet$canQuery(Z)V

    .line 509
    return-void
.end method

.method public setCanRead(Z)V
    .registers 2
    .param p1, "canRead"    # Z

    .line 376
    invoke-virtual {p0, p1}, Lio/realm/sync/permissions/Permission;->realmSet$canRead(Z)V

    .line 377
    return-void
.end method

.method public setCanSetPermissions(Z)V
    .registers 2
    .param p1, "canSetPermissions"    # Z

    .line 475
    invoke-virtual {p0, p1}, Lio/realm/sync/permissions/Permission;->realmSet$canSetPermissions(Z)V

    .line 476
    return-void
.end method

.method public setCanUpdate(Z)V
    .registers 2
    .param p1, "canUpdate"    # Z

    .line 410
    invoke-virtual {p0, p1}, Lio/realm/sync/permissions/Permission;->realmSet$canUpdate(Z)V

    .line 411
    return-void
.end method

###### Class io.realm.sync.permissions.Permission.AnonymousClass1 (io.realm.sync.permissions.Permission$1)
.class synthetic Lio/realm/sync/permissions/Permission$1;
.super Ljava/lang/Object;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/sync/permissions/Permission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.realm.sync.permissions.Permission.Builder (io.realm.sync.permissions.Permission$Builder)
.class public Lio/realm/sync/permissions/Permission$Builder;
.super Ljava/lang/Object;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/sync/permissions/Permission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private canCreate:Z

.field private canDelete:Z

.field private canModifySchema:Z

.field private canQuery:Z

.field private canRead:Z

.field private canSetPermissions:Z

.field private canUpdate:Z

.field private role:Lio/realm/sync/permissions/Role;


# direct methods
.method public constructor <init>(Lio/realm/sync/permissions/Role;)V
    .registers 3
    .param p1, "role"    # Lio/realm/sync/permissions/Role;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canRead:Z

    .line 52
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canUpdate:Z

    .line 53
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canDelete:Z

    .line 54
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canSetPermissions:Z

    .line 55
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canQuery:Z

    .line 56
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canCreate:Z

    .line 57
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canModifySchema:Z

    .line 65
    iput-object p1, p0, Lio/realm/sync/permissions/Permission$Builder;->role:Lio/realm/sync/permissions/Role;

    .line 66
    return-void
.end method


# virtual methods
.method public allPrivileges()Lio/realm/sync/permissions/Permission$Builder;
    .registers 2

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canRead:Z

    .line 73
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canUpdate:Z

    .line 74
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canDelete:Z

    .line 75
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canSetPermissions:Z

    .line 76
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canQuery:Z

    .line 77
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canCreate:Z

    .line 78
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canModifySchema:Z

    .line 79
    return-object p0
.end method

.method public build()Lio/realm/sync/permissions/Permission;
    .registers 12

    .line 288
    new-instance v10, Lio/realm/sync/permissions/Permission;

    iget-object v1, p0, Lio/realm/sync/permissions/Permission$Builder;->role:Lio/realm/sync/permissions/Role;

    iget-boolean v2, p0, Lio/realm/sync/permissions/Permission$Builder;->canRead:Z

    iget-boolean v3, p0, Lio/realm/sync/permissions/Permission$Builder;->canUpdate:Z

    iget-boolean v4, p0, Lio/realm/sync/permissions/Permission$Builder;->canDelete:Z

    iget-boolean v5, p0, Lio/realm/sync/permissions/Permission$Builder;->canSetPermissions:Z

    iget-boolean v6, p0, Lio/realm/sync/permissions/Permission$Builder;->canQuery:Z

    iget-boolean v7, p0, Lio/realm/sync/permissions/Permission$Builder;->canCreate:Z

    iget-boolean v8, p0, Lio/realm/sync/permissions/Permission$Builder;->canModifySchema:Z

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/realm/sync/permissions/Permission;-><init>(Lio/realm/sync/permissions/Role;ZZZZZZZLio/realm/sync/permissions/Permission$1;)V

    return-object v10
.end method

.method public canCreate(Z)Lio/realm/sync/permissions/Permission$Builder;
    .registers 2
    .param p1, "canCreate"    # Z

    .line 255
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission$Builder;->canCreate:Z

    .line 256
    return-object p0
.end method

.method public canDelete(Z)Lio/realm/sync/permissions/Permission$Builder;
    .registers 2
    .param p1, "canDelete"    # Z

    .line 174
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission$Builder;->canDelete:Z

    .line 175
    return-object p0
.end method

.method public canModifySchema(Z)Lio/realm/sync/permissions/Permission$Builder;
    .registers 2
    .param p1, "canModifySchema"    # Z

    .line 280
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission$Builder;->canModifySchema:Z

    .line 281
    return-object p0
.end method

.method public canQuery(Z)Lio/realm/sync/permissions/Permission$Builder;
    .registers 2
    .param p1, "canQuery"    # Z

    .line 229
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission$Builder;->canQuery:Z

    .line 230
    return-object p0
.end method

.method public canRead(Z)Lio/realm/sync/permissions/Permission$Builder;
    .registers 2
    .param p1, "canRead"    # Z

    .line 121
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission$Builder;->canRead:Z

    .line 122
    return-object p0
.end method

.method public canSetPermissions(Z)Lio/realm/sync/permissions/Permission$Builder;
    .registers 2
    .param p1, "canSetPermissions"    # Z

    .line 202
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission$Builder;->canSetPermissions:Z

    .line 203
    return-object p0
.end method

.method public canUpdate(Z)Lio/realm/sync/permissions/Permission$Builder;
    .registers 2
    .param p1, "canUpdate"    # Z

    .line 149
    iput-boolean p1, p0, Lio/realm/sync/permissions/Permission$Builder;->canUpdate:Z

    .line 150
    return-object p0
.end method

.method public noPrivileges()Lio/realm/sync/permissions/Permission$Builder;
    .registers 2

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canRead:Z

    .line 87
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canUpdate:Z

    .line 88
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canDelete:Z

    .line 89
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canSetPermissions:Z

    .line 90
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canQuery:Z

    .line 91
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canCreate:Z

    .line 92
    iput-boolean v0, p0, Lio/realm/sync/permissions/Permission$Builder;->canModifySchema:Z

    .line 93
    return-object p0
.end method
