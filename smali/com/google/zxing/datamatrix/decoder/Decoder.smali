###### Class com.google.zxing.datamatrix.decoder.Decoder (com.google.zxing.datamatrix.decoder.Decoder)
.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 39
    return-void
.end method

.method private correctErrors([BI)V
    .registers 8
    .param p1, "codewordBytes"    # [B
    .param p2, "numDataCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 116
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    .line 118
    .local v2, "numCodewords":I
    move v2, v0

    new-array v0, v0, [I

    .line 119
    .local v0, "codewordsInts":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v2, :cond_12

    .line 120
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v3

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 123
    .end local v3    # "i":I
    :cond_12
    :try_start_12
    iget-object v3, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v4, p1

    sub-int/2addr v4, p2

    invoke-virtual {v3, v0, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_19
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_12 .. :try_end_19} :catch_26

    .line 126
    nop

    .line 129
    nop

    .local v1, "i":I
    :goto_1b
    if-ge v1, p2, :cond_25

    .line 130
    aget v3, v0, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 132
    .end local v1    # "i":I
    :cond_25
    return-void

    .line 124
    :catch_26
    move-exception v1

    const/4 v1, 0x0

    .line 125
    .local v1, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .registers 16
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 76
    .local v2, "parser":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->getVersion()Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    .line 79
    .local v0, "version":Lcom/google/zxing/datamatrix/decoder/Version;
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v3

    .line 81
    invoke-static {v3, v0}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-result-object v3

    .line 84
    .local v3, "dataBlocks":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/4 v4, 0x0

    .line 85
    .local v4, "totalBytes":I
    array-length v5, v3

    const/4 v6, 0x0

    move-object v7, v1

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v5, :cond_25

    aget-object v7, v3, v1

    .line 86
    .local v7, "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v8

    add-int/2addr v4, v8

    .line 85
    .end local v7    # "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 88
    :cond_25
    new-array v1, v4, [B

    .line 90
    .local v1, "resultBytes":[B
    array-length v5, v3

    .line 92
    .local v5, "dataBlocksCount":I
    move-object v8, v7

    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2a
    if-ge v7, v5, :cond_4a

    .line 93
    aget-object v9, v3, v7

    .line 94
    .local v8, "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    move-object v8, v9

    invoke-virtual {v9}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getCodewords()[B

    move-result-object v9

    .line 95
    .local v9, "codewordBytes":[B
    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v10

    .line 96
    .local v10, "numDataCodewords":I
    invoke-direct {p0, v9, v10}, Lcom/google/zxing/datamatrix/decoder/Decoder;->correctErrors([BI)V

    .line 97
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3b
    if-ge v11, v10, :cond_47

    .line 99
    mul-int v12, v11, v5

    add-int/2addr v12, v7

    aget-byte v13, v9, v11

    aput-byte v13, v1, v12

    .line 97
    add-int/lit8 v11, v11, 0x1

    goto :goto_3b

    .line 92
    .end local v9    # "codewordBytes":[B
    .end local v10    # "numDataCodewords":I
    .end local v11    # "i":I
    :cond_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 104
    .end local v7    # "j":I
    .end local v8    # "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    :cond_4a
    invoke-static {v1}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decode([B)Lcom/google/zxing/common/DecoderResult;

    move-result-object v6

    return-object v6
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .registers 8
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 51
    array-length v0, p1

    .line 52
    .local v0, "dimension":I
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 53
    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v0, :cond_1c

    .line 54
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_b
    if-ge v4, v0, :cond_19

    .line 55
    aget-object v5, p1, v3

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_16

    .line 56
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 54
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 53
    .end local v4    # "j":I
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 60
    .end local v3    # "i":I
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    return-object v2
.end method
