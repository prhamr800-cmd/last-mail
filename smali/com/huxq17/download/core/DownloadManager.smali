###### Class com.huxq17.download.core.DownloadManager (com.huxq17.download.core.DownloadManager)
.class public Lcom/huxq17/download/core/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/huxq17/download/core/service/IDownloadManager;


# instance fields
.field private context:Landroid/content/Context;

.field private downloadDispatcher:Lcom/huxq17/download/core/DownloadDispatcher;

.field private downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

.field private volatile hasFetchDownloadList:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/huxq17/download/core/DownloadInfoManager;->getInstance()Lcom/huxq17/download/core/DownloadInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadManager;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    .line 28
    new-instance v0, Lcom/huxq17/download/core/DownloadDispatcher;

    invoke-direct {v0, p0}, Lcom/huxq17/download/core/DownloadDispatcher;-><init>(Lcom/huxq17/download/core/DownloadManager;)V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadManager;->downloadDispatcher:Lcom/huxq17/download/core/DownloadDispatcher;

    .line 29
    return-void
.end method

.method private checkId(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 106
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 109
    return-void

    .line 107
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private deleteDownloadInfo(Lcom/huxq17/download/core/DownloadDetailsInfo;)V
    .registers 4
    .param p1, "downloadInfo"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 71
    if-eqz p1, :cond_21

    .line 72
    sget-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->DELETED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {p1, v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 73
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadManager;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadInfoManager;->remove(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 74
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->deleteTempDir()V

    .line 75
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->deleteDownloadFile()V

    .line 76
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huxq17/download/db/DBService;->deleteInfo(Ljava/lang/String;)V

    .line 78
    :cond_21
    return-void
.end method

.method private getDownloadList(Lcom/huxq17/download/callback/Filter;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huxq17/download/callback/Filter<",
            "Lcom/huxq17/download/core/DownloadDetailsInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 160
    .local p1, "filter":Lcom/huxq17/download/callback/Filter;, "Lcom/huxq17/download/callback/Filter<Lcom/huxq17/download/core/DownloadDetailsInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "downloadList":Ljava/util/List;, "Ljava/util/List<Lcom/huxq17/download/core/DownloadInfo;>;"
    iget-boolean v1, p0, Lcom/huxq17/download/core/DownloadManager;->hasFetchDownloadList:Z

    if-nez v1, :cond_35

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huxq17/download/core/DownloadManager;->hasFetchDownloadList:Z

    .line 163
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huxq17/download/db/DBService;->getDownloadList()Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/huxq17/download/core/DownloadDetailsInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 165
    .local v3, "downloadDetailsInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-eqz p1, :cond_2c

    invoke-interface {p1, v3}, Lcom/huxq17/download/callback/Filter;->filter(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 166
    :cond_2c
    invoke-virtual {v3}, Lcom/huxq17/download/core/DownloadDetailsInfo;->snapshot()Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v3    # "downloadDetailsInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    :cond_33
    goto :goto_18

    .line 169
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/huxq17/download/core/DownloadDetailsInfo;>;"
    :cond_34
    goto :goto_5b

    .line 170
    :cond_35
    iget-object v1, p0, Lcom/huxq17/download/core/DownloadManager;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadInfoManager;->getAll()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 171
    .local v2, "downloadDetailsInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-eqz p1, :cond_53

    invoke-interface {p1, v2}, Lcom/huxq17/download/callback/Filter;->filter(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 172
    :cond_53
    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->snapshot()Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v2    # "downloadDetailsInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    :cond_5a
    goto :goto_3f

    .line 176
    :cond_5b
    :goto_5b
    return-object v0
.end method


# virtual methods
.method public deleteById(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 54
    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadManager;->getDownloadTaskById(Ljava/lang/String;)Lcom/huxq17/download/core/task/DownloadTask;

    move-result-object v0

    .line 55
    .local v0, "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    if-eqz v0, :cond_20

    .line 56
    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadTask;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 57
    :try_start_11
    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadTask;->cancel()V

    .line 58
    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadTask;->getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v2

    .line 59
    .local v2, "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    invoke-direct {p0, v2}, Lcom/huxq17/download/core/DownloadManager;->deleteDownloadInfo(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 60
    .end local v2    # "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    monitor-exit v1

    goto :goto_33

    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw v2

    .line 62
    :cond_20
    iget-object v1, p0, Lcom/huxq17/download/core/DownloadManager;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-virtual {v1, p1}, Lcom/huxq17/download/core/DownloadInfoManager;->get(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v1

    .line 63
    .local v1, "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-nez v1, :cond_30

    .line 64
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/huxq17/download/db/DBService;->getDownloadInfo(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v1

    .line 66
    :cond_30
    invoke-direct {p0, v1}, Lcom/huxq17/download/core/DownloadManager;->deleteDownloadInfo(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 68
    .end local v1    # "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    :goto_33
    return-void

    .line 52
    .end local v0    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteByTag(Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadManager;->getDownloadListByTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/huxq17/download/core/DownloadInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huxq17/download/core/DownloadInfo;

    .line 83
    .local v2, "info":Lcom/huxq17/download/core/DownloadInfo;
    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huxq17/download/core/DownloadManager;->deleteById(Ljava/lang/String;)V

    .line 84
    .end local v2    # "info":Lcom/huxq17/download/core/DownloadInfo;
    goto :goto_8

    .line 85
    :cond_1c
    return-void
.end method

.method public getAllDownloadList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huxq17/download/core/DownloadManager;->getDownloadList(Lcom/huxq17/download/callback/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDownloadInfoById(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadInfo;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadManager;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-virtual {v0, p1}, Lcom/huxq17/download/core/DownloadInfoManager;->get(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    .line 181
    .local v0, "downloadDetailsInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-nez v0, :cond_10

    .line 182
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huxq17/download/db/DBService;->getDownloadInfo(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    .line 184
    :cond_10
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->snapshot()Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1
.end method

.method public getDownloadListByTag(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/huxq17/download/core/DownloadManager$3;

    invoke-direct {v0, p0, p1}, Lcom/huxq17/download/core/DownloadManager$3;-><init>(Lcom/huxq17/download/core/DownloadManager;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/huxq17/download/core/DownloadManager;->getDownloadList(Lcom/huxq17/download/callback/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadTaskById(Ljava/lang/String;)Lcom/huxq17/download/core/task/DownloadTask;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadManager;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-virtual {v0, p1}, Lcom/huxq17/download/core/DownloadInfoManager;->get(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    .line 200
    .local v0, "downloadDetailsInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-eqz v0, :cond_d

    .line 201
    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getDownloadTask()Lcom/huxq17/download/core/task/DownloadTask;

    move-result-object v1

    return-object v1

    .line 203
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDownloadedList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/huxq17/download/core/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/huxq17/download/core/DownloadManager$2;-><init>(Lcom/huxq17/download/core/DownloadManager;)V

    invoke-direct {p0, v0}, Lcom/huxq17/download/core/DownloadManager;->getDownloadList(Lcom/huxq17/download/callback/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadingList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/huxq17/download/core/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/huxq17/download/core/DownloadManager$1;-><init>(Lcom/huxq17/download/core/DownloadManager;)V

    invoke-direct {p0, v0}, Lcom/huxq17/download/core/DownloadManager;->getDownloadList(Lcom/huxq17/download/callback/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileIfSucceed(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 208
    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadManager;->hasDownloadSucceed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 209
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huxq17/download/db/DBService;->getDownloadInfo(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    .line 210
    .local v0, "info":Lcom/huxq17/download/core/DownloadDetailsInfo;
    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getDownloadFile()Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 212
    .end local v0    # "info":Lcom/huxq17/download/core/DownloadDetailsInfo;
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDownloadSucceed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huxq17/download/db/DBService;->getDownloadInfo(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    .line 190
    .local v0, "info":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public isShutdown()Z
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadManager;->downloadDispatcher:Lcom/huxq17/download/core/DownloadDispatcher;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDispatcher;->isRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTaskRunning(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 194
    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadManager;->getDownloadTaskById(Ljava/lang/String;)Lcom/huxq17/download/core/task/DownloadTask;

    move-result-object v0

    .line 195
    .local v0, "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public pause(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0, p1}, Lcom/huxq17/download/core/DownloadManager;->checkId(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadManager;->getDownloadTaskById(Ljava/lang/String;)Lcom/huxq17/download/core/task/DownloadTask;

    move-result-object v0

    .line 100
    .local v0, "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    if-eqz v0, :cond_c

    .line 101
    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadTask;->pause()V

    .line 103
    :cond_c
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Lcom/huxq17/download/core/DownloadManager;->checkId(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadManager;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-virtual {v0, p1}, Lcom/huxq17/download/core/DownloadInfoManager;->get(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    .line 115
    .local v0, "transferInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-nez v0, :cond_c

    return-void

    .line 116
    :cond_c
    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getDownloadRequest()Lcom/huxq17/download/core/DownloadRequest;

    move-result-object v1

    .line 117
    .local v1, "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    if-eqz v1, :cond_16

    .line 118
    invoke-virtual {p0, v1}, Lcom/huxq17/download/core/DownloadManager;->submit(Lcom/huxq17/download/core/DownloadRequest;)V

    goto :goto_25

    .line 120
    :cond_16
    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huxq17/download/core/DownloadRequest;->newRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->submit()V

    .line 122
    :goto_25
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadManager;->downloadDispatcher:Lcom/huxq17/download/core/DownloadDispatcher;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDispatcher;->cancel()V

    .line 218
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadManager;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadInfoManager;->clear()V

    .line 219
    invoke-static {}, Lcom/huxq17/download/DownloadInfoSnapshot;->release()V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huxq17/download/core/DownloadManager;->hasFetchDownloadList:Z

    .line 221
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadManager;->context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/huxq17/download/core/DownloadManager;->checkId(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadManager;->getDownloadTaskById(Ljava/lang/String;)Lcom/huxq17/download/core/task/DownloadTask;

    move-result-object v0

    .line 91
    .local v0, "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    if-eqz v0, :cond_c

    .line 92
    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadTask;->stop()V

    .line 94
    :cond_c
    return-void
.end method

.method public submit(Lcom/huxq17/download/core/DownloadRequest;)V
    .registers 5
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;

    .line 37
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getId()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/DownloadManager;->isTaskRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is running,we need do nothing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huxq17/download/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 41
    return-void

    .line 43
    :cond_29
    iget-object v1, p0, Lcom/huxq17/download/core/DownloadManager;->downloadInfoManager:Lcom/huxq17/download/core/DownloadInfoManager;

    invoke-virtual {v1, v0}, Lcom/huxq17/download/core/DownloadInfoManager;->get(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v1

    .line 44
    .local v1, "downloadInfo":Lcom/huxq17/download/core/DownloadDetailsInfo;
    if-eqz v1, :cond_34

    .line 45
    invoke-virtual {p1, v1}, Lcom/huxq17/download/core/DownloadRequest;->setDownloadInfo(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 47
    :cond_34
    iget-object v2, p0, Lcom/huxq17/download/core/DownloadManager;->downloadDispatcher:Lcom/huxq17/download/core/DownloadDispatcher;

    invoke-virtual {v2, p1}, Lcom/huxq17/download/core/DownloadDispatcher;->enqueueRequest(Lcom/huxq17/download/core/DownloadRequest;)V

    .line 48
    return-void
.end method

###### Class com.huxq17.download.core.DownloadManager.AnonymousClass1 (com.huxq17.download.core.DownloadManager$1)
.class Lcom/huxq17/download/core/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/huxq17/download/callback/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huxq17/download/core/DownloadManager;->getDownloadingList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huxq17/download/callback/Filter<",
        "Lcom/huxq17/download/core/DownloadDetailsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huxq17/download/core/DownloadManager;


# direct methods
.method constructor <init>(Lcom/huxq17/download/core/DownloadManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huxq17/download/core/DownloadManager;

    .line 126
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadManager$1;->this$0:Lcom/huxq17/download/core/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/huxq17/download/core/DownloadDetailsInfo;)Z
    .registers 3
    .param p1, "downloadDetailsInfo"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 129
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .registers 2

    .line 126
    check-cast p1, Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadManager$1;->filter(Lcom/huxq17/download/core/DownloadDetailsInfo;)Z

    move-result p1

    return p1
.end method

###### Class com.huxq17.download.core.DownloadManager.AnonymousClass2 (com.huxq17.download.core.DownloadManager$2)
.class Lcom/huxq17/download/core/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/huxq17/download/callback/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huxq17/download/core/DownloadManager;->getDownloadedList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huxq17/download/callback/Filter<",
        "Lcom/huxq17/download/core/DownloadDetailsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huxq17/download/core/DownloadManager;


# direct methods
.method constructor <init>(Lcom/huxq17/download/core/DownloadManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huxq17/download/core/DownloadManager;

    .line 136
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadManager$2;->this$0:Lcom/huxq17/download/core/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/huxq17/download/core/DownloadDetailsInfo;)Z
    .registers 3
    .param p1, "downloadDetailsInfo"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 139
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isFinished()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .registers 2

    .line 136
    check-cast p1, Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadManager$2;->filter(Lcom/huxq17/download/core/DownloadDetailsInfo;)Z

    move-result p1

    return p1
.end method

###### Class com.huxq17.download.core.DownloadManager.AnonymousClass3 (com.huxq17.download.core.DownloadManager$3)
.class Lcom/huxq17/download/core/DownloadManager$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/huxq17/download/callback/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huxq17/download/core/DownloadManager;->getDownloadListByTag(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huxq17/download/callback/Filter<",
        "Lcom/huxq17/download/core/DownloadDetailsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huxq17/download/core/DownloadManager;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huxq17/download/core/DownloadManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/huxq17/download/core/DownloadManager;

    .line 146
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadManager$3;->this$0:Lcom/huxq17/download/core/DownloadManager;

    iput-object p2, p0, Lcom/huxq17/download/core/DownloadManager$3;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/huxq17/download/core/DownloadDetailsInfo;)Z
    .registers 4
    .param p1, "downloadDetailsInfo"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 149
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huxq17/download/core/DownloadManager$3;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Z
    .registers 2

    .line 146
    check-cast p1, Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadManager$3;->filter(Lcom/huxq17/download/core/DownloadDetailsInfo;)Z

    move-result p1

    return p1
.end method
