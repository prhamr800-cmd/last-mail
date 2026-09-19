###### Class com.huxq17.download.core.connection.DownloadConnection (com.huxq17.download.core.connection.DownloadConnection)
.class public interface abstract Lcom/huxq17/download/core/connection/DownloadConnection;
.super Ljava/lang/Object;
.source "DownloadConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huxq17/download/core/connection/DownloadConnection$Factory;
    }
.end annotation


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract close()V
.end method

.method public abstract connect()Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/lang/String;)Lokhttp3/Response;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract downloadBuffer([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flushDownload()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract prepareDownload(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.huxq17.download.core.connection.DownloadConnection.Factory (com.huxq17.download.core.connection.DownloadConnection$Factory)
.class public interface abstract Lcom/huxq17/download/core/connection/DownloadConnection$Factory;
.super Ljava/lang/Object;
.source "DownloadConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/core/connection/DownloadConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Lokhttp3/Request$Builder;)Lcom/huxq17/download/core/connection/DownloadConnection;
    .param p1    # Lokhttp3/Request$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
