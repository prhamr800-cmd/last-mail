###### Class com.google.zxing.maxicode.MaxiCodeReader (com.google.zxing.maxicode.MaxiCodeReader)
.class public final Lcom/google/zxing/maxicode/MaxiCodeReader;
.super Ljava/lang/Object;
.source "MaxiCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final MATRIX_HEIGHT:I = 0x21

.field private static final MATRIX_WIDTH:I = 0x1e

.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/maxicode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/maxicode/MaxiCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/zxing/maxicode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/maxicode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/maxicode/MaxiCodeReader;->decoder:Lcom/google/zxing/maxicode/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .registers 16
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getEnclosingRectangle()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    .local v1, "enclosingRectangle":[I
    move-object v1, v0

    if-eqz v0, :cond_47

    .line 106
    const/4 v0, 0x0

    aget v2, v1, v0

    .line 107
    .local v2, "left":I
    const/4 v3, 0x1

    aget v3, v1, v3

    .line 108
    .local v3, "top":I
    const/4 v4, 0x2

    aget v5, v1, v4

    .line 109
    .local v5, "width":I
    const/4 v6, 0x3

    aget v6, v1, v6

    .line 112
    .local v6, "height":I
    new-instance v7, Lcom/google/zxing/common/BitMatrix;

    const/16 v8, 0x21

    const/16 v9, 0x1e

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 113
    .local v7, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_1e
    if-ge v10, v8, :cond_46

    .line 114
    mul-int v11, v10, v6

    div-int/lit8 v12, v6, 0x2

    add-int/2addr v11, v12

    div-int/2addr v11, v8

    add-int/2addr v11, v3

    .line 115
    .local v11, "iy":I
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_28
    if-ge v12, v9, :cond_43

    .line 116
    mul-int v13, v12, v5

    div-int/lit8 v14, v5, 0x2

    add-int/2addr v13, v14

    and-int/lit8 v14, v10, 0x1

    mul-int v14, v14, v5

    div-int/2addr v14, v4

    add-int/2addr v13, v14

    div-int/2addr v13, v9

    add-int/2addr v13, v2

    .line 117
    .local v13, "ix":I
    invoke-virtual {p0, v13, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_40

    .line 118
    invoke-virtual {v7, v12, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 115
    .end local v13    # "ix":I
    :cond_40
    add-int/lit8 v12, v12, 0x1

    goto :goto_28

    .line 113
    .end local v11    # "iy":I
    .end local v12    # "x":I
    :cond_43
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    .line 122
    .end local v10    # "y":I
    :cond_46
    return-object v7

    .line 103
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "bits":Lcom/google/zxing/common/BitMatrix;
    :cond_47
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/maxicode/MaxiCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 9
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 69
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p2, :cond_39

    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 70
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/maxicode/MaxiCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 71
    .local v0, "bits":Lcom/google/zxing/common/BitMatrix;
    iget-object v1, p0, Lcom/google/zxing/maxicode/MaxiCodeReader;->decoder:Lcom/google/zxing/maxicode/decoder/Decoder;

    invoke-virtual {v1, v0, p2}, Lcom/google/zxing/maxicode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    .line 72
    .local v0, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    nop

    .line 73
    nop

    .line 76
    new-instance v1, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v3

    sget-object v4, Lcom/google/zxing/maxicode/MaxiCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 78
    .local v1, "result":Lcom/google/zxing/Result;
    invoke-virtual {v0}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 79
    .local v3, "ecLevel":Ljava/lang/String;
    move-object v3, v2

    if-eqz v2, :cond_38

    .line 80
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 82
    :cond_38
    return-object v1

    .line 73
    .end local v0    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v1    # "result":Lcom/google/zxing/Result;
    .end local v3    # "ecLevel":Ljava/lang/String;
    :cond_39
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public reset()V
    .registers 1

    .line 88
    return-void
.end method
