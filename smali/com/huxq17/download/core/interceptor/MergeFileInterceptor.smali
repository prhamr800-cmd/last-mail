###### Class com.huxq17.download.core.interceptor.MergeFileInterceptor (com.huxq17.download.core.interceptor.MergeFileInterceptor)
.class public Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;
.super Ljava/lang/Object;
.source "MergeFileInterceptor.java"

# interfaces
.implements Lcom/huxq17/download/core/DownloadInterceptor;


# instance fields
.field private downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkDownloadResult(JJ)V
    .registers 12
    .param p1, "contentLength"    # J
    .param p3, "completedSize"    # J

    .line 64
    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getDownloadFile()Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, "downloadFile":Ljava/io/File;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_c

    move-wide v3, v1

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 66
    .local v3, "downloadFileLength":J
    :goto_10
    iget-object v5, p0, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v5}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getStatus()Lcom/huxq17/download/core/DownloadInfo$Status;

    move-result-object v5

    sget-object v6, Lcom/huxq17/download/core/DownloadInfo$Status;->FAILED:Lcom/huxq17/download/core/DownloadInfo$Status;

    if-eq v5, v6, :cond_39

    cmp-long v5, v3, v1

    if-lez v5, :cond_39

    cmp-long v1, v3, p1

    if-nez v1, :cond_39

    cmp-long v1, v3, p3

    if-nez v1, :cond_39

    .line 69
    iget-object v1, p0, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setFinished(I)V

    .line 70
    iget-object v1, p0, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v2, Lcom/huxq17/download/core/DownloadInfo$Status;->FINISHED:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 71
    iget-object v1, p0, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v1, p3, p4}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setCompletedSize(J)V

    goto :goto_46

    .line 73
    :cond_39
    iget-object v1, p0, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setFinished(I)V

    .line 74
    iget-object v1, p0, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v2, Lcom/huxq17/download/ErrorCode;->ERROR_DOWNLOAD_FAILED:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v1, v2}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    .line 76
    :goto_46
    return-void
.end method


# virtual methods
.method public intercept(Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;)Lcom/huxq17/download/core/DownloadInfo;
    .registers 22
    .param p1, "chain"    # Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;

    .line 22
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;->request()Lcom/huxq17/download/core/DownloadRequest;

    move-result-object v2

    .line 23
    .local v2, "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    invoke-virtual {v2}, Lcom/huxq17/download/core/DownloadRequest;->getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 24
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getDownloadTask()Lcom/huxq17/download/core/task/DownloadTask;

    move-result-object v3

    .line 25
    .local v3, "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    invoke-virtual {v3}, Lcom/huxq17/download/core/task/DownloadTask;->getLock()Ljava/lang/Object;

    move-result-object v4

    .line 26
    .local v4, "lock":Ljava/lang/Object;
    if-nez v4, :cond_1f

    .line 27
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->snapshot()Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    return-object v0

    .line 29
    :cond_1f
    monitor-enter v4

    .line 30
    :try_start_20
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getContentLength()J

    move-result-wide v5

    .line 31
    .local v5, "contentLength":J
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getCompletedSize()J

    move-result-wide v7

    .line 32
    .local v7, "completedSize":J
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getTempDir()Ljava/io/File;

    move-result-object v0

    .line 33
    .local v0, "tempDir":Ljava/io/File;
    new-instance v9, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor$1;

    invoke-direct {v9, v1}, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor$1;-><init>(Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;)V

    invoke-virtual {v0, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    .line 39
    .local v9, "downloadPartFiles":[Ljava/io/File;
    const-wide/16 v10, 0x0

    cmp-long v12, v5, v10

    if-lez v12, :cond_c9

    cmp-long v10, v7, v5

    if-nez v10, :cond_c9

    if-eqz v9, :cond_c9

    array-length v10, v9

    iget-object v11, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 40
    invoke-virtual {v11}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getThreadNum()I

    move-result v11

    if-ne v10, v11, :cond_c9

    .line 41
    iget-object v10, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v10}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getDownloadFile()Ljava/io/File;

    move-result-object v10

    .line 42
    .local v10, "file":Ljava/io/File;
    iget-object v11, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v11}, Lcom/huxq17/download/core/DownloadDetailsInfo;->deleteDownloadFile()V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 44
    .local v11, "startTime":J
    const/4 v13, 0x0

    .line 45
    .local v13, "mergeSuccess":Z
    array-length v14, v9
    :try_end_61
    .catchall {:try_start_20 .. :try_end_61} :catchall_d5

    const/4 v15, 0x1

    if-ne v14, v15, :cond_73

    .line 46
    const/4 v14, 0x0

    :try_start_65
    aget-object v14, v9, v14

    invoke-static {v14, v10}, Lcom/huxq17/download/utils/FileUtil;->renameTo(Ljava/io/File;Ljava/io/File;)Z

    move-result v14
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_6d

    move v13, v14

    goto :goto_78

    .line 59
    .end local v0    # "tempDir":Ljava/io/File;
    .end local v5    # "contentLength":J
    .end local v7    # "completedSize":J
    .end local v9    # "downloadPartFiles":[Ljava/io/File;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "startTime":J
    .end local v13    # "mergeSuccess":Z
    :catchall_6d
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto :goto_da

    .line 48
    .restart local v0    # "tempDir":Ljava/io/File;
    .restart local v5    # "contentLength":J
    .restart local v7    # "completedSize":J
    .restart local v9    # "downloadPartFiles":[Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "startTime":J
    .restart local v13    # "mergeSuccess":Z
    :cond_73
    :try_start_73
    invoke-static {v9, v10}, Lcom/huxq17/download/utils/FileUtil;->mergeFiles([Ljava/io/File;Ljava/io/File;)Z

    move-result v14

    move v13, v14

    .line 50
    :goto_78
    iget-object v14, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v14}, Lcom/huxq17/download/core/DownloadDetailsInfo;->deleteTempDir()V

    .line 51
    if-eqz v13, :cond_bd

    .line 52
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Merge "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v15}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " spend="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15
    :try_end_9b
    .catchall {:try_start_73 .. :try_end_9b} :catchall_d5

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .end local v3    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    .local v18, "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .local v19, "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    sub-long v2, v15, v11

    :try_start_a3
    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; file.length="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/huxq17/download/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 54
    invoke-direct {v1, v5, v6, v7, v8}, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->checkDownloadResult(JJ)V

    goto :goto_cd

    .line 56
    .end local v18    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .end local v19    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    .restart local v2    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .restart local v3    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    :cond_bd
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .end local v3    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    .restart local v18    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .restart local v19    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    iget-object v2, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v3, Lcom/huxq17/download/ErrorCode;->ERROR_MERGE_FILE_FAILED:Lcom/huxq17/download/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setErrorCode(Lcom/huxq17/download/ErrorCode;)V

    goto :goto_cd

    .line 59
    .end local v0    # "tempDir":Ljava/io/File;
    .end local v5    # "contentLength":J
    .end local v7    # "completedSize":J
    .end local v9    # "downloadPartFiles":[Ljava/io/File;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "startTime":J
    .end local v13    # "mergeSuccess":Z
    .end local v18    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .end local v19    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    .restart local v2    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .restart local v3    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    :cond_c9
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .end local v3    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    .restart local v18    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .restart local v19    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    :goto_cd
    monitor-exit v4
    :try_end_ce
    .catchall {:try_start_a3 .. :try_end_ce} :catchall_dc

    .line 60
    iget-object v0, v1, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->snapshot()Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    return-object v0

    .line 59
    .end local v18    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .end local v19    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    .restart local v2    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .restart local v3    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    :catchall_d5
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .end local v3    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    .restart local v18    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    .restart local v19    # "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    :goto_da
    :try_start_da
    monitor-exit v4
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_dc

    throw v0

    :catchall_dc
    move-exception v0

    goto :goto_da
.end method

###### Class com.huxq17.download.core.interceptor.MergeFileInterceptor.AnonymousClass1 (com.huxq17.download.core.interceptor.MergeFileInterceptor$1)
.class Lcom/huxq17/download/core/interceptor/MergeFileInterceptor$1;
.super Ljava/lang/Object;
.source "MergeFileInterceptor.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;->intercept(Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;)Lcom/huxq17/download/core/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;


# direct methods
.method constructor <init>(Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;

    .line 33
    iput-object p1, p0, Lcom/huxq17/download/core/interceptor/MergeFileInterceptor$1;->this$0:Lcom/huxq17/download/core/interceptor/MergeFileInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 36
    const-string v0, "DOWNLOAD_PART-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
