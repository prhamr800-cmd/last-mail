###### Class com.google.zxing.aztec.encoder.Encoder (com.google.zxing.aztec.encoder.Encoder)
.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field public static final DEFAULT_AZTEC_LAYERS:I = 0x0

.field public static final DEFAULT_EC_PERCENT:I = 0x21

.field private static final MAX_NB_BITS:I = 0x20

.field private static final MAX_NB_BITS_COMPACT:I = 0x4

.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void

    :array_a
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .registers 11
    .param p0, "stuffedBits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I
    .param p2, "totalWords"    # I

    .line 288
    new-array v0, p2, [I

    .line 291
    .local v0, "message":[I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    div-int/2addr v2, p1

    .local v2, "n":I
    :goto_8
    if-ge v1, v2, :cond_2a

    .line 292
    const/4 v3, 0x0

    .line 293
    .local v3, "value":I
    const/4 v4, 0x0

    move v5, v3

    const/4 v3, 0x0

    .local v3, "j":I
    .local v5, "value":I
    :goto_e
    if-ge v3, p1, :cond_25

    .line 294
    mul-int v6, v1, p1

    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_20

    sub-int v6, p1, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    shl-int v6, v7, v6

    goto :goto_21

    :cond_20
    const/4 v6, 0x0

    :goto_21
    or-int/2addr v5, v6

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 296
    .end local v3    # "j":I
    :cond_25
    aput v5, v0, v1

    .line 291
    .end local v5    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 298
    :cond_2a
    return-object v0
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .registers 6
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "center"    # I
    .param p2, "size"    # I

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_23

    .line 205
    sub-int v1, p1, v0

    .local v1, "j":I
    :goto_5
    add-int v2, p1, v0

    if-gt v1, v2, :cond_20

    .line 206
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 207
    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 208
    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 209
    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 204
    .end local v1    # "j":I
    :cond_20
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 212
    .end local v0    # "i":I
    :cond_23
    sub-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 213
    sub-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 214
    sub-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 215
    add-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 216
    add-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 217
    add-int v0, p1, p2

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 218
    return-void
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .registers 8
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "compact"    # Z
    .param p2, "matrixSize"    # I
    .param p3, "modeMessage"    # Lcom/google/zxing/common/BitArray;

    .line 235
    div-int/lit8 v0, p2, 0x2

    .line 236
    .local v0, "center":I
    const/4 v1, 0x0

    if-eqz p1, :cond_42

    .line 237
    nop

    .local v1, "i":I
    :goto_6
    const/4 v2, 0x7

    if-ge v1, v2, :cond_41

    .line 238
    add-int/lit8 v2, v0, -0x3

    add-int/2addr v2, v1

    .line 239
    .local v2, "offset":I
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 240
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 242
    :cond_17
    add-int/lit8 v3, v1, 0x7

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 243
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 245
    :cond_24
    rsub-int/lit8 v3, v1, 0x14

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 246
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 248
    :cond_31
    rsub-int/lit8 v3, v1, 0x1b

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 249
    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 237
    .end local v2    # "offset":I
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v1    # "i":I
    :cond_41
    return-void

    .line 253
    :cond_42
    nop

    .restart local v1    # "i":I
    :goto_43
    const/16 v2, 0xa

    if-ge v1, v2, :cond_82

    .line 254
    add-int/lit8 v2, v0, -0x5

    add-int/2addr v2, v1

    div-int/lit8 v3, v1, 0x5

    add-int/2addr v2, v3

    .line 255
    .restart local v2    # "offset":I
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 256
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 258
    :cond_58
    add-int/lit8 v3, v1, 0xa

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 259
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 261
    :cond_65
    rsub-int/lit8 v3, v1, 0x1d

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 262
    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 264
    :cond_72
    rsub-int/lit8 v3, v1, 0x27

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 265
    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 253
    .end local v2    # "offset":I
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 269
    .end local v1    # "i":I
    :cond_82
    return-void
.end method

.method public static encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 3
    .param p0, "data"    # [B

    .line 51
    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .registers 33
    .param p0, "data"    # [B
    .param p1, "minECCPercent"    # I
    .param p2, "userSpecifiedLayers"    # I

    .line 65
    new-instance v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    invoke-virtual {v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 68
    .local v4, "bits":Lcom/google/zxing/common/BitArray;
    move-object v4, v1

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    mul-int v1, v1, p1

    div-int/lit8 v1, v1, 0x64

    const/16 v6, 0xb

    add-int/2addr v1, v6

    .line 69
    .local v1, "eccBits":I
    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    add-int/2addr v7, v1

    .line 75
    .local v7, "totalSizeBits":I
    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p2, :cond_87

    .line 76
    if-gez p2, :cond_28

    const/4 v11, 0x1

    goto :goto_29

    :cond_28
    const/4 v11, 0x0

    .line 77
    .local v11, "compact":Z
    :goto_29
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move v13, v9

    .line 78
    .local v13, "layers":I
    move v13, v12

    if-eqz v11, :cond_33

    const/4 v8, 0x4

    nop

    :cond_33
    if-gt v12, v8, :cond_73

    .line 82
    invoke-static {v13, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v8

    .line 83
    .local v8, "totalBitsInLayer":I
    sget-object v12, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v12, v12, v13

    .line 84
    .local v12, "wordSize":I
    rem-int v14, v8, v12

    sub-int v14, v8, v14

    .line 85
    .local v14, "usableBitsInLayers":I
    invoke-static {v4, v12}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v15

    move-object/from16 v16, v3

    .line 86
    .local v16, "stuffedBits":Lcom/google/zxing/common/BitArray;
    move-object/from16 v16, v15

    invoke-virtual {v15}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v15

    add-int/2addr v15, v1

    if-gt v15, v14, :cond_6b

    .line 89
    if-eqz v11, :cond_63

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v15

    shl-int/lit8 v6, v12, 0x6

    if-gt v15, v6, :cond_5b

    .end local v14    # "usableBitsInLayers":I
    goto :goto_63

    .line 91
    .restart local v14    # "usableBitsInLayers":I
    :cond_5b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Data to large for user specified layer"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    .end local v14    # "usableBitsInLayers":I
    :cond_63
    :goto_63
    nop

    .line 125
    move v15, v8

    move v14, v13

    move-object/from16 v3, v16

    move v13, v11

    goto/16 :goto_d7

    .line 87
    .restart local v14    # "usableBitsInLayers":I
    :cond_6b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Data to large for user specified layer"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    .end local v8    # "totalBitsInLayer":I
    .end local v12    # "wordSize":I
    .end local v14    # "usableBitsInLayers":I
    .end local v16    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    :cond_73
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v6, v10, [Ljava/lang/Object;

    .line 80
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v9

    const-string v8, "Illegal value %s for layers"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    .end local v11    # "compact":Z
    .end local v13    # "layers":I
    :cond_87
    const/4 v6, 0x0

    .line 95
    .local v6, "wordSize":I
    const/4 v11, 0x0

    .line 99
    .local v11, "stuffedBits":Lcom/google/zxing/common/BitArray;
    move v12, v6

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 100
    .local v6, "i":I
    .restart local v12    # "wordSize":I
    :goto_8d
    if-gt v6, v8, :cond_288

    .line 103
    const/4 v15, 0x3

    if-gt v6, v15, :cond_94

    const/4 v15, 0x1

    goto :goto_95

    :cond_94
    const/4 v15, 0x0

    .line 104
    .local v13, "compact":Z
    :goto_95
    move v13, v15

    if-eqz v15, :cond_9b

    add-int/lit8 v15, v6, 0x1

    goto :goto_9c

    :cond_9b
    move v15, v6

    .line 105
    .local v14, "layers":I
    :goto_9c
    move v14, v15

    invoke-static {v15, v13}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v15

    .line 106
    .local v15, "totalBitsInLayer":I
    if-gt v7, v15, :cond_271

    .line 111
    sget-object v16, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v8, v16, v14

    if-eq v12, v8, :cond_b2

    .line 112
    sget-object v8, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v8, v8, v14

    .line 113
    .end local v12    # "wordSize":I
    .local v8, "wordSize":I
    invoke-static {v4, v8}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v11

    .line 115
    move v12, v8

    .end local v8    # "wordSize":I
    .end local v11    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .restart local v12    # "wordSize":I
    .restart local v16    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    :cond_b2
    move-object/from16 v16, v11

    rem-int v8, v15, v12

    sub-int v8, v15, v8

    .line 116
    .local v8, "usableBitsInLayers":I
    if-eqz v13, :cond_c2

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    shl-int/lit8 v3, v12, 0x6

    if-gt v11, v3, :cond_c9

    .line 120
    :cond_c2
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    add-int/2addr v3, v1

    if-le v3, v8, :cond_d5

    .line 99
    .end local v8    # "usableBitsInLayers":I
    :cond_c9
    move/from16 v23, v1

    move-object/from16 v26, v4

    move/from16 v28, v7

    move-object/from16 v11, v16

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_278

    .line 125
    .end local v6    # "i":I
    :cond_d5
    move-object/from16 v3, v16

    .end local v16    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .local v3, "stuffedBits":Lcom/google/zxing/common/BitArray;
    :goto_d7
    invoke-static {v3, v15, v12}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v6

    .line 128
    .local v6, "messageBits":Lcom/google/zxing/common/BitArray;
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    div-int/2addr v8, v12

    .line 129
    .local v8, "messageSizeInWords":I
    invoke-static {v13, v14, v8}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v11

    .line 132
    .local v11, "modeMessage":Lcom/google/zxing/common/BitArray;
    if-eqz v13, :cond_e9

    const/16 v16, 0xb

    goto :goto_eb

    :cond_e9
    const/16 v16, 0xe

    :goto_eb
    shl-int/lit8 v17, v14, 0x2

    add-int v10, v16, v17

    move/from16 v16, v9

    .line 133
    .local v16, "baseMatrixSize":I
    move/from16 v16, v10

    new-array v10, v10, [I

    .line 135
    .local v10, "alignmentMap":[I
    if-eqz v13, :cond_10a

    .line 137
    move/from16 v17, v16

    .line 138
    .local v17, "matrixSize":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_fb
    move/from16 v21, v18

    .end local v18    # "i":I
    .local v21, "i":I
    array-length v9, v10

    move/from16 v0, v21

    .end local v21    # "i":I
    .local v0, "i":I
    if-ge v0, v9, :cond_107

    .line 139
    aput v0, v10, v0

    .line 138
    add-int/lit8 v18, v0, 0x1

    goto :goto_fb

    .line 151
    .end local v0    # "i":I
    :cond_107
    move/from16 v23, v1

    goto :goto_145

    .line 142
    .end local v17    # "matrixSize":I
    :cond_10a
    add-int/lit8 v0, v16, 0x1

    div-int/lit8 v9, v16, 0x2

    const/16 v17, 0x1

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0xf

    const/16 v17, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int v17, v0, v9

    .line 143
    .restart local v17    # "matrixSize":I
    div-int/lit8 v0, v16, 0x2

    .line 144
    .local v0, "origCenter":I
    div-int/lit8 v9, v17, 0x2

    .line 145
    .local v9, "center":I
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_120
    move/from16 v22, v18

    move/from16 v23, v1

    move/from16 v1, v22

    .end local v18    # "i":I
    .local v1, "i":I
    .local v23, "eccBits":I
    if-ge v1, v0, :cond_145

    .line 146
    div-int/lit8 v22, v1, 0xf

    add-int v22, v1, v22

    .line 147
    .local v22, "newOffset":I
    sub-int v18, v0, v1

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    sub-int v21, v9, v22

    add-int/lit8 v21, v21, -0x1

    aput v21, v10, v18

    .line 148
    add-int v18, v0, v1

    add-int v21, v9, v22

    add-int/lit8 v21, v21, 0x1

    aput v21, v10, v18

    .line 145
    .end local v22    # "newOffset":I
    add-int/lit8 v18, v1, 0x1

    move/from16 v1, v23

    goto :goto_120

    .line 151
    .end local v1    # "i":I
    .end local v9    # "center":I
    .end local v17    # "matrixSize":I
    .local v0, "matrixSize":I
    :cond_145
    :goto_145
    move/from16 v0, v17

    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    .line 154
    .local v1, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v9, 0x0

    move v2, v9

    const/4 v9, 0x0

    .local v2, "i":I
    .local v9, "rowOffset":I
    :goto_14f
    if-ge v2, v14, :cond_210

    .line 155
    sub-int v17, v14, v2

    const/16 v18, 0x2

    shl-int/lit8 v17, v17, 0x2

    if-eqz v13, :cond_15c

    const/16 v18, 0x9

    goto :goto_15e

    :cond_15c
    const/16 v18, 0xc

    :goto_15e
    move-object/from16 v24, v3

    .end local v3    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .local v24, "stuffedBits":Lcom/google/zxing/common/BitArray;
    add-int v3, v17, v18

    .line 156
    .local v3, "rowSize":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_164
    move/from16 v25, v17

    move-object/from16 v26, v4

    move/from16 v4, v25

    .end local v17    # "j":I
    .local v4, "j":I
    .local v26, "bits":Lcom/google/zxing/common/BitArray;
    if-ge v4, v3, :cond_201

    .line 157
    shl-int/lit8 v17, v4, 0x1

    .line 158
    .local v17, "columnOffset":I
    const/16 v18, 0x0

    .local v18, "k":I
    :goto_170
    move/from16 v27, v18

    move/from16 v28, v7

    move/from16 v5, v27

    const/4 v7, 0x2

    .end local v7    # "totalSizeBits":I
    .end local v18    # "k":I
    .local v5, "k":I
    .local v28, "totalSizeBits":I
    if-ge v5, v7, :cond_1f7

    .line 159
    add-int v18, v9, v17

    add-int v7, v18, v5

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_194

    .line 160
    shl-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v5

    aget v7, v10, v7

    shl-int/lit8 v18, v2, 0x1

    add-int v18, v18, v4

    move/from16 v29, v12

    .end local v12    # "wordSize":I
    .local v29, "wordSize":I
    aget v12, v10, v18

    invoke-virtual {v1, v7, v12}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_196

    .line 162
    .end local v29    # "wordSize":I
    .restart local v12    # "wordSize":I
    :cond_194
    move/from16 v29, v12

    .end local v12    # "wordSize":I
    .restart local v29    # "wordSize":I
    :goto_196
    shl-int/lit8 v7, v3, 0x1

    add-int/2addr v7, v9

    add-int v7, v7, v17

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1b3

    .line 163
    shl-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v4

    aget v7, v10, v7

    add-int/lit8 v12, v16, -0x1

    shl-int/lit8 v18, v2, 0x1

    sub-int v12, v12, v18

    sub-int/2addr v12, v5

    aget v12, v10, v12

    invoke-virtual {v1, v7, v12}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 165
    :cond_1b3
    shl-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v9

    add-int v7, v7, v17

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1d3

    .line 166
    add-int/lit8 v7, v16, -0x1

    shl-int/lit8 v12, v2, 0x1

    sub-int/2addr v7, v12

    sub-int/2addr v7, v5

    aget v7, v10, v7

    add-int/lit8 v12, v16, -0x1

    shl-int/lit8 v18, v2, 0x1

    sub-int v12, v12, v18

    sub-int/2addr v12, v4

    aget v12, v10, v12

    invoke-virtual {v1, v7, v12}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 168
    :cond_1d3
    mul-int/lit8 v7, v3, 0x6

    add-int/2addr v7, v9

    add-int v7, v7, v17

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1ef

    .line 169
    add-int/lit8 v7, v16, -0x1

    shl-int/lit8 v12, v2, 0x1

    sub-int/2addr v7, v12

    sub-int/2addr v7, v4

    aget v7, v10, v7

    shl-int/lit8 v12, v2, 0x1

    add-int/2addr v12, v5

    aget v12, v10, v12

    invoke-virtual {v1, v7, v12}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 158
    :cond_1ef
    add-int/lit8 v18, v5, 0x1

    move/from16 v7, v28

    move/from16 v12, v29

    goto/16 :goto_170

    .line 156
    .end local v5    # "k":I
    .end local v17    # "columnOffset":I
    .end local v29    # "wordSize":I
    .restart local v12    # "wordSize":I
    :cond_1f7
    move/from16 v29, v12

    .end local v12    # "wordSize":I
    .restart local v29    # "wordSize":I
    add-int/lit8 v17, v4, 0x1

    move-object/from16 v4, v26

    move/from16 v7, v28

    goto/16 :goto_164

    .line 173
    .end local v4    # "j":I
    .end local v28    # "totalSizeBits":I
    .end local v29    # "wordSize":I
    .restart local v7    # "totalSizeBits":I
    .restart local v12    # "wordSize":I
    :cond_201
    move/from16 v28, v7

    move/from16 v29, v12

    .end local v7    # "totalSizeBits":I
    .end local v12    # "wordSize":I
    .restart local v28    # "totalSizeBits":I
    .restart local v29    # "wordSize":I
    shl-int/lit8 v4, v3, 0x3

    add-int/2addr v9, v4

    .line 154
    .end local v3    # "rowSize":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v24

    move-object/from16 v4, v26

    goto/16 :goto_14f

    .line 177
    .end local v2    # "i":I
    .end local v9    # "rowOffset":I
    .end local v24    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .end local v26    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v28    # "totalSizeBits":I
    .end local v29    # "wordSize":I
    .local v3, "stuffedBits":Lcom/google/zxing/common/BitArray;
    .local v4, "bits":Lcom/google/zxing/common/BitArray;
    .restart local v7    # "totalSizeBits":I
    .restart local v12    # "wordSize":I
    :cond_210
    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v28, v7

    move/from16 v29, v12

    .end local v3    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .end local v4    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v7    # "totalSizeBits":I
    .end local v12    # "wordSize":I
    .restart local v24    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .restart local v26    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v28    # "totalSizeBits":I
    .restart local v29    # "wordSize":I
    invoke-static {v1, v13, v0, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    .line 180
    if-eqz v13, :cond_224

    .line 181
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_25a

    .line 183
    :cond_224
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    .line 184
    const/4 v2, 0x0

    const/16 v20, 0x0

    .restart local v2    # "i":I
    .local v20, "j":I
    :goto_22d
    move/from16 v3, v20

    .end local v20    # "j":I
    .local v3, "j":I
    div-int/lit8 v4, v16, 0x2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_25a

    .line 185
    div-int/lit8 v4, v0, 0x2

    and-int/2addr v4, v5

    .local v4, "k":I
    :goto_238
    if-ge v4, v0, :cond_255

    .line 186
    div-int/lit8 v7, v0, 0x2

    sub-int/2addr v7, v3

    invoke-virtual {v1, v7, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 187
    div-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v3

    invoke-virtual {v1, v7, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 188
    div-int/lit8 v7, v0, 0x2

    sub-int/2addr v7, v3

    invoke-virtual {v1, v4, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 189
    div-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v3

    invoke-virtual {v1, v4, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 185
    add-int/lit8 v4, v4, 0x2

    goto :goto_238

    .line 184
    .end local v4    # "k":I
    :cond_255
    add-int/lit8 v2, v2, 0xf

    add-int/lit8 v20, v3, 0x10

    goto :goto_22d

    .line 194
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_25a
    :goto_25a
    new-instance v2, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v2}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    const/4 v3, 0x0

    .line 195
    .local v3, "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    move-object v3, v2

    invoke-virtual {v2, v13}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    .line 196
    invoke-virtual {v3, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    .line 197
    invoke-virtual {v3, v14}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    .line 198
    invoke-virtual {v3, v8}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    .line 199
    invoke-virtual {v3, v1}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    .line 200
    return-object v3

    .line 99
    .end local v0    # "matrixSize":I
    .end local v3    # "aztec":Lcom/google/zxing/aztec/encoder/AztecCode;
    .end local v8    # "messageSizeInWords":I
    .end local v10    # "alignmentMap":[I
    .end local v16    # "baseMatrixSize":I
    .end local v23    # "eccBits":I
    .end local v24    # "stuffedBits":Lcom/google/zxing/common/BitArray;
    .end local v26    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v28    # "totalSizeBits":I
    .end local v29    # "wordSize":I
    .local v1, "eccBits":I
    .local v4, "bits":Lcom/google/zxing/common/BitArray;
    .local v6, "i":I
    .restart local v7    # "totalSizeBits":I
    .local v11, "stuffedBits":Lcom/google/zxing/common/BitArray;
    .restart local v12    # "wordSize":I
    :cond_271
    move/from16 v23, v1

    move-object/from16 v26, v4

    move/from16 v28, v7

    const/4 v5, 0x1

    .end local v1    # "eccBits":I
    .end local v4    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v7    # "totalSizeBits":I
    .restart local v23    # "eccBits":I
    .restart local v26    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v28    # "totalSizeBits":I
    :goto_278
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v23

    move-object/from16 v4, v26

    move/from16 v7, v28

    move-object/from16 v2, p0

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_8d

    .line 101
    .end local v13    # "compact":Z
    .end local v14    # "layers":I
    .end local v15    # "totalBitsInLayer":I
    .end local v23    # "eccBits":I
    .end local v26    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v28    # "totalSizeBits":I
    .restart local v1    # "eccBits":I
    .restart local v4    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v7    # "totalSizeBits":I
    :cond_288
    move/from16 v23, v1

    move-object/from16 v26, v4

    move/from16 v28, v7

    .end local v1    # "eccBits":I
    .end local v4    # "bits":Lcom/google/zxing/common/BitArray;
    .end local v7    # "totalSizeBits":I
    .restart local v23    # "eccBits":I
    .restart local v26    # "bits":Lcom/google/zxing/common/BitArray;
    .restart local v28    # "totalSizeBits":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .registers 12
    .param p0, "bitArray"    # Lcom/google/zxing/common/BitArray;
    .param p1, "totalBits"    # I
    .param p2, "wordSize"    # I

    .line 273
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    div-int/2addr v0, p2

    .line 274
    .local v0, "messageSizeInWords":I
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 275
    .local v1, "rs":Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    div-int v2, p1, p2

    .line 276
    .local v2, "totalWords":I
    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v3

    .line 277
    .local v3, "messageWords":[I
    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 278
    rem-int v4, p1, p2

    .line 279
    .local v4, "startPad":I
    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v6, 0x0

    .line 280
    .local v6, "messageBits":Lcom/google/zxing/common/BitArray;
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 281
    array-length v5, v3

    :goto_27
    if-ge v7, v5, :cond_31

    aget v8, v3, v7

    .line 282
    .local v8, "messageWord":I
    invoke-virtual {v6, v8, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 281
    .end local v8    # "messageWord":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 284
    :cond_31
    return-object v6
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .registers 7
    .param p0, "compact"    # Z
    .param p1, "layers"    # I
    .param p2, "messageSizeInWords"    # I

    .line 221
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 222
    .local v0, "modeMessage":Lcom/google/zxing/common/BitArray;
    const/4 v1, 0x4

    if-eqz p0, :cond_1b

    .line 223
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 224
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 225
    const/16 v2, 0x1c

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_2e

    .line 227
    :cond_1b
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 228
    add-int/lit8 v2, p2, -0x1

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 229
    const/16 v2, 0x28

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 231
    :goto_2e
    return-object v0
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .registers 4
    .param p0, "wordSize"    # I

    .line 302
    const/4 v0, 0x4

    if-eq p0, v0, :cond_32

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2f

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2c

    const/16 v0, 0xa

    if-eq p0, v0, :cond_29

    const/16 v0, 0xc

    if-ne p0, v0, :cond_15

    .line 312
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 314
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported word size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_29
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 308
    :cond_2c
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 306
    :cond_2f
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    .line 304
    :cond_32
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .registers 11
    .param p0, "bits"    # Lcom/google/zxing/common/BitArray;
    .param p1, "wordSize"    # I

    .line 319
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 321
    .local v0, "out":Lcom/google/zxing/common/BitArray;
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 322
    .local v1, "n":I
    const/4 v2, 0x1

    shl-int v3, v2, p1

    add-int/lit8 v3, v3, -0x2

    .line 323
    .local v3, "mask":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    if-ge v5, v1, :cond_49

    .line 324
    const/4 v6, 0x0

    .line 325
    .local v6, "word":I
    move v7, v6

    const/4 v6, 0x0

    .local v6, "j":I
    .local v7, "word":I
    :goto_15
    if-ge v6, p1, :cond_2c

    .line 326
    add-int v8, v5, v6

    if-ge v8, v1, :cond_23

    add-int v8, v5, v6

    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 327
    :cond_23
    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v6

    shl-int v8, v2, v8

    or-int/2addr v7, v8

    .line 325
    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 330
    .end local v6    # "j":I
    :cond_2c
    and-int v6, v7, v3

    if-ne v6, v3, :cond_38

    .line 331
    and-int v6, v7, v3

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 332
    add-int/lit8 v5, v5, -0x1

    goto :goto_47

    .line 333
    :cond_38
    and-int v6, v7, v3

    if-nez v6, :cond_44

    .line 334
    or-int/lit8 v6, v7, 0x1

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 335
    add-int/lit8 v5, v5, -0x1

    goto :goto_47

    .line 337
    :cond_44
    invoke-virtual {v0, v7, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 323
    .end local v7    # "word":I
    :goto_47
    add-int/2addr v5, p1

    goto :goto_10

    .line 340
    .end local v5    # "i":I
    :cond_49
    return-object v0
.end method

.method private static totalBitsInLayer(IZ)I
    .registers 4
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .line 344
    if-eqz p1, :cond_5

    const/16 v0, 0x58

    goto :goto_7

    :cond_5
    const/16 v0, 0x70

    :goto_7
    shl-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    mul-int v0, v0, p0

    return v0
.end method
