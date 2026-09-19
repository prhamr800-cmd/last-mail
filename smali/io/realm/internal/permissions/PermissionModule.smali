###### Class io.realm.internal.permissions.PermissionModule (io.realm.internal.permissions.PermissionModule)
.class public Lio/realm/internal/permissions/PermissionModule;
.super Ljava/lang/Object;
.source "PermissionModule.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
    classes = {
        Lio/realm/permissions/Permission;
    }
    library = true
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
