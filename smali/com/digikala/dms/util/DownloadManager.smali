###### Class com.digikala.dms.util.DownloadManager (com.digikala.dms.util.DownloadManager)
.class public Lcom/digikala/dms/util/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static mcontext:Landroid/app/Activity;

.field private static progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/ProgressDialog;
    .registers 1

    .line 23
    sget-object v0, Lcom/digikala/dms/util/DownloadManager;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .registers 1

    .line 23
    sget-object v0, Lcom/digikala/dms/util/DownloadManager;->mcontext:Landroid/app/Activity;

    return-object v0
.end method

.method public static download(Ljava/lang/String;)V
    .registers 4
    .param p0, "downloadUrl"    # Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/digikala/dms/util/DownloadManager;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 62
    sget-object v0, Lcom/digikala/dms/util/DownloadManager;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 63
    invoke-static {p0}, Lcom/huxq17/download/Pump;->newRequest(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/util/DownloadManager$2;

    invoke-direct {v1}, Lcom/digikala/dms/util/DownloadManager$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->listener(Lcom/huxq17/download/core/DownloadListener;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 86
    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->setRequestBuilder(Lokhttp3/Request$Builder;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->forceReDownload(Z)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v0

    .line 90
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->threadNum(I)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v0

    const-string v2, "123"

    .line 91
    invoke-virtual {v0, v2}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->setId(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v0

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 93
    invoke-virtual {v0, v2}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->setRequestBuilder(Lokhttp3/Request$Builder;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v0

    .line 94
    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->setRetry(II)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->submit()V

    .line 96
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .registers 4
    .param p0, "context"    # Landroid/app/Activity;

    .line 28
    sput-object p0, Lcom/digikala/dms/util/DownloadManager;->mcontext:Landroid/app/Activity;

    .line 29
    invoke-static {}, Lcom/digikala/dms/util/DownloadManager;->initProgressDialog()V

    .line 30
    invoke-static {}, Lcom/huxq17/download/Pump;->newConfigBuilder()Lcom/huxq17/download/config/DownloadConfig$Builder;

    move-result-object v0

    .line 32
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/huxq17/download/config/DownloadConfig$Builder;->setMaxRunningTaskNum(I)Lcom/huxq17/download/config/DownloadConfig$Builder;

    move-result-object v0

    .line 34
    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/huxq17/download/config/DownloadConfig$Builder;->setMinUsableStorageSpace(J)Lcom/huxq17/download/config/DownloadConfig$Builder;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/util/DownloadManager$1;

    invoke-direct {v1}, Lcom/digikala/dms/util/DownloadManager$1;-><init>()V

    .line 36
    invoke-virtual {v0, v1}, Lcom/huxq17/download/config/DownloadConfig$Builder;->addDownloadInterceptor(Lcom/huxq17/download/core/DownloadInterceptor;)Lcom/huxq17/download/config/DownloadConfig$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/huxq17/download/config/DownloadConfig$Builder;->build()V

    .line 57
    return-void
.end method

.method private static initProgressDialog()V
    .registers 2

    .line 99
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/digikala/dms/util/DownloadManager;->mcontext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/digikala/dms/util/DownloadManager;->progressDialog:Landroid/app/ProgressDialog;

    .line 100
    sget-object v0, Lcom/digikala/dms/util/DownloadManager;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Downloading"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    sget-object v0, Lcom/digikala/dms/util/DownloadManager;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 103
    sget-object v0, Lcom/digikala/dms/util/DownloadManager;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 104
    return-void
.end method

###### Class com.digikala.dms.util.DownloadManager.AnonymousClass1 (com.digikala.dms.util.DownloadManager$1)
.class final Lcom/digikala/dms/util/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/huxq17/download/core/DownloadInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/util/DownloadManager;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;)Lcom/huxq17/download/core/DownloadInfo;
    .registers 4
    .param p1, "chain"    # Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;

    .line 39
    invoke-interface {p1}, Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;->request()Lcom/huxq17/download/core/DownloadRequest;

    move-result-object v0

    .line 40
    .local v0, "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    invoke-interface {p1, v0}, Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;->proceed(Lcom/huxq17/download/core/DownloadRequest;)Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v1

    .line 53
    .local v1, "downloadInfo":Lcom/huxq17/download/core/DownloadInfo;
    return-object v1
.end method

###### Class com.digikala.dms.util.DownloadManager.AnonymousClass2 (com.digikala.dms.util.DownloadManager$2)
.class final Lcom/digikala/dms/util/DownloadManager$2;
.super Lcom/huxq17/download/core/DownloadListener;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/util/DownloadManager;->download(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/huxq17/download/core/DownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 4

    .line 82
    invoke-static {}, Lcom/digikala/dms/util/DownloadManager;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 83
    invoke-static {}, Lcom/digikala/dms/util/DownloadManager;->access$100()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Download failed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    return-void
.end method

.method public onProgress(I)V
    .registers 3
    .param p1, "progress"    # I

    .line 67
    invoke-static {}, Lcom/digikala/dms/util/DownloadManager;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 68
    return-void
.end method

.method public onSuccess()V
    .registers 5

    .line 72
    invoke-static {}, Lcom/digikala/dms/util/DownloadManager;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 73
    invoke-virtual {p0}, Lcom/digikala/dms/util/DownloadManager$2;->getDownloadInfo()Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "apkPath":Ljava/lang/String;
    invoke-static {}, Lcom/digikala/dms/util/DownloadManager;->access$100()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/digikala/dms/util/InstallApk;->with(Landroid/content/Context;)Lcom/digikala/dms/util/InstallApk$APKBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Lcom/digikala/dms/util/InstallApk$APKBuilder;->from(Ljava/lang/String;)Lcom/digikala/dms/util/InstallApk$APKBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/digikala/dms/util/InstallApk$APKBuilder;->forceInstall()V

    .line 77
    invoke-static {}, Lcom/digikala/dms/util/DownloadManager;->access$100()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Download Finished"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 78
    return-void
.end method
