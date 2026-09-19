###### Class okhttp3.internal.cache2.FileOperator (okhttp3.internal.cache2.FileOperator)
.class final Lokhttp3/internal/cache2/FileOperator;
.super Ljava/lang/Object;
.source "FileOperator.java"


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;)V
    .registers 2
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 41
    return-void
.end method


# virtual methods
.method public read(JLokio/Buffer;J)V
    .registers 15
    .param p1, "pos"    # J
    .param p3, "sink"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_17

    .line 62
    :goto_6
    cmp-long v2, p4, v0

    if-lez v2, :cond_16

    .line 63
    iget-object v3, p0, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-wide v4, p1

    move-wide v6, p4

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    .line 64
    .local v2, "bytesRead":J
    add-long/2addr p1, v2

    .line 65
    sub-long/2addr p4, v2

    .line 66
    .end local v2    # "bytesRead":J
    goto :goto_6

    .line 67
    :cond_16
    return-void

    .line 60
    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public write(JLokio/Buffer;J)V
    .registers 19
    .param p1, "pos"    # J
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    if-ltz v4, :cond_25

    invoke-virtual/range {p3 .. p3}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v6, p4, v4

    if-gtz v6, :cond_25

    .line 47
    move-wide v4, p1

    move-wide/from16 v0, p4

    .end local p1    # "pos":J
    .end local p4    # "byteCount":J
    .local v0, "byteCount":J
    .local v4, "pos":J
    :goto_11
    cmp-long v6, v0, v2

    if-lez v6, :cond_23

    .line 48
    move-object v6, p0

    iget-object v7, v6, Lokhttp3/internal/cache2/FileOperator;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v8, p3

    move-wide v9, v4

    move-wide v11, v0

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v7

    .line 49
    .local v7, "bytesWritten":J
    add-long/2addr v4, v7

    .line 50
    sub-long/2addr v0, v7

    .line 51
    .end local v7    # "bytesWritten":J
    goto :goto_11

    .line 52
    :cond_23
    move-object v6, p0

    return-void

    .line 45
    .end local v0    # "byteCount":J
    .end local v4    # "pos":J
    .restart local p1    # "pos":J
    .restart local p4    # "byteCount":J
    :cond_25
    move-object v6, p0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method
