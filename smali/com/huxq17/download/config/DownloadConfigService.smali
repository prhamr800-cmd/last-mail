###### Class com.huxq17.download.config.DownloadConfigService (com.huxq17.download.config.DownloadConfigService)
.class public Lcom/huxq17/download/config/DownloadConfigService;
.super Ljava/lang/Object;
.source "DownloadConfigService.java"

# interfaces
.implements Lcom/huxq17/download/core/service/IDownloadConfigService;


# instance fields
.field private connectionFactory:Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

.field private downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private maxRunningTaskNumber:I

.field private minUsableStorageSpace:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->maxRunningTaskNumber:I

    .line 21
    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->minUsableStorageSpace:J

    .line 27
    return-void
.end method


# virtual methods
.method public getDownloadConnectionFactory()Lcom/huxq17/download/core/connection/DownloadConnection$Factory;
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    if-nez v0, :cond_10

    .line 61
    new-instance v0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection$Factory;

    invoke-static {}, Lcom/huxq17/download/utils/OKHttpUtil;->get()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection$Factory;-><init>(Lokhttp3/OkHttpClient;)V

    iput-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->connectionFactory:Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    goto :goto_18

    .line 63
    :cond_10
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    invoke-virtual {v0}, Lcom/huxq17/download/config/DownloadConfig;->getDownloadConnectionFactory()Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->connectionFactory:Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    .line 65
    :goto_18
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->connectionFactory:Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    return-object v0
.end method

.method public getDownloadInterceptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInterceptor;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    if-nez v0, :cond_b

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->interceptors:Ljava/util/List;

    goto :goto_13

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    invoke-virtual {v0}, Lcom/huxq17/download/config/DownloadConfig;->getInterceptors()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->interceptors:Ljava/util/List;

    .line 55
    :goto_13
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public getMaxRunningTaskNumber()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    if-nez v0, :cond_7

    .line 36
    iget v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->maxRunningTaskNumber:I

    return v0

    .line 38
    :cond_7
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    invoke-virtual {v0}, Lcom/huxq17/download/config/DownloadConfig;->getMaxRunningTaskNumber()I

    move-result v0

    return v0
.end method

.method public getMinUsableSpace()J
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    if-nez v0, :cond_7

    .line 43
    iget-wide v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->minUsableStorageSpace:J

    return-wide v0

    .line 45
    :cond_7
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfigService;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    invoke-virtual {v0}, Lcom/huxq17/download/config/DownloadConfig;->getMinUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public setConfig(Lcom/huxq17/download/config/DownloadConfig;)V
    .registers 2
    .param p1, "downloadConfig"    # Lcom/huxq17/download/config/DownloadConfig;

    .line 31
    iput-object p1, p0, Lcom/huxq17/download/config/DownloadConfigService;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    .line 32
    return-void
.end method
