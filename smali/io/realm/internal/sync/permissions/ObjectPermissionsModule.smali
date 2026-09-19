###### Class io.realm.internal.sync.permissions.ObjectPermissionsModule (io.realm.internal.sync.permissions.ObjectPermissionsModule)
.class public Lio/realm/internal/sync/permissions/ObjectPermissionsModule;
.super Ljava/lang/Object;
.source "ObjectPermissionsModule.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
    classes = {
        Lio/realm/sync/permissions/ClassPermissions;,
        Lio/realm/sync/permissions/Permission;,
        Lio/realm/sync/permissions/RealmPermissions;,
        Lio/realm/sync/permissions/Role;,
        Lio/realm/sync/permissions/PermissionUser;
    }
    library = true
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
