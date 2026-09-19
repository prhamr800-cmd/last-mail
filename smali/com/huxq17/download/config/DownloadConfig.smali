###### Class com.huxq17.download.config.DownloadConfig (com.huxq17.download.config.DownloadConfig)
.class public Lcom/huxq17/download/config/DownloadConfig;
.super Ljava/lang/Object;
.source "DownloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huxq17/download/config/DownloadConfig$Builder;
    }
.end annotation


# instance fields
.field private connectionFactory:Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lcom/huxq17/download/config/DownloadConfig;->maxRunningTaskNumber:I

    .line 22
    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lcom/huxq17/download/config/DownloadConfig;->minUsableStorageSpace:J

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/config/DownloadConfig;->interceptors:Ljava/util/List;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/huxq17/download/config/DownloadConfig$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/huxq17/download/config/DownloadConfig$1;

    .line 14
    invoke-direct {p0}, Lcom/huxq17/download/config/DownloadConfig;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/huxq17/download/config/DownloadConfig;I)I
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/config/DownloadConfig;
    .param p1, "x1"    # I

    .line 14
    iput p1, p0, Lcom/huxq17/download/config/DownloadConfig;->maxRunningTaskNumber:I

    return p1
.end method

.method static synthetic access$302(Lcom/huxq17/download/config/DownloadConfig;J)J
    .registers 3
    .param p0, "x0"    # Lcom/huxq17/download/config/DownloadConfig;
    .param p1, "x1"    # J

    .line 14
    iput-wide p1, p0, Lcom/huxq17/download/config/DownloadConfig;->minUsableStorageSpace:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/huxq17/download/config/DownloadConfig;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/config/DownloadConfig;

    .line 14
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfig;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/huxq17/download/config/DownloadConfig;Lcom/huxq17/download/core/connection/DownloadConnection$Factory;)Lcom/huxq17/download/core/connection/DownloadConnection$Factory;
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/config/DownloadConfig;
    .param p1, "x1"    # Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    .line 14
    iput-object p1, p0, Lcom/huxq17/download/config/DownloadConfig;->connectionFactory:Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    return-object p1
.end method

.method public static newBuilder()Lcom/huxq17/download/config/DownloadConfig$Builder;
    .registers 2

    .line 39
    new-instance v0, Lcom/huxq17/download/config/DownloadConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huxq17/download/config/DownloadConfig$Builder;-><init>(Lcom/huxq17/download/config/DownloadConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public getDownloadConnectionFactory()Lcom/huxq17/download/core/connection/DownloadConnection$Factory;
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfig;->connectionFactory:Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    if-nez v0, :cond_e

    new-instance v0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection$Factory;

    invoke-static {}, Lcom/huxq17/download/utils/OKHttpUtil;->get()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection$Factory;-><init>(Lokhttp3/OkHttpClient;)V

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfig;->connectionFactory:Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    :goto_10
    return-object v0
.end method

.method public getInterceptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInterceptor;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfig;->interceptors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRunningTaskNumber()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/huxq17/download/config/DownloadConfig;->maxRunningTaskNumber:I

    return v0
.end method

.method public getMinUsableSpace()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lcom/huxq17/download/config/DownloadConfig;->minUsableStorageSpace:J

    return-wide v0
.end method

###### Class com.huxq17.download.config.DownloadConfig.AnonymousClass1 (com.huxq17.download.config.DownloadConfig$1)
.class synthetic Lcom/huxq17/download/config/DownloadConfig$1;
.super Ljava/lang/Object;
.source "DownloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/config/DownloadConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.huxq17.download.config.DownloadConfig.Builder (com.huxq17.download.config.DownloadConfig$Builder)
.class public Lcom/huxq17/download/config/DownloadConfig$Builder;
.super Ljava/lang/Object;
.source "DownloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/config/DownloadConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private downloadConfig:Lcom/huxq17/download/config/DownloadConfig;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/huxq17/download/config/DownloadConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huxq17/download/config/DownloadConfig;-><init>(Lcom/huxq17/download/config/DownloadConfig$1;)V

    iput-object v0, p0, Lcom/huxq17/download/config/DownloadConfig$Builder;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/huxq17/download/config/DownloadConfig$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/huxq17/download/config/DownloadConfig$1;

    .line 51
    invoke-direct {p0}, Lcom/huxq17/download/config/DownloadConfig$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadInterceptor(Lcom/huxq17/download/core/DownloadInterceptor;)Lcom/huxq17/download/config/DownloadConfig$Builder;
    .registers 3
    .param p1, "interceptor"    # Lcom/huxq17/download/core/DownloadInterceptor;

    .line 80
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfig$Builder;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    invoke-static {v0}, Lcom/huxq17/download/config/DownloadConfig;->access$400(Lcom/huxq17/download/config/DownloadConfig;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-object p0
.end method

.method public build()V
    .registers 3

    .line 90
    const-class v0, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadConfigService;

    iget-object v1, p0, Lcom/huxq17/download/config/DownloadConfig$Builder;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    invoke-interface {v0, v1}, Lcom/huxq17/download/core/service/IDownloadConfigService;->setConfig(Lcom/huxq17/download/config/DownloadConfig;)V

    .line 91
    return-void
.end method

.method public setDownloadConnectionFactory(Lcom/huxq17/download/core/connection/DownloadConnection$Factory;)Lcom/huxq17/download/config/DownloadConfig$Builder;
    .registers 3
    .param p1, "factory"    # Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    .line 85
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfig$Builder;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    invoke-static {v0, p1}, Lcom/huxq17/download/config/DownloadConfig;->access$502(Lcom/huxq17/download/config/DownloadConfig;Lcom/huxq17/download/core/connection/DownloadConnection$Factory;)Lcom/huxq17/download/core/connection/DownloadConnection$Factory;

    .line 86
    return-object p0
.end method

.method public setMaxRunningTaskNum(I)Lcom/huxq17/download/config/DownloadConfig$Builder;
    .registers 3
    .param p1, "maxRunningTaskNumber"    # I

    .line 64
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfig$Builder;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    invoke-static {v0, p1}, Lcom/huxq17/download/config/DownloadConfig;->access$202(Lcom/huxq17/download/config/DownloadConfig;I)I

    .line 65
    return-object p0
.end method

.method public setMinUsableStorageSpace(J)Lcom/huxq17/download/config/DownloadConfig$Builder;
    .registers 4
    .param p1, "minUsableStorageSpace"    # J

    .line 75
    iget-object v0, p0, Lcom/huxq17/download/config/DownloadConfig$Builder;->downloadConfig:Lcom/huxq17/download/config/DownloadConfig;

    invoke-static {v0, p1, p2}, Lcom/huxq17/download/config/DownloadConfig;->access$302(Lcom/huxq17/download/config/DownloadConfig;J)J

    .line 76
    return-object p0
.end method
