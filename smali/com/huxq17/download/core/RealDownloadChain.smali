###### Class com.huxq17.download.core.RealDownloadChain (com.huxq17.download.core.RealDownloadChain)
.class public final Lcom/huxq17/download/core/RealDownloadChain;
.super Ljava/lang/Object;
.source "RealDownloadChain.java"

# interfaces
.implements Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;


# instance fields
.field private calls:I

.field private final downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/huxq17/download/core/DownloadRequest;I)V
    .registers 4
    .param p2, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInterceptor;",
            ">;",
            "Lcom/huxq17/download/core/DownloadRequest;",
            "I)V"
        }
    .end annotation

    .line 14
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lcom/huxq17/download/core/DownloadInterceptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p3, p0, Lcom/huxq17/download/core/RealDownloadChain;->index:I

    .line 16
    iput-object p2, p0, Lcom/huxq17/download/core/RealDownloadChain;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    .line 17
    iput-object p1, p0, Lcom/huxq17/download/core/RealDownloadChain;->interceptors:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public downloadTask()Lcom/huxq17/download/core/task/DownloadTask;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public proceed(Lcom/huxq17/download/core/DownloadRequest;)Lcom/huxq17/download/core/DownloadInfo;
    .registers 3
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huxq17/download/core/RealDownloadChain;->proceed(Lcom/huxq17/download/core/DownloadRequest;Z)Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public proceed(Lcom/huxq17/download/core/DownloadRequest;Z)Lcom/huxq17/download/core/DownloadInfo;
    .registers 8
    .param p1, "downloadRequest"    # Lcom/huxq17/download/core/DownloadRequest;
    .param p2, "shouldRetry"    # Z

    .line 35
    iget v0, p0, Lcom/huxq17/download/core/RealDownloadChain;->calls:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/huxq17/download/core/RealDownloadChain;->calls:I

    .line 36
    if-nez p2, :cond_32

    iget v0, p0, Lcom/huxq17/download/core/RealDownloadChain;->calls:I

    if-gt v0, v1, :cond_d

    goto :goto_32

    .line 37
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huxq17/download/core/RealDownloadChain;->interceptors:Ljava/util/List;

    iget v4, p0, Lcom/huxq17/download/core/RealDownloadChain;->index:I

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " must call proceed() exactly once"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/huxq17/download/core/RealDownloadChain;->interceptors:Ljava/util/List;

    iget v2, p0, Lcom/huxq17/download/core/RealDownloadChain;->index:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/DownloadInterceptor;

    .line 41
    .local v0, "interceptor":Lcom/huxq17/download/core/DownloadInterceptor;
    new-instance v2, Lcom/huxq17/download/core/RealDownloadChain;

    iget-object v3, p0, Lcom/huxq17/download/core/RealDownloadChain;->interceptors:Ljava/util/List;

    iget v4, p0, Lcom/huxq17/download/core/RealDownloadChain;->index:I

    add-int/2addr v4, v1

    invoke-direct {v2, v3, p1, v4}, Lcom/huxq17/download/core/RealDownloadChain;-><init>(Ljava/util/List;Lcom/huxq17/download/core/DownloadRequest;I)V

    move-object v1, v2

    .line 43
    .local v1, "nextChain":Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;
    invoke-interface {v0, v1}, Lcom/huxq17/download/core/DownloadInterceptor;->intercept(Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;)Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v2

    return-object v2
.end method

.method public request()Lcom/huxq17/download/core/DownloadRequest;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/huxq17/download/core/RealDownloadChain;->downloadRequest:Lcom/huxq17/download/core/DownloadRequest;

    return-object v0
.end method
