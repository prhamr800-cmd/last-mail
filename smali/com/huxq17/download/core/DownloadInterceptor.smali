###### Class com.huxq17.download.core.DownloadInterceptor (com.huxq17.download.core.DownloadInterceptor)
.class public interface abstract Lcom/huxq17/download/core/DownloadInterceptor;
.super Ljava/lang/Object;
.source "DownloadInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;
    }
.end annotation


# virtual methods
.method public abstract intercept(Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;)Lcom/huxq17/download/core/DownloadInfo;
.end method

###### Class com.huxq17.download.core.DownloadInterceptor.DownloadChain (com.huxq17.download.core.DownloadInterceptor$DownloadChain)
.class public interface abstract Lcom/huxq17/download/core/DownloadInterceptor$DownloadChain;
.super Ljava/lang/Object;
.source "DownloadInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/core/DownloadInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadChain"
.end annotation


# virtual methods
.method public abstract proceed(Lcom/huxq17/download/core/DownloadRequest;)Lcom/huxq17/download/core/DownloadInfo;
.end method

.method public abstract request()Lcom/huxq17/download/core/DownloadRequest;
.end method
