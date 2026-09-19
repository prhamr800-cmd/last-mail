###### Class com.squareup.okhttp.internal.framed.Spdy3 (com.squareup.okhttp.internal.framed.Spdy3)
.class public final Lcom/squareup/okhttp/internal/framed/Spdy3;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;,
        Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;
    }
.end annotation


# static fields
.field static final DICTIONARY:[B

.field static final FLAG_FIN:I = 0x1

.field static final FLAG_UNIDIRECTIONAL:I = 0x2

.field static final TYPE_DATA:I = 0x0

.field static final TYPE_GOAWAY:I = 0x7

.field static final TYPE_HEADERS:I = 0x8

.field static final TYPE_PING:I = 0x6

.field static final TYPE_RST_STREAM:I = 0x3

.field static final TYPE_SETTINGS:I = 0x4

.field static final TYPE_SYN_REPLY:I = 0x2

.field static final TYPE_SYN_STREAM:I = 0x1

.field static final TYPE_WINDOW_UPDATE:I = 0x9

.field static final VERSION:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    :try_start_0
    const-string v0, "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\u000ccontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\u000ccontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\u0008if-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\u0008if-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\u0008location\u0000\u0000\u0000\u000cmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\u0008HTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0."

    sget-object v1, Lcom/squareup/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 92
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/framed/Spdy3;->DICTIONARY:[B
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_e} :catch_10

    .line 95
    nop

    .line 96
    return-void

    .line 93
    :catch_10
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    return-void
.end method


# virtual methods
.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .registers 2

    .line 39
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public newReader(Lokio/BufferedSource;Z)Lcom/squareup/okhttp/internal/framed/FrameReader;
    .registers 4
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "client"    # Z

    .line 99
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;

    invoke-direct {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;-><init>(Lokio/BufferedSource;Z)V

    return-object v0
.end method

.method public newWriter(Lokio/BufferedSink;Z)Lcom/squareup/okhttp/internal/framed/FrameWriter;
    .registers 4
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "client"    # Z

    .line 103
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;

    invoke-direct {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;-><init>(Lokio/BufferedSink;Z)V

    return-object v0
.end method

###### Class com.squareup.okhttp.internal.framed.Spdy3.Reader (com.squareup.okhttp.internal.framed.Spdy3$Reader)
.class final Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Z)V
    .registers 5
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "client"    # Z

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    .line 114
    new-instance v0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    .line 115
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->client:Z

    .line 116
    return-void
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

    .line 278
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 10
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_31

    .line 251
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 252
    .local v2, "lastGoodStreamId":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 253
    .local v3, "errorCodeInt":I
    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v4

    .line 254
    .local v4, "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    if-eqz v4, :cond_22

    .line 257
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-interface {p1, v2, v4, v0}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 258
    return-void

    .line 255
    :cond_22
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 250
    .end local v2    # "lastGoodStreamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :cond_31
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 14
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 227
    .local v0, "w1":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 228
    .local v1, "streamId":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v3, p3, -0x4

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v9

    .line 229
    .local v9, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    sget-object v8, Lcom/squareup/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    move v5, v1

    move-object v7, v9

    invoke-interface/range {v2 .. v8}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 230
    return-void
.end method

.method private readPing(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 9
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p3, v2, :cond_1c

    .line 244
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 245
    .local v2, "id":I
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->client:Z

    and-int/lit8 v4, v2, 0x1

    if-ne v4, v1, :cond_13

    const/4 v4, 0x1

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    :goto_14
    if-ne v3, v4, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 246
    .local v1, "ack":Z
    :goto_18
    invoke-interface {p1, v1, v2, v0}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 247
    return-void

    .line 243
    .end local v1    # "ack":Z
    .end local v2    # "id":I
    :cond_1c
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PING length: %d != 4"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 10
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_2f

    .line 216
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 217
    .local v2, "streamId":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 218
    .local v3, "errorCodeInt":I
    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v4

    .line 219
    .local v4, "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    if-eqz v4, :cond_20

    .line 222
    invoke-interface {p1, v2, v4}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 223
    return-void

    .line 220
    :cond_20
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 215
    .end local v2    # "streamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :cond_2f
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 13
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 262
    .local v0, "numberOfEntries":I
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_3b

    .line 265
    new-instance v1, Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/Settings;-><init>()V

    .line 266
    .local v1, "settings":Lcom/squareup/okhttp/internal/framed/Settings;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v0, :cond_31

    .line 267
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 268
    .local v5, "w1":I
    iget-object v6, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v6

    .line 269
    .local v6, "value":I
    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    .line 270
    .local v7, "idFlags":I
    const v8, 0xffffff

    and-int/2addr v8, v5

    .line 271
    .local v8, "id":I
    invoke-virtual {v1, v8, v7, v6}, Lcom/squareup/okhttp/internal/framed/Settings;->set(III)Lcom/squareup/okhttp/internal/framed/Settings;

    .line 266
    .end local v5    # "w1":I
    .end local v6    # "value":I
    .end local v7    # "idFlags":I
    .end local v8    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 273
    .end local v4    # "i":I
    :cond_31
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_37

    const/4 v2, 0x1

    nop

    .line 274
    .local v2, "clearPrevious":Z
    :cond_37
    invoke-interface {p1, v2, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/framed/Settings;)V

    .line 275
    return-void

    .line 263
    .end local v1    # "settings":Lcom/squareup/okhttp/internal/framed/Settings;
    .end local v2    # "clearPrevious":Z
    :cond_3b
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {v2, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private readSynReply(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 14
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 208
    .local v0, "w1":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 209
    .local v1, "streamId":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v3, p3, -0x4

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v9

    .line 210
    .local v9, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_1b

    :cond_19
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 211
    .local v4, "inFinished":Z
    :goto_1b
    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lcom/squareup/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, v1

    move-object v7, v9

    invoke-interface/range {v2 .. v8}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 212
    return-void
.end method

.method private readSynStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 16
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 194
    .local v0, "w1":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 195
    .local v1, "w2":I
    const v2, 0x7fffffff

    and-int v10, v0, v2

    .line 196
    .local v10, "streamId":I
    and-int/2addr v2, v1

    .line 197
    .local v2, "associatedStreamId":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readShort()S

    .line 198
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v4, p3, -0xa

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v11

    .line 200
    .local v11, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    and-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_27

    const/4 v5, 0x1

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    .line 201
    .local v5, "inFinished":Z
    :goto_28
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2e

    const/4 v4, 0x1

    nop

    .line 202
    .local v4, "outFinished":Z
    :cond_2e
    sget-object v9, Lcom/squareup/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    move-object v3, p1

    move v6, v10

    move v7, v2

    move-object v8, v11

    invoke-interface/range {v3 .. v9}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 204
    return-void
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 14
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_33

    .line 234
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 235
    .local v2, "w1":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 236
    .local v3, "w2":I
    const v4, 0x7fffffff

    and-int v5, v2, v4

    .line 237
    .local v5, "streamId":I
    and-int/2addr v4, v3

    int-to-long v6, v4

    .line 238
    .local v6, "increment":J
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_23

    .line 239
    invoke-interface {p1, v5, v6, v7}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 240
    return-void

    .line 238
    :cond_23
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    const-string/jumbo v0, "windowSizeIncrement was 0"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 233
    .end local v2    # "w1":I
    .end local v3    # "w2":I
    .end local v5    # "streamId":I
    .end local v6    # "increment":J
    :cond_33
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

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

    .line 282
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->close()V

    .line 283
    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;)Z
    .registers 13
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 130
    .local v1, "w1":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_81

    .line 133
    .local v2, "w2":I
    nop

    .line 132
    nop

    .line 135
    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    .line 136
    .local v3, "control":Z
    :goto_18
    const/high16 v5, -0x1000000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    .line 137
    .local v5, "flags":I
    const v6, 0xffffff

    and-int/2addr v6, v2

    .line 139
    .local v6, "length":I
    if-eqz v3, :cond_71

    .line 140
    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    .line 141
    .local v0, "version":I
    const v7, 0xffff

    and-int/2addr v7, v1

    .line 143
    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v0, v8, :cond_59

    .line 147
    packed-switch v7, :pswitch_data_84

    .line 181
    :pswitch_32
    iget-object v8, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    int-to-long v9, v6

    invoke-interface {v8, v9, v10}, Lokio/BufferedSource;->skip(J)V

    .line 182
    return v4

    .line 177
    :pswitch_39
    invoke-direct {p0, p1, v5, v6}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 178
    return v4

    .line 173
    :pswitch_3d
    invoke-direct {p0, p1, v5, v6}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readHeaders(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 174
    return v4

    .line 169
    :pswitch_41
    invoke-direct {p0, p1, v5, v6}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readGoAway(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 170
    return v4

    .line 165
    :pswitch_45
    invoke-direct {p0, p1, v5, v6}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readPing(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 166
    return v4

    .line 161
    :pswitch_49
    invoke-direct {p0, p1, v5, v6}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readSettings(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 162
    return v4

    .line 157
    :pswitch_4d
    invoke-direct {p0, p1, v5, v6}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readRstStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 158
    return v4

    .line 153
    :pswitch_51
    invoke-direct {p0, p1, v5, v6}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readSynReply(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 154
    return v4

    .line 149
    :pswitch_55
    invoke-direct {p0, p1, v5, v6}, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->readSynStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 150
    return v4

    .line 144
    :cond_59
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "version != 3: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    .end local v0    # "version":I
    .end local v7    # "type":I
    :cond_71
    const v7, 0x7fffffff

    and-int/2addr v7, v1

    .line 186
    .local v7, "streamId":I
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_7b

    const/4 v0, 0x1

    nop

    .line 187
    .local v0, "inFinished":Z
    :cond_7b
    iget-object v8, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v0, v7, v8, v6}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 188
    return v4

    .line 131
    .end local v0    # "inFinished":Z
    .end local v1    # "w1":I
    .end local v2    # "w2":I
    .end local v3    # "control":Z
    .end local v5    # "flags":I
    .end local v6    # "length":I
    .end local v7    # "streamId":I
    :catch_81
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    return v0

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_32
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .registers 1

    .line 119
    return-void
.end method

###### Class com.squareup.okhttp.internal.framed.Spdy3.Writer (com.squareup.okhttp.internal.framed.Spdy3$Writer)
.class final Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final headerBlockBuffer:Lokio/Buffer;

.field private final headerBlockOut:Lokio/BufferedSink;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .registers 6
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "client"    # Z

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    .line 296
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->client:Z

    .line 298
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 299
    .local v0, "deflater":Ljava/util/zip/Deflater;
    sget-object v1, Lcom/squareup/okhttp/internal/framed/Spdy3;->DICTIONARY:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 300
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    .line 301
    new-instance v1, Lokio/DeflaterSink;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-direct {v1, v2, v0}, Lokio/DeflaterSink;-><init>(Lokio/Sink;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    .line 302
    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 409
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_e
    if-ge v0, v1, :cond_3f

    .line 411
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/okhttp/internal/framed/Header;

    iget-object v2, v2, Lcom/squareup/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    .line 412
    .local v2, "name":Lokio/ByteString;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 413
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v3, v2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 414
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/okhttp/internal/framed/Header;

    iget-object v3, v3, Lcom/squareup/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    .line 415
    .local v3, "value":Lokio/ByteString;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 416
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v4, v3}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 410
    .end local v2    # "name":Lokio/ByteString;
    .end local v3    # "value":Lokio/ByteString;
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 418
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_3f
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 419
    return-void
.end method


# virtual methods
.method public ackSettings(Lcom/squareup/okhttp/internal/framed/Settings;)V
    .registers 2
    .param p1, "peerSettings"    # Lcom/squareup/okhttp/internal/framed/Settings;

    .line 306
    return-void
.end method

.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 487
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    .line 488
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 489
    monitor-exit p0

    return-void

    .line 486
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .registers 1

    monitor-enter p0

    .line 316
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .registers 6
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

    .line 391
    move v0, p1

    .line 392
    .local v0, "flags":I
    :try_start_2
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sendDataFrame(IILokio/Buffer;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 393
    monitor-exit p0

    return-void

    .line 390
    .end local v0    # "flags":I
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "source":Lokio/Buffer;
    .end local p4    # "byteCount":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 319
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_c

    .line 320
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 321
    monitor-exit p0

    return-void

    .line 319
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 318
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .param p3, "ignored"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 455
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_43

    .line 456
    iget v0, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    .line 459
    const/4 v0, 0x7

    .line 460
    .local v0, "type":I
    const/4 v1, 0x0

    .line 461
    .local v1, "flags":I
    const/16 v2, 0x8

    .line 462
    .local v2, "length":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/high16 v4, -0x7ffd0000

    const v5, 0xffff

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 463
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v4, v1, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 464
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 465
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget v4, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 466
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_4b

    .line 467
    monitor-exit p0

    return-void

    .line 457
    .end local v0    # "type":I
    .end local v1    # "flags":I
    .end local v2    # "length":I
    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_4b

    .line 454
    .end local p1    # "lastGoodStreamId":I
    .end local p2    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .end local p3    # "ignored":[B
    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .registers 9
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

    .line 359
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_41

    .line 360
    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 363
    .local v1, "type":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 365
    .local v2, "length":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/high16 v4, -0x7ffd0000

    const v5, 0xffff

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 366
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 367
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 368
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_49

    .line 369
    monitor-exit p0

    return-void

    .line 359
    .end local v0    # "flags":I
    .end local v1    # "type":I
    .end local v2    # "length":I
    :cond_41
    :try_start_41
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_49

    .line 358
    .end local p1    # "streamId":I
    .end local p2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public maxDataLength()I
    .registers 2

    .line 386
    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .registers 11
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_48

    .line 442
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->client:Z

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eq v0, v1, :cond_14

    const/4 v2, 0x1

    nop

    :cond_14
    move v0, v2

    .line 443
    .local v0, "payloadIsReply":Z
    if-ne p1, v0, :cond_40

    .line 444
    const/4 v1, 0x6

    .line 445
    .local v1, "type":I
    const/4 v2, 0x0

    .line 446
    .local v2, "flags":I
    const/4 v3, 0x4

    .line 447
    .local v3, "length":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/high16 v5, -0x7ffd0000

    const v6, 0xffff

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 448
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 449
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 450
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_50

    .line 451
    monitor-exit p0

    return-void

    .line 443
    .end local v1    # "type":I
    .end local v2    # "flags":I
    .end local v3    # "length":I
    :cond_40
    :try_start_40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "payload != reply"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    .end local v0    # "payloadIsReply":Z
    :cond_48
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_50

    .line 440
    .end local p1    # "reply":Z
    .end local p2    # "payload1":I
    .end local p3    # "payload2":I
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 4
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

    .line 312
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    return-void
.end method

.method public declared-synchronized rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .registers 9
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 373
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_45

    .line 374
    iget v0, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3f

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "flags":I
    const/4 v1, 0x3

    .line 377
    .local v1, "type":I
    const/16 v2, 0x8

    .line 378
    .local v2, "length":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/high16 v4, -0x7ffd0000

    const v5, 0xffff

    and-int/2addr v5, v1

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 379
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 380
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 381
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget v4, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->spdyRstCode:I

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 382
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_4d

    .line 383
    monitor-exit p0

    return-void

    .line 374
    .end local v0    # "flags":I
    .end local v1    # "type":I
    .end local v2    # "length":I
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 373
    :cond_45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_4d

    .line 372
    .end local p1    # "streamId":I
    .end local p2    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendDataFrame(IILokio/Buffer;I)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "flags"    # I
    .param p3, "buffer"    # Lokio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_43

    .line 398
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2c

    .line 401
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 402
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 403
    if-lez p4, :cond_2b

    .line 404
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    int-to-long v1, p4

    invoke-interface {v0, p3, v1, v2}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    .line 406
    :cond_2b
    return-void

    .line 399
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized settings(Lcom/squareup/okhttp/internal/framed/Settings;)V
    .registers 12
    .param p1, "settings"    # Lcom/squareup/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 422
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_5e

    .line 423
    const/4 v0, 0x4

    .line 424
    .local v0, "type":I
    const/4 v1, 0x0

    .line 425
    .local v1, "flags":I
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/Settings;->size()I

    move-result v2

    .line 426
    .local v2, "size":I
    mul-int/lit8 v3, v2, 0x8

    add-int/lit8 v3, v3, 0x4

    .line 427
    .local v3, "length":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/high16 v5, -0x7ffd0000

    const v6, 0xffff

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 428
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int v7, v3, v6

    or-int/2addr v5, v7

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 429
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4, v2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 430
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    const/16 v5, 0xa

    if-gt v4, v5, :cond_57

    .line 431
    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_54

    .line 432
    :cond_3b
    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/internal/framed/Settings;->flags(I)I

    move-result v5

    .line 433
    .local v5, "settingsFlags":I
    iget-object v7, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v8, v5, 0xff

    shl-int/lit8 v8, v8, 0x18

    and-int v9, v4, v6

    or-int/2addr v8, v9

    invoke-interface {v7, v8}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 434
    iget-object v7, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/internal/framed/Settings;->get(I)I

    move-result v8

    invoke-interface {v7, v8}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 430
    .end local v5    # "settingsFlags":I
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 436
    .end local v4    # "i":I
    :cond_57
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_66

    .line 437
    monitor-exit p0

    return-void

    .line 422
    .end local v0    # "type":I
    .end local v1    # "flags":I
    .end local v2    # "size":I
    .end local v3    # "length":I
    :cond_5e
    :try_start_5e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_66

    .line 421
    .end local p1    # "settings":Lcom/squareup/okhttp/internal/framed/Settings;
    :catchall_66
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .registers 10
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

    .line 344
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_45

    .line 345
    invoke-direct {p0, p3}, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 346
    const/4 v0, 0x2

    .line 347
    .local v0, "type":I
    move v1, p1

    .line 348
    .local v1, "flags":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 350
    .local v2, "length":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/high16 v4, -0x7ffd0000

    const v5, 0xffff

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 351
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v4, v1, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 352
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 353
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 354
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4d

    .line 355
    monitor-exit p0

    return-void

    .line 344
    .end local v0    # "type":I
    .end local v1    # "flags":I
    .end local v2    # "length":I
    :cond_45
    :try_start_45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4d

    .line 343
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .registers 13
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

    .line 326
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_64

    .line 327
    invoke-direct {p0, p5}, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 328
    const-wide/16 v0, 0xa

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const/4 v4, 0x0

    add-long/2addr v2, v0

    long-to-int v0, v2

    .line 329
    .local v0, "length":I
    const/4 v1, 0x1

    .line 330
    .local v1, "type":I
    if-eqz p2, :cond_18

    const/4 v2, 0x2

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    or-int/2addr v2, p1

    .line 332
    .local v2, "flags":I
    const/4 v3, 0x0

    .line 333
    .local v3, "unused":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/high16 v5, -0x7ffd0000

    const v6, 0xffff

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 334
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 335
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v5, 0x7fffffff

    and-int v6, p3, v5

    invoke-interface {v4, v6}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 336
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/2addr v5, p4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 337
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit8 v5, v3, 0x7

    shl-int/lit8 v5, v5, 0xd

    and-int/lit8 v6, v3, 0x1f

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/lit16 v6, v3, 0xff

    or-int/2addr v5, v6

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    .line 338
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 339
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->flush()V
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_6c

    .line 340
    monitor-exit p0

    return-void

    .line 326
    .end local v0    # "length":I
    .end local v1    # "type":I
    .end local v2    # "flags":I
    .end local v3    # "unused":I
    :cond_64
    :try_start_64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_6c

    .line 325
    .end local p1    # "outFinished":Z
    .end local p2    # "inFinished":Z
    .end local p3    # "streamId":I
    .end local p4    # "associatedStreamId":I
    .end local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :catchall_6c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "increment"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 471
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->closed:Z

    if-nez v0, :cond_5b

    .line 472
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_43

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_43

    .line 476
    const/16 v0, 0x9

    .line 477
    .local v0, "type":I
    const/4 v1, 0x0

    .line 478
    .local v1, "flags":I
    const/16 v2, 0x8

    .line 479
    .local v2, "length":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/high16 v4, -0x7ffd0000

    const v5, 0xffff

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 480
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v4, v1, 0xff

    shl-int/lit8 v4, v4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 481
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 482
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 483
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_63

    .line 484
    monitor-exit p0

    return-void

    .line 473
    .end local v0    # "type":I
    .end local v1    # "flags":I
    .end local v2    # "length":I
    :cond_43
    :try_start_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_5b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_63

    .line 470
    .end local p1    # "streamId":I
    .end local p2    # "increment":J
    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method
