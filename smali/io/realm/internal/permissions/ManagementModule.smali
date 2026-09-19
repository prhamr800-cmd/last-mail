###### Class io.realm.internal.permissions.ManagementModule (io.realm.internal.permissions.ManagementModule)
.class public Lio/realm/internal/permissions/ManagementModule;
.super Ljava/lang/Object;
.source "ManagementModule.java"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
    classes = {
        Lio/realm/internal/permissions/PermissionChange;,
        Lio/realm/permissions/PermissionOffer;,
        Lio/realm/internal/permissions/PermissionOfferResponse;
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
