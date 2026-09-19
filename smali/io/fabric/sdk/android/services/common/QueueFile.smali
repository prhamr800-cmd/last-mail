###### Class io.fabric.sdk.android.services.common.QueueFile (io.fabric.sdk.android.services.common.QueueFile)
.class public Lio/fabric/sdk/android/services/common/QueueFile;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;,
        Lio/fabric/sdk/android/services/common/QueueFile$Element;,
        Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;
    }
.end annotation


# static fields
.field static final HEADER_LENGTH:I = 0x10

.field private static final INITIAL_LENGTH:I = 0x1000

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final buffer:[B

.field private elementCount:I

.field fileLength:I

.field private first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

.field private last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

.field private final raf:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    const-class v0, Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/QueueFile;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 130
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/QueueFile;->initialize(Ljava/io/File;)V

    .line 132
    :cond_12
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 133
    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/QueueFile;->readHeader()V

    .line 134
    return-void
.end method

.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 3
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    .line 138
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 139
    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/QueueFile;->readHeader()V

    .line 140
    return-void
.end method

.method static synthetic access$100(Lio/fabric/sdk/android/services/common/QueueFile;I)I
    .registers 3
    .param p0, "x0"    # Lio/fabric/sdk/android/services/common/QueueFile;
    .param p1, "x1"    # I

    .line 74
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/QueueFile;->wrapPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/common/QueueFile;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/fabric/sdk/android/services/common/QueueFile;I[BII)V
    .registers 5
    .param p0, "x0"    # Lio/fabric/sdk/android/services/common/QueueFile;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lio/fabric/sdk/android/services/common/QueueFile;->ringRead(I[BII)V

    return-void
.end method

.method static synthetic access$400(Lio/fabric/sdk/android/services/common/QueueFile;)Ljava/io/RandomAccessFile;
    .registers 2
    .param p0, "x0"    # Lio/fabric/sdk/android/services/common/QueueFile;

    .line 74
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method private expandIfNecessary(I)V
    .registers 15
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    add-int/lit8 v0, p1, 0x4

    .line 369
    .local v0, "elementLength":I
    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/QueueFile;->remainingBytes()I

    move-result v1

    .line 370
    .local v1, "remainingBytes":I
    if-lt v1, v0, :cond_9

    .line 371
    return-void

    .line 375
    :cond_9
    iget v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    .line 379
    .local v2, "previousLength":I
    :cond_b
    add-int/2addr v1, v2

    .line 380
    shl-int/lit8 v3, v2, 0x1

    .line 381
    .local v3, "newLength":I
    move v2, v3

    .line 382
    if-lt v1, v0, :cond_b

    .line 384
    invoke-direct {p0, v3}, Lio/fabric/sdk/android/services/common/QueueFile;->setLength(I)V

    .line 387
    iget-object v4, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v4, v4, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    add-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v5, v5, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lio/fabric/sdk/android/services/common/QueueFile;->wrapPosition(I)I

    move-result v4

    .line 390
    .local v4, "endOfLastElement":I
    iget-object v5, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v5, v5, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    if-ge v4, v5, :cond_4e

    .line 391
    iget-object v5, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 392
    .local v5, "channel":Ljava/nio/channels/FileChannel;
    iget v6, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 393
    add-int/lit8 v12, v4, -0x4

    .line 394
    .local v12, "count":I
    const-wide/16 v7, 0x10

    int-to-long v9, v12

    move-object v6, v5

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v6

    int-to-long v8, v12

    cmp-long v10, v6, v8

    if-nez v10, :cond_46

    .end local v5    # "channel":Ljava/nio/channels/FileChannel;
    .end local v12    # "count":I
    goto :goto_4e

    .line 395
    .restart local v5    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v12    # "count":I
    :cond_46
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Copied insufficient number of bytes!"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 400
    .end local v5    # "channel":Ljava/nio/channels/FileChannel;
    .end local v12    # "count":I
    :cond_4e
    :goto_4e
    iget-object v5, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v5, v5, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    iget-object v6, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v6, v6, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    if-ge v5, v6, :cond_76

    .line 401
    iget v5, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    iget-object v6, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v6, v6, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x10

    .line 402
    .local v5, "newLastPosition":I
    iget v6, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    iget-object v7, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v7, v7, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    invoke-direct {p0, v3, v6, v7, v5}, Lio/fabric/sdk/android/services/common/QueueFile;->writeHeader(IIII)V

    .line 403
    new-instance v6, Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget-object v7, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v7, v7, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    invoke-direct {v6, v5, v7}, Lio/fabric/sdk/android/services/common/QueueFile$Element;-><init>(II)V

    iput-object v6, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    .line 404
    .end local v5    # "newLastPosition":I
    goto :goto_83

    .line 405
    :cond_76
    iget v5, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    iget-object v6, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v6, v6, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    iget-object v7, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v7, v7, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    invoke-direct {p0, v3, v5, v6, v7}, Lio/fabric/sdk/android/services/common/QueueFile;->writeHeader(IIII)V

    .line 408
    :goto_83
    iput v3, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    .line 409
    return-void
.end method

.method private static initialize(Ljava/io/File;)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "tempFile":Ljava/io/File;
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 213
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x1000

    :try_start_20
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 214
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 215
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 216
    .local v2, "headerBuffer":[B
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_50

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/common/QueueFile;->writeInts([B[I)V

    .line 217
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_4b

    .line 219
    .end local v2    # "headerBuffer":[B
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 220
    nop

    .line 223
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 226
    return-void

    .line 224
    :cond_43
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Rename failed!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v2

    :array_50
    .array-data 4
        0x1000
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 454
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 457
    return-object p0

    .line 455
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static open(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private readElement(I)Lio/fabric/sdk/android/services/common/QueueFile$Element;
    .registers 5
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    if-nez p1, :cond_5

    .line 201
    sget-object v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->NULL:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    return-object v0

    .line 203
    :cond_5
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 204
    new-instance v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/fabric/sdk/android/services/common/QueueFile$Element;-><init>(II)V

    return-object v0
.end method

.method private readHeader()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 173
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 174
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->readInt([BI)I

    move-result v0

    iput v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    .line 175
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    int-to-long v0, v0

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4a

    .line 179
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->readInt([BI)I

    move-result v0

    iput v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    .line 180
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->readInt([BI)I

    move-result v0

    .line 181
    .local v0, "firstOffset":I
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/QueueFile;->readInt([BI)I

    move-result v1

    .line 182
    .local v1, "lastOffset":I
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->readElement(I)Lio/fabric/sdk/android/services/common/QueueFile$Element;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    .line 183
    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->readElement(I)Lio/fabric/sdk/android/services/common/QueueFile$Element;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    .line 184
    return-void

    .line 176
    .end local v0    # "firstOffset":I
    .end local v1    # "lastOffset":I
    :cond_4a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File is truncated. Expected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readInt([BI)I
    .registers 4
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I

    .line 166
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private remainingBytes()I
    .registers 3

    .line 354
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private ringRead(I[BII)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/QueueFile;->wrapPosition(I)I

    move-result p1

    .line 271
    add-int v0, p1, p4

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    if-gt v0, v1, :cond_16

    .line 272
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 273
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_34

    .line 277
    :cond_16
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    sub-int/2addr v0, p1

    .line 278
    .local v0, "beforeEof":I
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 279
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 280
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 281
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int v2, p3, v0

    sub-int v3, p4, v0

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 283
    .end local v0    # "beforeEof":I
    :goto_34
    return-void
.end method

.method private ringWrite(I[BII)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/QueueFile;->wrapPosition(I)I

    move-result p1

    .line 248
    add-int v0, p1, p4

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    if-gt v0, v1, :cond_16

    .line 249
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 250
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_34

    .line 254
    :cond_16
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    sub-int/2addr v0, p1

    .line 255
    .local v0, "beforeEof":I
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 256
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 257
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 258
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int v2, p3, v0

    sub-int v3, p4, v0

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 260
    .end local v0    # "beforeEof":I
    :goto_34
    return-void
.end method

.method private setLength(I)V
    .registers 5
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 415
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 416
    return-void
.end method

.method private wrapPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .line 235
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    if-ge p1, v0, :cond_6

    move v0, p1

    goto :goto_b

    :cond_6
    add-int/lit8 v0, p1, 0x10

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    sub-int/2addr v0, v1

    :goto_b
    return v0
.end method

.method private writeHeader(IIII)V
    .registers 8
    .param p1, "fileLength"    # I
    .param p2, "elementCount"    # I
    .param p3, "firstPosition"    # I
    .param p4, "lastPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->writeInts([B[I)V

    .line 194
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 195
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 196
    return-void
.end method

.method private static writeInt([BII)V
    .registers 5
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 146
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 147
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 148
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 149
    add-int/lit8 v0, p1, 0x3

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 150
    return-void
.end method

.method private static varargs writeInts([B[I)V
    .registers 7
    .param p0, "buffer"    # [B
    .param p1, "values"    # [I

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "offset":I
    move-object v1, p1

    .local v1, "arr$":[I
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v2, :cond_10

    aget v4, v1, v3

    .line 159
    .local v4, "value":I
    invoke-static {p0, v0, v4}, Lio/fabric/sdk/android/services/common/QueueFile;->writeInt([BII)V

    .line 160
    add-int/lit8 v0, v0, 0x4

    .line 158
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 162
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_10
    return-void
.end method


# virtual methods
.method public add([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->add([BII)V

    .line 292
    return-void
.end method

.method public declared-synchronized add([BII)V
    .registers 11
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 304
    :try_start_1
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    or-int v0, p2, p3

    if-ltz v0, :cond_65

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_65

    .line 309
    invoke-direct {p0, p3}, Lio/fabric/sdk/android/services/common/QueueFile;->expandIfNecessary(I)V

    .line 312
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/QueueFile;->isEmpty()Z

    move-result v0

    .line 313
    .local v0, "wasEmpty":Z
    const/4 v1, 0x4

    if-eqz v0, :cond_1b

    const/16 v2, 0x10

    goto :goto_29

    :cond_1b
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v2, v2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v3, v3, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lio/fabric/sdk/android/services/common/QueueFile;->wrapPosition(I)I

    move-result v2

    .line 314
    .local v2, "position":I
    :goto_29
    new-instance v3, Lio/fabric/sdk/android/services/common/QueueFile$Element;

    invoke-direct {v3, v2, p3}, Lio/fabric/sdk/android/services/common/QueueFile$Element;-><init>(II)V

    .line 317
    .local v3, "newLast":Lio/fabric/sdk/android/services/common/QueueFile$Element;
    iget-object v4, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, p3}, Lio/fabric/sdk/android/services/common/QueueFile;->writeInt([BII)V

    .line 318
    iget v4, v3, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    iget-object v6, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    invoke-direct {p0, v4, v6, v5, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->ringWrite(I[BII)V

    .line 321
    iget v4, v3, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4, p1, p2, p3}, Lio/fabric/sdk/android/services/common/QueueFile;->ringWrite(I[BII)V

    .line 324
    if-eqz v0, :cond_46

    iget v1, v3, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    goto :goto_4a

    :cond_46
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v1, v1, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    .line 325
    .local v1, "firstPosition":I
    :goto_4a
    iget v4, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    iget v5, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v3, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    invoke-direct {p0, v4, v5, v1, v6}, Lio/fabric/sdk/android/services/common/QueueFile;->writeHeader(IIII)V

    .line 326
    iput-object v3, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    .line 327
    iget v4, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    .line 328
    if-eqz v0, :cond_63

    .line 329
    iget-object v4, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iput-object v4, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_6b

    .line 331
    :cond_63
    monitor-exit p0

    return-void

    .line 306
    .end local v0    # "wasEmpty":Z
    .end local v1    # "firstPosition":I
    .end local v2    # "position":I
    .end local v3    # "newLast":Lio/fabric/sdk/android/services/common/QueueFile$Element;
    :cond_65
    :try_start_65
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_6b

    .line 303
    .end local p1    # "data":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :catchall_6b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 531
    const/4 v0, 0x0

    const/16 v1, 0x1000

    :try_start_4
    invoke-direct {p0, v1, v0, v0, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->writeHeader(IIII)V

    .line 532
    iput v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    .line 533
    sget-object v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->NULL:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    .line 534
    sget-object v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->NULL:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    .line 535
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    if-le v0, v1, :cond_18

    .line 536
    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->setLength(I)V

    .line 537
    :cond_18
    iput v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1c

    .line 538
    monitor-exit p0

    return-void

    .line 530
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 542
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 543
    monitor-exit p0

    return-void

    .line 541
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forEach(Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;)V
    .registers 7
    .param p1, "reader"    # Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 440
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v0, v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    .line 441
    .local v0, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    if-ge v1, v2, :cond_28

    .line 442
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->readElement(I)Lio/fabric/sdk/android/services/common/QueueFile$Element;

    move-result-object v2

    .line 443
    .local v2, "current":Lio/fabric/sdk/android/services/common/QueueFile$Element;
    new-instance v3, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;-><init>(Lio/fabric/sdk/android/services/common/QueueFile;Lio/fabric/sdk/android/services/common/QueueFile$Element;Lio/fabric/sdk/android/services/common/QueueFile$1;)V

    iget v4, v2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    invoke-interface {p1, v3, v4}, Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;->read(Ljava/io/InputStream;I)V

    .line 444
    iget v3, v2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    add-int/lit8 v3, v3, 0x4

    iget v4, v2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lio/fabric/sdk/android/services/common/QueueFile;->wrapPosition(I)I

    move-result v3
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2a

    move v0, v3

    .line 441
    .end local v2    # "current":Lio/fabric/sdk/android/services/common/QueueFile$Element;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 446
    .end local v1    # "i":I
    :cond_28
    monitor-exit p0

    return-void

    .line 439
    .end local v0    # "position":I
    .end local p1    # "reader":Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasSpaceFor(II)Z
    .registers 4
    .param p1, "dataSizeBytes"    # I
    .param p2, "maxSizeBytes"    # I

    .line 550
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/QueueFile;->usedBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    if-gt v0, p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    monitor-enter p0

    .line 359
    :try_start_1
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peek(Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;)V
    .registers 5
    .param p1, "reader"    # Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 431
    :try_start_1
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    if-lez v0, :cond_14

    .line 432
    new-instance v0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;-><init>(Lio/fabric/sdk/android/services/common/QueueFile;Lio/fabric/sdk/android/services/common/QueueFile$Element;Lio/fabric/sdk/android/services/common/QueueFile$1;)V

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v1, v1, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;->read(Ljava/io/InputStream;I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 434
    :cond_14
    monitor-exit p0

    return-void

    .line 430
    .end local p1    # "reader":Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized peek()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 420
    :try_start_1
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/QueueFile;->isEmpty()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1c

    if-eqz v0, :cond_a

    .line 421
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 423
    :cond_a
    :try_start_a
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v0, v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    .line 424
    .local v0, "length":I
    new-array v1, v0, [B

    .line 425
    .local v1, "data":[B
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v2, v2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    add-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->ringRead(I[BII)V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1c

    .line 426
    monitor-exit p0

    return-object v1

    .line 419
    .end local v0    # "length":I
    .end local v1    # "data":[B
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 513
    :try_start_1
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/QueueFile;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 516
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 517
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/QueueFile;->clear()V

    goto :goto_43

    .line 520
    :cond_10
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v0, v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    const/4 v2, 0x4

    add-int/2addr v0, v2

    iget-object v3, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v3, v3, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->wrapPosition(I)I

    move-result v0

    .line 521
    .local v0, "newFirstPosition":I
    iget-object v3, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4, v2}, Lio/fabric/sdk/android/services/common/QueueFile;->ringRead(I[BII)V

    .line 522
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->buffer:[B

    invoke-static {v2, v4}, Lio/fabric/sdk/android/services/common/QueueFile;->readInt([BI)I

    move-result v2

    .line 523
    .local v2, "length":I
    iget v3, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    iget v4, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v5, v5, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    invoke-direct {p0, v3, v4, v0, v5}, Lio/fabric/sdk/android/services/common/QueueFile;->writeHeader(IIII)V

    .line 524
    iget v3, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    sub-int/2addr v3, v1

    iput v3, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    .line 525
    new-instance v1, Lio/fabric/sdk/android/services/common/QueueFile$Element;

    invoke-direct {v1, v0, v2}, Lio/fabric/sdk/android/services/common/QueueFile$Element;-><init>(II)V

    iput-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4b

    .line 527
    .end local v0    # "newFirstPosition":I
    .end local v2    # "length":I
    :goto_43
    monitor-exit p0

    return-void

    .line 514
    :cond_45
    :try_start_45
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_4b

    .line 512
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    monitor-enter p0

    .line 504
    :try_start_1
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, "fileLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    const-string v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 560
    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 561
    const-string v1, ", element lengths=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :try_start_42
    new-instance v1, Lio/fabric/sdk/android/services/common/QueueFile$1;

    invoke-direct {v1, p0, v0}, Lio/fabric/sdk/android/services/common/QueueFile$1;-><init>(Lio/fabric/sdk/android/services/common/QueueFile;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->forEach(Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4a} :catch_4b

    .line 578
    goto :goto_55

    .line 576
    :catch_4b
    move-exception v1

    .line 577
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lio/fabric/sdk/android/services/common/QueueFile;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "read error"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    .end local v1    # "e":Ljava/io/IOException;
    :goto_55
    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public usedBytes()I
    .registers 4

    .line 335
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->elementCount:I

    const/16 v1, 0x10

    if-nez v0, :cond_7

    .line 336
    return v1

    .line 339
    :cond_7
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v0, v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v2, v2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    if-lt v0, v2, :cond_23

    .line 341
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v0, v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v2, v2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v2, v2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0

    .line 346
    :cond_23
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v0, v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->last:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v1, v1, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    add-int/2addr v0, v1

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->fileLength:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile;->first:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    iget v1, v1, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

###### Class io.fabric.sdk.android.services.common.QueueFile.AnonymousClass1 (io.fabric.sdk.android.services.common.QueueFile$1)
.class Lio/fabric/sdk/android/services/common/QueueFile$1;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/common/QueueFile;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field first:Z

.field final synthetic this$0:Lio/fabric/sdk/android/services/common/QueueFile;

.field final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/QueueFile;Ljava/lang/StringBuilder;)V
    .registers 3

    .line 563
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->first:Z

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->first:Z

    if-eqz v0, :cond_8

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->first:Z

    goto :goto_f

    .line 571
    :cond_8
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :goto_f
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    return-void
.end method

###### Class io.fabric.sdk.android.services.common.QueueFile.Element (io.fabric.sdk.android.services.common.QueueFile$Element)
.class Lio/fabric/sdk/android/services/common/QueueFile$Element;
.super Ljava/lang/Object;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation


# static fields
.field static final HEADER_LENGTH:I = 0x4

.field static final NULL:Lio/fabric/sdk/android/services/common/QueueFile$Element;


# instance fields
.field final length:I

.field final position:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 590
    new-instance v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lio/fabric/sdk/android/services/common/QueueFile$Element;-><init>(II)V

    sput-object v0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->NULL:Lio/fabric/sdk/android/services/common/QueueFile$Element;

    return-void
.end method

.method constructor <init>(II)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "length"    # I

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput p1, p0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    .line 606
    iput p2, p0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    .line 607
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.fabric.sdk.android.services.common.QueueFile.ElementInputStream (io.fabric.sdk.android.services.common.QueueFile$ElementInputStream)
.class final Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;
.super Ljava/io/InputStream;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ElementInputStream"
.end annotation


# instance fields
.field private position:I

.field private remaining:I

.field final synthetic this$0:Lio/fabric/sdk/android/services/common/QueueFile;


# direct methods
.method private constructor <init>(Lio/fabric/sdk/android/services/common/QueueFile;Lio/fabric/sdk/android/services/common/QueueFile$Element;)V
    .registers 4
    .param p2, "element"    # Lio/fabric/sdk/android/services/common/QueueFile$Element;

    .line 465
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 466
    iget v0, p2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->position:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->access$100(Lio/fabric/sdk/android/services/common/QueueFile;I)I

    move-result p1

    iput p1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    .line 467
    iget p1, p2, Lio/fabric/sdk/android/services/common/QueueFile$Element;->length:I

    iput p1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    .line 468
    return-void
.end method

.method synthetic constructor <init>(Lio/fabric/sdk/android/services/common/QueueFile;Lio/fabric/sdk/android/services/common/QueueFile$Element;Lio/fabric/sdk/android/services/common/QueueFile$1;)V
    .registers 4
    .param p1, "x0"    # Lio/fabric/sdk/android/services/common/QueueFile;
    .param p2, "x1"    # Lio/fabric/sdk/android/services/common/QueueFile$Element;
    .param p3, "x2"    # Lio/fabric/sdk/android/services/common/QueueFile$1;

    .line 461
    invoke-direct {p0, p1, p2}, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;-><init>(Lio/fabric/sdk/android/services/common/QueueFile;Lio/fabric/sdk/android/services/common/QueueFile$Element;)V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    if-nez v0, :cond_6

    .line 492
    const/4 v0, -0x1

    return v0

    .line 494
    :cond_6
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->access$400(Lio/fabric/sdk/android/services/common/QueueFile;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 495
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/QueueFile;->access$400(Lio/fabric/sdk/android/services/common/QueueFile;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 496
    .local v0, "b":I
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    iget v2, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/QueueFile;->access$100(Lio/fabric/sdk/android/services/common/QueueFile;I)I

    move-result v1

    iput v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    .line 497
    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    .line 498
    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/common/QueueFile;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 473
    or-int v0, p2, p3

    if-ltz v0, :cond_31

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_31

    .line 476
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    if-lez v0, :cond_2f

    .line 477
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    if-le p3, v0, :cond_17

    .line 478
    iget p3, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    .line 480
    :cond_17
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Lio/fabric/sdk/android/services/common/QueueFile;->access$300(Lio/fabric/sdk/android/services/common/QueueFile;I[BII)V

    .line 481
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->this$0:Lio/fabric/sdk/android/services/common/QueueFile;

    iget v1, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/QueueFile;->access$100(Lio/fabric/sdk/android/services/common/QueueFile;I)I

    move-result v0

    iput v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->position:I

    .line 482
    iget v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Lio/fabric/sdk/android/services/common/QueueFile$ElementInputStream;->remaining:I

    .line 483
    return p3

    .line 485
    :cond_2f
    const/4 v0, -0x1

    return v0

    .line 474
    :cond_31
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

###### Class io.fabric.sdk.android.services.common.QueueFile.ElementReader (io.fabric.sdk.android.services.common.QueueFile$ElementReader)
.class public interface abstract Lio/fabric/sdk/android/services/common/QueueFile$ElementReader;
.super Ljava/lang/Object;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ElementReader"
.end annotation


# virtual methods
.method public abstract read(Ljava/io/InputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
