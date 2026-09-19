###### Class com.squareup.okhttp.internal.framed.Http2 (com.squareup.okhttp.internal.framed.Http2)
.class public final Lcom/squareup/okhttp/internal/framed/Http2;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;,
        Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;,
        Lcom/squareup/okhttp/internal/framed/Http2$Writer;,
        Lcom/squareup/okhttp/internal/framed/Http2$Reader;
    }
.end annotation


# static fields
.field private static final CONNECTION_PREFACE:Lokio/ByteString;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_COMPRESSED:B = 0x20t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PADDED:B = 0x8t

.field static final FLAG_PRIORITY:B = 0x20t

.field static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field static final TYPE_CONTINUATION:B = 0x9t

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x8t

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;

    .line 49
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 50
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    return-void
.end method

.method static synthetic access$000()Lokio/ByteString;
    .registers 1

    .line 42
    sget-object v0, Lcom/squareup/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .registers 1

    .line 42
    sget-object v0, Lcom/squareup/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lokio/BufferedSource;)I
    .registers 2
    .param p0, "x0"    # Lokio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lcom/squareup/okhttp/internal/framed/Http2;->readMedium(Lokio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(IBS)I
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # B
    .param p2, "x2"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-static {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/Http2;->lengthWithoutPadding(IBS)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 42
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lokio/BufferedSink;I)V
    .registers 2
    .param p0, "x0"    # Lokio/BufferedSink;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/framed/Http2;->writeMedium(Lokio/BufferedSink;I)V

    return-void
.end method

.method private static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static lengthWithoutPadding(IBS)I
    .registers 6
    .param p0, "length"    # I
    .param p1, "flags"    # B
    .param p2, "padding"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_6

    add-int/lit8 p0, p0, -0x1

    .line 644
    :cond_6
    if-gt p2, p0, :cond_c

    .line 647
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0

    .line 645
    :cond_c
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private static readMedium(Lokio/BufferedSource;)I
    .registers 3
    .param p0, "source"    # Lokio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 762
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 763
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static writeMedium(Lokio/BufferedSink;I)V
    .registers 3
    .param p0, "sink"    # Lokio/BufferedSink;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 768
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 769
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 770
    return-void
.end method


# virtual methods
.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .registers 2

    .line 46
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public newReader(Lokio/BufferedSource;Z)Lcom/squareup/okhttp/internal/framed/FrameReader;
    .registers 5
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "client"    # Z

    .line 80
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1, p2}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;-><init>(Lokio/BufferedSource;IZ)V

    return-object v0
.end method

.method public newWriter(Lokio/BufferedSink;Z)Lcom/squareup/okhttp/internal/framed/FrameWriter;
    .registers 4
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "client"    # Z

    .line 84
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;

    invoke-direct {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;-><init>(Lokio/BufferedSink;Z)V

    return-object v0
.end method

###### Class com.squareup.okhttp.internal.framed.Http2.ContinuationSource (com.squareup.okhttp.internal.framed.Http2$ContinuationSource)
.class final Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Lokio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .registers 2
    .param p1, "source"    # Lokio/BufferedSource;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    .line 604
    return-void
.end method

.method private readContinuationHeader()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 631
    .local v0, "previousStreamId":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$300(Lokio/BufferedSource;)I

    move-result v1

    iput v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    iput v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    .line 632
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 633
    .local v1, "type":B
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    .line 634
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    iget v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    iget v5, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    iget-byte v6, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    invoke-static {v3, v4, v5, v1, v6}, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 635
    :cond_3e
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    iput v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 636
    const/16 v2, 0x9

    const/4 v4, 0x0

    if-ne v1, v2, :cond_5d

    .line 637
    iget v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    if-ne v2, v0, :cond_54

    .line 638
    return-void

    .line 637
    :cond_54
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "TYPE_CONTINUATION streamId changed"

    invoke-static {v3, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 636
    :cond_5d
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "%s != TYPE_CONTINUATION"

    invoke-static {v3, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 9
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1c

    .line 608
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    iget-short v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    .line 609
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    .line 610
    iget-byte v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    return-wide v1

    .line 611
    :cond_18
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 615
    :cond_1c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    int-to-long v3, v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-interface {v0, p1, v3, v4}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v3

    .line 616
    .local v3, "read":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_2e

    return-wide v1

    .line 617
    :cond_2e
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    int-to-long v0, v0

    sub-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    .line 618
    return-wide v3
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 622
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

###### Class com.squareup.okhttp.internal.framed.Http2.FrameLogger (com.squareup.okhttp.internal.framed.Http2$FrameLogger)
.class final Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;
.super Ljava/lang/Object;
.source "Http2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameLogger"
.end annotation


# static fields
.field private static final BINARY:[Ljava/lang/String;

.field private static final FLAGS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 705
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DATA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HEADERS"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "PRIORITY"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "RST_STREAM"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "SETTINGS"

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "PUSH_PROMISE"

    const/4 v6, 0x5

    aput-object v1, v0, v6

    const-string v1, "PING"

    const/4 v6, 0x6

    aput-object v1, v0, v6

    const-string v1, "GOAWAY"

    const/4 v6, 0x7

    aput-object v1, v0, v6

    const-string v1, "WINDOW_UPDATE"

    const/16 v6, 0x8

    aput-object v1, v0, v6

    const-string v1, "CONTINUATION"

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sput-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    .line 722
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    .line 723
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    .line 726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_47
    sget-object v1, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    array-length v1, v1

    const/16 v7, 0x20

    if-ge v0, v1, :cond_69

    .line 727
    sget-object v1, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    const-string v8, "%8s"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x30

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 730
    .end local v0    # "i":I
    :cond_69
    sget-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    .line 731
    sget-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v1, "END_STREAM"

    aput-object v1, v0, v3

    .line 733
    new-array v0, v3, [I

    aput v3, v0, v2

    .line 735
    .local v0, "prefixFlags":[I
    sget-object v1, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v3, "PADDED"

    aput-object v3, v1, v6

    .line 736
    array-length v1, v0

    const/4 v3, 0x0

    :goto_81
    if-ge v3, v1, :cond_a4

    aget v8, v0, v3

    .line 737
    .local v8, "prefixFlag":I
    sget-object v9, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int/lit8 v10, v8, 0x8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "|PADDED"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 736
    .end local v8    # "prefixFlag":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 740
    :cond_a4
    sget-object v1, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v3, "END_HEADERS"

    aput-object v3, v1, v5

    .line 741
    sget-object v1, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const-string v3, "PRIORITY"

    aput-object v3, v1, v7

    .line 742
    sget-object v1, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    const/16 v3, 0x24

    const-string v5, "END_HEADERS|PRIORITY"

    aput-object v5, v1, v3

    .line 743
    new-array v1, v4, [I

    fill-array-data v1, :array_130

    .line 746
    .local v1, "frameFlags":[I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_bf
    if-ge v4, v3, :cond_118

    aget v5, v1, v4

    .line 747
    .local v5, "frameFlag":I
    array-length v7, v0

    const/4 v8, 0x0

    :goto_c5
    if-ge v8, v7, :cond_115

    aget v9, v0, v8

    .line 748
    .local v9, "prefixFlag":I
    sget-object v10, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v11, v9, v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x7c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 749
    sget-object v10, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    or-int v11, v9, v5

    or-int/2addr v11, v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v13, v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "|PADDED"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 747
    .end local v9    # "prefixFlag":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_c5

    .line 746
    .end local v5    # "frameFlag":I
    :cond_115
    add-int/lit8 v4, v4, 0x1

    goto :goto_bf

    .line 754
    :cond_118
    nop

    .local v2, "i":I
    :goto_119
    sget-object v3, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_12f

    .line 755
    sget-object v3, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_12c

    sget-object v3, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    sget-object v4, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 754
    :cond_12c
    add-int/lit8 v2, v2, 0x1

    goto :goto_119

    .line 757
    .end local v0    # "prefixFlags":[I
    .end local v1    # "frameFlags":[I
    .end local v2    # "i":I
    :cond_12f
    return-void

    :array_130
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatFlags(BB)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # B
    .param p1, "flags"    # B

    .line 683
    if-nez p1, :cond_5

    const-string v0, ""

    return-object v0

    .line 684
    :cond_5
    packed-switch p0, :pswitch_data_46

    .line 694
    :pswitch_8
    sget-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_22

    sget-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->FLAGS:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_26

    .line 687
    :pswitch_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    const-string v0, "ACK"

    goto :goto_1c

    :cond_18
    sget-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_1c
    return-object v0

    .line 692
    :pswitch_1d
    sget-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 694
    :cond_22
    sget-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 696
    .local v0, "result":Ljava/lang/String;
    :goto_26
    const/4 v1, 0x5

    if-ne p0, v1, :cond_36

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_36

    .line 697
    const-string v1, "HEADERS"

    const-string v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 698
    :cond_36
    if-nez p0, :cond_45

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_45

    .line 699
    const-string v1, "PRIORITY"

    const-string v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 701
    :cond_45
    return-object v0

    :pswitch_data_46
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1d
        :pswitch_12
        :pswitch_8
        :pswitch_12
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method static formatHeader(ZIIBB)Ljava/lang/String;
    .registers 12
    .param p0, "inbound"    # Z
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B

    .line 671
    sget-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p3, v0, :cond_c

    sget-object v0, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->TYPES:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_1a

    :cond_c
    const-string v0, "0x%02x"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "formattedType":Ljava/lang/String;
    :goto_1a
    invoke-static {p3, p4}, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->formatFlags(BB)Ljava/lang/String;

    move-result-object v3

    .line 673
    .local v3, "formattedFlags":Ljava/lang/String;
    const-string v4, "%s 0x%08x %5d %-13s %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz p0, :cond_28

    const-string v6, "<<"

    goto :goto_2a

    :cond_28
    const-string v6, ">>"

    :goto_2a
    aput-object v6, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    const/4 v1, 0x4

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class com.squareup.okhttp.internal.framed.Http2.Reader (com.squareup.okhttp.internal.framed.Http2$Reader)
.class final Lcom/squareup/okhttp/internal/framed/Http2$Reader;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

.field final hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .registers 6
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "headerTableSize"    # I
    .param p3, "client"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    .line 97
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->client:Z

    .line 98
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    .line 99
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    invoke-direct {v0, p2, v1}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    .line 100
    return-void
.end method

.method private readData(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 11
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 220
    .local v0, "inFinished":Z
    :goto_9
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 221
    .local v1, "gzipped":Z
    :goto_f
    if-nez v1, :cond_2f

    .line 225
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_1f

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    nop

    .line 226
    .local v2, "padding":S
    :cond_1f
    invoke-static {p2, p3, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 228
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v0, p4, v3, p2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 229
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    .line 230
    return-void

    .line 222
    .end local v2    # "padding":S
    :cond_2f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {v3, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 13
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt p2, v1, :cond_43

    .line 335
    if-nez p4, :cond_3a

    .line 336
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 337
    .local v1, "lastStreamId":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 338
    .local v3, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    .line 339
    .local v4, "opaqueDataLength":I
    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v5

    .line 340
    .local v5, "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    if-eqz v5, :cond_2b

    .line 343
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 344
    .local v0, "debugData":Lokio/ByteString;
    if-lez v4, :cond_27

    .line 345
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v4

    invoke-interface {v2, v6, v7}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 347
    :cond_27
    invoke-interface {p1, v1, v5, v0}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 348
    return-void

    .line 341
    .end local v0    # "debugData":Lokio/ByteString;
    :cond_2b
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    const-string v2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 335
    .end local v1    # "lastStreamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "opaqueDataLength":I
    .end local v5    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :cond_3a
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "TYPE_GOAWAY streamId != 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 334
    :cond_43
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .registers 7
    .param p1, "length"    # I
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput p1, v1, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    iput p1, v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    .line 206
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput-short p2, v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    .line 207
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput-byte p3, v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    .line 208
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput p4, v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 212
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;->readHeaders()V

    .line 213
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 14
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    if-eqz p4, :cond_35

    .line 187
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    .line 189
    .local v4, "endStream":Z
    :goto_b
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_19

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    nop

    .line 191
    .local v0, "padding":S
    :cond_19
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_22

    .line 192
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 193
    add-int/lit8 p2, p2, -0x5

    .line 196
    :cond_22
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 198
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v1

    .line 200
    .local v1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lcom/squareup/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, p4

    move-object v7, v1

    invoke-interface/range {v2 .. v8}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 201
    return-void

    .line 185
    .end local v0    # "padding":S
    .end local v1    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    .end local v4    # "endStream":Z
    :cond_35
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPing(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 10
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_27

    .line 325
    if-nez p4, :cond_1e

    .line 326
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 327
    .local v2, "payload1":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 328
    .local v3, "payload2":I
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_1a

    const/4 v0, 0x1

    nop

    .line 329
    .local v0, "ack":Z
    :cond_1a
    invoke-interface {p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 330
    return-void

    .line 325
    .end local v0    # "ack":Z
    .end local v2    # "payload1":I
    .end local v3    # "payload2":I
    :cond_1e
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_PING streamId != 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 324
    :cond_27
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PING length != 8: %s"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V
    .registers 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 241
    .local v0, "w1":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 242
    .local v1, "exclusive":Z
    :goto_f
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 243
    .local v3, "streamDependency":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 244
    .local v4, "weight":I
    invoke-interface {p1, p2, v3, v4, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->priority(IIIZ)V

    .line 245
    return-void
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_13

    .line 235
    if-eqz p4, :cond_a

    .line 236
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 237
    return-void

    .line 235
    :cond_a
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_PRIORITY streamId == 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 234
    :cond_13
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPushPromise(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    if-eqz p4, :cond_29

    .line 314
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    nop

    .line 315
    .local v0, "padding":S
    :cond_11
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 316
    .local v1, "promisedStreamId":I
    add-int/lit8 p2, p2, -0x4

    .line 317
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 318
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v2

    .line 319
    .local v2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    invoke-interface {p1, p4, v1, v2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 320
    return-void

    .line 312
    .end local v0    # "padding":S
    .end local v1    # "promisedStreamId":I
    .end local v2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :cond_29
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 10
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2f

    .line 250
    if-eqz p4, :cond_26

    .line 251
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 252
    .local v2, "errorCodeInt":I
    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v3

    .line 253
    .local v3, "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    if-eqz v3, :cond_17

    .line 256
    invoke-interface {p1, p4, v3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 257
    return-void

    .line 254
    :cond_17
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 250
    .end local v2    # "errorCodeInt":I
    .end local v3    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :cond_26
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 249
    :cond_2f
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 12
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    if-nez p4, :cond_a1

    .line 262
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_16

    .line 263
    if-nez p2, :cond_d

    .line 264
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ackSettings()V

    .line 265
    return-void

    .line 263
    :cond_d
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 268
    :cond_16
    rem-int/lit8 v1, p2, 0x6

    const/4 v2, 0x1

    if-nez v1, :cond_92

    .line 269
    new-instance v1, Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/Settings;-><init>()V

    .line 270
    .local v1, "settings":Lcom/squareup/okhttp/internal/framed/Settings;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, p2, :cond_7f

    .line 271
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readShort()S

    move-result v4

    .line 272
    .local v4, "id":S
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 274
    .local v5, "value":I
    packed-switch v4, :pswitch_data_aa

    .line 299
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v2, v0

    const-string v0, "PROTOCOL_ERROR invalid settings id: %s"

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 297
    :pswitch_41
    goto :goto_79

    .line 292
    :pswitch_42
    const/16 v6, 0x4000

    if-lt v5, v6, :cond_4c

    const v6, 0xffffff

    if-gt v5, v6, :cond_4c

    goto :goto_79

    .line 293
    :cond_4c
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v0

    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 286
    :pswitch_5b
    const/4 v4, 0x7

    .line 287
    if-ltz v5, :cond_5f

    goto :goto_79

    .line 288
    :cond_5f
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 283
    :pswitch_68
    const/4 v4, 0x4

    .line 284
    goto :goto_79

    .line 278
    :pswitch_6a
    if-eqz v5, :cond_79

    if-ne v5, v2, :cond_6f

    goto :goto_79

    .line 279
    :cond_6f
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 276
    :pswitch_78
    nop

    .line 301
    :cond_79
    :goto_79
    invoke-virtual {v1, v4, v0, v5}, Lcom/squareup/okhttp/internal/framed/Settings;->set(III)Lcom/squareup/okhttp/internal/framed/Settings;

    .line 270
    .end local v4    # "id":S
    .end local v5    # "value":I
    add-int/lit8 v3, v3, 0x6

    goto :goto_21

    .line 303
    .end local v3    # "i":I
    :cond_7f
    invoke-interface {p1, v0, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/framed/Settings;)V

    .line 304
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result v0

    if-ltz v0, :cond_91

    .line 305
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting(I)V

    .line 307
    :cond_91
    return-void

    .line 268
    .end local v1    # "settings":Lcom/squareup/okhttp/internal/framed/Settings;
    :cond_92
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 261
    :cond_a1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_SETTINGS streamId != 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_78
        :pswitch_6a
        :pswitch_68
        :pswitch_5b
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 12
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2a

    .line 353
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    .line 354
    .local v2, "increment":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1a

    .line 355
    invoke-interface {p1, p4, v2, v3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 356
    return-void

    .line 354
    :cond_1a
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    const-string/jumbo v0, "windowSizeIncrement was 0"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 352
    .end local v2    # "increment":J
    :cond_2a
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 360
    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;)Z
    .registers 10
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->require(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_87

    .line 116
    nop

    .line 130
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$300(Lokio/BufferedSource;)I

    move-result v1

    .line 131
    .local v1, "length":I
    const/4 v2, 0x1

    if-ltz v1, :cond_78

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_78

    .line 134
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 135
    .local v0, "type":B
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 136
    .local v3, "flags":B
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 137
    .local v4, "streamId":I
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v2, v4, v1, v0, v3}, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    :cond_49
    packed-switch v0, :pswitch_data_8a

    .line 178
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v1

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->skip(J)V

    goto :goto_77

    .line 173
    :pswitch_53
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 174
    goto :goto_77

    .line 169
    :pswitch_57
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readGoAway(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 170
    goto :goto_77

    .line 165
    :pswitch_5b
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPing(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 166
    goto :goto_77

    .line 161
    :pswitch_5f
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPushPromise(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 162
    goto :goto_77

    .line 157
    :pswitch_63
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readSettings(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 158
    goto :goto_77

    .line 153
    :pswitch_67
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readRstStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 154
    goto :goto_77

    .line 149
    :pswitch_6b
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 150
    goto :goto_77

    .line 145
    :pswitch_6f
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readHeaders(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 146
    goto :goto_77

    .line 141
    :pswitch_73
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readData(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 142
    nop

    .line 180
    :goto_77
    return v2

    .line 132
    .end local v0    # "type":B
    .end local v3    # "flags":B
    .end local v4    # "streamId":I
    :cond_78
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "FRAME_SIZE_ERROR: %s"

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 114
    .end local v1    # "length":I
    :catch_87
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    return v0

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->client:Z

    if-eqz v0, :cond_5

    return-void

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 105
    .local v0, "connectionPreface":Lokio/ByteString;
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_37

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v4, "<< CONNECTION %s"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    :cond_37
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 109
    return-void

    .line 107
    :cond_42
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Expected a connection header but was %s"

    invoke-static {v2, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

###### Class com.squareup.okhttp.internal.framed.Http2.Writer (com.squareup.okhttp.internal.framed.Http2$Writer)
.class final Lcom/squareup/okhttp/internal/framed/Http2$Writer;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lokio/Buffer;

.field private final hpackWriter:Lcom/squareup/okhttp/internal/framed/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .registers 5
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "client"    # Z

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    .line 373
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->client:Z

    .line 374
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    .line 375
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;-><init>(Lokio/Buffer;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/framed/Hpack$Writer;

    .line 376
    const/16 v0, 0x4000

    iput v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 377
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_25

    .line 458
    iget v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 459
    .local v2, "length":I
    int-to-long v3, v2

    sub-long/2addr p2, v3

    .line 460
    const/16 v3, 0x9

    cmp-long v4, p2, v0

    if-nez v4, :cond_18

    const/4 v0, 0x4

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 461
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v3, v2

    invoke-interface {v0, v1, v3, v4}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 462
    .end local v2    # "length":I
    goto :goto_0

    .line 463
    :cond_25
    return-void
.end method


# virtual methods
.method public declared-synchronized ackSettings(Lcom/squareup/okhttp/internal/framed/Settings;)V
    .registers 7
    .param p1, "peerSettings"    # Lcom/squareup/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 385
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_1b

    .line 386
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/framed/Settings;->getMaxFrameSize(I)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "length":I
    const/4 v1, 0x4

    .line 389
    .local v1, "type":B
    const/4 v2, 0x1

    .line 390
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 391
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 392
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_23

    .line 393
    monitor-exit p0

    return-void

    .line 385
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    .line 384
    .end local p1    # "peerSettings":Lcom/squareup/okhttp/internal/framed/Settings;
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 562
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    .line 563
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 564
    monitor-exit p0

    return-void

    .line 561
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 396
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_46

    .line 397
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->client:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4e

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    .line 398
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 399
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 401
    :cond_32
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 402
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_4e

    .line 403
    monitor-exit p0

    return-void

    .line 396
    :cond_46
    :try_start_46
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    .line 395
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .registers 7
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 484
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_10

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "flags":B
    if-eqz p1, :cond_b

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 487
    :cond_b
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->dataFrame(IBLokio/Buffer;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    .line 488
    monitor-exit p0

    return-void

    .line 484
    .end local v0    # "flags":B
    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_18

    .line 483
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "source":Lokio/Buffer;
    .end local p4    # "byteCount":I
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dataFrame(IBLokio/Buffer;I)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "flags"    # B
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "type":B
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 493
    if-lez p4, :cond_c

    .line 494
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v1, p3, v2, v3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 496
    :cond_c
    return-void
.end method

.method public declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_c

    .line 381
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 382
    monitor-exit p0

    return-void

    .line 380
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 379
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method frameHeader(IIBB)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v1, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 568
    :cond_18
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    const/4 v2, 0x1

    if-gt p2, v0, :cond_4e

    .line 571
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3f

    .line 572
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-static {v0, p2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$600(Lokio/BufferedSink;I)V

    .line 573
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 574
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 575
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 576
    return-void

    .line 571
    :cond_3f
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "reserved bit set: %s"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 569
    :cond_4e
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 531
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_38

    .line 532
    iget v0, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    .line 533
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 534
    .local v0, "length":I
    const/4 v1, 0x7

    .line 535
    .local v1, "type":B
    const/4 v2, 0x0

    .line 536
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 537
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 538
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 539
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget v5, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 540
    array-length v4, p3

    if-lez v4, :cond_27

    .line 541
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 543
    :cond_27
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_40

    .line 544
    monitor-exit p0

    return-void

    .line 532
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_2e
    :try_start_2e
    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 531
    :cond_38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_40

    .line 530
    .end local p1    # "lastGoodStreamId":I
    .end local p2    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .end local p3    # "debugData":[B
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 421
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_b

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 423
    monitor-exit p0

    return-void

    .line 421
    :cond_b
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    .line 420
    .end local p1    # "streamId":I
    .end local p2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method headers(ZILjava/util/List;)V
    .registers 13
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_3c

    .line 443
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 445
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 446
    .local v0, "byteCount":J
    iget v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 447
    .local v2, "length":I
    const/4 v3, 0x1

    .line 448
    .local v3, "type":B
    int-to-long v4, v2

    cmp-long v6, v0, v4

    if-nez v6, :cond_1f

    const/4 v4, 0x4

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    .line 449
    .local v4, "flags":B
    :goto_20
    if-eqz p1, :cond_25

    or-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 450
    :cond_25
    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 451
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v7, v2

    invoke-interface {v5, v6, v7, v8}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 453
    int-to-long v5, v2

    cmp-long v7, v0, v5

    if-lez v7, :cond_3b

    int-to-long v5, v2

    sub-long v5, v0, v5

    invoke-direct {p0, p2, v5, v6}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V

    .line 454
    :cond_3b
    return-void

    .line 442
    .end local v0    # "byteCount":J
    .end local v2    # "length":I
    .end local v3    # "type":B
    .end local v4    # "flags":B
    :cond_3c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxDataLength()I
    .registers 2

    .line 479
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .registers 9
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 518
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_1e

    .line 519
    const/16 v0, 0x8

    .line 520
    .local v0, "length":I
    const/4 v1, 0x6

    .line 521
    .local v1, "type":B
    move v2, p1

    .line 522
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 523
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 524
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 525
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 526
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_26

    .line 527
    monitor-exit p0

    return-void

    .line 518
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 517
    .end local p1    # "ack":Z
    .end local p2    # "payload1":I
    .end local p3    # "payload2":I
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .registers 13
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 427
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_45

    .line 428
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->hpackWriter:Lcom/squareup/okhttp/internal/framed/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/framed/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 430
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 431
    .local v0, "byteCount":J
    iget v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->maxFrameSize:I

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    int-to-long v4, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 432
    .local v2, "length":I
    const/4 v4, 0x5

    .line 433
    .local v4, "type":B
    int-to-long v5, v2

    cmp-long v7, v0, v5

    if-nez v7, :cond_21

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    .line 434
    .local v3, "flags":B
    :goto_22
    add-int/lit8 v5, v2, 0x4

    invoke-virtual {p0, p1, v5, v4, v3}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 435
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    const v6, 0x7fffffff

    and-int/2addr v6, p2

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 436
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->hpackBuffer:Lokio/Buffer;

    int-to-long v7, v2

    invoke-interface {v5, v6, v7, v8}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 438
    int-to-long v5, v2

    cmp-long v7, v0, v5

    if-lez v7, :cond_43

    int-to-long v5, v2

    sub-long v5, v0, v5

    invoke-direct {p0, p1, v5, v6}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->writeContinuationFrames(IJ)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4d

    .line 439
    :cond_43
    monitor-exit p0

    return-void

    .line 427
    .end local v0    # "byteCount":J
    .end local v2    # "length":I
    .end local v3    # "flags":B
    .end local v4    # "type":B
    :cond_45
    :try_start_45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4d

    .line 426
    .end local p1    # "streamId":I
    .end local p2    # "promisedStreamId":I
    .end local p3    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 467
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_24

    .line 468
    iget v0, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 470
    const/4 v0, 0x4

    .line 471
    .local v0, "length":I
    const/4 v1, 0x3

    .line 472
    .local v1, "type":B
    const/4 v2, 0x0

    .line 473
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 474
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    iget v4, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 475
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2c

    .line 476
    monitor-exit p0

    return-void

    .line 468
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 467
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2c

    .line 466
    .end local p1    # "streamId":I
    .end local p2    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized settings(Lcom/squareup/okhttp/internal/framed/Settings;)V
    .registers 10
    .param p1, "settings"    # Lcom/squareup/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 499
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_3f

    .line 500
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 501
    .local v0, "length":I
    const/4 v1, 0x4

    .line 502
    .local v1, "type":B
    const/4 v2, 0x0

    .line 503
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 504
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 505
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    const/16 v5, 0xa

    if-ge v4, v5, :cond_38

    .line 506
    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_35

    .line 507
    :cond_1d
    move v5, v4

    .line 508
    .local v5, "id":I
    const/4 v6, 0x4

    if-ne v5, v6, :cond_23

    const/4 v5, 0x3

    goto :goto_27

    .line 509
    :cond_23
    const/4 v6, 0x7

    if-ne v5, v6, :cond_27

    const/4 v5, 0x4

    .line 510
    :cond_27
    :goto_27
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v6, v5}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    .line 511
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/internal/framed/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 505
    .end local v5    # "id":I
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 513
    .end local v4    # "i":I
    :cond_38
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_47

    .line 514
    monitor-exit p0

    return-void

    .line 499
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_47

    .line 498
    .end local p1    # "settings":Lcom/squareup/okhttp/internal/framed/Settings;
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .registers 6
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 415
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_a

    .line 416
    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 417
    monitor-exit p0

    return-void

    .line 415
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    .line 414
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .registers 8
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 408
    if-nez p2, :cond_14

    .line 409
    :try_start_3
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_c

    .line 410
    invoke-virtual {p0, p1, p3, p5}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->headers(ZILjava/util/List;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    .line 411
    monitor-exit p0

    return-void

    .line 409
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1a

    .line 407
    .end local p1    # "outFinished":Z
    .end local p2    # "inFinished":Z
    .end local p3    # "streamId":I
    .end local p4    # "associatedStreamId":I
    .end local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 548
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->closed:Z

    if-nez v0, :cond_38

    .line 549
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_26

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_26

    .line 553
    const/4 v0, 0x4

    .line 554
    .local v0, "length":I
    const/16 v1, 0x8

    .line 555
    .local v1, "type":B
    const/4 v2, 0x0

    .line 556
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->frameHeader(IIBB)V

    .line 557
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 558
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_40

    .line 559
    monitor-exit p0

    return-void

    .line 550
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    :cond_26
    :try_start_26
    const-string/jumbo v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 551
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 550
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 548
    :cond_38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_40

    .line 547
    .end local p1    # "streamId":I
    .end local p2    # "windowSizeIncrement":J
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method
