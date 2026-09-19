###### Class com.huxq17.download.core.service.IDownloadConfigService (com.huxq17.download.core.service.IDownloadConfigService)
.class public interface abstract Lcom/huxq17/download/core/service/IDownloadConfigService;
.super Ljava/lang/Object;
.source "IDownloadConfigService.java"


# virtual methods
.method public abstract getDownloadConnectionFactory()Lcom/huxq17/download/core/connection/DownloadConnection$Factory;
.end method

.method public abstract getDownloadInterceptors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInterceptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxRunningTaskNumber()I
.end method

.method public abstract getMinUsableSpace()J
.end method

.method public abstract setConfig(Lcom/huxq17/download/config/DownloadConfig;)V
.end method
