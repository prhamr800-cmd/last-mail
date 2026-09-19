###### Class com.google.zxing.multi.GenericMultipleBarcodeReader (com.google.zxing.multi.GenericMultipleBarcodeReader)
.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "GenericMultipleBarcodeReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final MAX_DEPTH:I = 0x4

.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .registers 2
    .param p1, "delegate"    # Lcom/google/zxing/Reader;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 54
    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
    .registers 29
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p4, "xOffset"    # I
    .param p5, "yOffset"    # I
    .param p6, "currentDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/zxing/Result;",
            ">;III)V"
        }
    .end annotation

    .line 78
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    move-object/from16 v1, p1

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    const/4 v0, 0x4

    if-le v11, v0, :cond_c

    .line 79
    return-void

    .line 84
    :cond_c
    move-object/from16 v12, p0

    :try_start_e
    iget-object v0, v12, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    move-object/from16 v13, p2

    invoke-interface {v0, v1, v13}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_16
    .catch Lcom/google/zxing/ReaderException; {:try_start_e .. :try_end_16} :catch_133

    .line 87
    .local v0, "result":Lcom/google/zxing/Result;
    nop

    .line 86
    nop

    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, "alreadyFound":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/Result;

    .line 90
    .local v5, "existingResult":Lcom/google/zxing/Result;
    invoke-virtual {v6}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 91
    const/4 v3, 0x1

    .line 92
    goto :goto_3b

    .line 94
    :cond_3a
    goto :goto_1e

    .line 95
    .end local v3    # "alreadyFound":Z
    .end local v5    # "existingResult":Lcom/google/zxing/Result;
    .local v14, "alreadyFound":Z
    :cond_3b
    :goto_3b
    move v14, v3

    if-nez v14, :cond_48

    .line 96
    invoke-static {v0, v9, v10}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    move-result-object v3

    move-object/from16 v15, p3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 98
    :cond_48
    move-object/from16 v15, p3

    :goto_4a
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 99
    .local v4, "resultPoints":[Lcom/google/zxing/ResultPoint;
    move-object v8, v3

    .end local v4    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v8, "resultPoints":[Lcom/google/zxing/ResultPoint;
    if-eqz v3, :cond_12c

    array-length v3, v8

    if-nez v3, :cond_5c

    .line 100
    move-object/from16 v18, v0

    move-object/from16 v20, v8

    move/from16 v21, v14

    goto/16 :goto_132

    .line 102
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v7

    .line 103
    .local v7, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v6

    .line 104
    .local v6, "height":I
    int-to-float v3, v7

    .line 105
    .local v3, "minX":F
    int-to-float v4, v6

    .line 106
    .local v4, "minY":F
    const/4 v5, 0x0

    .line 107
    .local v5, "maxX":F
    const/16 v16, 0x0

    .line 108
    .local v16, "maxY":F
    array-length v2, v8

    move-object/from16 v18, v0

    .end local v0    # "result":Lcom/google/zxing/Result;
    .local v18, "result":Lcom/google/zxing/Result;
    move v0, v5

    move/from16 v12, v16

    const/16 v17, 0x0

    move v5, v3

    const/4 v3, 0x0

    .end local v3    # "minX":F
    .end local v16    # "maxY":F
    .local v0, "maxX":F
    .local v5, "minX":F
    .local v12, "maxY":F
    :goto_73
    if-ge v3, v2, :cond_9e

    aget-object v16, v8, v3

    .line 109
    .local v17, "point":Lcom/google/zxing/ResultPoint;
    move-object/from16 v17, v16

    if-eqz v16, :cond_9b

    .line 112
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    .line 113
    .local v16, "x":F
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    .line 114
    .local v19, "y":F
    cmpg-float v20, v16, v5

    if-gez v20, :cond_89

    .line 115
    move/from16 v5, v16

    .line 117
    :cond_89
    cmpg-float v20, v19, v4

    if-gez v20, :cond_8f

    .line 118
    move/from16 v4, v19

    .line 120
    :cond_8f
    cmpl-float v20, v16, v0

    if-lez v20, :cond_95

    .line 121
    move/from16 v0, v16

    .line 123
    :cond_95
    cmpl-float v20, v19, v12

    if-lez v20, :cond_9b

    .line 124
    move/from16 v12, v19

    .line 108
    .end local v16    # "x":F
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    .end local v19    # "y":F
    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 129
    :cond_9e
    const/high16 v16, 0x42c80000    # 100.0f

    cmpl-float v2, v5, v16

    if-lez v2, :cond_c7

    .line 130
    float-to-int v2, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v6}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v17

    add-int/lit8 v19, v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    move v13, v4

    .end local v4    # "minY":F
    .local v13, "minY":F
    move-object/from16 v4, p2

    move/from16 v17, v5

    .end local v5    # "minX":F
    .local v17, "minX":F
    move-object/from16 v5, p3

    move/from16 v21, v14

    move v14, v6

    .end local v6    # "height":I
    .local v14, "height":I
    .local v21, "alreadyFound":Z
    move/from16 v6, p4

    move v15, v7

    .end local v7    # "width":I
    .local v15, "width":I
    move/from16 v7, p5

    move-object/from16 v20, v8

    .end local v8    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v20, "resultPoints":[Lcom/google/zxing/ResultPoint;
    move/from16 v8, v19

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_d0

    .line 136
    .end local v13    # "minY":F
    .end local v15    # "width":I
    .end local v17    # "minX":F
    .end local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .end local v21    # "alreadyFound":Z
    .restart local v4    # "minY":F
    .restart local v5    # "minX":F
    .restart local v6    # "height":I
    .restart local v7    # "width":I
    .restart local v8    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v14, "alreadyFound":Z
    :cond_c7
    move v13, v4

    move/from16 v17, v5

    move v15, v7

    move-object/from16 v20, v8

    move/from16 v21, v14

    move v14, v6

    .end local v4    # "minY":F
    .end local v5    # "minX":F
    .end local v6    # "height":I
    .end local v7    # "width":I
    .end local v8    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v13    # "minY":F
    .local v14, "height":I
    .restart local v15    # "width":I
    .restart local v17    # "minX":F
    .restart local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v21    # "alreadyFound":Z
    :goto_d0
    cmpl-float v2, v13, v16

    if-lez v2, :cond_ea

    .line 137
    float-to-int v2, v13

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v15, v2}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    add-int/lit8 v8, v11, 0x1

    move-object/from16 v2, p0

    move-object v3, v4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 143
    :cond_ea
    add-int/lit8 v7, v15, -0x64

    int-to-float v2, v7

    cmpg-float v2, v0, v2

    if-gez v2, :cond_10b

    .line 144
    float-to-int v2, v0

    float-to-int v3, v0

    sub-int v7, v15, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v7, v14}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v4

    float-to-int v2, v0

    add-int v6, v9, v2

    add-int/lit8 v8, v11, 0x1

    move-object/from16 v2, p0

    move-object v3, v4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 150
    :cond_10b
    add-int/lit8 v6, v14, -0x64

    int-to-float v2, v6

    cmpg-float v2, v12, v2

    if-gez v2, :cond_12b

    .line 151
    float-to-int v2, v12

    float-to-int v3, v12

    sub-int v6, v14, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v15, v6}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    float-to-int v2, v12

    add-int v7, v10, v2

    add-int/lit8 v8, v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 156
    :cond_12b
    return-void

    .line 100
    .end local v12    # "maxY":F
    .end local v13    # "minY":F
    .end local v15    # "width":I
    .end local v17    # "minX":F
    .end local v18    # "result":Lcom/google/zxing/Result;
    .end local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .end local v21    # "alreadyFound":Z
    .local v0, "result":Lcom/google/zxing/Result;
    .restart local v8    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .local v14, "alreadyFound":Z
    :cond_12c
    move-object/from16 v18, v0

    move-object/from16 v20, v8

    move/from16 v21, v14

    .end local v0    # "result":Lcom/google/zxing/Result;
    .end local v8    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .end local v14    # "alreadyFound":Z
    .restart local v18    # "result":Lcom/google/zxing/Result;
    .restart local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .restart local v21    # "alreadyFound":Z
    :goto_132
    return-void

    .line 85
    .end local v18    # "result":Lcom/google/zxing/Result;
    .end local v20    # "resultPoints":[Lcom/google/zxing/ResultPoint;
    .end local v21    # "alreadyFound":Z
    :catch_133
    move-exception v0

    const/4 v2, 0x0

    move-object v0, v2

    .line 86
    .local v0, "ignored":Lcom/google/zxing/ReaderException;
    return-void
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .registers 15
    .param p0, "result"    # Lcom/google/zxing/Result;
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .line 159
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 160
    .local v2, "oldResultPoints":[Lcom/google/zxing/ResultPoint;
    move-object v2, v0

    if-nez v0, :cond_a

    .line 161
    return-object p0

    .line 163
    :cond_a
    array-length v0, v2

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    .line 164
    .local v0, "newResultPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v3, 0x0

    move-object v4, v1

    .local v3, "i":I
    :goto_f
    array-length v5, v2

    if-ge v3, v5, :cond_2d

    .line 165
    aget-object v5, v2, v3

    .line 166
    .local v4, "oldPoint":Lcom/google/zxing/ResultPoint;
    move-object v4, v5

    if-eqz v5, :cond_2a

    .line 167
    new-instance v5, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    int-to-float v7, p1

    add-float/2addr v6, v7

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    int-to-float v8, p2

    add-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v0, v3

    .line 164
    .end local v4    # "oldPoint":Lcom/google/zxing/ResultPoint;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 170
    .end local v3    # "i":I
    :cond_2d
    new-instance v11, Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v5

    .line 172
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getNumBits()I

    move-result v6

    .line 174
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v8

    .line 175
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getTimestamp()J

    move-result-wide v9

    move-object v3, v11

    move-object v7, v0

    invoke-direct/range {v3 .. v10}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 176
    .local v1, "newResult":Lcom/google/zxing/Result;
    move-object v1, v11

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 177
    return-object v1
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .registers 11
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 64
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/zxing/Result;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/zxing/Result;

    return-object v1

    .line 67
    :cond_22
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
