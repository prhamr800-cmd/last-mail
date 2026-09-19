###### Class com.google.zxing.common.detector.WhiteRectangleDetector (com.google.zxing.common.detector.WhiteRectangleDetector)
.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0xa


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 5
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0xa

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .registers 8
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "initSize"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 59
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 60
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 61
    div-int/lit8 v0, p2, 0x2

    .line 62
    .local v0, "halfsize":I
    sub-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 63
    add-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 64
    sub-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 65
    add-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 66
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v1, :cond_38

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v1, :cond_38

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v1, v2, :cond_38

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v1, v2, :cond_38

    .line 69
    return-void

    .line 67
    :cond_38
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .registers 21
    .param p1, "y"    # Lcom/google/zxing/ResultPoint;
    .param p2, "z"    # Lcom/google/zxing/ResultPoint;
    .param p3, "x"    # Lcom/google/zxing/ResultPoint;
    .param p4, "t"    # Lcom/google/zxing/ResultPoint;

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 279
    .local v0, "yi":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    .line 280
    .local v1, "yj":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 281
    .local v2, "zi":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    .line 282
    .local v3, "zj":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    .line 283
    .local v4, "xi":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    .line 284
    .local v5, "xj":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    .line 285
    .local v6, "ti":F
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    .line 287
    .local v7, "tj":F
    move-object/from16 v8, p0

    iget v9, v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v9, v0, v9

    if-gez v9, :cond_62

    .line 288
    new-array v9, v14, [Lcom/google/zxing/ResultPoint;

    new-instance v14, Lcom/google/zxing/ResultPoint;

    sub-float v10, v6, v15

    add-float v11, v7, v15

    invoke-direct {v14, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v9, v13

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v2, v15

    add-float v13, v3, v15

    invoke-direct {v10, v11, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v9, v12

    new-instance v10, Lcom/google/zxing/ResultPoint;

    sub-float v11, v4, v15

    sub-float v12, v5, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x2

    aput-object v10, v9, v11

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v0, v15

    sub-float v12, v1, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x3

    aput-object v10, v9, v11

    return-object v9

    .line 294
    :cond_62
    new-array v9, v14, [Lcom/google/zxing/ResultPoint;

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v6, v15

    add-float v14, v7, v15

    invoke-direct {v10, v11, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v9, v13

    new-instance v10, Lcom/google/zxing/ResultPoint;

    add-float v11, v2, v15

    sub-float v13, v3, v15

    invoke-direct {v10, v11, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v9, v12

    new-instance v10, Lcom/google/zxing/ResultPoint;

    sub-float v11, v4, v15

    add-float v12, v5, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x2

    aput-object v10, v9, v11

    new-instance v10, Lcom/google/zxing/ResultPoint;

    sub-float v11, v0, v15

    sub-float v12, v1, v15

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x3

    aput-object v10, v9, v11

    return-object v9
.end method

.method private containsBlackPoint(IIIZ)Z
    .registers 8
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "fixed"    # I
    .param p4, "horizontal"    # Z

    .line 313
    const/4 v0, 0x1

    if-eqz p4, :cond_12

    .line 314
    move v1, p1

    .local v1, "x":I
    :goto_4
    if-gt v1, p2, :cond_21

    .line 315
    iget-object v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, v1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 316
    return v0

    .line 314
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 320
    .end local v1    # "x":I
    :cond_12
    move v1, p1

    .local v1, "y":I
    :goto_13
    if-gt v1, p2, :cond_21

    .line 321
    iget-object v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2, p3, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 322
    return v0

    .line 320
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 327
    .end local v1    # "y":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .registers 14
    .param p1, "aX"    # F
    .param p2, "aY"    # F
    .param p3, "bX"    # F
    .param p4, "bY"    # F

    .line 241
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    .line 242
    .local v0, "dist":I
    sub-float v1, p3, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 243
    .local v1, "xStep":F
    sub-float v2, p4, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 245
    .local v2, "yStep":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_36

    .line 246
    int-to-float v4, v3

    mul-float v4, v4, v1

    add-float/2addr v4, p1

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    .line 247
    .local v4, "x":I
    int-to-float v5, v3

    mul-float v5, v5, v2

    add-float/2addr v5, p2

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v5

    .line 248
    .local v5, "y":I
    iget-object v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 249
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v6

    .line 245
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 252
    .end local v3    # "i":I
    :cond_36
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 87
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 88
    .local v1, "left":I
    iget v2, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 89
    .local v2, "right":I
    iget v3, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 90
    .local v3, "up":I
    iget v4, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 91
    .local v4, "down":I
    const/4 v5, 0x0

    .line 92
    .local v5, "sizeExceeded":Z
    const/4 v6, 0x1

    .line 93
    .local v6, "aBlackPointFoundOnBorder":Z
    const/4 v7, 0x0

    .line 95
    .local v7, "atLeastOneBlackPointFoundOnBorder":Z
    const/4 v8, 0x0

    .line 96
    .local v8, "atLeastOneBlackPointFoundOnRight":Z
    const/4 v9, 0x0

    .line 97
    .local v9, "atLeastOneBlackPointFoundOnBottom":Z
    const/4 v10, 0x0

    .line 98
    .local v10, "atLeastOneBlackPointFoundOnLeft":Z
    const/4 v11, 0x0

    move v12, v7

    move v7, v1

    const/4 v1, 0x0

    .line 100
    .local v1, "atLeastOneBlackPointFoundOnTop":Z
    .local v7, "left":I
    .local v12, "atLeastOneBlackPointFoundOnBorder":Z
    :goto_14
    const/4 v13, 0x1

    if-eqz v6, :cond_c3

    .line 102
    const/4 v6, 0x0

    .line 107
    move v14, v6

    move v6, v2

    const/4 v2, 0x1

    .line 108
    .local v2, "rightBorderNotWhite":Z
    .local v6, "right":I
    .local v14, "aBlackPointFoundOnBorder":Z
    :cond_1b
    :goto_1b
    if-nez v2, :cond_1f

    if-nez v8, :cond_34

    :cond_1f
    iget v15, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v6, v15, :cond_34

    .line 109
    invoke-direct {v0, v3, v4, v6, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v15

    .line 110
    move v2, v15

    if-eqz v15, :cond_2f

    .line 111
    add-int/lit8 v6, v6, 0x1

    .line 112
    const/4 v14, 0x1

    .line 113
    const/4 v8, 0x1

    goto :goto_1b

    .line 114
    :cond_2f
    if-nez v8, :cond_1b

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 119
    :cond_34
    iget v15, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v6, v15, :cond_3e

    .line 120
    const/4 v5, 0x1

    .line 121
    nop

    .line 190
    move v15, v14

    move v14, v4

    goto/16 :goto_c6

    .line 127
    :cond_3e
    move v15, v14

    move v14, v4

    const/4 v4, 0x1

    .line 128
    .local v4, "bottomBorderNotWhite":Z
    .local v14, "down":I
    .local v15, "aBlackPointFoundOnBorder":Z
    :goto_41
    if-nez v4, :cond_45

    if-nez v9, :cond_5b

    :cond_45
    iget v11, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v14, v11, :cond_5b

    .line 129
    invoke-direct {v0, v7, v6, v14, v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v11

    .line 130
    move v4, v11

    if-eqz v11, :cond_56

    .line 131
    add-int/lit8 v14, v14, 0x1

    .line 132
    const/4 v15, 0x1

    .line 133
    const/4 v9, 0x1

    .line 127
    :cond_54
    :goto_54
    const/4 v11, 0x0

    goto :goto_41

    .line 134
    :cond_56
    if-nez v9, :cond_54

    .line 135
    add-int/lit8 v14, v14, 0x1

    goto :goto_54

    .line 139
    :cond_5b
    iget v11, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v14, v11, :cond_62

    .line 140
    const/4 v5, 0x1

    .line 141
    goto/16 :goto_c6

    .line 147
    :cond_62
    move v11, v7

    const/4 v7, 0x1

    .line 148
    .local v7, "leftBorderNotWhite":Z
    .local v11, "left":I
    :goto_64
    if-nez v7, :cond_6b

    if-nez v10, :cond_69

    goto :goto_6b

    .line 159
    :cond_69
    const/4 v13, 0x0

    goto :goto_81

    .line 148
    :cond_6b
    :goto_6b
    if-ltz v11, :cond_69

    .line 149
    const/4 v13, 0x0

    invoke-direct {v0, v3, v14, v11, v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v16

    .line 150
    move/from16 v7, v16

    if-eqz v16, :cond_7c

    .line 151
    add-int/lit8 v11, v11, -0x1

    .line 152
    const/4 v15, 0x1

    .line 153
    const/4 v10, 0x1

    .line 147
    :cond_7a
    :goto_7a
    const/4 v13, 0x1

    goto :goto_64

    .line 154
    :cond_7c
    if-nez v10, :cond_7a

    .line 155
    add-int/lit8 v11, v11, -0x1

    goto :goto_7a

    .line 159
    :goto_81
    if-gez v11, :cond_88

    .line 160
    const/4 v5, 0x1

    .line 161
    nop

    .line 190
    move v7, v11

    const/4 v13, 0x1

    goto :goto_c6

    .line 167
    :cond_88
    move/from16 v16, v15

    move v15, v3

    move v3, v1

    const/4 v1, 0x1

    .line 168
    .local v1, "topBorderNotWhite":Z
    .local v3, "atLeastOneBlackPointFoundOnTop":Z
    .local v15, "up":I
    .local v16, "aBlackPointFoundOnBorder":Z
    :goto_8d
    if-nez v1, :cond_94

    if-nez v3, :cond_92

    goto :goto_94

    .line 179
    :cond_92
    const/4 v13, 0x1

    goto :goto_ab

    .line 168
    :cond_94
    :goto_94
    if-ltz v15, :cond_92

    .line 169
    const/4 v13, 0x1

    invoke-direct {v0, v11, v6, v15, v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v17

    .line 170
    move/from16 v1, v17

    if-eqz v17, :cond_a6

    .line 171
    add-int/lit8 v15, v15, -0x1

    .line 172
    const/16 v16, 0x1

    .line 173
    const/4 v3, 0x1

    .line 167
    :cond_a4
    :goto_a4
    const/4 v13, 0x0

    goto :goto_8d

    .line 174
    :cond_a6
    if-nez v3, :cond_a4

    .line 175
    add-int/lit8 v15, v15, -0x1

    goto :goto_a4

    .line 179
    :goto_ab
    if-gez v15, :cond_b5

    .line 180
    const/4 v5, 0x1

    .line 181
    nop

    .line 190
    move v1, v3

    move v7, v11

    move v3, v15

    move/from16 v15, v16

    goto :goto_c6

    .line 184
    :cond_b5
    if-eqz v16, :cond_b9

    .line 185
    const/4 v1, 0x1

    .line 188
    move v12, v1

    .line 98
    .end local v1    # "topBorderNotWhite":Z
    .end local v2    # "rightBorderNotWhite":Z
    .end local v4    # "bottomBorderNotWhite":Z
    .end local v7    # "leftBorderNotWhite":Z
    :cond_b9
    move v1, v3

    move v2, v6

    move v7, v11

    move v4, v14

    move v3, v15

    move/from16 v6, v16

    const/4 v11, 0x0

    goto/16 :goto_14

    .line 190
    .end local v11    # "left":I
    .end local v14    # "down":I
    .end local v15    # "up":I
    .end local v16    # "aBlackPointFoundOnBorder":Z
    .local v1, "atLeastOneBlackPointFoundOnTop":Z
    .local v2, "right":I
    .local v3, "up":I
    .local v4, "down":I
    .local v6, "aBlackPointFoundOnBorder":Z
    .local v7, "left":I
    :cond_c3
    move v14, v4

    move v15, v6

    move v6, v2

    .end local v2    # "right":I
    .end local v4    # "down":I
    .local v6, "right":I
    .restart local v14    # "down":I
    .local v15, "aBlackPointFoundOnBorder":Z
    :goto_c6
    if-nez v5, :cond_178

    if-eqz v12, :cond_178

    .line 192
    sub-int v2, v6, v7

    .line 194
    .local v2, "maxSize":I
    const/4 v4, 0x0

    .line 195
    .local v4, "z":Lcom/google/zxing/ResultPoint;
    move-object v11, v4

    const/4 v4, 0x1

    .local v4, "i":I
    .local v11, "z":Lcom/google/zxing/ResultPoint;
    :goto_cf
    if-nez v11, :cond_ef

    if-ge v4, v2, :cond_ef

    .line 196
    int-to-float v13, v7

    move/from16 v19, v1

    .end local v1    # "atLeastOneBlackPointFoundOnTop":Z
    .local v19, "atLeastOneBlackPointFoundOnTop":Z
    sub-int v1, v14, v4

    int-to-float v1, v1

    move/from16 v20, v5

    .end local v5    # "sizeExceeded":Z
    .local v20, "sizeExceeded":Z
    add-int v5, v7, v4

    int-to-float v5, v5

    move/from16 v21, v8

    .end local v8    # "atLeastOneBlackPointFoundOnRight":Z
    .local v21, "atLeastOneBlackPointFoundOnRight":Z
    int-to-float v8, v14

    invoke-direct {v0, v13, v1, v5, v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 195
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v19

    move/from16 v5, v20

    move/from16 v8, v21

    const/4 v13, 0x1

    goto :goto_cf

    .line 199
    .end local v4    # "i":I
    .end local v19    # "atLeastOneBlackPointFoundOnTop":Z
    .end local v20    # "sizeExceeded":Z
    .end local v21    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v1    # "atLeastOneBlackPointFoundOnTop":Z
    .restart local v5    # "sizeExceeded":Z
    .restart local v8    # "atLeastOneBlackPointFoundOnRight":Z
    :cond_ef
    move/from16 v19, v1

    move/from16 v20, v5

    move/from16 v21, v8

    .end local v1    # "atLeastOneBlackPointFoundOnTop":Z
    .end local v5    # "sizeExceeded":Z
    .end local v8    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v19    # "atLeastOneBlackPointFoundOnTop":Z
    .restart local v20    # "sizeExceeded":Z
    .restart local v21    # "atLeastOneBlackPointFoundOnRight":Z
    if-eqz v11, :cond_16d

    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, "t":Lcom/google/zxing/ResultPoint;
    move-object v4, v1

    const/4 v1, 0x1

    .local v1, "i":I
    .local v4, "t":Lcom/google/zxing/ResultPoint;
    :goto_fa
    if-nez v4, :cond_111

    if-ge v1, v2, :cond_111

    .line 206
    int-to-float v5, v7

    add-int v8, v3, v1

    int-to-float v8, v8

    add-int v13, v7, v1

    int-to-float v13, v13

    move/from16 v22, v7

    .end local v7    # "left":I
    .local v22, "left":I
    int-to-float v7, v3

    invoke-direct {v0, v5, v8, v13, v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 205
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v22

    goto :goto_fa

    .line 209
    .end local v1    # "i":I
    .end local v22    # "left":I
    .restart local v7    # "left":I
    :cond_111
    move/from16 v22, v7

    .end local v7    # "left":I
    .restart local v22    # "left":I
    if-eqz v4, :cond_164

    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "x":Lcom/google/zxing/ResultPoint;
    move-object v5, v1

    const/4 v1, 0x1

    .local v1, "i":I
    .local v5, "x":Lcom/google/zxing/ResultPoint;
    :goto_118
    if-nez v5, :cond_12f

    if-ge v1, v2, :cond_12f

    .line 216
    int-to-float v7, v6

    add-int v8, v3, v1

    int-to-float v8, v8

    sub-int v13, v6, v1

    int-to-float v13, v13

    move/from16 v23, v9

    .end local v9    # "atLeastOneBlackPointFoundOnBottom":Z
    .local v23, "atLeastOneBlackPointFoundOnBottom":Z
    int-to-float v9, v3

    invoke-direct {v0, v7, v8, v13, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 215
    add-int/lit8 v1, v1, 0x1

    move/from16 v9, v23

    goto :goto_118

    .line 219
    .end local v1    # "i":I
    .end local v23    # "atLeastOneBlackPointFoundOnBottom":Z
    .restart local v9    # "atLeastOneBlackPointFoundOnBottom":Z
    :cond_12f
    move/from16 v23, v9

    .end local v9    # "atLeastOneBlackPointFoundOnBottom":Z
    .restart local v23    # "atLeastOneBlackPointFoundOnBottom":Z
    if-eqz v5, :cond_15d

    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "y":Lcom/google/zxing/ResultPoint;
    const/16 v18, 0x1

    .local v18, "i":I
    :goto_136
    move/from16 v7, v18

    .end local v18    # "i":I
    .local v7, "i":I
    if-nez v1, :cond_14f

    if-ge v7, v2, :cond_14f

    .line 226
    int-to-float v8, v6

    sub-int v9, v14, v7

    int-to-float v9, v9

    sub-int v13, v6, v7

    int-to-float v13, v13

    move/from16 v24, v2

    .end local v2    # "maxSize":I
    .local v24, "maxSize":I
    int-to-float v2, v14

    invoke-direct {v0, v8, v9, v13, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 225
    add-int/lit8 v18, v7, 0x1

    move/from16 v2, v24

    goto :goto_136

    .line 229
    .end local v7    # "i":I
    .end local v24    # "maxSize":I
    .restart local v2    # "maxSize":I
    :cond_14f
    move/from16 v24, v2

    .end local v2    # "maxSize":I
    .restart local v24    # "maxSize":I
    if-eqz v1, :cond_158

    .line 233
    invoke-direct {v0, v1, v11, v5, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    return-object v2

    .line 230
    :cond_158
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 220
    .end local v1    # "y":Lcom/google/zxing/ResultPoint;
    .end local v24    # "maxSize":I
    .restart local v2    # "maxSize":I
    :cond_15d
    move/from16 v24, v2

    .end local v2    # "maxSize":I
    .restart local v24    # "maxSize":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 210
    .end local v5    # "x":Lcom/google/zxing/ResultPoint;
    .end local v23    # "atLeastOneBlackPointFoundOnBottom":Z
    .end local v24    # "maxSize":I
    .restart local v2    # "maxSize":I
    .restart local v9    # "atLeastOneBlackPointFoundOnBottom":Z
    :cond_164
    move/from16 v24, v2

    move/from16 v23, v9

    .end local v2    # "maxSize":I
    .end local v9    # "atLeastOneBlackPointFoundOnBottom":Z
    .restart local v23    # "atLeastOneBlackPointFoundOnBottom":Z
    .restart local v24    # "maxSize":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 200
    .end local v4    # "t":Lcom/google/zxing/ResultPoint;
    .end local v22    # "left":I
    .end local v23    # "atLeastOneBlackPointFoundOnBottom":Z
    .end local v24    # "maxSize":I
    .restart local v2    # "maxSize":I
    .local v7, "left":I
    .restart local v9    # "atLeastOneBlackPointFoundOnBottom":Z
    :cond_16d
    move/from16 v24, v2

    move/from16 v22, v7

    move/from16 v23, v9

    .end local v2    # "maxSize":I
    .end local v7    # "left":I
    .end local v9    # "atLeastOneBlackPointFoundOnBottom":Z
    .restart local v22    # "left":I
    .restart local v23    # "atLeastOneBlackPointFoundOnBottom":Z
    .restart local v24    # "maxSize":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 236
    .end local v11    # "z":Lcom/google/zxing/ResultPoint;
    .end local v19    # "atLeastOneBlackPointFoundOnTop":Z
    .end local v20    # "sizeExceeded":Z
    .end local v21    # "atLeastOneBlackPointFoundOnRight":Z
    .end local v22    # "left":I
    .end local v23    # "atLeastOneBlackPointFoundOnBottom":Z
    .end local v24    # "maxSize":I
    .local v1, "atLeastOneBlackPointFoundOnTop":Z
    .local v5, "sizeExceeded":Z
    .restart local v7    # "left":I
    .restart local v8    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v9    # "atLeastOneBlackPointFoundOnBottom":Z
    :cond_178
    move/from16 v19, v1

    move/from16 v20, v5

    move/from16 v22, v7

    move/from16 v21, v8

    move/from16 v23, v9

    .end local v1    # "atLeastOneBlackPointFoundOnTop":Z
    .end local v5    # "sizeExceeded":Z
    .end local v7    # "left":I
    .end local v8    # "atLeastOneBlackPointFoundOnRight":Z
    .end local v9    # "atLeastOneBlackPointFoundOnBottom":Z
    .restart local v19    # "atLeastOneBlackPointFoundOnTop":Z
    .restart local v20    # "sizeExceeded":Z
    .restart local v21    # "atLeastOneBlackPointFoundOnRight":Z
    .restart local v22    # "left":I
    .restart local v23    # "atLeastOneBlackPointFoundOnBottom":Z
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
