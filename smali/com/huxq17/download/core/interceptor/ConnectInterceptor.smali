###### Class com.huxq17.download.core.interceptor.ConnectInterceptor (com.huxq17.download.core.interceptor.ConnectInterceptor)
.class public Lcom/huxq17/download/core/interceptor/ConnectInterceptor;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lcom/huxq17/download/core/DownloadInterceptor;


# instance fields
.field private final blockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/task/DownloadBlockTask;",
            ">;"
        }
    .end annotation
.end field

.field private downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

.field private downloadTask:Lcom/huxq17/download/core/task/DownloadTask;

.field private firstBlockTask:Lcom/huxq17/download/core/task/DownloadBlockTask;

.field private isConditionRequest:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->firstBlockTask:Lcom/huxq17/download/core/task/DownloadBlockTask;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->blockList:Ljava/util/List;

    return-void
.end method

.method private buildRequest(Lcom/huxq17/download/core/DownloadRequest;)Lcom/huxq17/download/core/connection/DownloadConnection;
    .registers 12
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;

    .line 194
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getId()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->createConnection(Lcom/huxq17/download/core/DownloadRequest;)Lcom/huxq17/download/core/connection/DownloadConnection;

    move-result-object v1

    .line 196
    .local v1, "connection":Lcom/huxq17/download/core/connection/DownloadConnection;
    new-instance v2, Lcom/huxq17/download/core/task/DownloadBlockTask;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v1}, Lcom/huxq17/download/core/task/DownloadBlockTask;-><init>(Lcom/huxq17/download/core/DownloadRequest;ILcom/huxq17/download/core/connection/DownloadConnection;)V

    iput-object v2, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->firstBlockTask:Lcom/huxq17/download/core/task/DownloadBlockTask;

    .line 197
    iget-object v2, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->firstBlockTask:Lcom/huxq17/download/core/task/DownloadBlockTask;

    invoke-virtual {v2}, Lcom/huxq17/download/core/task/DownloadBlockTask;->getCompletedSize()J

    move-result-wide v2

    .line 198
    .local v2, "completedSize":J
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/huxq17/download/db/DBService;->queryCache(Ljava/lang/String;)Lcom/huxq17/download/DownloadProvider$CacheBean;

    move-result-object v4

    .line 199
    .local v4, "cacheBean":Lcom/huxq17/download/DownloadProvider$CacheBean;
    if-nez v4, :cond_21

    .line 200
    return-object v1

    .line 202
    :cond_21
    iget-object v5, v4, Lcom/huxq17/download/DownloadProvider$CacheBean;->eTag:Ljava/lang/String;

    .line 203
    .local v5, "eTag":Ljava/lang/String;
    iget-object v6, v4, Lcom/huxq17/download/DownloadProvider$CacheBean;->lastModified:Ljava/lang/String;

    .line 204
    .local v6, "lastModified":Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_5b

    iget-object v7, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v7}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isDisableBreakPointDownload()Z

    move-result v7

    if-nez v7, :cond_5b

    .line 205
    const-string v7, "If-Range"

    invoke-virtual {v4}, Lcom/huxq17/download/DownloadProvider$CacheBean;->getIfRangeField()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Lcom/huxq17/download/core/connection/DownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v7, "Range"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Lcom/huxq17/download/core/connection/DownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->isConditionRequest:Z

    goto :goto_85

    .line 208
    :cond_5b
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->isForceReDownload()Z

    move-result v7

    if-nez v7, :cond_85

    .line 209
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_78

    .line 210
    const-string v7, "If-Modified-Since"

    iget-object v8, v4, Lcom/huxq17/download/DownloadProvider$CacheBean;->lastModified:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Lcom/huxq17/download/core/connection/DownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_78
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_85

    .line 213
    const-string v7, "If-None-Match"

    iget-object v8, v4, Lcom/huxq17/download/DownloadProvider$CacheBean;->eTag:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Lcom/huxq17/download/core/connection/DownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_85
    :goto_85
    return-object v1
.end method

.method private checkDownloadFile(JZ)V
    .registers 7
    .param p1, "contentLength"    # J
    .param p3, "isSupportBreakPointDownload"    # Z

    .line 183
    if-eqz p3, :cond_c

    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 184
    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getContentLength()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_11

    .line 185
    :cond_c
    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->deleteTempDir()V

    .line 187
    :cond_11
    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0, p1, p2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setContentLength(J)V

    .line 188
    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setFinished(I)V

    .line 189
    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->deleteDownloadFile()V

    .line 190
    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadTask:Lcom/huxq17/download/core/task/DownloadTask;

    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadTask;->updateInfo()V

    .line 191
    return-void
.end method

.method private checkIsSpaceNotEnough(J)Z
    .registers 13
    .param p1, "contentLength"    # J

    .line 170
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 171
    .local v0, "downloadDirUsableSpace":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/huxq17/download/utils/Util;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v2

    .line 172
    .local v2, "dataFileUsableSpace":J
    const-class v4, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-static {v4}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-interface {v4}, Lcom/huxq17/download/core/service/IDownloadConfigService;->getMinUsableSpace()J

    move-result-wide v4

    .line 173
    .local v4, "minUsableStorageSpace":J
    const-wide/16 v6, 0x2

    mul-long v6, v6, p1

    cmp-long v8, v0, v6

    if-ltz v8, :cond_32

    cmp-long v6, v2, v4

    if-gtz v6, :cond_30

    goto :goto_32

    .line 179
    :cond_30
    const/4 v6, 0x0

    return v6

    .line 174
    :cond_32
    :goto_32
    const-class v6, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v6}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v6}, Lcom/huxq17/download/core/service/IDownloadManager;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 175
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "downloadFileAvailableSize":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download directory usable space is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";but download file\'s contentLength is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huxq17/download/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 177
    const/4 v8, 0x1

    return v8
.end method

.method private clearBlockList()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->blockList:Ljava/util/List;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object v1, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->blockList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private closeConnectionAndReturn(Lcom/huxq17/download/core/connection/DownloadConnection;)Lcom/huxq17/download/core/DownloadInfo;
    .registers 3
    .param p1, "connection"    # Lcom/huxq17/download/core/connection/DownloadConnection;

    .line 258
    invoke-interface {p1}, Lcom/huxq17/download/core/connection/DownloadConnection;->close()V

    .line 259
    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->snapshot()Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method private connect(Lcom/huxq17/download/core/connection/DownloadConnection;)Lokhttp3/Response;
    .registers 5
    .param p1, "connection"    # Lcom/huxq17/download/core/connection/DownloadConnection;

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "response":Lokhttp3/Response;
    invoke-direct {p0}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 242
    :try_start_7
    invoke-interface {p1}, Lcom/huxq17/download/core/connection/DownloadConnection;->connect()Lokhttp3/Response;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 248
    goto :goto_1e

    .line 243
    :catch_d
    move-exception v1

    .line 244
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 245
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 247
    :cond_1b
    invoke-interface {p1}, Lcom/huxq17/download/core/connection/DownloadConnection;->close()V

    .line 250
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private createConnection(Lcom/huxq17/download/core/DownloadRequest;)Lcom/huxq17/download/core/connection/DownloadConnection;
    .registers 4
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;

    .line 263
    const-class v0, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-interface {v0}, Lcom/huxq17/download/core/service/IDownloadConfigService;->getDownloadConnectionFactory()Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    move-result-object v0

    .line 264
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getHttpRequestBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huxq17/download/core/connection/DownloadConnection$Factory;->create(Lokhttp3/Request$Builder;)Lcom/huxq17/download/core/connection/DownloadConnection;

    move-result-object v0

    .line 263
    return-object v0
.end method

.method private deleteTempIfThreadNumChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V
    .registers 6
    .param p1, "downloadInfo"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 47
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getTempDir()Ljava/io/File;

    move-result-object v0

    .line 48
    .local v0, "tempDir":Ljava/io/File;
    if-eqz v0, :cond_1b

    .line 49
    new-instance v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor$1;

    invoke-direct {v1, p0}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor$1;-><init>(Lcom/huxq17/download/core/interceptor/ConnectInterceptor;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "childList":[Ljava/lang/String;
    if-eqz v1, :cond_1b

    array-length v2, v1

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getThreadNum()I

    move-result v3

    if-eq v2, v3, :cond_1b

    .line 56
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->deleteTempDir()V

    .line 59
    .end local v1    # "childList":[Ljava/lang/String;
    :cond_1b
    return-void
.end method

.method private getContentLength(Lcom/huxq17/download/core/connection/DownloadConnection;)J
    .registers 8
    .param p1, "connection"    # Lcom/huxq17/download/core/connection/DownloadConnection;

    .line 220
    const-wide/16 v0, -0x1

    .line 221
    .local v0, "contentLength":J
    const-string v2, "Content-Range"

    invoke-interface {p1, v2}, Lcom/huxq17/download/core/connection/DownloadConnection;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "contentRange":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 223
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "session":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_21

    .line 226
    const/4 v4, 0x1

    :try_start_15
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1d

    move-wide v0, v4

    .line 229
    goto :goto_21

    .line 227
    :catch_1d
    move-exception v4

    .line 228
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 232
    .end local v3    # "session":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_21
    :goto_21
    iget-object v3, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v3}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isChunked()Z

    move-result v3

    if-nez v3, :cond_39

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_39

    .line 233
    const-string v3, "Content-Length"

    invoke-interface {p1, v3}, Lcom/huxq17/download/core/connection/DownloadConnection;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huxq17/download/utils/Util;->parseContentLength(Ljava/lang/String;)J

    move-result-wide v0

    .line 235
    :cond_39
    return-wide v0
.end method

.method private isCancelled()Z
    .registers 2

    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->blockList:Ljava/util/List;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->blockList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huxq17/download/core/task/Task;

    .line 158
    .local v2, "task":Lcom/huxq17/download/core/task/Task;
    invoke-virtual {v2}, Lcom/huxq17/download/core/task/Task;->cancel()V

    .line 159
    .end local v2    # "task":Lcom/huxq17/download/core/task/Task;
    goto :goto_9

    .line 160
    :cond_19
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public intercept(Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;)Lcom/huxq17/download/core/DownloadInfo;
    .registers 26
    .param p1, "chain"    # Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;

    .line 63
    move-object/from16 v1, p0

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->isConditionRequest:Z

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;->request()Lcom/huxq17/download/core/DownloadRequest;

    move-result-object v2

    .line 65
    .local v2, "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadRequest;->getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 66
    iget-object v3, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v3}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getDownloadTask()Lcom/huxq17/download/core/task/DownloadTask;

    move-result-object v3

    iput-object v3, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadTask:Lcom/huxq17/download/core/task/DownloadTask;

    .line 68
    iget-object v3, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-direct {v1, v3}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->deleteTempIfThreadNumChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V

    .line 69
    invoke-direct {v1, v2}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->buildRequest(Lcom/huxq17/download/core/DownloadRequest;)Lcom/huxq17/download/core/connection/DownloadConnection;

    move-result-object v3

    .line 71
    .local v3, "conn":Lcom/huxq17/download/core/connection/DownloadConnection;
    invoke-direct {v1, v3}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->connect(Lcom/huxq17/download/core/connection/DownloadConnection;)Lokhttp3/Response;

    move-result-object v4

    .line 72
    .local v4, "response":Lokhttp3/Response;
    if-nez v4, :cond_3d

    .line 73
    invoke-interface {v3}, Lcom/huxq17/download/core/connection/DownloadConnection;->close()V

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_36

    .line 75
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v5, Lcom/huxq17/download/ErrorCode;->ERROR_NETWORK_UNAVAILABLE:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v0, v5}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    .line 77
    :cond_36
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->snapshot()Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    return-object v0

    .line 79
    :cond_3d
    iget-object v5, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadTask:Lcom/huxq17/download/core/task/DownloadTask;

    invoke-static {v5, v4}, Lcom/huxq17/download/utils/Util;->setFilePathIfNeed(Lcom/huxq17/download/core/task/DownloadTask;Lokhttp3/Response;)V

    .line 81
    const-string v5, "Last-Modified"

    invoke-interface {v3, v5}, Lcom/huxq17/download/core/connection/DownloadConnection;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "lastModified":Ljava/lang/String;
    const-string v6, "ETag"

    invoke-interface {v3, v6}, Lcom/huxq17/download/core/connection/DownloadConnection;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "eTag":Ljava/lang/String;
    const-string v7, "Accept-Ranges"

    invoke-interface {v3, v7}, Lcom/huxq17/download/core/connection/DownloadConnection;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "acceptRanges":Ljava/lang/String;
    iget-object v8, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    const-string v9, "Content-MD5"

    invoke-interface {v3, v9}, Lcom/huxq17/download/core/connection/DownloadConnection;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setMD5(Ljava/lang/String;)V

    .line 85
    iget-object v8, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    const-string v9, "Transfer-Encoding"

    invoke-interface {v3, v9}, Lcom/huxq17/download/core/connection/DownloadConnection;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setTransferEncoding(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v8

    .line 88
    .local v8, "responseCode":I
    invoke-direct {v1, v3}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->getContentLength(Lcom/huxq17/download/core/connection/DownloadConnection;)J

    move-result-wide v9

    .line 89
    .local v9, "contentLength":J
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v11

    if-eqz v11, :cond_a4

    .line 90
    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    if-nez v13, :cond_92

    iget-object v11, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v11}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isChunked()Z

    move-result v11

    if-nez v11, :cond_92

    .line 91
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v11, Lcom/huxq17/download/ErrorCode;->ERROR_CONTENT_LENGTH_NOT_FOUND:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v0, v11}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    .line 92
    invoke-direct {v1, v3}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->closeConnectionAndReturn(Lcom/huxq17/download/core/connection/DownloadConnection;)Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    return-object v0

    .line 94
    :cond_92
    invoke-direct {v1, v9, v10}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->checkIsSpaceNotEnough(J)Z

    move-result v11

    if-eqz v11, :cond_d3

    .line 95
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v11, Lcom/huxq17/download/ErrorCode;->ERROR_USABLE_SPACE_NOT_ENOUGH:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v0, v11}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    .line 96
    invoke-direct {v1, v3}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->closeConnectionAndReturn(Lcom/huxq17/download/core/connection/DownloadConnection;)Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    return-object v0

    .line 98
    :cond_a4
    const/16 v11, 0x130

    if-ne v8, v11, :cond_1a7

    .line 99
    iget-object v11, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v11}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_d3

    .line 100
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    iget-object v11, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v11}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getContentLength()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setCompletedSize(J)V

    .line 101
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    const/16 v11, 0x64

    invoke-virtual {v0, v11}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setProgress(I)V

    .line 102
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v11, Lcom/huxq17/download/core/DownloadInfo$Status;->FINISHED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v0, v11}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 103
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadTask:Lcom/huxq17/download/core/task/DownloadTask;

    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadTask;->updateInfo()V

    .line 104
    invoke-direct {v1, v3}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->closeConnectionAndReturn(Lcom/huxq17/download/core/connection/DownloadConnection;)Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    return-object v0

    .line 114
    :cond_d3
    const/16 v11, 0xc8

    if-ne v8, v11, :cond_dd

    .line 115
    iget-object v11, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->firstBlockTask:Lcom/huxq17/download/core/task/DownloadBlockTask;

    invoke-virtual {v11}, Lcom/huxq17/download/core/task/DownloadBlockTask;->clearTemp()V

    goto :goto_de

    .line 116
    :cond_dd
    nop

    .line 119
    :goto_de
    const/4 v11, 0x0

    .line 120
    .local v11, "cacheBean":Lcom/huxq17/download/DownloadProvider$CacheBean;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_eb

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_fa

    .line 121
    :cond_eb
    new-instance v12, Lcom/huxq17/download/DownloadProvider$CacheBean;

    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadRequest;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5, v6}, Lcom/huxq17/download/DownloadProvider$CacheBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v12

    .line 122
    iget-object v12, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v12, v11}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setCacheBean(Lcom/huxq17/download/DownloadProvider$CacheBean;)V

    .line 124
    :cond_fa
    iget-object v12, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v12}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isChunked()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_113

    if-eqz v11, :cond_113

    iget-boolean v12, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->isConditionRequest:Z

    if-nez v12, :cond_111

    const-string v12, "bytes"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_113

    :cond_111
    const/4 v12, 0x1

    goto :goto_114

    :cond_113
    const/4 v12, 0x0

    .line 125
    .local v12, "isServerSupportBreakPointDownload":Z
    :goto_114
    if-eqz v12, :cond_120

    iget-object v14, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v14}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isDisableBreakPointDownload()Z

    move-result v14

    if-nez v14, :cond_120

    const/4 v14, 0x1

    goto :goto_121

    :cond_120
    const/4 v14, 0x0

    .line 126
    .local v14, "isSupportBreakPointDownload":Z
    :goto_121
    if-eqz v12, :cond_12a

    .line 127
    invoke-static {}, Lcom/huxq17/download/db/DBService;->getInstance()Lcom/huxq17/download/db/DBService;

    move-result-object v15

    invoke-virtual {v15, v11}, Lcom/huxq17/download/db/DBService;->updateCache(Lcom/huxq17/download/DownloadProvider$CacheBean;)V

    .line 129
    :cond_12a
    if-eqz v14, :cond_131

    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadRequest;->getThreadNum()I

    move-result v13

    nop

    .line 130
    .local v13, "threadNum":I
    :cond_131
    iget-object v15, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v15, v13}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setThreadNum(I)V

    .line 131
    invoke-direct {v1, v9, v10, v14}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->checkDownloadFile(JZ)V

    .line 133
    const-wide/16 v15, 0x0

    .line 134
    .local v15, "completedSize":J
    move-object/from16 v17, v4

    .end local v4    # "response":Lokhttp3/Response;
    .local v17, "response":Lokhttp3/Response;
    iget-object v4, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->blockList:Ljava/util/List;

    monitor-enter v4

    .line 135
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-wide v5, v15

    .end local v6    # "eTag":Ljava/lang/String;
    .end local v15    # "completedSize":J
    .local v0, "i":I
    .local v5, "completedSize":J
    .local v18, "lastModified":Ljava/lang/String;
    .local v19, "eTag":Ljava/lang/String;
    :goto_145
    if-ge v0, v13, :cond_175

    .line 136
    if-nez v0, :cond_153

    .line 137
    :try_start_149
    iget-object v15, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->firstBlockTask:Lcom/huxq17/download/core/task/DownloadBlockTask;

    invoke-virtual {v15}, Lcom/huxq17/download/core/task/DownloadBlockTask;->getCompletedSize()J

    move-result-wide v15

    const/16 v20, 0x0

    add-long/2addr v5, v15

    goto :goto_16c

    .line 139
    :cond_153
    new-instance v15, Lcom/huxq17/download/core/task/DownloadBlockTask;

    invoke-direct {v15, v2, v0}, Lcom/huxq17/download/core/task/DownloadBlockTask;-><init>(Lcom/huxq17/download/core/DownloadRequest;I)V

    .line 140
    .local v15, "task":Lcom/huxq17/download/core/task/DownloadBlockTask;
    invoke-virtual {v15}, Lcom/huxq17/download/core/task/DownloadBlockTask;->getCompletedSize()J

    move-result-wide v20
    :try_end_15c
    .catchall {:try_start_149 .. :try_end_15c} :catchall_1a0

    const/16 v16, 0x0

    add-long v5, v5, v20

    .line 141
    move-wide/from16 v22, v5

    .end local v5    # "completedSize":J
    .local v22, "completedSize":J
    :try_start_162
    iget-object v5, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->blockList:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {v15}, Lcom/huxq17/download/TaskManager;->execute(Lcom/huxq17/download/core/task/Task;)V
    :try_end_16a
    .catchall {:try_start_162 .. :try_end_16a} :catchall_16f

    .line 135
    .end local v15    # "task":Lcom/huxq17/download/core/task/DownloadBlockTask;
    move-wide/from16 v5, v22

    .end local v22    # "completedSize":J
    .restart local v5    # "completedSize":J
    :goto_16c
    add-int/lit8 v0, v0, 0x1

    goto :goto_145

    .line 145
    .end local v0    # "i":I
    .end local v5    # "completedSize":J
    .restart local v22    # "completedSize":J
    :catchall_16f
    move-exception v0

    move-object/from16 v15, p1

    move-wide/from16 v5, v22

    goto :goto_1a3

    .end local v22    # "completedSize":J
    .restart local v5    # "completedSize":J
    :cond_175
    :try_start_175
    monitor-exit v4
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_1a0

    .line 146
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0, v5, v6}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setCompletedSize(J)V

    .line 147
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->firstBlockTask:Lcom/huxq17/download/core/task/DownloadBlockTask;

    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadBlockTask;->run()V

    .line 148
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->blockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_186
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_196

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huxq17/download/core/task/DownloadBlockTask;

    .line 149
    .local v4, "task":Lcom/huxq17/download/core/task/DownloadBlockTask;
    invoke-virtual {v4}, Lcom/huxq17/download/core/task/DownloadBlockTask;->waitUntilFinished()V

    .line 150
    .end local v4    # "task":Lcom/huxq17/download/core/task/DownloadBlockTask;
    goto :goto_186

    .line 151
    :cond_196
    invoke-direct/range {p0 .. p0}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->clearBlockList()V

    .line 152
    move-object/from16 v15, p1

    invoke-interface {v15, v2}, Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;->proceed(Lcom/huxq17/download/core/DownloadRequest;)Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    return-object v0

    .line 145
    :catchall_1a0
    move-exception v0

    move-object/from16 v15, p1

    :goto_1a3
    :try_start_1a3
    monitor-exit v4
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a5

    throw v0

    :catchall_1a5
    move-exception v0

    goto :goto_1a3

    .line 107
    .end local v11    # "cacheBean":Lcom/huxq17/download/DownloadProvider$CacheBean;
    .end local v12    # "isServerSupportBreakPointDownload":Z
    .end local v13    # "threadNum":I
    .end local v14    # "isSupportBreakPointDownload":Z
    .end local v17    # "response":Lokhttp3/Response;
    .end local v18    # "lastModified":Ljava/lang/String;
    .end local v19    # "eTag":Ljava/lang/String;
    .local v4, "response":Lokhttp3/Response;
    .local v5, "lastModified":Ljava/lang/String;
    .restart local v6    # "eTag":Ljava/lang/String;
    :cond_1a7
    move-object/from16 v15, p1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v4    # "response":Lokhttp3/Response;
    .end local v5    # "lastModified":Ljava/lang/String;
    .end local v6    # "eTag":Ljava/lang/String;
    .restart local v17    # "response":Lokhttp3/Response;
    .restart local v18    # "lastModified":Ljava/lang/String;
    .restart local v19    # "eTag":Ljava/lang/String;
    const/16 v0, 0x194

    if-ne v8, v0, :cond_1bb

    .line 108
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v4, Lcom/huxq17/download/ErrorCode;->ERROR_FILE_NOT_FOUND:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v0, v4}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    goto :goto_1c2

    .line 110
    :cond_1bb
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v4, Lcom/huxq17/download/ErrorCode;->ERROR_UNKNOWN_SERVER_ERROR:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v0, v4}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    .line 112
    :goto_1c2
    invoke-direct {v1, v3}, Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->closeConnectionAndReturn(Lcom/huxq17/download/core/connection/DownloadConnection;)Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

###### Class com.huxq17.download.core.interceptor.ConnectInterceptor.AnonymousClass1 (com.huxq17.download.core.interceptor.ConnectInterceptor$1)
.class Lcom/huxq17/download/core/interceptor/ConnectInterceptor$1;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huxq17/download/core/interceptor/ConnectInterceptor;->deleteTempIfThreadNumChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huxq17/download/core/interceptor/ConnectInterceptor;


# direct methods
.method constructor <init>(Lcom/huxq17/download/core/interceptor/ConnectInterceptor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huxq17/download/core/interceptor/ConnectInterceptor;

    .line 49
    iput-object p1, p0, Lcom/huxq17/download/core/interceptor/ConnectInterceptor$1;->this$0:Lcom/huxq17/download/core/interceptor/ConnectInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 52
    const-string v0, "DOWNLOAD_PART-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
