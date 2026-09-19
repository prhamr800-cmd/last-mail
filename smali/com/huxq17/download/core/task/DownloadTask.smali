###### Class com.huxq17.download.core.task.DownloadTask (com.huxq17.download.core.task.DownloadTask)
.class public Lcom/huxq17/download/core/task/DownloadTask;
.super Lcom/huxq17/download/core/task/Task;
.source "DownloadTask.java"


# instance fields
.field private connectInterceptor:Lcom/huxq17/download/core/interceptor/ConnectInterceptor;

.field private dbService:Lcom/huxq17/download/db/DBService;

.field private final downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

.field private downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

.field private lastProgress:I

.field private final lock:Ljava/lang/Object;

.field private messageCenter:Lcom/huxq17/download/core/service/IMessageCenter;


# direct methods
.method public constructor <init>(Lcom/huxq17/download/core/DownloadRequest;)V
    .registers 7
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;

    .line 31
    invoke-direct {p0}, Lcom/huxq17/download/core/task/Task;-><init>()V

    .line 32
    if-eqz p1, :cond_6d

    .line 33
    iput-object p1, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    .line 34
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 35
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    iput-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->lock:Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0, p0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setDownloadTask(Lcom/huxq17/download/core/task/DownloadTask;)V

    .line 37
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->dbService:Lcom/huxq17/download/db/DBService;

    .line 38
    const-class v0, Lcom/huxq17/download/core/service/IMessageCenter;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IMessageCenter;

    iput-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->messageCenter:Lcom/huxq17/download/core/service/IMessageCenter;

    .line 39
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->clearErrorCode()V

    .line 40
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->WAIT:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 41
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setCompletedSize(J)V

    .line 42
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setProgress(I)V

    .line 43
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getCompletedSize()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_67

    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 44
    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getCompletedSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getContentLength()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_67

    .line 45
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->isForceReDownload()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 46
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->deleteDownloadFile()V

    .line 47
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadTask;->updateInfo()V

    .line 49
    :cond_67
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/task/DownloadTask;->notifyProgressChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    goto :goto_72

    .line 51
    :cond_6d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 52
    iput-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->lock:Ljava/lang/Object;

    .line 54
    :goto_72
    return-void
.end method

.method private downloadWithDownloadChain()V
    .registers 6

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    const-class v1, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-static {v1}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huxq17/download/core/service/IDownloadConfigService;

    .line 93
    invoke-interface {v1}, Lcom/huxq17/download/core/service/IDownloadConfigService;->getDownloadInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v0, "interceptors":Ljava/util/List;, "Ljava/util/List<Lcom/huxq17/download/core/DownloadInterceptor;>;"
    new-instance v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;

    invoke-direct {v1}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;-><init>()V

    iput-object v1, p0, Lcom/huxq17/download/core/task/DownloadTask;->connectInterceptor:Lcom/huxq17/download/core/interceptor/ConnectInterceptor;

    .line 95
    new-instance v1, Lcom/huxq17/download/core/interceptor/RetryInterceptor;

    invoke-direct {v1}, Lcom/huxq17/download/core/interceptor/RetryInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/huxq17/download/core/task/DownloadTask;->connectInterceptor:Lcom/huxq17/download/core/interceptor/ConnectInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;

    invoke-direct {v1}, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/huxq17/download/core/RealDownloadChain;

    iget-object v2, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/huxq17/download/core/RealDownloadChain;-><init>(Ljava/util/List;Lcom/huxq17/download/core/DownloadRequest;I)V

    .line 99
    .local v1, "realDownloadChain":Lcom/huxq17/download/core/RealDownloadChain;
    iget-object v2, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/RealDownloadChain;->proceed(Lcom/huxq17/download/core/DownloadRequest;)Lcom/huxq17/download/core/DownloadInfo;

    .line 100
    iget-object v2, p0, Lcom/huxq17/download/core/task/DownloadTask;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_3d
    iget-object v3, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v3}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getStatus()Lcom/huxq17/download/core/DownloadInfo$Status;

    move-result-object v3

    sget-object v4, Lcom/huxq17/download/core/DownloadInfo$Status;->PAUSING:Lcom/huxq17/download/core/DownloadInfo$Status;

    if-ne v3, v4, :cond_4e

    .line 102
    iget-object v3, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v4, Lcom/huxq17/download/core/DownloadInfo$Status;->PAUSED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v3, v4}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 104
    :cond_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_53

    .line 105
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadTask;->updateInfo()V

    .line 106
    return-void

    .line 104
    :catchall_53
    move-exception v3

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v3
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->connectInterceptor:Lcom/huxq17/download/core/interceptor/ConnectInterceptor;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->connectInterceptor:Lcom/huxq17/download/core/interceptor/ConnectInterceptor;

    invoke-virtual {v0}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->cancel()V

    .line 161
    :cond_9
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->currentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_12

    .line 162
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 164
    :cond_12
    return-void
.end method

.method public execute()V
    .registers 3

    .line 82
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 83
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->RUNNING:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 84
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/task/DownloadTask;->notifyProgressChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 85
    invoke-direct {p0}, Lcom/huxq17/download/core/task/DownloadTask;->downloadWithDownloadChain()V

    .line 86
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/task/DownloadTask;->notifyProgressChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 88
    :cond_1a
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setDownloadTask(Lcom/huxq17/download/core/task/DownloadTask;)V

    .line 89
    return-void
.end method

.method public getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadRequest;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadRequest;->getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 75
    iget-object v1, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadRequest;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_16
    return-object v0
.end method

.method public getRequest()Lcom/huxq17/download/core/DownloadRequest;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public notifyProgressChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V
    .registers 3
    .param p1, "downloadInfo"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 130
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->messageCenter:Lcom/huxq17/download/core/service/IMessageCenter;

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->messageCenter:Lcom/huxq17/download/core/service/IMessageCenter;

    invoke-interface {v0, p1}, Lcom/huxq17/download/core/service/IMessageCenter;->notifyProgressChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 132
    :cond_9
    return-void
.end method

.method onDownload(I)Z
    .registers 6
    .param p1, "length"    # I

    .line 109
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadTask;->isRunning()Z

    move-result v1

    if-nez v1, :cond_c

    .line 111
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 113
    :cond_c
    iget-object v1, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/huxq17/download/core/DownloadDetailsInfo;->download(J)V

    .line 114
    iget-object v1, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getCompletedSize()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getContentLength()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 115
    .local v1, "progress":I
    if-gez v1, :cond_2d

    .line 116
    const/4 v1, 0x0

    .line 118
    :cond_2d
    iget-object v2, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v2, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setProgress(I)V

    .line 119
    iget v2, p0, Lcom/huxq17/download/core/task/DownloadTask;->lastProgress:I

    if-eq v1, v2, :cond_41

    .line 120
    const/16 v2, 0x64

    if-eq v1, v2, :cond_41

    .line 121
    iput v1, p0, Lcom/huxq17/download/core/task/DownloadTask;->lastProgress:I

    .line 122
    iget-object v2, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {p0, v2}, Lcom/huxq17/download/core/task/DownloadTask;->notifyProgressChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 125
    .end local v1    # "progress":I
    :cond_41
    monitor-exit v0

    .line 126
    const/4 v0, 0x1

    return v0

    .line 125
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public pause()V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 141
    iget-object v1, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v2, Lcom/huxq17/download/core/DownloadInfo$Status;->PAUSING:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 142
    iget-object v1, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {p0, v1}, Lcom/huxq17/download/core/task/DownloadTask;->notifyProgressChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 143
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadTask;->cancel()V

    .line 145
    :cond_18
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public stop()V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getStatus()Lcom/huxq17/download/core/DownloadInfo$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadInfo$Status;->shouldStop()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 151
    iget-object v1, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v2, Lcom/huxq17/download/core/DownloadInfo$Status;->STOPPED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 152
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadTask;->cancel()V

    .line 154
    :cond_19
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public updateInfo()V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/huxq17/download/core/task/DownloadTask;->dbService:Lcom/huxq17/download/db/DBService;

    iget-object v2, p0, Lcom/huxq17/download/core/task/DownloadTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v1, v2}, Lcom/huxq17/download/db/DBService;->updateInfo(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
