###### Class com.digikala.dms.helper.downloader.DownloadService (com.digikala.dms.helper.downloader.DownloadService)
.class public Lcom/digikala/dms/helper/downloader/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"

# interfaces
.implements Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "download_service_channel"

.field public static final TAG:Ljava/lang/String;

.field private static instance:Lcom/digikala/dms/helper/downloader/DownloadService;

.field private static isRun:Z

.field private static mDownloadTaskListener:Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

.field private static mTask:Lcom/digikala/dms/helper/downloader/DownloadTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/digikala/dms/helper/downloader/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/downloader/DownloadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Lcom/digikala/dms/helper/downloader/DownloadTask;Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "task"    # Lcom/digikala/dms/helper/downloader/DownloadTask;
    .param p2, "downloadTaskListener"    # Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    .line 36
    sput-object p1, Lcom/digikala/dms/helper/downloader/DownloadService;->mTask:Lcom/digikala/dms/helper/downloader/DownloadTask;

    .line 37
    sput-object p2, Lcom/digikala/dms/helper/downloader/DownloadService;->mDownloadTaskListener:Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v0, "startIntent":Landroid/content/Intent;
    const-class v1, Lcom/digikala/dms/helper/downloader/DownloadService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    sget-object v1, Lcom/digikala/dms/helper/downloader/DownloadService;->TAG:Ljava/lang/String;

    const-string v2, "service create instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/digikala/dms/helper/downloader/DownloadService;
    .registers 1

    .line 47
    sget-object v0, Lcom/digikala/dms/helper/downloader/DownloadService;->instance:Lcom/digikala/dms/helper/downloader/DownloadService;

    return-object v0
.end method

.method public static isRunning()Z
    .registers 1

    .line 98
    sget-boolean v0, Lcom/digikala/dms/helper/downloader/DownloadService;->isRun:Z

    return v0
.end method

.method private startForeground(I)V
    .registers 7
    .param p1, "startId"    # I

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_20

    .line 78
    const-string v0, "Default Notification"

    .line 79
    .local v0, "channelName":Ljava/lang/String;
    const-string v1, ""

    .line 80
    .local v1, "desc":Ljava/lang/String;
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "download_service_channel"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 81
    .local v2, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 82
    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {p0, v3}, Lcom/digikala/dms/helper/downloader/DownloadService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 83
    .local v3, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 85
    .end local v0    # "channelName":Ljava/lang/String;
    .end local v1    # "desc":Ljava/lang/String;
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    .end local v3    # "manager":Landroid/app/NotificationManager;
    :cond_20
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "download_service_channel"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/digikala/dms/helper/downloader/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/digikala/dms/helper/downloader/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "Download DMS"

    .line 88
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f0e0002

    .line 89
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 94
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {p0, p1, v0}, Lcom/digikala/dms/helper/downloader/DownloadService;->startForeground(ILandroid/app/Notification;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel()V
    .registers 2

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/digikala/dms/helper/downloader/DownloadService;->isRun:Z

    .line 131
    sget-object v0, Lcom/digikala/dms/helper/downloader/DownloadService;->mDownloadTaskListener:Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    invoke-interface {v0}, Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;->onCancel()V

    .line 132
    return-void
.end method

.method public onComplete()V
    .registers 2

    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/digikala/dms/helper/downloader/DownloadService;->isRun:Z

    .line 119
    sget-object v0, Lcom/digikala/dms/helper/downloader/DownloadService;->mDownloadTaskListener:Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    invoke-interface {v0}, Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;->onComplete()V

    .line 120
    return-void
.end method

.method public onContinue(I)V
    .registers 3
    .param p1, "percentage"    # I

    .line 113
    sget-object v0, Lcom/digikala/dms/helper/downloader/DownloadService;->mDownloadTaskListener:Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    invoke-interface {v0, p1}, Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;->onContinue(I)V

    .line 114
    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 57
    sget-object v0, Lcom/digikala/dms/helper/downloader/DownloadService;->TAG:Ljava/lang/String;

    const-string v1, "service on create"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/digikala/dms/helper/downloader/DownloadService;->isRun:Z

    .line 104
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 105
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/digikala/dms/helper/downloader/DownloadService;->isRun:Z

    .line 125
    sget-object v0, Lcom/digikala/dms/helper/downloader/DownloadService;->mDownloadTaskListener:Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;

    invoke-interface {v0, p1}, Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;->onError(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 64
    sget-object v0, Lcom/digikala/dms/helper/downloader/DownloadService;->TAG:Ljava/lang/String;

    const-string v1, "service on start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0, p3}, Lcom/digikala/dms/helper/downloader/DownloadService;->startForeground(I)V

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/digikala/dms/helper/downloader/DownloadService;->isRun:Z

    .line 69
    sput-object p0, Lcom/digikala/dms/helper/downloader/DownloadService;->instance:Lcom/digikala/dms/helper/downloader/DownloadService;

    .line 71
    invoke-virtual {p0}, Lcom/digikala/dms/helper/downloader/DownloadService;->startTask()V

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public startTask()V
    .registers 3

    .line 108
    sget-object v0, Lcom/digikala/dms/helper/downloader/DownloadService;->mTask:Lcom/digikala/dms/helper/downloader/DownloadTask;

    sget-object v1, Lcom/digikala/dms/helper/downloader/DownloadService;->mTask:Lcom/digikala/dms/helper/downloader/DownloadTask;

    invoke-virtual {v0, v1, p0}, Lcom/digikala/dms/helper/downloader/DownloadTask;->start(Lcom/digikala/dms/helper/downloader/DownloadTask;Lcom/digikala/dms/helper/downloader/IDownloadTaskListener;)V

    .line 109
    return-void
.end method
