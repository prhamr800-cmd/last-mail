###### Class com.huxq17.download.core.DownloadDetailsInfo (com.huxq17.download.core.DownloadDetailsInfo)
.class public Lcom/huxq17/download/core/DownloadDetailsInfo;
.super Ljava/lang/Object;
.source "DownloadDetailsInfo.java"


# instance fields
.field private cacheBean:Lcom/huxq17/download/DownloadProvider$CacheBean;

.field private completedSize:J

.field private contentLength:J

.field private final createTime:J

.field private downloadFile:Ljava/io/File;

.field private downloadPartFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

.field private downloadTask:Lcom/huxq17/download/core/task/DownloadTask;

.field private errorCode:Lcom/huxq17/download/ErrorCode;

.field private filePath:Ljava/lang/String;

.field private finished:I

.field protected final id:Ljava/lang/String;

.field private isForceRetry:Z

.field private md5:Ljava/lang/String;

.field private progress:I

.field private speed:Ljava/lang/String;

.field private speedMonitor:Lcom/huxq17/download/core/SpeedMonitor;

.field protected volatile status:Lcom/huxq17/download/core/DownloadInfo$Status;

.field private final tag:Ljava/lang/String;

.field private tempDir:Ljava/io/File;

.field private threadNum:I

.field private transferEncoding:Ljava/lang/String;

.field protected final url:Ljava/lang/String;

.field private wfExtraData:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/huxq17/download/core/DownloadDetailsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .param p5, "createTime"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->contentLength:J

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadPartFiles:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->isForceRetry:Z

    .line 59
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->url:Ljava/lang/String;

    .line 60
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 61
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->id:Ljava/lang/String;

    goto :goto_1e

    .line 63
    :cond_1c
    iput-object p4, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->id:Ljava/lang/String;

    .line 65
    :goto_1e
    iput-object p3, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->tag:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->filePath:Ljava/lang/String;

    .line 67
    iput-wide p5, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->createTime:J

    .line 68
    if-eqz p2, :cond_2d

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    .line 71
    :cond_2d
    new-instance v0, Lcom/huxq17/download/core/SpeedMonitor;

    invoke-direct {v0}, Lcom/huxq17/download/core/SpeedMonitor;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->speedMonitor:Lcom/huxq17/download/core/SpeedMonitor;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/huxq17/download/core/DownloadDetailsInfo;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 22
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadPartFiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huxq17/download/core/DownloadDetailsInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 22
    iget-wide v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->completedSize:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/huxq17/download/core/DownloadDetailsInfo;J)J
    .registers 3
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadDetailsInfo;
    .param p1, "x1"    # J

    .line 22
    iput-wide p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->completedSize:J

    return-wide p1
.end method

.method private loadDownloadFiles()V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->filePath:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->getTempDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 236
    .local v0, "tempDir":Ljava/io/File;
    new-instance v1, Lcom/huxq17/download/core/DownloadDetailsInfo$1;

    invoke-direct {v1, p0}, Lcom/huxq17/download/core/DownloadDetailsInfo$1;-><init>(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 248
    return-void
.end method


# virtual methods
.method public calculateDownloadProgress()V
    .registers 4

    .line 251
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 252
    iget-wide v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->contentLength:J

    invoke-virtual {p0, v0, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setCompletedSize(J)V

    .line 253
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    if-nez v0, :cond_2d

    .line 254
    sget-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->FINISHED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    goto :goto_2d

    .line 258
    :cond_15
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadPartFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_24

    .line 259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->completedSize:J

    .line 260
    invoke-direct {p0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->loadDownloadFiles()V

    .line 262
    :cond_24
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    if-nez v0, :cond_2d

    .line 263
    sget-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->STOPPED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 266
    :cond_2d
    :goto_2d
    iget-wide v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->completedSize:J

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-wide v1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->contentLength:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->progress:I

    .line 267
    return-void
.end method

.method public clearErrorCode()V
    .registers 2

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->errorCode:Lcom/huxq17/download/ErrorCode;

    .line 200
    return-void
.end method

.method public computeSpeed()V
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->speedMonitor:Lcom/huxq17/download/core/SpeedMonitor;

    invoke-virtual {v0}, Lcom/huxq17/download/core/SpeedMonitor;->getSpeed()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->speed:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public deleteDownloadFile()V
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    if-eqz v0, :cond_9

    .line 281
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    invoke-static {v0}, Lcom/huxq17/download/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 283
    :cond_9
    return-void
.end method

.method public deleteTempDir()V
    .registers 2

    .line 286
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getTempDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 287
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getTempDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/huxq17/download/utils/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 289
    :cond_d
    return-void
.end method

.method public download(J)V
    .registers 5
    .param p1, "length"    # J

    .line 159
    iget-wide v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->completedSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->completedSize:J

    .line 160
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->speedMonitor:Lcom/huxq17/download/core/SpeedMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/huxq17/download/core/SpeedMonitor;->download(J)V

    .line 161
    return-void
.end method

.method public getCacheBean()Lcom/huxq17/download/DownloadProvider$CacheBean;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->cacheBean:Lcom/huxq17/download/DownloadProvider$CacheBean;

    return-object v0
.end method

.method public getCompletedSize()J
    .registers 3

    .line 324
    iget-wide v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->completedSize:J

    return-wide v0
.end method

.method public getContentLength()J
    .registers 3

    .line 308
    iget-wide v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->contentLength:J

    return-wide v0
.end method

.method public getCreateTime()J
    .registers 3

    .line 320
    iget-wide v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->createTime:J

    return-wide v0
.end method

.method public getDownloadFile()Ljava/io/File;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    return-object v0
.end method

.method public getDownloadRequest()Lcom/huxq17/download/core/DownloadRequest;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    return-object v0
.end method

.method public getDownloadTask()Lcom/huxq17/download/core/task/DownloadTask;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadTask:Lcom/huxq17/download/core/task/DownloadTask;

    return-object v0
.end method

.method public getErrorCode()Lcom/huxq17/download/ErrorCode;
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->errorCode:Lcom/huxq17/download/ErrorCode;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFinished()I
    .registers 2

    .line 316
    iget v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->finished:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->md5:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->md5:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getStatus()Lcom/huxq17/download/core/DownloadInfo$Status;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTempDir()Ljava/io/File;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->tempDir:Ljava/io/File;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 208
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->getTempDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->tempDir:Ljava/io/File;

    .line 210
    :cond_10
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->tempDir:Ljava/io/File;

    return-object v0
.end method

.method public getThreadNum()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->threadNum:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWfExtraData()Ljava/lang/Object;
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->wfExtraData:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->wfExtraData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public isChunked()Z
    .registers 3

    .line 151
    const-string v0, "chunked"

    iget-object v1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDeleted()Z
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    sget-object v1, Lcom/huxq17/download/core/DownloadInfo$Status;->DELETED:Lcom/huxq17/download/core/DownloadInfo$Status;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDisableBreakPointDownload()Z
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadRequest;->isDisableBreakPointDownload()Z

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .registers 8

    .line 214
    monitor-enter p0

    .line 215
    :try_start_1
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 216
    monitor-exit p0

    return v1

    .line 218
    :cond_8
    iget v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->finished:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_38

    .line 219
    iget-wide v3, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->contentLength:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->contentLength:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_2b

    .line 220
    monitor-exit p0

    return v2

    .line 221
    :cond_2b
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 222
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    invoke-static {v0}, Lcom/huxq17/download/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 225
    :cond_38
    iput v1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->finished:I

    .line 226
    monitor-exit p0

    return v1

    .line 227
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public isForceRetry()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->isForceRetry:Z

    return v0
.end method

.method public declared-synchronized isRunning()Z
    .registers 2

    monitor-enter p0

    .line 340
    :try_start_1
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadInfo$Status;->isRunning()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCacheBean(Lcom/huxq17/download/DownloadProvider$CacheBean;)V
    .registers 2
    .param p1, "cacheBean"    # Lcom/huxq17/download/DownloadProvider$CacheBean;

    .line 131
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->cacheBean:Lcom/huxq17/download/DownloadProvider$CacheBean;

    .line 132
    return-void
.end method

.method public setCompletedSize(J)V
    .registers 3
    .param p1, "completedSize"    # J

    .line 155
    iput-wide p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->completedSize:J

    .line 156
    return-void
.end method

.method public setContentLength(J)V
    .registers 3
    .param p1, "contentLength"    # J

    .line 168
    iput-wide p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->contentLength:J

    .line 169
    return-void
.end method

.method public setDownloadRequest(Lcom/huxq17/download/core/DownloadRequest;)V
    .registers 2
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;

    .line 112
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    .line 113
    return-void
.end method

.method public setDownloadTask(Lcom/huxq17/download/core/task/DownloadTask;)V
    .registers 2
    .param p1, "downloadTask"    # Lcom/huxq17/download/core/task/DownloadTask;

    .line 100
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadTask:Lcom/huxq17/download/core/task/DownloadTask;

    .line 101
    return-void
.end method

.method public setErrorCode(Lcom/huxq17/download/ErrorCode;)V
    .registers 3
    .param p1, "code"    # Lcom/huxq17/download/ErrorCode;

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;Z)V

    .line 189
    return-void
.end method

.method public setErrorCode(Lcom/huxq17/download/ErrorCode;Z)V
    .registers 4
    .param p1, "code"    # Lcom/huxq17/download/ErrorCode;
    .param p2, "force"    # Z

    .line 192
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadInfo$Status;->isRunning()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz p2, :cond_15

    .line 193
    :cond_e
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->errorCode:Lcom/huxq17/download/ErrorCode;

    .line 194
    sget-object v0, Lcom/huxq17/download/core/DownloadInfo$Status;->FAILED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 196
    :cond_15
    return-void
.end method

.method public setExtraData(Ljava/lang/Object;)V
    .registers 3
    .param p1, "extraData"    # Ljava/lang/Object;

    .line 332
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->wfExtraData:Ljava/lang/ref/WeakReference;

    .line 333
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 92
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 93
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->filePath:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->deleteTempDir()V

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    .line 97
    :cond_16
    return-void
.end method

.method public setFinished(I)V
    .registers 2
    .param p1, "finished"    # I

    .line 172
    iput p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->finished:I

    .line 173
    return-void
.end method

.method public setForceRetry(Z)V
    .registers 2
    .param p1, "isForceRetry"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->isForceRetry:Z

    .line 77
    return-void
.end method

.method public setMD5(Ljava/lang/String;)V
    .registers 2
    .param p1, "md5"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->md5:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setProgress(I)V
    .registers 2
    .param p1, "progress"    # I

    .line 184
    iput p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->progress:I

    .line 185
    return-void
.end method

.method public setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V
    .registers 2
    .param p1, "status"    # Lcom/huxq17/download/core/DownloadInfo$Status;

    .line 176
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    .line 177
    return-void
.end method

.method public setThreadNum(I)V
    .registers 2
    .param p1, "threadNum"    # I

    .line 84
    iput p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->threadNum:I

    .line 85
    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "transferEncoding"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo;->transferEncoding:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public snapshot()Lcom/huxq17/download/core/DownloadInfo;
    .registers 20

    move-object/from16 v15, p0

    move-object/from16 v16, p0

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->computeSpeed()V

    .line 271
    new-instance v17, Lcom/huxq17/download/core/DownloadInfo;

    move-object/from16 v0, v17

    iget-object v1, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->url:Ljava/lang/String;

    iget-object v2, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->downloadFile:Ljava/io/File;

    iget-object v3, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->tag:Ljava/lang/String;

    iget-object v4, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->id:Ljava/lang/String;

    iget-wide v5, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->createTime:J

    iget-object v7, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->speed:Ljava/lang/String;

    iget-wide v8, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->completedSize:J

    iget-wide v10, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->contentLength:J

    iget-object v12, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->errorCode:Lcom/huxq17/download/ErrorCode;

    iget-object v13, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->status:Lcom/huxq17/download/core/DownloadInfo$Status;

    iget v14, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->finished:I

    move-object/from16 v18, v0

    iget v0, v15, Lcom/huxq17/download/core/DownloadDetailsInfo;->progress:I

    move v15, v0

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v16}, Lcom/huxq17/download/core/DownloadInfo;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLcom/huxq17/download/ErrorCode;Lcom/huxq17/download/core/DownloadInfo$Status;IILcom/huxq17/download/core/DownloadDetailsInfo;)V

    return-object v17
.end method

.method public updateFilePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 116
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1c

    .line 119
    :cond_9
    monitor-enter p0

    .line 120
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setFilePath(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->deleteDownloadFile()V

    .line 122
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huxq17/download/db/DBService;->updateInfo(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 123
    monitor-exit p0

    .line 124
    return-void

    .line 123
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v0

    .line 117
    :cond_1c
    :goto_1c
    return-void
.end method

###### Class com.huxq17.download.core.DownloadDetailsInfo.AnonymousClass1 (com.huxq17.download.core.DownloadDetailsInfo$1)
.class Lcom/huxq17/download/core/DownloadDetailsInfo$1;
.super Ljava/lang/Object;
.source "DownloadDetailsInfo.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huxq17/download/core/DownloadDetailsInfo;->loadDownloadFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huxq17/download/core/DownloadDetailsInfo;


# direct methods
.method constructor <init>(Lcom/huxq17/download/core/DownloadDetailsInfo;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 236
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo$1;->this$0:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 239
    const-string v0, "DOWNLOAD_PART-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 240
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo$1;->this$0:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-static {v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->access$000(Lcom/huxq17/download/core/DownloadDetailsInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, p0, Lcom/huxq17/download/core/DownloadDetailsInfo$1;->this$0:Lcom/huxq17/download/core/DownloadDetailsInfo;

    iget-object v2, p0, Lcom/huxq17/download/core/DownloadDetailsInfo$1;->this$0:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-static {v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->access$100(Lcom/huxq17/download/core/DownloadDetailsInfo;)J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/huxq17/download/core/DownloadDetailsInfo;->access$102(Lcom/huxq17/download/core/DownloadDetailsInfo;J)J

    .line 243
    const/4 v1, 0x1

    return v1

    .line 245
    .end local v0    # "file":Ljava/io/File;
    :cond_28
    const/4 v0, 0x0

    return v0
.end method
