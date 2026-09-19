###### Class com.digikala.dms.helper.downloader.DownloadManager (com.digikala.dms.helper.downloader.DownloadManager)
.class public Lcom/digikala/dms/helper/downloader/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;


# static fields
.field private static final NOT_ONGOING_SERVICE_ID:I = 0x100114

.field private static final ONGOING_SERVICE_ID:I = 0x100103

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTask:Lcom/digikala/dms/helper/downloader/DownloadTask;

.field private notifManager:Landroid/app/NotificationManager;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/digikala/dms/helper/downloader/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/downloader/DownloadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    .line 49
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->notificationManager:Landroid/app/NotificationManager;

    .line 50
    :cond_10
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "ticker"    # Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/digikala/dms/helper/downloader/DownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "showNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    const v1, 0x7f100054

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    const v2, 0x7f100055

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "channelTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->notifManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_29

    .line 58
    iget-object v2, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->notifManager:Landroid/app/NotificationManager;

    .line 60
    :cond_29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_51

    .line 61
    const/4 v2, 0x4

    .line 63
    .local v2, "importance":I
    iget-object v3, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->notifManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    .line 64
    .local v3, "mChannel":Landroid/app/NotificationChannel;
    if-nez v3, :cond_51

    .line 65
    new-instance v4, Landroid/app/NotificationChannel;

    invoke-direct {v4, v0, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v4

    .line 66
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 67
    const/16 v4, 0x9

    new-array v4, v4, [J

    fill-array-data v4, :array_7a

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 68
    iget-object v4, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->notifManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 71
    .end local v2    # "importance":I
    .end local v3    # "mChannel":Landroid/app/NotificationChannel;
    :cond_51
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v3, "download start"

    .line 73
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 74
    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f0e0002

    .line 75
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 77
    .local v2, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->notifManager:Landroid/app/NotificationManager;

    const v4, 0x100114

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 78
    return-void

    :array_7a
    .array-data 8
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x190
        0x12c
        0xc8
        0x190
    .end array-data
.end method


# virtual methods
.method public addTask(Landroid/content/Context;Lcom/digikala/dms/helper/downloader/DownloadTask;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/digikala/dms/helper/downloader/DownloadTask;

    .line 42
    iput-object p1, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mTask:Lcom/digikala/dms/helper/downloader/DownloadTask;

    .line 44
    invoke-static {p1, p2, p0}, Lcom/digikala/dms/helper/downloader/DownloadService;->createInstance(Landroid/content/Context;Lcom/digikala/dms/helper/downloader/DownloadTask;Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;)V

    .line 45
    return-void
.end method

.method public onCancel()V
    .registers 5

    .line 120
    const-string v0, "downloading"

    const-string v1, "download cancel"

    const-string/jumbo v2, "ticker"

    invoke-direct {p0, v0, v1, v2}, Lcom/digikala/dms/helper/downloader/DownloadManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/digikala/dms/helper/downloader/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 122
    return-void
.end method

.method public onComplete()V
    .registers 5

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_32

    .line 90
    const-string v0, "downloading"

    const-string v1, "download complete, please install it manually"

    const-string/jumbo v2, "ticker"

    invoke-direct {p0, v0, v1, v2}, Lcom/digikala/dms/helper/downloader/DownloadManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/digikala/dms/helper/downloader/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 92
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "com.digikala.dms.provider"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mTask:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 93
    goto/16 :goto_b4

    :cond_32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_77

    .line 94
    const-string v0, "downloading"

    const-string v1, "download complete"

    const-string/jumbo v2, "ticker"

    invoke-direct {p0, v0, v1, v2}, Lcom/digikala/dms/helper/downloader/DownloadManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/digikala/dms/helper/downloader/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 96
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "com.digikala.dms.provider"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mTask:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 97
    .local v0, "data":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    iget-object v2, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    .end local v0    # "data":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_b4

    .line 102
    :cond_77
    const-string v0, "downloading"

    const-string v1, "download complete"

    const-string/jumbo v2, "ticker"

    invoke-direct {p0, v0, v1, v2}, Lcom/digikala/dms/helper/downloader/DownloadManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/digikala/dms/helper/downloader/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mTask:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/digikala/dms/helper/downloader/DownloadTask;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_b4
    return-void
.end method

.method public onContinue(I)V
    .registers 6
    .param p1, "percentage"    # I

    .line 83
    const-string v0, "downloading"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->convertNumberStringToPersian(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ticker"

    invoke-direct {p0, v0, v1, v2}, Lcom/digikala/dms/helper/downloader/DownloadManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/String;

    .line 114
    const-string v0, "downloading"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ticker"

    invoke-direct {p0, v0, v1, v2}, Lcom/digikala/dms/helper/downloader/DownloadManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digikala/dms/helper/downloader/DownloadManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/digikala/dms/helper/downloader/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 116
    return-void
.end method
