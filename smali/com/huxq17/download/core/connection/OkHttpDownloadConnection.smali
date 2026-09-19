###### Class com.huxq17.download.core.connection.OkHttpDownloadConnection (com.huxq17.download.core.connection.OkHttpDownloadConnection)
.class public Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;
.super Ljava/lang/Object;
.source "OkHttpDownloadConnection.java"

# interfaces
.implements Lcom/huxq17/download/core/connection/DownloadConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huxq17/download/core/connection/OkHttpDownloadConnection$Factory;
    }
.end annotation


# instance fields
.field private bufferedSink:Lokio/BufferedSink;

.field private bufferedSource:Lokio/BufferedSource;

.field private builder:Lokhttp3/Request$Builder;

.field private call:Lokhttp3/Call;

.field private okHttpClient:Lokhttp3/OkHttpClient;

.field private response:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request$Builder;)V
    .registers 3
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;
    .param p2, "builder"    # Lokhttp3/Request$Builder;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 28
    iput-object p2, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->builder:Lokhttp3/Request$Builder;

    .line 29
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 34
    return-void
.end method

.method public cancel()V
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->call:Lokhttp3/Call;

    if-eqz v0, :cond_9

    .line 83
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 85
    :cond_9
    return-void
.end method

.method public close()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->bufferedSink:Lokio/BufferedSink;

    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 77
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->bufferedSource:Lokio/BufferedSource;

    invoke-static {v0}, Lcom/huxq17/download/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    return-void
.end method

.method public connect()Lokhttp3/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->okHttpClient:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->call:Lokhttp3/Call;

    .line 44
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->response:Lokhttp3/Response;

    return-object v0
.end method

.method public connect(Ljava/lang/String;)Lokhttp3/Response;
    .registers 4
    .param p1, "method"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->builder:Lokhttp3/Request$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 50
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->call:Lokhttp3/Call;

    .line 51
    iget-object v1, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->call:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->response:Lokhttp3/Response;

    return-object v1
.end method

.method public downloadBuffer([BII)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->bufferedSource:Lokio/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Lokio/BufferedSource;->read([BII)I

    move-result v0

    .line 63
    .local v0, "len":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 64
    iget-object v1, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->bufferedSink:Lokio/BufferedSink;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 66
    :cond_f
    return v0
.end method

.method public flushDownload()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->bufferedSink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 72
    return-void
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->response:Lokhttp3/Response;

    invoke-virtual {v0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->call:Lokhttp3/Call;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public prepareDownload(Ljava/io/File;)V
    .registers 3
    .param p1, "downloadFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->bufferedSource:Lokio/BufferedSource;

    .line 57
    invoke-static {p1}, Lokio/Okio;->appendingSink(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;->bufferedSink:Lokio/BufferedSink;

    .line 58
    return-void
.end method

###### Class com.huxq17.download.core.connection.OkHttpDownloadConnection.Factory (com.huxq17.download.core.connection.OkHttpDownloadConnection$Factory)
.class public Lcom/huxq17/download/core/connection/OkHttpDownloadConnection$Factory;
.super Ljava/lang/Object;
.source "OkHttpDownloadConnection.java"

# interfaces
.implements Lcom/huxq17/download/core/connection/DownloadConnection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 2
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection$Factory;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 97
    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Request$Builder;)Lcom/huxq17/download/core/connection/DownloadConnection;
    .registers 4
    .param p1, "requestBuilder"    # Lokhttp3/Request$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    new-instance v0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;

    iget-object v1, p0, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection$Factory;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1, p1}, Lcom/huxq17/download/core/connection/OkHttpDownloadConnection;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request$Builder;)V

    return-object v0
.end method
