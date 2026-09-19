###### Class com.google.zxing.maxicode.decoder.Decoder (com.google.zxing.maxicode.decoder.Decoder)
.class public final Lcom/google/zxing/maxicode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final ALL:I = 0x0

.field private static final EVEN:I = 0x1

.field private static final ODD:I = 0x2


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 46
    return-void
.end method

.method private correctErrors([BIIII)V
    .registers 13
    .param p1, "codewordBytes"    # [B
    .param p2, "start"    # I
    .param p3, "dataCodewords"    # I
    .param p4, "ecCodewords"    # I
    .param p5, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 88
    add-int v0, p3, p4

    .line 91
    .local v0, "codewords":I
    if-nez p5, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x2

    .line 94
    .local v1, "divisor":I
    :goto_7
    div-int v2, v0, v1

    new-array v2, v2, [I

    .line 95
    .local v2, "codewordsInts":[I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v0, :cond_24

    .line 96
    if-eqz p5, :cond_17

    rem-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, p5, -0x1

    if-ne v5, v6, :cond_21

    .line 97
    :cond_17
    div-int v5, v4, v1

    add-int v6, v4, p2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v5

    .line 95
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 101
    .end local v4    # "i":I
    :cond_24
    :try_start_24
    iget-object v4, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    div-int v5, p4, v1

    invoke-virtual {v4, v2, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_2b
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_24 .. :try_end_2b} :catch_44

    .line 104
    nop

    .line 107
    nop

    .local v3, "i":I
    :goto_2d
    if-ge v3, p3, :cond_43

    .line 108
    if-eqz p5, :cond_37

    rem-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, p5, -0x1

    if-ne v4, v5, :cond_40

    .line 109
    :cond_37
    add-int v4, v3, p2

    div-int v5, v3, v1

    aget v5, v2, v5

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 107
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 112
    .end local v3    # "i":I
    :cond_43
    return-void

    .line 102
    :catch_44
    move-exception v3

    const/4 v3, 0x0

    .line 103
    .local v3, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .registers 3
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/maxicode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .registers 12
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 54
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v0, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 55
    invoke-virtual {v0}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v0

    .line 57
    .local v0, "codewords":[B
    const/4 v3, 0x0

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    .line 58
    const/4 v7, 0x0

    aget-byte v1, v0, v7

    and-int/lit8 v1, v1, 0xf

    move v2, v7

    .line 60
    .local v2, "mode":I
    move v8, v1

    .end local v2    # "mode":I
    .local v8, "mode":I
    packed-switch v1, :pswitch_data_60

    .line 74
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 69
    :pswitch_23
    const/16 v3, 0x14

    const/16 v4, 0x44

    const/16 v5, 0x38

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    .line 70
    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    .line 71
    const/16 v1, 0x4e

    new-array v1, v1, [B

    .line 72
    .local v1, "datawords":[B
    goto :goto_4d

    .line 64
    .end local v1    # "datawords":[B
    :pswitch_38
    const/16 v3, 0x14

    const/16 v4, 0x54

    const/16 v5, 0x28

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    .line 65
    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    .line 66
    const/16 v1, 0x5e

    new-array v1, v1, [B

    .line 67
    .restart local v1    # "datawords":[B
    nop

    .line 74
    :goto_4d
    nop

    .line 77
    const/16 v2, 0xa

    invoke-static {v0, v7, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    const/16 v3, 0x14

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-static {v1, v8}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->decode([BI)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_23
    .end packed-switch
.end method
