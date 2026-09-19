###### Class com.huxq17.download.core.interceptor.RetryInterceptor (com.huxq17.download.core.interceptor.RetryInterceptor)
.class public Lcom/huxq17/download/core/interceptor/RetryInterceptor;
.super Ljava/lang/Object;
.source "RetryInterceptor.java"

# interfaces
.implements Lcom/huxq17/download/core/DownloadInterceptor;


# instance fields
.field private downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

.field private retryUpperLimit:I

.field private tryCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private shouldRetry()Z
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isForceRetry()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->getErrorCode()Lcom/huxq17/download/ErrorCode;

    move-result-object v0

    sget-object v1, Lcom/huxq17/download/ErrorCode;->ERROR_NETWORK_UNAVAILABLE:Lcom/huxq17/download/ErrorCode;

    if-ne v0, v1, :cond_19

    iget v0, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->retryUpperLimit:I

    iget v1, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->tryCount:I

    if-le v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method


# virtual methods
.method public intercept(Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;)Lcom/huxq17/download/core/DownloadInfo;
    .registers 10
    .param p1, "chain"    # Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;

    .line 18
    move-object v0, p1

    check-cast v0, Lcom/huxq17/download/core/RealDownloadChain;

    .line 19
    .local v0, "realDownloadChain":Lcom/huxq17/download/core/RealDownloadChain;
    invoke-interface {p1}, Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;->request()Lcom/huxq17/download/core/DownloadRequest;

    move-result-object v1

    .line 20
    .local v1, "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadRequest;->getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 21
    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadRequest;->getRetryDelay()I

    move-result v2

    .line 22
    .local v2, "retryDelay":I
    invoke-virtual {v1}, Lcom/huxq17/download/core/DownloadRequest;->getRetryCount()I

    move-result v3

    iput v3, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->retryUpperLimit:I

    .line 24
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 26
    .local v4, "shouldRetry":Z
    :cond_19
    :goto_19
    invoke-virtual {v0, v1, v4}, Lcom/huxq17/download/core/RealDownloadChain;->proceed(Lcom/huxq17/download/core/DownloadRequest;Z)Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v5

    .line 27
    .local v5, "downloadInfo":Lcom/huxq17/download/core/DownloadInfo;
    invoke-direct {p0}, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->shouldRetry()Z

    move-result v4

    .line 28
    if-eqz v4, :cond_54

    .line 29
    iget-object v6, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v6}, Lcom/huxq17/download/core/DownloadDetailsInfo;->isForceRetry()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 30
    iget-object v6, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v6}, Lcom/huxq17/download/core/DownloadDetailsInfo;->deleteTempDir()V

    .line 31
    iget-object v6, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v6, v3}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setForceRetry(Z)V

    goto :goto_3c

    .line 33
    :cond_36
    iget v6, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->tryCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->tryCount:I

    .line 35
    :goto_3c
    iget-object v6, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    sget-object v7, Lcom/huxq17/download/core/DownloadInfo$Status;->RUNNING:Lcom/huxq17/download/core/DownloadInfo$Status;

    invoke-virtual {v6, v7}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setStatus(Lcom/huxq17/download/core/DownloadInfo$Status;)V

    .line 36
    iget-object v6, p0, Lcom/huxq17/download/core/interceptor/RetryInterceptor;->downloadDetailsInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v6}, Lcom/huxq17/download/core/DownloadDetailsInfo;->clearErrorCode()V

    .line 37
    if-lez v2, :cond_19

    .line 39
    int-to-long v6, v2

    :try_start_4b
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 42
    .end local v5    # "downloadInfo":Lcom/huxq17/download/core/DownloadInfo;
    :goto_4e
    goto :goto_19

    .line 40
    .restart local v5    # "downloadInfo":Lcom/huxq17/download/core/DownloadInfo;
    :catch_4f
    move-exception v6

    .line 41
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v6    # "e":Ljava/lang/InterruptedException;
    goto :goto_4e

    .line 48
    :cond_54
    return-object v5
.end method
