###### Class android.support.v13.app.FragmentCompat (android.support.v13.app.FragmentCompat)
.class public Landroid/support/v13/app/FragmentCompat;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatApi24Impl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;,
        Landroid/support/v13/app/FragmentCompat$PermissionCompatDelegate;,
        Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

.field private static sDelegate:Landroid/support/v13/app/FragmentCompat$PermissionCompatDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e

    .line 163
    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_31

    .line 164
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1c

    .line 165
    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_31

    .line 166
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2a

    .line 167
    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    goto :goto_31

    .line 169
    :cond_2a
    new-instance v0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    .line 171
    :goto_31
    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getPermissionCompatDelegate()Landroid/support/v13/app/FragmentCompat$PermissionCompatDelegate;
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->sDelegate:Landroid/support/v13/app/FragmentCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p0, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->sDelegate:Landroid/support/v13/app/FragmentCompat$PermissionCompatDelegate;

    if-eqz v0, :cond_d

    sget-object v0, Landroid/support/v13/app/FragmentCompat;->sDelegate:Landroid/support/v13/app/FragmentCompat$PermissionCompatDelegate;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v13/app/FragmentCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 315
    return-void

    .line 318
    :cond_d
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 319
    return-void
.end method

.method public static setMenuVisibility(Landroid/app/Fragment;Z)V
    .registers 2
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 242
    return-void
.end method

.method public static setPermissionCompatDelegate(Landroid/support/v13/app/FragmentCompat$PermissionCompatDelegate;)V
    .registers 1
    .param p0, "delegate"    # Landroid/support/v13/app/FragmentCompat$PermissionCompatDelegate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    sput-object p0, Landroid/support/v13/app/FragmentCompat;->sDelegate:Landroid/support/v13/app/FragmentCompat$PermissionCompatDelegate;

    .line 187
    return-void
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
    .registers 3
    .param p0, "f"    # Landroid/app/Fragment;
    .param p1, "deferStart"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 254
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .registers 3
    .param p0, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    sget-object v0, Landroid/support/v13/app/FragmentCompat;->IMPL:Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;->shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

###### Class android.support.v13.app.FragmentCompat.FragmentCompatApi15Impl (android.support.v13.app.FragmentCompat$FragmentCompatApi15Impl)
.class Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;
.super Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;
.source "FragmentCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatApi15Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .registers 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "deferStart"    # Z

    .line 135
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 136
    return-void
.end method

###### Class android.support.v13.app.FragmentCompat.FragmentCompatApi23Impl (android.support.v13.app.FragmentCompat$FragmentCompatApi23Impl)
.class Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;
.super Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;
.source "FragmentCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi15Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 143
    invoke-virtual {p1, p2, p3}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 144
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permission"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

###### Class android.support.v13.app.FragmentCompat.FragmentCompatApi24Impl (android.support.v13.app.FragmentCompat$FragmentCompatApi24Impl)
.class Landroid/support/v13/app/FragmentCompat$FragmentCompatApi24Impl;
.super Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;
.source "FragmentCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatApi24Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Landroid/support/v13/app/FragmentCompat$FragmentCompatApi23Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .registers 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "deferStart"    # Z

    .line 156
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 157
    return-void
.end method

###### Class android.support.v13.app.FragmentCompat.FragmentCompatBaseImpl (android.support.v13.app.FragmentCompat$FragmentCompatBaseImpl)
.class Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;
.super Ljava/lang/Object;
.source "FragmentCompat.java"

# interfaces
.implements Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .registers 6
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;

    invoke-direct {v1, p0, p2, p1, p3}, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;-><init>(Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;[Ljava/lang/String;Landroid/app/Fragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .registers 3
    .param p1, "f"    # Landroid/app/Fragment;
    .param p2, "deferStart"    # Z

    .line 96
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permission"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    return v0
.end method

###### Class android.support.v13.app.FragmentCompat.FragmentCompatBaseImpl.AnonymousClass1 (android.support.v13.app.FragmentCompat$FragmentCompatBaseImpl$1)
.class Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;
.super Ljava/lang/Object;
.source "FragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;[Ljava/lang/String;Landroid/app/Fragment;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;

    .line 101
    iput-object p1, p0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;->this$0:Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl;

    iput-object p2, p0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroid/app/Fragment;

    iput p4, p0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 104
    iget-object v0, p0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    .line 106
    .local v0, "grantResults":[I
    iget-object v1, p0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 107
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_29

    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 109
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    array-length v4, v4

    .line 112
    .local v4, "permissionCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    if-ge v5, v4, :cond_28

    .line 113
    iget-object v6, p0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v2, v6, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v5

    .line 112
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 116
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "permissionCount":I
    .end local v5    # "i":I
    :cond_28
    goto :goto_2d

    .line 117
    :cond_29
    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 120
    :goto_2d
    iget-object v2, p0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$fragment:Landroid/app/Fragment;

    check-cast v2, Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;

    iget v3, p0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$requestCode:I

    iget-object v4, p0, Landroid/support/v13/app/FragmentCompat$FragmentCompatBaseImpl$1;->val$permissions:[Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 122
    return-void
.end method

###### Class android.support.v13.app.FragmentCompat.FragmentCompatImpl (android.support.v13.app.FragmentCompat$FragmentCompatImpl)
.class interface abstract Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FragmentCompatImpl"
.end annotation


# virtual methods
.method public abstract requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V
.end method

.method public abstract setUserVisibleHint(Landroid/app/Fragment;Z)V
.end method

.method public abstract shouldShowRequestPermissionRationale(Landroid/app/Fragment;Ljava/lang/String;)Z
.end method

###### Class android.support.v13.app.FragmentCompat.OnRequestPermissionsResultCallback (android.support.v13.app.FragmentCompat$OnRequestPermissionsResultCallback)
.class public interface abstract Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRequestPermissionsResultCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

###### Class android.support.v13.app.FragmentCompat.PermissionCompatDelegate (android.support.v13.app.FragmentCompat$PermissionCompatDelegate)
.class public interface abstract Landroid/support/v13/app/FragmentCompat$PermissionCompatDelegate;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionCompatDelegate"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
