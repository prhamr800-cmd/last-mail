###### Class com.huxq17.download.Pump (com.huxq17.download.Pump)
.class public Lcom/huxq17/download/Pump;
.super Ljava/lang/Object;
.source "Pump.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteById(Ljava/lang/String;)V
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 111
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IDownloadManager;->deleteById(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static deleteByTag(Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 102
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IDownloadManager;->deleteByTag(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lcom/huxq17/download/core/DownloadRequest;->newRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;->submit()V

    .line 49
    return-void
.end method

.method public static getAllDownloadList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 133
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0}, Lcom/huxq17/download/core/service/IDownloadManager;->getAllDownloadList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadInfoById(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadInfo;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 161
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IDownloadManager;->getDownloadInfoById(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadListByTag(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 151
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IDownloadManager;->getDownloadListByTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadedList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 141
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0}, Lcom/huxq17/download/core/service/IDownloadManager;->getDownloadedList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadingList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 137
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0}, Lcom/huxq17/download/core/service/IDownloadManager;->getDownloadingList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFileIfSucceed(Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 181
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IDownloadManager;->getFileIfSucceed(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static hasDownloadSucceed(Ljava/lang/String;)Z
    .registers 2
    .param p0, "id"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 171
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IDownloadManager;->hasDownloadSucceed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static newConfigBuilder()Lcom/huxq17/download/config/DownloadConfig$Builder;
    .registers 1

    .line 18
    invoke-static {}, Lcom/huxq17/download/config/DownloadConfig;->newBuilder()Lcom/huxq17/download/config/DownloadConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newRequest(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huxq17/download/Pump;->newRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static newRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 36
    invoke-static {p0, p1}, Lcom/huxq17/download/core/DownloadRequest;->newRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/huxq17/download/core/DownloadRequest$DownloadGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static pause(Ljava/lang/String;)V
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 84
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IDownloadManager;->pause(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static resume(Ljava/lang/String;)V
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 120
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IDownloadManager;->resume(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static shutdown()V
    .registers 1

    .line 124
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0}, Lcom/huxq17/download/core/service/IDownloadManager;->shutdown()V

    .line 125
    return-void
.end method

.method public static stop(Ljava/lang/String;)V
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 93
    const-class v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadManager;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IDownloadManager;->stop(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static subscribe(Lcom/huxq17/download/core/DownloadListener;)V
    .registers 2
    .param p0, "downloadListener"    # Lcom/huxq17/download/core/DownloadListener;

    .line 57
    const-class v0, Lcom/huxq17/download/core/service/IMessageCenter;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IMessageCenter;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IMessageCenter;->register(Lcom/huxq17/download/core/DownloadListener;)V

    .line 58
    return-void
.end method

.method public static unSubscribe(Lcom/huxq17/download/core/DownloadListener;)V
    .registers 2
    .param p0, "downloadListener"    # Lcom/huxq17/download/core/DownloadListener;

    .line 75
    const-class v0, Lcom/huxq17/download/core/service/IMessageCenter;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IMessageCenter;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IMessageCenter;->unRegister(Lcom/huxq17/download/core/DownloadListener;)V

    .line 76
    return-void
.end method

.method public static unSubscribe(Ljava/lang/String;)V
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 66
    const-class v0, Lcom/huxq17/download/core/service/IMessageCenter;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IMessageCenter;

    invoke-interface {v0, p0}, Lcom/huxq17/download/core/service/IMessageCenter;->unRegister(Ljava/lang/String;)V

    .line 67
    return-void
.end method
