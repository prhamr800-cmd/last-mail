###### Class com.huxq17.download.core.task.DownloadBlockTask (com.huxq17.download.core.task.DownloadBlockTask)
.class public Lcom/huxq17/download/core/task/DownloadBlockTask;
.super Lcom/huxq17/download/core/task/Task;
.source "DownloadBlockTask.java"


# instance fields
.field private blockId:I

.field private connection:Lcom/huxq17/download/core/connection/DownloadConnection;

.field private downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

.field private isConnected:Z

.field private tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/huxq17/download/core/DownloadRequest;I)V
    .registers 4
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;
    .param p2, "blockId"    # I

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/huxq17/download/core/task/DownloadBlockTask;-><init>(Lcom/huxq17/download/core/DownloadRequest;ILcom/huxq17/download/core/connection/DownloadConnection;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/huxq17/download/core/DownloadRequest;ILcom/huxq17/download/core/connection/DownloadConnection;)V
    .registers 6
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;
    .param p2, "blockId"    # I
    .param p3, "connection"    # Lcom/huxq17/download/core/connection/DownloadConnection;

    .line 38
    invoke-direct {p0}, Lcom/huxq17/download/core/task/Task;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 40
    if-eqz p3, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->isConnected:Z

    .line 41
    if-nez p3, :cond_29

    .line 42
    const-class v0, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-interface {v0}, Lcom/huxq17/download/core/service/IDownloadConfigService;->getDownloadConnectionFactory()Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huxq17/download/core/DownloadRequest;->getHttpRequestBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huxq17/download/core/connection/DownloadConnection$Factory;->create(Lokhttp3/Request$Builder;)Lcom/huxq17/download/core/connection/DownloadConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->connection:Lcom/huxq17/download/core/connection/DownloadConnection;

    goto :goto_2b

    .line 44
    :cond_29
    iput-object p3, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->connection:Lcom/huxq17/download/core/connection/DownloadConnection;

    .line 46
    :goto_2b
    iput p2, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->blockId:I

    .line 47
    invoke-direct {p0}, Lcom/huxq17/download/core/task/DownloadBlockTask;->calculateCompletedSize()V

    .line 48
    return-void
.end method

.method private calculateCompletedSize()V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getTempDir()Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, "tempDir":Ljava/io/File;
    if-eqz v0, :cond_22

    .line 156
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DOWNLOAD_PART-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->blockId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->tempFile:Ljava/io/File;

    .line 158
    :cond_22
    return-void
.end method

.method private createTempFileIfNeed()V
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 163
    :cond_d
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getTempDir()Ljava/io/File;

    move-result-object v0

    .line 164
    .local v0, "tempDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DOWNLOAD_PART-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->blockId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->tempFile:Ljava/io/File;

    .line 166
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_36

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 169
    :cond_36
    iget-object v1, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3b} :catch_3c

    .line 172
    goto :goto_40

    .line 170
    :catch_3c
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    .end local v1    # "e":Ljava/io/IOException;
    :goto_40
    return-void
.end method

.method private download(Lcom/huxq17/download/core/connection/DownloadConnection;Lcom/huxq17/download/core/task/DownloadTask;JJ)V
    .registers 15
    .param p1, "connection"    # Lcom/huxq17/download/core/connection/DownloadConnection;
    .param p2, "downloadTask"    # Lcom/huxq17/download/core/task/DownloadTask;
    .param p3, "startPosition"    # J
    .param p5, "endPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/huxq17/download/core/task/DownloadBlockTask;->createTempFileIfNeed()V

    .line 128
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->tempFile:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/huxq17/download/core/connection/DownloadConnection;->prepareDownload(Ljava/io/File;)V

    .line 129
    const/16 v0, 0x1f9c

    new-array v0, v0, [B

    .line 130
    .local v0, "buffer":[B
    array-length v1, v0

    .line 131
    .local v1, "byteCount":I
    iget-object v2, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isChunked()Z

    move-result v2

    if-nez v2, :cond_20

    .line 132
    sub-long v2, p5, p3

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_20

    .line 133
    sub-long v2, p5, p3

    long-to-int v1, v2

    .line 136
    :cond_20
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadBlockTask;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_27

    return-void

    .line 137
    :cond_27
    iget-object v2, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isChunked()Z

    move-result v2

    if-nez v2, :cond_33

    cmp-long v2, p3, p5

    if-gez v2, :cond_5b

    :cond_33
    const/4 v2, 0x0

    .line 138
    invoke-interface {p1, v0, v2, v1}, Lcom/huxq17/download/core/connection/DownloadConnection;->downloadBuffer([BII)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_5b

    invoke-virtual {p0}, Lcom/huxq17/download/core/task/DownloadBlockTask;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 139
    int-to-long v4, v3

    add-long/2addr p3, v4

    .line 140
    iget-object v2, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isChunked()Z

    move-result v2

    if-nez v2, :cond_54

    .line 141
    sub-long v4, p5, p3

    .line 142
    .local v4, "remainCount":J
    int-to-long v6, v1

    cmp-long v2, v4, v6

    if-gez v2, :cond_54

    .line 143
    long-to-int v1, v4

    .line 146
    .end local v4    # "remainCount":J
    :cond_54
    invoke-virtual {p2, v3}, Lcom/huxq17/download/core/task/DownloadTask;->onDownload(I)Z

    move-result v2

    if-nez v2, :cond_27

    .line 147
    nop

    .line 150
    .end local v3    # "len":I
    :cond_5b
    invoke-interface {p1}, Lcom/huxq17/download/core/connection/DownloadConnection;->flushDownload()V

    .line 151
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->currentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 55
    :cond_9
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->connection:Lcom/huxq17/download/core/connection/DownloadConnection;

    invoke-interface {v0}, Lcom/huxq17/download/core/connection/DownloadConnection;->cancel()V

    .line 56
    return-void
.end method

.method public clearTemp()V
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->tempFile:Ljava/io/File;

    invoke-static {v0}, Lcom/huxq17/download/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 182
    return-void
.end method

.method public execute()V
    .registers 23

    .line 60
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getDownloadTask()Lcom/huxq17/download/core/task/DownloadTask;

    move-result-object v9

    .line 61
    .local v9, "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getThreadNum()I

    move-result v0

    int-to-long v10, v0

    .line 62
    .local v10, "threadNum":J
    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getContentLength()J

    move-result-wide v12

    .line 63
    .local v12, "fileLength":J
    iget v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->blockId:I

    int-to-long v0, v0

    mul-long v0, v0, v12

    div-long/2addr v0, v10

    invoke-virtual/range {p0 .. p0}, Lcom/huxq17/download/core/task/DownloadBlockTask;->getCompletedSize()J

    move-result-wide v2

    add-long v14, v0, v2

    .line 66
    .local v14, "startPosition":J
    iget v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->blockId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-long v2, v0

    cmp-long v0, v10, v2

    if-nez v0, :cond_2c

    .line 67
    move-wide v2, v12

    goto :goto_33

    .line 69
    :cond_2c
    iget v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->blockId:I

    add-int/2addr v0, v1

    int-to-long v2, v0

    mul-long v2, v2, v12

    div-long/2addr v2, v10

    .local v2, "endPosition":J
    :goto_33
    move-wide/from16 v16, v2

    .line 71
    .end local v2    # "endPosition":J
    .local v16, "endPosition":J
    cmp-long v0, v14, v16

    if-ltz v0, :cond_5f

    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_5f

    .line 114
    :cond_42
    cmp-long v0, v14, v16

    if-lez v0, :cond_148

    .line 115
    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getErrorCode()Lcom/huxq17/download/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_53

    .line 116
    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setForceRetry(Z)V

    .line 118
    :cond_53
    invoke-virtual {v9}, Lcom/huxq17/download/core/task/DownloadTask;->cancel()V

    .line 119
    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_FILE_OUT_LIMIT:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    goto/16 :goto_148

    .line 73
    :cond_5f
    :goto_5f
    :try_start_5f
    iget-boolean v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->isConnected:Z

    if-nez v0, :cond_fd

    .line 74
    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getCacheBean()Lcom/huxq17/download/DownloadProvider$CacheBean;

    move-result-object v0

    .line 75
    .local v0, "cacheBean":Lcom/huxq17/download/DownloadProvider$CacheBean;
    iget-object v2, v0, Lcom/huxq17/download/DownloadProvider$CacheBean;->eTag:Ljava/lang/String;

    move-object v6, v2

    .line 76
    .local v6, "eTag":Ljava/lang/String;
    iget-object v2, v0, Lcom/huxq17/download/DownloadProvider$CacheBean;->lastModified:Ljava/lang/String;

    move-object v7, v2

    .line 77
    .local v7, "lastModified":Ljava/lang/String;
    iget-object v2, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->connection:Lcom/huxq17/download/core/connection/DownloadConnection;

    const-string v3, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/huxq17/download/core/connection/DownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 79
    iget-object v2, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->connection:Lcom/huxq17/download/core/connection/DownloadConnection;

    const-string v3, "If-Unmodified-Since"

    invoke-interface {v2, v3, v7}, Lcom/huxq17/download/core/connection/DownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_99
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 82
    iget-object v2, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->connection:Lcom/huxq17/download/core/connection/DownloadConnection;

    const-string v3, "If-Match"

    invoke-interface {v2, v3, v6}, Lcom/huxq17/download/core/connection/DownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_a6
    iget-object v2, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->connection:Lcom/huxq17/download/core/connection/DownloadConnection;

    invoke-interface {v2}, Lcom/huxq17/download/core/connection/DownloadConnection;->connect()Lokhttp3/Response;

    move-result-object v2

    move-object/from16 v18, v2

    .line 85
    .local v18, "response":Lokhttp3/Response;
    invoke-virtual/range {v18 .. v18}, Lokhttp3/Response;->code()I

    move-result v2

    move v4, v2

    .line 86
    .local v4, "code":I
    const/16 v2, 0xce

    if-ne v4, v2, :cond_ca

    .line 87
    iget-object v2, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->connection:Lcom/huxq17/download/core/connection/DownloadConnection;

    move-object/from16 v1, p0

    move-object v3, v9

    move-object/from16 v19, v0

    move v0, v4

    .end local v4    # "code":I
    .local v0, "code":I
    .local v19, "cacheBean":Lcom/huxq17/download/DownloadProvider$CacheBean;
    move-wide v4, v14

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .end local v6    # "eTag":Ljava/lang/String;
    .end local v7    # "lastModified":Ljava/lang/String;
    .local v20, "eTag":Ljava/lang/String;
    .local v21, "lastModified":Ljava/lang/String;
    move-wide/from16 v6, v16

    invoke-direct/range {v1 .. v7}, Lcom/huxq17/download/core/task/DownloadBlockTask;->download(Lcom/huxq17/download/core/connection/DownloadConnection;Lcom/huxq17/download/core/task/DownloadTask;JJ)V

    goto :goto_fc

    .line 88
    .end local v19    # "cacheBean":Lcom/huxq17/download/DownloadProvider$CacheBean;
    .end local v20    # "eTag":Ljava/lang/String;
    .end local v21    # "lastModified":Ljava/lang/String;
    .local v0, "cacheBean":Lcom/huxq17/download/DownloadProvider$CacheBean;
    .restart local v4    # "code":I
    .restart local v6    # "eTag":Ljava/lang/String;
    .restart local v7    # "lastModified":Ljava/lang/String;
    :cond_ca
    move-object/from16 v19, v0

    move v0, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .end local v4    # "code":I
    .end local v6    # "eTag":Ljava/lang/String;
    .end local v7    # "lastModified":Ljava/lang/String;
    .local v0, "code":I
    .restart local v19    # "cacheBean":Lcom/huxq17/download/DownloadProvider$CacheBean;
    .restart local v20    # "eTag":Ljava/lang/String;
    .restart local v21    # "lastModified":Ljava/lang/String;
    const/16 v2, 0x19c

    if-eq v0, v2, :cond_e5

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_da

    goto :goto_e5

    .line 95
    :cond_da
    iget-object v1, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v2, Lcom/huxq17/download/ErrorCode;->ERROR_NETWORK_UNAVAILABLE:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    .line 96
    invoke-virtual {v9}, Lcom/huxq17/download/core/task/DownloadTask;->cancel()V

    goto :goto_fc

    .line 89
    :cond_e5
    :goto_e5
    iget-object v2, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getErrorCode()Lcom/huxq17/download/ErrorCode;

    move-result-object v2

    if-nez v2, :cond_f2

    .line 90
    iget-object v2, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v2, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setForceRetry(Z)V

    .line 92
    :cond_f2
    iget-object v1, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v2, Lcom/huxq17/download/ErrorCode;->ERROR_NETWORK_UNAVAILABLE:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    .line 93
    invoke-virtual {v9}, Lcom/huxq17/download/core/task/DownloadTask;->cancel()V

    .line 98
    .end local v0    # "code":I
    .end local v18    # "response":Lokhttp3/Response;
    .end local v19    # "cacheBean":Lcom/huxq17/download/DownloadProvider$CacheBean;
    .end local v20    # "eTag":Ljava/lang/String;
    .end local v21    # "lastModified":Ljava/lang/String;
    :goto_fc
    goto :goto_108

    .line 99
    :cond_fd
    iget-object v2, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->connection:Lcom/huxq17/download/core/connection/DownloadConnection;

    move-object/from16 v1, p0

    move-object v3, v9

    move-wide v4, v14

    move-wide/from16 v6, v16

    invoke-direct/range {v1 .. v7}, Lcom/huxq17/download/core/task/DownloadBlockTask;->download(Lcom/huxq17/download/core/connection/DownloadConnection;Lcom/huxq17/download/core/task/DownloadTask;JJ)V

    .line 101
    :goto_108
    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_147

    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getErrorCode()Lcom/huxq17/download/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_147

    invoke-virtual/range {p0 .. p0}, Lcom/huxq17/download/core/task/DownloadBlockTask;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_147

    .line 102
    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    iget-object v1, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setContentLength(J)V

    .line 103
    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setProgress(I)V
    :try_end_130
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_130} :catch_143
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_130} :catch_131

    goto :goto_147

    .line 108
    :catch_131
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lcom/huxq17/download/core/task/DownloadBlockTask;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_147

    .line 110
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    iget-object v1, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v2, Lcom/huxq17/download/ErrorCode;->ERROR_NETWORK_UNAVAILABLE:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    goto :goto_147

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    :catch_143
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_147
    :goto_147
    nop

    .line 121
    :cond_148
    :goto_148
    iget-object v0, v8, Lcom/huxq17/download/core/task/DownloadBlockTask;->connection:Lcom/huxq17/download/core/connection/DownloadConnection;

    invoke-interface {v0}, Lcom/huxq17/download/core/connection/DownloadConnection;->close()V

    .line 122
    return-void
.end method

.method public getCompletedSize()J
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->tempFile:Ljava/io/File;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 177
    :cond_7
    iget-object v0, p0, Lcom/huxq17/download/core/task/DownloadBlockTask;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
