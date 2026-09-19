###### Class com.huxq17.download.core.DownloadRequest (com.huxq17.download.core.DownloadRequest)
.class public final Lcom/huxq17/download/core/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    }
.end annotation


# instance fields
.field private final disableBreakPointDownload:Z

.field private downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

.field private final downloadListener:Lcom/huxq17/download/core/DownloadListener;

.field private final downloadTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

.field private final filePath:Ljava/lang/String;

.field private final forceReDownload:Z

.field private final httpRequestBuilder:Lokhttp3/Request$Builder;

.field private final id:Ljava/lang/String;

.field private final retryCount:I

.field private final retryDelay:I

.field private final tag:Ljava/lang/String;

.field private final threadNum:I

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)V
    .registers 4
    .param p1, "downloadGenerator"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$000(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->id:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$100(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->url:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$200(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->filePath:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$300(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)I

    move-result v0

    iput v0, p0, Lcom/huxq17/download/core/DownloadRequest;->threadNum:I

    .line 36
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$400(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->tag:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$500(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huxq17/download/core/DownloadRequest;->forceReDownload:Z

    .line 38
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$600(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)I

    move-result v0

    iput v0, p0, Lcom/huxq17/download/core/DownloadRequest;->retryCount:I

    .line 39
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$700(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)I

    move-result v0

    iput v0, p0, Lcom/huxq17/download/core/DownloadRequest;->retryDelay:I

    .line 40
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$800(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Lcom/huxq17/download/core/DownloadListener;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->downloadListener:Lcom/huxq17/download/core/DownloadListener;

    .line 41
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$900(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Lcom/huxq17/download/core/DownloadTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->downloadTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

    .line 42
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$1000(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huxq17/download/core/DownloadRequest;->disableBreakPointDownload:Z

    .line 43
    invoke-static {p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->access$1100(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Lokhttp3/Request$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->httpRequestBuilder:Lokhttp3/Request$Builder;

    .line 44
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->httpRequestBuilder:Lokhttp3/Request$Builder;

    if-eqz v0, :cond_56

    .line 45
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->httpRequestBuilder:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lcom/huxq17/download/core/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 47
    :cond_56
    return-void
.end method

.method public static newRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    invoke-direct {v0, p0, p1}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 250
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 251
    return v0

    .line 253
    :cond_4
    instance-of v1, p1, Lcom/huxq17/download/core/DownloadRequest;

    if-eqz v1, :cond_18

    .line 254
    move-object v0, p1

    check-cast v0, Lcom/huxq17/download/core/DownloadRequest;

    .line 255
    .local v0, "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 257
    .end local v0    # "downloadRequest":Lcom/huxq17/download/core/DownloadRequest;
    :cond_18
    return v0
.end method

.method public getDownloadExecutor()Lcom/huxq17/download/core/DownloadTaskExecutor;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->downloadTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

    return-object v0
.end method

.method public getDownloadInfo()Lcom/huxq17/download/core/DownloadDetailsInfo;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRequestBuilder()Lokhttp3/Request$Builder;
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->httpRequestBuilder:Lokhttp3/Request$Builder;

    if-nez v0, :cond_18

    .line 115
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/huxq17/download/core/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0

    .line 117
    :cond_18
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->httpRequestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->id:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->url:Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->id:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 67
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadRequest;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetryCount()I
    .registers 3

    .line 71
    iget v0, p0, Lcom/huxq17/download/core/DownloadRequest;->retryCount:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getRetryDelay()I
    .registers 3

    .line 55
    iget v0, p0, Lcom/huxq17/download/core/DownloadRequest;->retryDelay:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->downloadTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

    if-eqz v0, :cond_13

    .line 92
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->downloadTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

    invoke-interface {v0}, Lcom/huxq17/download/core/DownloadTaskExecutor;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 94
    return-object v0

    .line 97
    .end local v0    # "tag":Ljava/lang/String;
    :cond_13
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->tag:Ljava/lang/String;

    if-nez v0, :cond_1a

    const-string v0, ""

    goto :goto_1c

    :cond_1a
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->tag:Ljava/lang/String;

    :goto_1c
    return-object v0
.end method

.method public getThreadNum()I
    .registers 3

    .line 87
    iget v0, p0, Lcom/huxq17/download/core/DownloadRequest;->threadNum:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 262
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDisableBreakPointDownload()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Lcom/huxq17/download/core/DownloadRequest;->disableBreakPointDownload:Z

    return v0
.end method

.method public isForceReDownload()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Lcom/huxq17/download/core/DownloadRequest;->forceReDownload:Z

    return v0
.end method

.method setDownloadInfo(Lcom/huxq17/download/core/DownloadDetailsInfo;)V
    .registers 3
    .param p1, "downloadInfo"    # Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 50
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadRequest;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    .line 51
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setFilePath(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest;->downloadInfo:Lcom/huxq17/download/core/DownloadDetailsInfo;

    invoke-virtual {v0, p1}, Lcom/huxq17/download/core/DownloadDetailsInfo;->setFilePath(Ljava/lang/String;)V

    .line 84
    return-void
.end method

###### Class com.huxq17.download.core.DownloadRequest.DownloadGenerator (com.huxq17.download.core.DownloadRequest$DownloadGenerator)
.class public Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/core/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadGenerator"
.end annotation


# static fields
.field private static final DEFAULT_RETRY_DELAY:I = 0xc8


# instance fields
.field private disableBreakPointDownload:Z

.field private downloadListener:Lcom/huxq17/download/core/DownloadListener;

.field private downloadTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

.field private filePath:Ljava/lang/String;

.field private forceReDownload:Z

.field private httpRequestBuilder:Lokhttp3/Request$Builder;

.field private id:Ljava/lang/String;

.field private retryCount:I

.field private retryDelay:I

.field private tag:Ljava/lang/String;

.field private threadNum:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->url:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->filePath:Ljava/lang/String;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget-boolean v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->disableBreakPointDownload:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Lokhttp3/Request$Builder;
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->httpRequestBuilder:Lokhttp3/Request$Builder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)I
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->threadNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget-boolean v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->forceReDownload:Z

    return v0
.end method

.method static synthetic access$600(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)I
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->retryCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)I
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->retryDelay:I

    return v0
.end method

.method static synthetic access$800(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Lcom/huxq17/download/core/DownloadListener;
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->downloadListener:Lcom/huxq17/download/core/DownloadListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)Lcom/huxq17/download/core/DownloadTaskExecutor;
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 124
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->downloadTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

    return-object v0
.end method


# virtual methods
.method public disableBreakPointDownload()Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 2

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->disableBreakPointDownload:Z

    .line 184
    iput v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->threadNum:I

    .line 185
    return-object p0
.end method

.method public forceReDownload(Z)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 2
    .param p1, "force"    # Z

    .line 178
    iput-boolean p1, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->forceReDownload:Z

    .line 179
    return-object p0
.end method

.method public listener(Lcom/huxq17/download/core/DownloadListener;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 2
    .param p1, "listener"    # Lcom/huxq17/download/core/DownloadListener;

    .line 156
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->downloadListener:Lcom/huxq17/download/core/DownloadListener;

    .line 157
    return-object p0
.end method

.method public setDownloadTaskExecutor(Lcom/huxq17/download/core/DownloadTaskExecutor;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 2
    .param p1, "downloadTaskExecutor"    # Lcom/huxq17/download/core/DownloadTaskExecutor;

    .line 226
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->downloadTaskExecutor:Lcom/huxq17/download/core/DownloadTaskExecutor;

    .line 227
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->id:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public setRequestBuilder(Lokhttp3/Request$Builder;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 2
    .param p1, "httpRequestBuilder"    # Lokhttp3/Request$Builder;

    .line 196
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->httpRequestBuilder:Lokhttp3/Request$Builder;

    .line 197
    return-object p0
.end method

.method public setRetry(I)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 3
    .param p1, "retryCount"    # I

    .line 221
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->setRetry(II)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 222
    return-object p0
.end method

.method public setRetry(II)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 3
    .param p1, "retryCount"    # I
    .param p2, "delayMillis"    # I

    .line 209
    if-gez p1, :cond_3

    .line 210
    const/4 p1, 0x0

    .line 212
    :cond_3
    iput p1, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->retryCount:I

    .line 213
    if-gez p2, :cond_9

    .line 214
    const/16 p2, 0xc8

    .line 216
    :cond_9
    iput p2, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->retryDelay:I

    .line 217
    return-object p0
.end method

.method public submit()V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->url:Ljava/lang/String;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->id:Ljava/lang/String;

    :goto_d
    iput-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->id:Ljava/lang/String;

    .line 232
    iget v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->threadNum:I

    if-gtz v0, :cond_16

    .line 233
    const/4 v0, 0x3

    iput v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->threadNum:I

    .line 235
    :cond_16
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->downloadListener:Lcom/huxq17/download/core/DownloadListener;

    if-eqz v0, :cond_26

    .line 236
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->downloadListener:Lcom/huxq17/download/core/DownloadListener;

    iget-object v1, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huxq17/download/core/DownloadListener;->setId(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->downloadListener:Lcom/huxq17/download/core/DownloadListener;

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadListener;->enable()V

    .line 239
    :cond_26
    iget-object v0, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->httpRequestBuilder:Lokhttp3/Request$Builder;

    if-eqz v0, :cond_45

    const-string v0, "GET"

    iget-object v1, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->httpRequestBuilder:Lokhttp3/Request$Builder;

    iget-object v2, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->url:Ljava/lang/String;

    .line 240
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 241
    invoke-virtual {p0}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->disableBreakPointDownload()Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    .line 243
    :cond_45
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    new-instance v1, Lcom/huxq17/download/core/DownloadRequest;

    invoke-direct {v1, p0}, Lcom/huxq17/download/core/DownloadRequest;-><init>(Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;)V

    .line 244
    invoke-interface {v0, v1}, Lcom/huxq17/download/core/service/IDownloadManager;->submit(Lcom/huxq17/download/core/DownloadRequest;)V

    .line 245
    return-void
.end method

.method public tag(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->tag:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public threadNum(I)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 2
    .param p1, "threadNum"    # I

    .line 151
    iput p1, p0, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->threadNum:I

    .line 152
    return-object p0
.end method
