###### Class com.huxq17.download.core.service.IDownloadManager (com.huxq17.download.core.service.IDownloadManager)
.class public interface abstract Lcom/huxq17/download/core/service/IDownloadManager;
.super Ljava/lang/Object;
.source "IDownloadManager.java"


# virtual methods
.method public abstract deleteById(Ljava/lang/String;)V
.end method

.method public abstract deleteByTag(Ljava/lang/String;)V
.end method

.method public abstract getAllDownloadList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDownloadInfoById(Ljava/lang/String;)Lcom/huxq17/download/core/DownloadInfo;
.end method

.method public abstract getDownloadListByTag(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getDownloadedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownloadingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huxq17/download/core/DownloadInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFileIfSucceed(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract hasDownloadSucceed(Ljava/lang/String;)Z
.end method

.method public abstract isShutdown()Z
.end method

.method public abstract isTaskRunning(Ljava/lang/String;)Z
.end method

.method public abstract pause(Ljava/lang/String;)V
.end method

.method public abstract resume(Ljava/lang/String;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract start(Landroid/content/Context;)V
.end method

.method public abstract stop(Ljava/lang/String;)V
.end method

.method public abstract submit(Lcom/huxq17/download/core/DownloadRequest;)V
.end method
