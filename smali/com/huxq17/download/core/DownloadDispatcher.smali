###### Class com.huxq17.download.core.DownloadDispatcher (com.huxq17.download.core.DownloadDispatcher)
.class public Lcom/huxq17/download/core/DownloadDispatcher;
.super Lcom/huxq17/download/core/task/Task;
.source "DownloadDispatcher.java"


# instance fields
.field private consumer:Ljava/util/concurrent/locks/Condition;

.field private defaultTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

.field private downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

.field private downloadManager:Lcom/huxq17/download/core/DownloadManager;

.field private downloadTaskExecutors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/huxq17/download/core/DownloadTaskExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lock:Ljava/util/concurrent/locks/Lock;

.field private final requestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/huxq17/download/core/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huxq17/download/core/DownloadManager;)V
    .registers 4
    .param p1, "downloadManager"    # Lcom/huxq17/download/core/DownloadManager;

    .line 40
    invoke-direct {p0}, Lcom/huxq17/download/core/task/Task;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->requestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->lock:Ljava/util/concurrent/locks/Lock;

    .line 35
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->consumer:Ljava/util/concurrent/locks/Condition;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->downloadTaskExecutors:Ljava/util/HashSet;

    .line 41
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDispatcher;->downloadManager:Lcom/huxq17/download/core/DownloadManager;

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 3

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDispatcher;->signalConsumer()V

    .line 112
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->downloadTaskExecutors:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 113
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->defaultTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

    if-eqz v0, :cond_18

    .line 114
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->defaultTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

    invoke-interface {v0}, Lcom/huxq17/download/core/DownloadTaskExecutor;->shutdown()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 116
    :cond_18
    monitor-exit p0

    return-void

    .line 109
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method consumeRequest()V
    .registers 5

    .line 68
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDispatcher;->waitForConsumer()V

    .line 69
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->requestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/DownloadRequest;

    .line 70
    .local v0, "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    const/4 v1, 0x0

    .line 71
    .local v1, "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    if-eqz v0, :cond_22

    .line 72
    iget-object v2, p0, Lcom/huxq17/download/core/DownloadDispatcher;->downloadManager:Lcom/huxq17/download/core/DownloadManager;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadRequest;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huxq17/download/core/DownloadManager;->isTaskRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 73
    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/DownloadDispatcher;->createTaskFromRequest(Lcom/huxq17/download/core/DownloadRequest;)Lcom/huxq17/download/core/task/DownloadTask;

    move-result-object v1

    goto :goto_22

    .line 75
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/DownloadDispatcher;->printExistRequestWarning(Lcom/huxq17/download/core/DownloadRequest;)V

    .line 78
    :cond_22
    :goto_22
    if-eqz v1, :cond_43

    .line 79
    invoke-virtual {v1}, Lcom/huxq17/download/core/task/DownloadTask;->getRequest()Lcom/huxq17/download/core/DownloadRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadRequest;->getDownloadExecutor()Lcom/huxq17/download/core/DownloadTaskExecutor;

    move-result-object v2

    .line 80
    .local v2, "downloadTaskExecutor":Lcom/huxq17/download/core/DownloadTaskExecutor;
    if-nez v2, :cond_30

    .line 81
    iget-object v2, p0, Lcom/huxq17/download/core/DownloadDispatcher;->defaultTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

    .line 83
    :cond_30
    iget-object v3, p0, Lcom/huxq17/download/core/DownloadDispatcher;->downloadTaskExecutors:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 84
    invoke-interface {v2}, Lcom/huxq17/download/core/DownloadTaskExecutor;->init()V

    .line 85
    iget-object v3, p0, Lcom/huxq17/download/core/DownloadDispatcher;->downloadTaskExecutors:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_40
    invoke-interface {v2, v1}, Lcom/huxq17/download/core/DownloadTaskExecutor;->execute(Lcom/huxq17/download/core/task/DownloadTask;)V

    .line 89
    .end local v2    # "downloadTaskExecutor":Lcom/huxq17/download/core/DownloadTaskExecutor;
    :cond_43
    return-void
.end method

.method createDownloadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;
    .registers 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huxq17/download/db/DBService;->getDownloadInfo(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    .line 203
    .local v0, "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-eqz v0, :cond_b

    .line 204
    return-object v0

    .line 207
    :cond_b
    iget-object v1, p0, Lcom/huxq17/download/core/DownloadDispatcher;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/huxq17/download/core/DownloadInfoManager;->createDownloadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    .line 208
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huxq17/download/db/DBService;->updateInfo(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 209
    return-object v0
.end method

.method createTaskFromRequest(Lcom/huxq17/download/core/DownloadRequest;)Lcom/huxq17/download/core/task/DownloadTask;
    .registers 8
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;

    .line 153
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getId()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "filePath":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadDispatcher;->isUsableSpaceEnough(Lcom/huxq17/download/core/DownloadRequest;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 158
    const/4 v4, 0x0

    return-object v4

    .line 160
    :cond_18
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v4

    .line 161
    .local v4, "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-nez v4, :cond_25

    .line 162
    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/huxq17/download/core/DownloadDispatcher;->createDownloadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v4

    .line 163
    invoke-virtual {p1, v4}, Lcom/huxq17/download/core/DownloadRequest;->setDownloadInfo(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 165
    :cond_25
    invoke-virtual {v4}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_38

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getFilePath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_38

    .line 166
    invoke-virtual {v4}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/huxq17/download/core/DownloadRequest;->setFilePath(Ljava/lang/String;)V

    .line 168
    :cond_38
    invoke-virtual {v4, p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setDownloadRequest(Lcom/huxq17/download/core/DownloadRequest;)V

    .line 169
    sget-object v5, Lcom/huxq17/download/core/DownloadInfo$Status;->STOPPED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v4, v5}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 170
    new-instance v5, Lcom/huxq17/download/core/task/DownloadTask;

    invoke-direct {v5, p1}, Lcom/huxq17/download/core/task/DownloadTask;-><init>(Lcom/huxq17/download/core/DownloadRequest;)V

    return-object v5
.end method

.method enqueueRequest(Lcom/huxq17/download/core/DownloadRequest;)V
    .registers 3
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;

    .line 56
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDispatcher;->start()V

    .line 57
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 58
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->requestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 59
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->requestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDispatcher;->signalConsumer()V

    goto :goto_1d

    .line 62
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadDispatcher;->printExistRequestWarning(Lcom/huxq17/download/core/DownloadRequest;)V

    .line 65
    :cond_1d
    :goto_1d
    return-void
.end method

.method public execute()V
    .registers 3

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDispatcher;->isRunnable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 94
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDispatcher;->consumeRequest()V

    goto :goto_0

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    return-void
.end method

.method getMinUsableStorageSpace()J
    .registers 3

    .line 198
    const-class v0, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-interface {v0}, Lcom/huxq17/download/core/service/IDownloadConfigService;->getMinUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method isBlockForConsumeRequest()Z
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->requestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDispatcher;->isRunnable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method isRunnable()Z
    .registers 2

    .line 136
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDispatcher;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isUsableSpaceEnough(Lcom/huxq17/download/core/DownloadRequest;)Z
    .registers 22
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/huxq17/download/core/DownloadRequest;->getFilePath()Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, "filePath":Ljava/lang/String;
    if-nez v8, :cond_20

    .line 177
    new-instance v0, Ljava/io/File;

    const-class v1, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v1}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v1}, Lcom/huxq17/download/core/service/IDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huxq17/download/utils/Util;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_29

    .line 179
    :cond_20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v0

    .local v0, "downloadDirUsableSpace":J
    :goto_29
    move-wide v9, v0

    .line 181
    .end local v0    # "downloadDirUsableSpace":J
    .local v9, "downloadDirUsableSpace":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v11

    .line 182
    .local v11, "dataFileUsableSpace":J
    invoke-virtual/range {p0 .. p0}, Lcom/huxq17/download/core/DownloadDispatcher;->getMinUsableStorageSpace()J

    move-result-wide v13

    .line 183
    .local v13, "minUsableStorageSpace":J
    cmp-long v0, v9, v13

    if-lez v0, :cond_41

    cmp-long v0, v11, v13

    if-gtz v0, :cond_3f

    goto :goto_41

    .line 194
    :cond_3f
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_41
    :goto_41
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0}, Lcom/huxq17/download/core/service/IDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 185
    .local v15, "context":Landroid/content/Context;
    invoke-static {v15, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "dataFileAvailableSize":Ljava/lang/String;
    invoke-static {v15, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "downloadFileAvailableSize":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data directory usable space is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and download directory usable space is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huxq17/download/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 188
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/huxq17/download/core/DownloadDispatcher;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-virtual/range {p1 .. p1}, Lcom/huxq17/download/core/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/huxq17/download/core/DownloadRequest;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/huxq17/download/core/DownloadRequest;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/16 v18, 0x0

    .line 188
    move-object v2, v8

    move-object/from16 v19, v5

    .end local v5    # "downloadFileAvailableSize":Ljava/lang/String;
    .local v19, "downloadFileAvailableSize":Ljava/lang/String;
    move-wide/from16 v5, v16

    move-object/from16 v16, v7

    .end local v7    # "dataFileAvailableSize":Ljava/lang/String;
    .local v16, "dataFileAvailableSize":Ljava/lang/String;
    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/huxq17/download/core/DownloadInfoManager;->createDownloadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    .line 190
    .local v0, "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_USABLE_SPACE_NOT_ENOUGH:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    .line 191
    const-class v1, Lcom/huxq17/download/core/service/IMessageCenter;

    invoke-static {v1}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huxq17/download/core/service/IMessageCenter;

    invoke-interface {v1, v0}, Lcom/huxq17/download/core/service/IMessageCenter;->notifyProgressChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 192
    const/4 v1, 0x0

    return v1
.end method

.method printExistRequestWarning(Lcom/huxq17/download/core/DownloadRequest;)V
    .registers 4
    .param p1, "request"    # Lcom/huxq17/download/core/DownloadRequest;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already enqueue,we need do nothing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huxq17/download/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method setIsRunning(Z)V
    .registers 3
    .param p1, "isRunning"    # Z

    .line 105
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    return-void
.end method

.method signalConsumer()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 142
    :try_start_5
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->consumer:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 144
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/huxq17/download/core/DownloadDispatcher;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 145
    throw v0
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    .line 45
    :try_start_1
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDispatcher;->isRunning()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_27

    if-eqz v0, :cond_9

    .line 46
    monitor-exit p0

    return-void

    .line 48
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    invoke-static {p0}, Lcom/huxq17/download/TaskManager;->execute(Lcom/huxq17/download/core/task/Task;)V

    .line 51
    invoke-static {}, Lcom/huxq17/download/core/DownloadInfoManager;->getInstance()Lcom/huxq17/download/core/DownloadInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    .line 52
    new-instance v0, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;

    invoke-direct {v0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->defaultTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_27

    .line 53
    monitor-exit p0

    return-void

    .line 44
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method waitForConsumer()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 125
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDispatcher;->isBlockForConsumeRequest()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 126
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->consumer:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_10} :catch_19
    .catchall {:try_start_5 .. :try_end_10} :catchall_17

    goto :goto_5

    .line 131
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDispatcher;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 132
    goto :goto_1e

    .line 131
    :catchall_17
    move-exception v0

    goto :goto_1f

    .line 128
    :catch_19
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_17

    goto :goto_11

    .line 133
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1e
    return-void

    .line 131
    :goto_1f
    iget-object v1, p0, Lcom/huxq17/download/core/DownloadDispatcher;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 132
    throw v0
.end method
