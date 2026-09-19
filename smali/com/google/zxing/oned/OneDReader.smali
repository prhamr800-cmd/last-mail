###### Class com.google.zxing.oned.OneDReader (com.google.zxing.oned.OneDReader)
.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 27
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 105
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v1

    .line 106
    .local v1, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v2

    .line 107
    .local v2, "height":I
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 109
    .local v3, "row":Lcom/google/zxing/common/BitArray;
    shr-int/lit8 v4, v2, 0x1

    .line 110
    .local v4, "middle":I
    const/4 v6, 0x1

    if-eqz v0, :cond_1e

    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x0

    .line 111
    .local v7, "tryHarder":Z
    :goto_1f
    if-eqz v7, :cond_24

    const/16 v8, 0x8

    goto :goto_25

    :cond_24
    const/4 v8, 0x5

    :goto_25
    shr-int v8, v2, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 113
    .local v8, "rowStep":I
    if-eqz v7, :cond_2f

    .line 114
    move v9, v2

    goto :goto_31

    .line 116
    :cond_2f
    const/16 v9, 0xf

    .line 119
    .local v9, "maxLines":I
    :goto_31
    const/4 v10, 0x0

    move-object v11, v3

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    const/4 v3, 0x0

    move-object v10, v0

    const/4 v0, 0x0

    .end local v3    # "row":Lcom/google/zxing/common/BitArray;
    .end local p2    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v0, "x":I
    .local v10, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    .local v11, "row":Lcom/google/zxing/common/BitArray;
    :goto_39
    move v15, v0

    .end local v0    # "x":I
    .local v15, "x":I
    if-ge v15, v9, :cond_125

    .line 122
    add-int/lit8 v0, v15, 0x1

    const/4 v5, 0x2

    div-int/lit8 v6, v0, 0x2

    .line 123
    .local v6, "rowStepsAboveOrBelow":I
    and-int/lit8 v0, v15, 0x1

    if-nez v0, :cond_47

    const/4 v0, 0x1

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    move/from16 v18, v0

    .line 124
    .local v18, "isAbove":Z
    if-eqz v18, :cond_4e

    move v0, v6

    goto :goto_4f

    :cond_4e
    neg-int v0, v6

    :goto_4f
    mul-int v0, v0, v8

    add-int/2addr v0, v4

    .line 125
    .local v3, "rowNumber":I
    move v3, v0

    if-ltz v0, :cond_125

    if-ge v3, v2, :cond_125

    .line 132
    move-object/from16 v5, p1

    :try_start_59
    invoke-virtual {v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0
    :try_end_5d
    .catch Lcom/google/zxing/NotFoundException; {:try_start_59 .. :try_end_5d} :catch_10d

    move-object v11, v0

    .line 135
    nop

    .line 139
    const/4 v0, 0x0

    .local v0, "attempt":I
    :goto_60
    move/from16 v20, v0

    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v2, v20

    const/4 v4, 0x2

    .end local v0    # "attempt":I
    .end local v4    # "middle":I
    .local v2, "attempt":I
    .local v21, "height":I
    .local v22, "middle":I
    if-ge v2, v4, :cond_106

    .line 140
    const/4 v4, 0x1

    if-ne v2, v4, :cond_8e

    .line 141
    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 146
    if-eqz v10, :cond_8e

    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 147
    new-instance v0, Ljava/util/EnumMap;

    const-class v4, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v4, v13

    .line 148
    .local v4, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    move-object v13, v0

    .end local v4    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    .local v13, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-interface {v0, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v13, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object v0, v13

    .line 155
    move-object v10, v0

    .end local v13    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    :cond_8e
    move-object/from16 v4, p0

    :try_start_90
    invoke-virtual {v4, v3, v11, v10}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_94
    .catch Lcom/google/zxing/ReaderException; {:try_start_90 .. :try_end_94} :catch_f5

    move-object v13, v0

    .line 157
    .local v13, "result":Lcom/google/zxing/Result;
    move/from16 v23, v3

    const/4 v3, 0x1

    .end local v3    # "rowNumber":I
    .local v23, "rowNumber":I
    if-ne v2, v3, :cond_f4

    .line 159
    :try_start_9a
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    const/16 v3, 0xb4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v0, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v13}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0
    :try_end_a9
    .catch Lcom/google/zxing/ReaderException; {:try_start_9a .. :try_end_a9} :catch_ee

    move-object v3, v14

    .line 162
    .local v3, "points":[Lcom/google/zxing/ResultPoint;
    move-object v3, v0

    if-eqz v0, :cond_f4

    .line 163
    :try_start_ad
    new-instance v0, Lcom/google/zxing/ResultPoint;
    :try_end_af
    .catch Lcom/google/zxing/ReaderException; {:try_start_ad .. :try_end_af} :catch_e7

    int-to-float v14, v1

    const/16 v16, 0x0

    :try_start_b2
    aget-object v19, v3, v16

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    sub-float v14, v14, v19

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v14, v14, v19

    aget-object v20, v3, v16

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-direct {v0, v14, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v3, v16

    .line 164
    new-instance v0, Lcom/google/zxing/ResultPoint;
    :try_end_cb
    .catch Lcom/google/zxing/ReaderException; {:try_start_b2 .. :try_end_cb} :catch_e5

    int-to-float v4, v1

    const/16 v17, 0x1

    :try_start_ce
    aget-object v14, v3, v17

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    sub-float/2addr v4, v14

    sub-float v4, v4, v19

    aget-object v14, v3, v17

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-direct {v0, v4, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v3, v17
    :try_end_e2
    .catch Lcom/google/zxing/ReaderException; {:try_start_ce .. :try_end_e2} :catch_e3

    goto :goto_f4

    .line 168
    :catch_e3
    move-exception v0

    goto :goto_ec

    :catch_e5
    move-exception v0

    goto :goto_ea

    :catch_e7
    move-exception v0

    const/16 v16, 0x0

    :goto_ea
    const/16 v17, 0x1

    :goto_ec
    move-object v14, v3

    goto :goto_fc

    .end local v3    # "points":[Lcom/google/zxing/ResultPoint;
    :catch_ee
    move-exception v0

    const/16 v16, 0x0

    const/16 v17, 0x1

    goto :goto_fc

    .line 167
    :cond_f4
    :goto_f4
    return-object v13

    .line 168
    .end local v13    # "result":Lcom/google/zxing/Result;
    .end local v23    # "rowNumber":I
    .local v3, "rowNumber":I
    :catch_f5
    move-exception v0

    move/from16 v23, v3

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 139
    .end local v3    # "rowNumber":I
    .restart local v23    # "rowNumber":I
    :goto_fc
    add-int/lit8 v0, v2, 0x1

    move/from16 v2, v21

    move/from16 v4, v22

    move/from16 v3, v23

    goto/16 :goto_60

    .line 119
    .end local v2    # "attempt":I
    .end local v6    # "rowStepsAboveOrBelow":I
    .end local v18    # "isAbove":Z
    .end local v23    # "rowNumber":I
    .restart local v3    # "rowNumber":I
    :cond_106
    move/from16 v23, v3

    const/16 v16, 0x0

    const/16 v17, 0x1

    .end local v3    # "rowNumber":I
    .restart local v23    # "rowNumber":I
    goto :goto_11a

    .line 133
    .end local v21    # "height":I
    .end local v22    # "middle":I
    .end local v23    # "rowNumber":I
    .local v2, "height":I
    .restart local v3    # "rowNumber":I
    .local v4, "middle":I
    .restart local v6    # "rowStepsAboveOrBelow":I
    .restart local v18    # "isAbove":Z
    :catch_10d
    move-exception v0

    move/from16 v21, v2

    move/from16 v23, v3

    move/from16 v22, v4

    const/16 v16, 0x0

    const/16 v17, 0x1

    .end local v2    # "height":I
    .end local v3    # "rowNumber":I
    .end local v4    # "middle":I
    .restart local v21    # "height":I
    .restart local v22    # "middle":I
    .restart local v23    # "rowNumber":I
    move-object v0, v12

    .line 134
    .local v0, "ignored":Lcom/google/zxing/NotFoundException;
    nop

    .line 119
    .end local v0    # "ignored":Lcom/google/zxing/NotFoundException;
    .end local v6    # "rowStepsAboveOrBelow":I
    .end local v18    # "isAbove":Z
    :goto_11a
    add-int/lit8 v0, v15, 0x1

    move/from16 v2, v21

    move/from16 v4, v22

    move/from16 v3, v23

    const/4 v6, 0x1

    goto/16 :goto_39

    .line 174
    .end local v15    # "x":I
    .end local v21    # "height":I
    .end local v22    # "middle":I
    .end local v23    # "rowNumber":I
    .restart local v2    # "height":I
    .restart local v4    # "middle":I
    :cond_125
    move-object/from16 v5, p1

    move/from16 v21, v2

    move/from16 v22, v4

    .end local v2    # "height":I
    .end local v4    # "middle":I
    .restart local v21    # "height":I
    .restart local v22    # "middle":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method protected static patternMatchVariance([I[IF)F
    .registers 14
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I
    .param p2, "maxIndividualVariance"    # F

    .line 253
    array-length v0, p0

    .line 254
    .local v0, "numCounters":I
    const/4 v1, 0x0

    .line 255
    .local v1, "total":I
    const/4 v2, 0x0

    .line 256
    .local v2, "patternLength":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v2, "total":I
    .local v4, "patternLength":I
    :goto_7
    if-ge v1, v0, :cond_12

    .line 257
    aget v5, p0, v1

    add-int/2addr v2, v5

    .line 258
    aget v5, p1, v1

    add-int/2addr v4, v5

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 260
    .end local v1    # "i":I
    :cond_12
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v2, v4, :cond_17

    .line 263
    return v1

    .line 266
    :cond_17
    int-to-float v5, v2

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 267
    .local v5, "unitBarWidth":F
    mul-float p2, p2, v5

    .line 269
    const/4 v6, 0x0

    .line 270
    .local v6, "totalVariance":F
    const/4 v7, 0x0

    .local v3, "x":I
    :goto_1e
    if-ge v3, v0, :cond_3c

    .line 271
    aget v8, p0, v3

    .line 272
    .local v8, "counter":I
    aget v9, p1, v3

    int-to-float v9, v9

    mul-float v9, v9, v5

    .line 273
    .local v9, "scaledPattern":F
    int-to-float v10, v8

    cmpl-float v10, v10, v9

    if-lez v10, :cond_2f

    int-to-float v10, v8

    sub-float/2addr v10, v9

    goto :goto_32

    :cond_2f
    int-to-float v10, v8

    sub-float v10, v9, v10

    .line 274
    .local v7, "variance":F
    :goto_32
    move v7, v10

    cmpl-float v10, v10, p2

    if-lez v10, :cond_38

    .line 275
    return v1

    .line 277
    :cond_38
    add-float/2addr v6, v7

    .line 270
    .end local v7    # "variance":F
    .end local v8    # "counter":I
    .end local v9    # "scaledPattern":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 279
    .end local v3    # "x":I
    :cond_3c
    int-to-float v1, v2

    div-float v1, v6, v1

    return v1
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .registers 11
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 193
    array-length v0, p2

    .line 194
    .local v0, "numCounters":I
    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 195
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 196
    .local v2, "end":I
    if-ge p1, v2, :cond_42

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 200
    .local v3, "isWhite":Z
    const/4 v5, 0x0

    .line 201
    .local v5, "counterPosition":I
    move v6, v5

    move v5, v3

    move v3, p1

    .line 202
    .local v3, "i":I
    .local v5, "isWhite":Z
    .local v6, "counterPosition":I
    :goto_15
    if-ge v3, v2, :cond_33

    .line 203
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v5

    if-eqz v7, :cond_24

    .line 204
    aget v7, p2, v6

    add-int/2addr v7, v4

    aput v7, p2, v6

    goto :goto_30

    .line 206
    :cond_24
    add-int/lit8 v6, v6, 0x1

    .line 207
    if-eq v6, v0, :cond_33

    .line 210
    aput v4, p2, v6

    .line 211
    if-nez v5, :cond_2e

    const/4 v7, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v7, 0x0

    :goto_2f
    move v5, v7

    .line 214
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 218
    :cond_33
    if-eq v6, v0, :cond_41

    add-int/lit8 v1, v0, -0x1

    if-ne v6, v1, :cond_3c

    if-ne v3, v2, :cond_3c

    goto :goto_41

    .line 219
    :cond_3c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 221
    :cond_41
    :goto_41
    return-void

    .line 197
    .end local v3    # "i":I
    .end local v5    # "isWhite":Z
    .end local v6    # "counterPosition":I
    :cond_42
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .registers 6
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "start"    # I
    .param p2, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 226
    array-length v0, p2

    .line 227
    .local v0, "numTransitionsLeft":I
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    .line 228
    .local v1, "last":Z
    :cond_5
    :goto_5
    if-lez p1, :cond_1a

    if-ltz v0, :cond_1a

    .line 229
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eq v2, v1, :cond_5

    .line 230
    add-int/lit8 v0, v0, -0x1

    .line 231
    if-nez v1, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    move v1, v2

    goto :goto_5

    .line 234
    :cond_1a
    if-gez v0, :cond_22

    .line 237
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 238
    return-void

    .line 235
    :cond_22
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 14
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
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 54
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_4
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 55
    :catch_5
    move-exception v0

    .line 56
    .local v0, "nfe":Lcom/google/zxing/NotFoundException;
    const/4 v1, 0x0

    if-eqz p2, :cond_13

    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 57
    const/4 v2, 0x1

    goto :goto_15

    .line 56
    :cond_13
    nop

    .line 57
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_7c

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 58
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v2

    .line 59
    .local v2, "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    invoke-direct {p0, v2, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 61
    .local v5, "result":Lcom/google/zxing/Result;
    move-object v5, v3

    invoke-virtual {v3}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v3

    .line 62
    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    const/16 v6, 0x10e

    .line 63
    .local v6, "orientation":I
    if-eqz v3, :cond_48

    sget-object v7, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 65
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    .line 66
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit16 v7, v7, 0x10e

    rem-int/lit16 v6, v7, 0x168

    .line 68
    :cond_48
    sget-object v7, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v5}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .line 71
    .local v4, "points":[Lcom/google/zxing/ResultPoint;
    move-object v4, v7

    if-eqz v7, :cond_7b

    .line 72
    invoke-virtual {v2}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v7

    .line 73
    .local v7, "height":I
    nop

    .local v1, "i":I
    :goto_5d
    array-length v8, v4

    if-ge v1, v8, :cond_7b

    .line 74
    new-instance v8, Lcom/google/zxing/ResultPoint;

    int-to-float v9, v7

    aget-object v10, v4, v1

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    aget-object v10, v4, v1

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v4, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 77
    .end local v1    # "i":I
    .end local v7    # "height":I
    :cond_7b
    return-object v5

    .line 79
    .end local v2    # "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    .end local v3    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v4    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v5    # "result":Lcom/google/zxing/Result;
    .end local v6    # "orientation":I
    :cond_7c
    throw v0
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
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
.end method

.method public reset()V
    .registers 1

    .line 87
    return-void
.end method
