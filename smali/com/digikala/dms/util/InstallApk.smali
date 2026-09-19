###### Class com.digikala.dms.util.InstallApk (com.digikala.dms.util.InstallApk)
.class public Lcom/digikala/dms/util/InstallApk;
.super Ljava/lang/Object;
.source "InstallApk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/util/InstallApk$APKBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/digikala/dms/util/InstallApk$APKBuilder;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 15
    new-instance v0, Lcom/digikala/dms/util/InstallApk$APKBuilder;

    invoke-direct {v0, p0}, Lcom/digikala/dms/util/InstallApk$APKBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

###### Class com.digikala.dms.util.InstallApk.APKBuilder (com.digikala.dms.util.InstallApk$APKBuilder)
.class public Lcom/digikala/dms/util/InstallApk$APKBuilder;
.super Ljava/lang/Object;
.source "InstallApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/util/InstallApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APKBuilder"
.end annotation


# instance fields
.field private apkPath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private forceInstall:Z

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/digikala/dms/util/InstallApk$APKBuilder;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public forceInstall()V
    .registers 2

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/digikala/dms/util/InstallApk$APKBuilder;->forceInstall:Z

    .line 40
    invoke-virtual {p0}, Lcom/digikala/dms/util/InstallApk$APKBuilder;->install()V

    .line 41
    return-void
.end method

.method public from(Ljava/lang/String;)Lcom/digikala/dms/util/InstallApk$APKBuilder;
    .registers 2
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/digikala/dms/util/InstallApk$APKBuilder;->apkPath:Ljava/lang/String;

    .line 30
    return-object p0
.end method

.method public fromUri(Ljava/lang/String;)Lcom/digikala/dms/util/InstallApk$APKBuilder;
    .registers 2
    .param p1, "apkUri"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/digikala/dms/util/InstallApk$APKBuilder;->uri:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public install()V
    .registers 5

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/digikala/dms/util/InstallApk$APKBuilder;->apkPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "file":Ljava/io/File;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_26

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    iget-object v2, p0, Lcom/digikala/dms/util/InstallApk$APKBuilder;->context:Landroid/content/Context;

    const-string v3, "com.digikala.dms.provider"

    invoke-static {v2, v3, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 49
    .local v2, "contentUri":Landroid/net/Uri;
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .end local v2    # "contentUri":Landroid/net/Uri;
    goto :goto_2f

    .line 51
    :cond_26
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :goto_2f
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    iget-object v2, p0, Lcom/digikala/dms/util/InstallApk$APKBuilder;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
