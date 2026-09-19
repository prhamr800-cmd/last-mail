###### Class com.google.zxing.pdf417.detector.Detector (com.google.zxing.pdf417.detector.Detector)
.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final BARCODE_MIN_HEIGHT:I = 0xa

.field private static final INDEXES_START_PATTERN:[I

.field private static final INDEXES_STOP_PATTERN:[I

.field private static final MAX_AVG_VARIANCE:F = 0.42f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.8f

.field private static final MAX_PATTERN_DRIFT:I = 0x5

.field private static final MAX_PIXEL_DRIFT:I = 0x3

.field private static final ROW_STEP:I = 0x5

.field private static final SKIPPED_ROW_COUNT_MAX:I = 0x19

.field private static final START_PATTERN:[I

.field private static final STOP_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_22

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 49
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    return-void

    :array_22
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_4e
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private static copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
    .registers 6
    .param p0, "result"    # [Lcom/google/zxing/ResultPoint;
    .param p1, "tmpResult"    # [Lcom/google/zxing/ResultPoint;
    .param p2, "destinationIndexes"    # [I

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_d

    .line 177
    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    .end local v0    # "i":I
    :cond_d
    return-void
.end method

.method public static detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
    .registers 6
    .param p0, "image"    # Lcom/google/zxing/BinaryBitmap;
    .param p2, "multiple"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)",
            "Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 79
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 81
    .local v0, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    invoke-static {p2, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 82
    .local v2, "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    move-object v2, v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 83
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 84
    move-object v0, v1

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->rotate180()V

    .line 85
    invoke-static {p2, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v2

    .line 87
    :cond_1c
    new-instance v1, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;)V

    return-object v1
.end method

.method private static detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
    .registers 13
    .param p0, "multiple"    # Z
    .param p1, "bitMatrix"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/zxing/common/BitMatrix;",
            ")",
            "Ljava/util/List<",
            "[",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "barcodeCoordinates":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, "row":I
    const/4 v2, 0x0

    .line 101
    .local v2, "column":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move v4, v2

    move v2, v1

    const/4 v1, 0x0

    .line 102
    .local v1, "foundBarcodeInRow":Z
    .local v2, "row":I
    .local v4, "column":I
    :goto_e
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    if-ge v2, v7, :cond_85

    .line 103
    invoke-static {p1, v2, v4}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .line 105
    .local v5, "vertices":[Lcom/google/zxing/ResultPoint;
    move-object v5, v7

    aget-object v7, v7, v3

    if-nez v7, :cond_5b

    const/4 v7, 0x3

    aget-object v8, v5, v7

    if-nez v8, :cond_5b

    .line 106
    if-eqz v1, :cond_85

    .line 112
    const/4 v1, 0x0

    .line 113
    const/4 v4, 0x0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_58

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/zxing/ResultPoint;

    .line 115
    .local v6, "barcodeCoordinate":[Lcom/google/zxing/ResultPoint;
    move-object v6, v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    if-eqz v9, :cond_48

    .line 116
    int-to-float v9, v2

    aget-object v10, v6, v10

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v2, v9

    .line 118
    :cond_48
    aget-object v9, v6, v7

    if-eqz v9, :cond_57

    .line 119
    aget-object v9, v6, v7

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 121
    .end local v6    # "barcodeCoordinate":[Lcom/google/zxing/ResultPoint;
    :cond_57
    goto :goto_2a

    .line 122
    :cond_58
    add-int/lit8 v2, v2, 0x5

    .line 123
    goto :goto_e

    .line 125
    :cond_5b
    const/4 v1, 0x1

    .line 126
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    if-eqz p0, :cond_85

    .line 132
    const/4 v7, 0x2

    aget-object v8, v5, v7

    if-eqz v8, :cond_75

    .line 133
    aget-object v8, v5, v7

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 134
    aget-object v7, v5, v7

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v2, v7

    goto :goto_e

    .line 136
    :cond_75
    const/4 v7, 0x4

    aget-object v8, v5, v7

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 137
    aget-object v7, v5, v7

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v2, v7

    .line 139
    .end local v5    # "vertices":[Lcom/google/zxing/ResultPoint;
    goto :goto_e

    .line 140
    :cond_85
    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
    .registers 25
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "width"    # I
    .param p4, "whiteFirst"    # Z
    .param p5, "pattern"    # [I
    .param p6, "counters"    # [I

    .line 261
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 262
    move/from16 v4, p1

    .line 263
    .local v4, "patternStart":I
    move v6, v4

    const/4 v4, 0x0

    .line 266
    .local v4, "pixelDrift":I
    .local v6, "patternStart":I
    :goto_11
    invoke-virtual {v0, v6, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_23

    if-lez v6, :cond_23

    add-int/lit8 v7, v4, 0x1

    .local v7, "pixelDrift":I
    const/4 v8, 0x3

    if-ge v4, v8, :cond_22

    .line 267
    .end local v4    # "pixelDrift":I
    add-int/lit8 v6, v6, -0x1

    .line 263
    move v4, v7

    goto :goto_11

    .line 269
    :cond_22
    move v4, v7

    .end local v7    # "pixelDrift":I
    .restart local v4    # "pixelDrift":I
    :cond_23
    move v7, v6

    .line 270
    .local v7, "x":I
    const/4 v8, 0x0

    .line 271
    .local v8, "counterPosition":I
    array-length v9, v2

    .line 272
    .local v9, "patternLength":I
    move v10, v6

    move/from16 v6, p4

    .line 273
    .local v6, "isWhite":Z
    .local v10, "patternStart":I
    :goto_29
    const v11, 0x3ed70a3d    # 0.42f

    const v12, 0x3f4ccccd    # 0.8f

    const/4 v13, 0x2

    const/4 v14, 0x1

    move/from16 v15, p3

    if-ge v7, v15, :cond_7f

    .line 274
    invoke-virtual {v0, v7, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v16

    .line 275
    xor-int v16, v16, v6

    if-eqz v16, :cond_43

    .line 276
    aget v11, v3, v8

    add-int/2addr v11, v14

    aput v11, v3, v8

    goto :goto_7c

    .line 278
    :cond_43
    add-int/lit8 v14, v9, -0x1

    if-ne v8, v14, :cond_6e

    .line 279
    invoke-static {v3, v2, v12}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[IF)F

    move-result v12

    cmpg-float v11, v12, v11

    if-gez v11, :cond_57

    .line 280
    new-array v11, v13, [I

    aput v10, v11, v5

    const/4 v12, 0x1

    aput v7, v11, v12

    return-object v11

    .line 282
    :cond_57
    const/4 v12, 0x1

    aget v11, v3, v5

    aget v14, v3, v12

    add-int/2addr v11, v14

    add-int/2addr v10, v11

    .line 283
    add-int/lit8 v11, v9, -0x2

    invoke-static {v3, v13, v3, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    add-int/lit8 v11, v9, -0x2

    aput v5, v3, v11

    .line 285
    add-int/lit8 v11, v9, -0x1

    aput v5, v3, v11

    .line 286
    add-int/lit8 v8, v8, -0x1

    goto :goto_70

    .line 288
    :cond_6e
    add-int/lit8 v8, v8, 0x1

    .line 290
    :goto_70
    const/4 v11, 0x1

    aput v11, v3, v8

    .line 291
    if-nez v6, :cond_78

    const/16 v17, 0x1

    goto :goto_7a

    :cond_78
    const/16 v17, 0x0

    :goto_7a
    move/from16 v6, v17

    .line 273
    :goto_7c
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 294
    :cond_7f
    add-int/lit8 v14, v9, -0x1

    if-ne v8, v14, :cond_95

    .line 295
    invoke-static {v3, v2, v12}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[IF)F

    move-result v12

    cmpg-float v11, v12, v11

    if-gez v11, :cond_95

    .line 296
    new-array v11, v13, [I

    aput v10, v11, v5

    add-int/lit8 v5, v7, -0x1

    const/4 v12, 0x1

    aput v5, v11, v12

    return-object v11

    .line 299
    :cond_95
    const/4 v5, 0x0

    return-object v5
.end method

.method private static findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;
    .registers 27
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "startRow"    # I
    .param p4, "startColumn"    # I
    .param p5, "pattern"    # [I

    .line 187
    move/from16 v0, p1

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/google/zxing/ResultPoint;

    .line 188
    .local v2, "result":[Lcom/google/zxing/ResultPoint;
    const/4 v3, 0x0

    .line 189
    .local v3, "found":Z
    move-object/from16 v15, p5

    array-length v4, v15

    new-array v4, v4, [I

    const/16 v18, 0x0

    move/from16 v11, p3

    move-object v10, v4

    move-object/from16 v12, v18

    .line 190
    .end local p3    # "startRow":I
    .local v10, "counters":[I
    .local v11, "startRow":I
    :goto_12
    const/16 v19, 0x0

    const/16 v20, 0x1

    if-ge v11, v0, :cond_6a

    .line 191
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p4

    move v6, v11

    move/from16 v7, p2

    move-object/from16 v9, p5

    invoke-static/range {v4 .. v10}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v4

    move-object v5, v12

    .line 192
    .local v5, "loc":[I
    move-object v12, v4

    .end local v5    # "loc":[I
    .local v12, "loc":[I
    if-eqz v4, :cond_65

    .line 193
    move-object v5, v12

    move-object/from16 v4, v18

    .end local v12    # "loc":[I
    .restart local v5    # "loc":[I
    :goto_2d
    if-lez v11, :cond_4d

    .line 194
    add-int/lit8 v6, v11, -0x1

    .end local v11    # "startRow":I
    .local v6, "startRow":I
    const/4 v7, 0x0

    move-object/from16 v11, p0

    move/from16 v12, p4

    move v13, v6

    move/from16 v14, p2

    move v15, v7

    move-object/from16 v16, p5

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v7

    .line 195
    .local v4, "previousRowLoc":[I
    move-object v4, v7

    if-eqz v7, :cond_4a

    .line 196
    move-object v5, v4

    .line 193
    move-object/from16 v15, p5

    move v11, v6

    goto :goto_2d

    .line 198
    :cond_4a
    add-int/lit8 v6, v6, 0x1

    .line 202
    move v11, v6

    .end local v4    # "previousRowLoc":[I
    .end local v6    # "startRow":I
    .restart local v11    # "startRow":I
    :cond_4d
    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v6, v5, v19

    int-to-float v6, v6

    int-to-float v7, v11

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v2, v19

    .line 203
    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v6, v5, v20

    int-to-float v6, v6

    int-to-float v7, v11

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v2, v20

    .line 204
    const/4 v3, 0x1

    .line 205
    goto :goto_6a

    .line 190
    .end local v5    # "loc":[I
    .restart local v12    # "loc":[I
    :cond_65
    add-int/lit8 v11, v11, 0x5

    .line 189
    move-object/from16 v15, p5

    goto :goto_12

    .line 208
    .end local v11    # "startRow":I
    .end local v12    # "loc":[I
    .local v3, "startRow":I
    .local v4, "found":Z
    :cond_6a
    :goto_6a
    move v4, v3

    move v3, v11

    add-int/lit8 v5, v3, 0x1

    .line 210
    .local v5, "stopRow":I
    if-eqz v4, :cond_db

    .line 211
    const/4 v6, 0x0

    .line 212
    .local v6, "skippedRowCount":I
    const/4 v7, 0x2

    new-array v8, v7, [I

    aget-object v9, v2, v19

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    float-to-int v9, v9

    aput v9, v8, v19

    aget-object v9, v2, v20

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    float-to-int v9, v9

    aput v9, v8, v20

    move v9, v6

    move-object/from16 v6, v18

    .line 213
    .end local v6    # "skippedRowCount":I
    .local v8, "previousRowLoc":[I
    .local v9, "skippedRowCount":I
    :goto_89
    if-ge v5, v0, :cond_c1

    .line 214
    aget v12, v8, v19

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move v13, v5

    move/from16 v14, p2

    move-object/from16 v16, p5

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v11

    .line 219
    .local v6, "loc":[I
    move-object v6, v11

    if-eqz v11, :cond_b8

    aget v11, v8, v19

    aget v12, v6, v19

    sub-int/2addr v11, v12

    .line 220
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/4 v12, 0x5

    if-ge v11, v12, :cond_b8

    aget v11, v8, v20

    aget v13, v6, v20

    sub-int/2addr v11, v13

    .line 221
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v12, :cond_b8

    .line 222
    move-object v8, v6

    .line 223
    const/4 v9, 0x0

    goto :goto_be

    .line 225
    :cond_b8
    const/16 v11, 0x19

    if-gt v9, v11, :cond_c1

    .line 228
    add-int/lit8 v9, v9, 0x1

    .line 213
    .end local v6    # "loc":[I
    :goto_be
    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    .line 232
    :cond_c1
    add-int/lit8 v6, v9, 0x1

    sub-int/2addr v5, v6

    .line 233
    new-instance v6, Lcom/google/zxing/ResultPoint;

    aget v11, v8, v19

    int-to-float v11, v11

    int-to-float v12, v5

    invoke-direct {v6, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v6, v2, v7

    .line 234
    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v11, v8, v20

    int-to-float v11, v11

    int-to-float v12, v5

    invoke-direct {v7, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v2, v6

    .line 236
    .end local v8    # "previousRowLoc":[I
    .end local v9    # "skippedRowCount":I
    :cond_db
    sub-int v6, v5, v3

    const/16 v7, 0xa

    if-ge v6, v7, :cond_eb

    .line 237
    nop

    .local v19, "i":I
    :goto_e2
    move/from16 v6, v19

    .end local v19    # "i":I
    .local v6, "i":I
    if-ge v6, v1, :cond_eb

    .line 238
    aput-object v18, v2, v6

    .line 237
    add-int/lit8 v19, v6, 0x1

    goto :goto_e2

    .line 241
    .end local v6    # "i":I
    :cond_eb
    return-object v2
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;
    .registers 13
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "startRow"    # I
    .param p2, "startColumn"    # I

    .line 159
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 160
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 162
    .local v7, "width":I
    const/16 v0, 0x8

    new-array v8, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v0, 0x0

    .line 163
    .local v0, "result":[Lcom/google/zxing/ResultPoint;
    move-object v9, v8

    .end local v0    # "result":[Lcom/google/zxing/ResultPoint;
    .local v9, "result":[Lcom/google/zxing/ResultPoint;
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    invoke-static {v8, v0, v1}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 166
    const/4 v0, 0x4

    aget-object v1, v9, v0

    if-eqz v1, :cond_31

    .line 167
    aget-object v1, v9, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int p2, v1

    .line 168
    aget-object v0, v9, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int p1, v0

    .line 170
    :cond_31
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    invoke-static {v9, v0, v1}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 172
    return-object v9
.end method

.method private static patternMatchVariance([I[IF)F
    .registers 14
    .param p0, "counters"    # [I
    .param p1, "pattern"    # [I
    .param p2, "maxIndividualVariance"    # F

    .line 314
    array-length v0, p0

    .line 315
    .local v0, "numCounters":I
    const/4 v1, 0x0

    .line 316
    .local v1, "total":I
    const/4 v2, 0x0

    .line 317
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

    .line 318
    aget v5, p0, v1

    add-int/2addr v2, v5

    .line 319
    aget v5, p1, v1

    add-int/2addr v4, v5

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 321
    .end local v1    # "i":I
    :cond_12
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v2, v4, :cond_17

    .line 324
    return v1

    .line 329
    :cond_17
    int-to-float v5, v2

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 330
    .local v5, "unitBarWidth":F
    mul-float p2, p2, v5

    .line 332
    const/4 v6, 0x0

    .line 333
    .local v6, "totalVariance":F
    const/4 v7, 0x0

    .local v3, "x":I
    :goto_1e
    if-ge v3, v0, :cond_3c

    .line 334
    aget v8, p0, v3

    .line 335
    .local v8, "counter":I
    aget v9, p1, v3

    int-to-float v9, v9

    mul-float v9, v9, v5

    .line 336
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

    .line 337
    .local v7, "variance":F
    :goto_32
    move v7, v10

    cmpl-float v10, v10, p2

    if-lez v10, :cond_38

    .line 338
    return v1

    .line 340
    :cond_38
    add-float/2addr v6, v7

    .line 333
    .end local v7    # "variance":F
    .end local v8    # "counter":I
    .end local v9    # "scaledPattern":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 342
    .end local v3    # "x":I
    :cond_3c
    int-to-float v1, v2

    div-float v1, v6, v1

    return v1
.end method
