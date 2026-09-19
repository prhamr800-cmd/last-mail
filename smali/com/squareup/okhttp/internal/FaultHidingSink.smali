###### Class com.squareup.okhttp.internal.FaultHidingSink (com.squareup.okhttp.internal.FaultHidingSink)
.class Lcom/squareup/okhttp/internal/FaultHidingSink;
.super Lokio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private hasErrors:Z


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .registers 2
    .param p1, "delegate"    # Lokio/Sink;

    .line 13
    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    return-void

    .line 42
    :cond_5
    :try_start_5
    invoke-super {p0}, Lokio/ForwardingSink;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 46
    goto :goto_10

    .line 43
    :catch_9
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 45
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 47
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    return-void

    .line 32
    :cond_5
    :try_start_5
    invoke-super {p0}, Lokio/ForwardingSink;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 36
    goto :goto_10

    .line 33
    :catch_9
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 35
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 37
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
    .registers 2
    .param p1, "e"    # Ljava/io/IOException;

    .line 50
    return-void
.end method

.method public write(Lokio/Buffer;J)V
    .registers 6
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_8

    .line 18
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->skip(J)V

    .line 19
    return-void

    .line 22
    :cond_8
    :try_start_8
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 26
    goto :goto_13

    .line 23
    :catch_c
    move-exception v0

    .line 24
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 25
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    .line 27
    .end local v0    # "e":Ljava/io/IOException;
    :goto_13
    return-void
.end method
