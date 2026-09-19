###### Class com.squareup.okhttp.internal.framed.NameValueBlockReader (com.squareup.okhttp.internal.framed.NameValueBlockReader)
.class Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"


# instance fields
.field private compressedLimit:I

.field private final inflaterSource:Lokio/InflaterSource;

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .registers 5
    .param p1, "source"    # Lokio/BufferedSource;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$1;-><init>(Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;Lokio/Source;)V

    .line 65
    .local v0, "throttleSource":Lokio/Source;
    new-instance v1, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$2;

    invoke-direct {v1, p0}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$2;-><init>(Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;)V

    .line 77
    .local v1, "inflater":Ljava/util/zip/Inflater;
    new-instance v2, Lokio/InflaterSource;

    invoke-direct {v2, v0, v1}, Lokio/InflaterSource;-><init>(Lokio/Source;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lokio/InflaterSource;

    .line 78
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lokio/InflaterSource;

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->source:Lokio/BufferedSource;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    .line 37
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method static synthetic access$002(Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;I)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    return p1
.end method

.method private doneReading()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-lez v0, :cond_27

    .line 110
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {v0}, Lokio/InflaterSource;->refill()Z

    .line 111
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-nez v0, :cond_e

    goto :goto_27

    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_27
    :goto_27
    return-void
.end method

.method private readByteString()Lokio/ByteString;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 102
    .local v0, "length":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 117
    return-void
.end method

.method public readNameValueBlock(I)Ljava/util/List;
    .registers 9
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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

    .line 82
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->compressedLimit:I

    .line 84
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 85
    .local v0, "numberOfPairs":I
    if-ltz v0, :cond_59

    .line 86
    const/16 v1, 0x400

    if-gt v0, v1, :cond_42

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_3e

    .line 90
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->readByteString()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v3

    .line 91
    .local v3, "name":Lokio/ByteString;
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->readByteString()Lokio/ByteString;

    move-result-object v4

    .line 92
    .local v4, "values":Lokio/ByteString;
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    if-eqz v5, :cond_36

    .line 93
    new-instance v5, Lcom/squareup/okhttp/internal/framed/Header;

    invoke-direct {v5, v3, v4}, Lcom/squareup/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v3    # "name":Lokio/ByteString;
    .end local v4    # "values":Lokio/ByteString;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 92
    .restart local v3    # "name":Lokio/ByteString;
    .restart local v4    # "values":Lokio/ByteString;
    :cond_36
    new-instance v5, Ljava/io/IOException;

    const-string v6, "name.size == 0"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    .end local v2    # "i":I
    .end local v3    # "name":Lokio/ByteString;
    .end local v4    # "values":Lokio/ByteString;
    :cond_3e
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->doneReading()V

    .line 97
    return-object v1

    .line 86
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :cond_42
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberOfPairs > 1024: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_59
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberOfPairs < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

###### Class com.squareup.okhttp.internal.framed.NameValueBlockReader.AnonymousClass1 (com.squareup.okhttp.internal.framed.NameValueBlockReader$1)
.class Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$1;
.super Lokio/ForwardingSource;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;-><init>(Lokio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;Lokio/Source;)V
    .registers 3
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;
    .param p2, "x0"    # Lokio/Source;

    .line 54
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .registers 9
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->access$000(Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;)I

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_b

    return-wide v1

    .line 57
    :cond_b
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->access$000(Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-super {p0, p1, v3, v4}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v3

    .line 58
    .local v3, "read":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_1f

    return-wide v1

    .line 59
    :cond_1f
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$1;->this$0:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->access$000(Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;)I

    move-result v1

    int-to-long v1, v1

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;->access$002(Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;I)I

    .line 60
    return-wide v3
.end method

###### Class com.squareup.okhttp.internal.framed.NameValueBlockReader.AnonymousClass2 (com.squareup.okhttp.internal.framed.NameValueBlockReader$2)
.class Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$2;
.super Ljava/util/zip/Inflater;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;-><init>(Lokio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    .line 65
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$2;->this$0:Lcom/squareup/okhttp/internal/framed/NameValueBlockReader;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 68
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 69
    .local v0, "result":I
    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$2;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 70
    sget-object v1, Lcom/squareup/okhttp/internal/framed/Spdy3;->DICTIONARY:[B

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/framed/NameValueBlockReader$2;->setDictionary([B)V

    .line 71
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 73
    :cond_15
    return v0
.end method
