###### Class io.fabric.sdk.android.services.common.InstallerPackageNameProvider (io.fabric.sdk.android.services.common.InstallerPackageNameProvider)
.class public Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;
.super Ljava/lang/Object;
.source "InstallerPackageNameProvider.java"


# static fields
.field private static final NO_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = ""


# instance fields
.field private final installerPackageNameCache:Lio/fabric/sdk/android/services/cache/MemoryValueCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/cache/MemoryValueCache<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final installerPackageNameLoader:Lio/fabric/sdk/android/services/cache/ValueLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/cache/ValueLoader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider$1;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider$1;-><init>(Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;->installerPackageNameLoader:Lio/fabric/sdk/android/services/cache/ValueLoader;

    .line 52
    new-instance v0, Lio/fabric/sdk/android/services/cache/MemoryValueCache;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/cache/MemoryValueCache;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;->installerPackageNameCache:Lio/fabric/sdk/android/services/cache/MemoryValueCache;

    .line 53
    return-void
.end method


# virtual methods
.method public getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "appContext"    # Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;->installerPackageNameCache:Lio/fabric/sdk/android/services/cache/MemoryValueCache;

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;->installerPackageNameLoader:Lio/fabric/sdk/android/services/cache/ValueLoader;

    invoke-virtual {v1, p1, v2}, Lio/fabric/sdk/android/services/cache/MemoryValueCache;->get(Landroid/content/Context;Lio/fabric/sdk/android/services/cache/ValueLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "name":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_16

    if-eqz v2, :cond_14

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    return-object v0

    .line 60
    .end local v1    # "name":Ljava/lang/String;
    :catch_16
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed to determine installer package name"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-object v0
.end method

###### Class io.fabric.sdk.android.services.common.InstallerPackageNameProvider.AnonymousClass1 (io.fabric.sdk.android.services.common.InstallerPackageNameProvider$1)
.class Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider$1;
.super Ljava/lang/Object;
.source "InstallerPackageNameProvider.java"

# interfaces
.implements Lio/fabric/sdk/android/services/cache/ValueLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/cache/ValueLoader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider$1;->this$0:Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider$1;->load(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 40
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "hostAppPackageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "installerPackageName":Ljava/lang/String;
    if-nez v2, :cond_11

    const-string v3, ""

    goto :goto_12

    :cond_11
    move-object v3, v2

    :goto_12
    return-object v3
.end method
