###### Class com.huxq17.download.core.service.IMessageCenter (com.huxq17.download.core.service.IMessageCenter)
.class public interface abstract Lcom/huxq17/download/core/service/IMessageCenter;
.super Ljava/lang/Object;
.source "IMessageCenter.java"


# virtual methods
.method public abstract notifyProgressChanged(Lcom/huxq17/download/core/DownloadDetailsInfo;)V
.end method

.method public abstract register(Lcom/huxq17/download/core/DownloadListener;)V
.end method

.method public abstract start(Landroid/content/Context;)V
.end method

.method public abstract unRegister(Lcom/huxq17/download/core/DownloadListener;)V
.end method

.method public abstract unRegister(Ljava/lang/String;)V
.end method
