###### Class com.google.zxing.datamatrix.detector.Detector (com.google.zxing.datamatrix.detector.Detector)
.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;,
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    }
.end annotation


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 48
    new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    .line 49
    return-void
.end method

.method private correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;
    .registers 15
    .param p1, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p3, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p4, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "dimension"    # I

    .line 273
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p5

    div-float/2addr v0, v1

    .line 274
    .local v0, "corr":F
    invoke-static {p3, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    .line 275
    .local v1, "norm":I
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 276
    .local v2, "cos":F
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 278
    .local v3, "sin":F
    new-instance v4, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    mul-float v6, v0, v2

    add-float/2addr v5, v6

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    mul-float v7, v0, v3

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 280
    .local v4, "c1":Lcom/google/zxing/ResultPoint;
    invoke-static {p1, p3}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p5

    div-float/2addr v5, v6

    .line 281
    .end local v0    # "corr":F
    .local v5, "corr":F
    invoke-static {p2, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    .line 282
    .end local v1    # "norm":I
    .local v0, "norm":I
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v1, v6

    int-to-float v6, v0

    div-float/2addr v1, v6

    .line 283
    .end local v2    # "cos":F
    .local v1, "cos":F
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float/2addr v2, v6

    int-to-float v6, v0

    div-float/2addr v2, v6

    .line 285
    .end local v3    # "sin":F
    .local v2, "sin":F
    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    mul-float v7, v5, v1

    add-float/2addr v6, v7

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    mul-float v8, v5, v2

    add-float/2addr v7, v8

    invoke-direct {v3, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 287
    .local v3, "c2":Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-nez v6, :cond_77

    .line 288
    invoke-direct {p0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 289
    return-object v3

    .line 291
    :cond_75
    const/4 v6, 0x0

    return-object v6

    .line 293
    :cond_77
    invoke-direct {p0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 294
    return-object v4

    .line 297
    :cond_7e
    invoke-direct {p0, p3, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v6

    .line 298
    invoke-direct {p0, p2, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v7

    sub-int/2addr v6, v7

    .line 297
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 299
    .local v6, "l1":I
    invoke-direct {p0, p3, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v7

    .line 300
    invoke-direct {p0, p2, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v8

    sub-int/2addr v7, v8

    .line 299
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 302
    .local v7, "l2":I
    if-gt v6, v7, :cond_ab

    return-object v4

    :cond_ab
    return-object v3
.end method

.method private correctTopRightRectangular(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/ResultPoint;
    .registers 16
    .param p1, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p3, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p4, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "dimensionTop"    # I
    .param p6, "dimensionRight"    # I

    .line 227
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p5

    div-float/2addr v0, v1

    .line 228
    .local v0, "corr":F
    invoke-static {p3, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    .line 229
    .local v1, "norm":I
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 230
    .local v2, "cos":F
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 232
    .local v3, "sin":F
    new-instance v4, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    mul-float v6, v0, v2

    add-float/2addr v5, v6

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    mul-float v7, v0, v3

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 234
    .local v4, "c1":Lcom/google/zxing/ResultPoint;
    invoke-static {p1, p3}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p6

    div-float/2addr v5, v6

    .line 235
    .end local v0    # "corr":F
    .local v5, "corr":F
    invoke-static {p2, p4}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v0

    .line 236
    .end local v1    # "norm":I
    .local v0, "norm":I
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float/2addr v1, v6

    int-to-float v6, v0

    div-float/2addr v1, v6

    .line 237
    .end local v2    # "cos":F
    .local v1, "cos":F
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float/2addr v2, v6

    int-to-float v6, v0

    div-float/2addr v2, v6

    .line 239
    .end local v3    # "sin":F
    .local v2, "sin":F
    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    mul-float v7, v5, v1

    add-float/2addr v6, v7

    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    mul-float v8, v5, v2

    add-float/2addr v7, v8

    invoke-direct {v3, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 241
    .local v3, "c2":Lcom/google/zxing/ResultPoint;
    invoke-direct {p0, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-nez v6, :cond_77

    .line 242
    invoke-direct {p0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 243
    return-object v3

    .line 245
    :cond_75
    const/4 v6, 0x0

    return-object v6

    .line 247
    :cond_77
    invoke-direct {p0, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 248
    return-object v4

    .line 251
    :cond_7e
    invoke-direct {p0, p3, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v6

    sub-int v6, p5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 252
    invoke-direct {p0, p2, v4}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v7

    sub-int v7, p6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 253
    .local v6, "l1":I
    invoke-direct {p0, p3, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v7

    sub-int v7, p5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 254
    invoke-direct {p0, p2, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v8

    sub-int v8, p6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 256
    .local v7, "l2":I
    if-gt v6, v7, :cond_bb

    .line 257
    return-object v4

    .line 260
    :cond_bb
    return-object v3
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .registers 3
    .param p0, "a"    # Lcom/google/zxing/ResultPoint;
    .param p1, "b"    # Lcom/google/zxing/ResultPoint;

    .line 310
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    return v0
.end method

.method private static increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V
    .registers 5
    .param p1, "key"    # Lcom/google/zxing/ResultPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultPoint;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/zxing/ResultPoint;",
            ")V"
        }
    .end annotation

    .line 317
    .local p0, "table":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 318
    .local v0, "value":Ljava/lang/Integer;
    const/4 v1, 0x1

    if-nez v0, :cond_a

    goto :goto_f

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    :goto_f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .registers 5
    .param p1, "p"    # Lcom/google/zxing/ResultPoint;

    .line 306
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_31

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_31

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_31

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_31

    const/4 v0, 0x1

    return v0

    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .registers 28
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "topLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "bottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "bottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "topRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "dimensionX"    # I
    .param p6, "dimensionY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move/from16 v10, p5

    move/from16 v7, p6

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    .line 329
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    .line 331
    int-to-float v4, v10

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v6, v4, v5

    int-to-float v4, v10

    sub-float v8, v4, v5

    int-to-float v4, v7

    sub-float v9, v4, v5

    int-to-float v4, v7

    sub-float v11, v4, v5

    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    .line 344
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    .line 345
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    .line 346
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    .line 347
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    .line 348
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    .line 349
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    .line 331
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v20, 0x3f000000    # 0.5f

    move/from16 v7, v20

    move/from16 v10, v20

    invoke-virtual/range {v0 .. v19}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method private transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .registers 21
    .param p1, "from"    # Lcom/google/zxing/ResultPoint;
    .param p2, "to"    # Lcom/google/zxing/ResultPoint;

    .line 357
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 358
    .local v1, "fromX":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 359
    .local v2, "fromY":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 360
    .local v3, "toX":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    move v6, v5

    .line 361
    .local v6, "toY":I
    move v6, v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v7, v3, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v4, v7, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    :goto_2a
    move v7, v5

    .line 362
    .local v7, "steep":Z
    move v7, v4

    if-eqz v4, :cond_34

    .line 363
    move v4, v1

    .line 364
    .local v4, "temp":I
    move v1, v2

    .line 365
    move v2, v4

    .line 366
    move v4, v3

    .line 367
    move v3, v6

    .line 368
    move v6, v4

    .line 371
    .end local v4    # "temp":I
    :cond_34
    sub-int v4, v3, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 372
    .local v4, "dx":I
    sub-int v9, v6, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 373
    .local v9, "dy":I
    neg-int v10, v4

    div-int/lit8 v10, v10, 0x2

    .line 374
    .local v10, "error":I
    const/4 v11, -0x1

    if-ge v2, v6, :cond_48

    const/4 v12, 0x1

    goto :goto_49

    :cond_48
    const/4 v12, -0x1

    .line 375
    .local v12, "ystep":I
    :goto_49
    if-ge v1, v3, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v8, -0x1

    .line 376
    .local v8, "xstep":I
    :goto_4d
    const/4 v11, 0x0

    .line 377
    .local v11, "transitions":I
    iget-object v13, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz v7, :cond_54

    move v14, v2

    goto :goto_55

    :cond_54
    move v14, v1

    :goto_55
    if-eqz v7, :cond_59

    move v15, v1

    goto :goto_5a

    :cond_59
    move v15, v2

    :goto_5a
    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    .line 378
    .local v13, "inBlack":Z
    move v14, v1

    move v5, v2

    move v15, v10

    const/4 v10, 0x0

    .end local v10    # "error":I
    .local v5, "y":I
    .local v14, "x":I
    .local v15, "error":I
    :goto_62
    if-eq v14, v3, :cond_93

    .line 379
    move/from16 v16, v1

    .end local v1    # "fromX":I
    .local v16, "fromX":I
    iget-object v1, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz v7, :cond_6c

    move v0, v5

    goto :goto_6d

    :cond_6c
    move v0, v14

    :goto_6d
    if-eqz v7, :cond_73

    move/from16 v17, v2

    move v2, v14

    goto :goto_76

    :cond_73
    move/from16 v17, v2

    move v2, v5

    .end local v2    # "fromY":I
    .local v17, "fromY":I
    :goto_76
    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    move v1, v10

    .line 380
    .local v1, "isBlack":Z
    move v10, v0

    .end local v1    # "isBlack":Z
    .local v10, "isBlack":Z
    if-eq v0, v13, :cond_82

    .line 381
    add-int/lit8 v11, v11, 0x1

    .line 382
    move v0, v10

    .line 384
    move v13, v0

    :cond_82
    add-int v0, v15, v9

    .line 385
    move v15, v0

    if-lez v0, :cond_8b

    .line 386
    if-eq v5, v6, :cond_97

    .line 389
    add-int/2addr v5, v12

    .line 390
    sub-int/2addr v15, v4

    .line 378
    :cond_8b
    add-int/2addr v14, v8

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v0, p0

    goto :goto_62

    .line 393
    .end local v5    # "y":I
    .end local v10    # "isBlack":Z
    .end local v14    # "x":I
    .end local v16    # "fromX":I
    .end local v17    # "fromY":I
    .local v1, "fromX":I
    .restart local v2    # "fromY":I
    :cond_93
    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "fromX":I
    .end local v2    # "fromY":I
    .restart local v16    # "fromX":I
    .restart local v17    # "fromY":I
    :cond_97
    new-instance v0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-direct {v0, v2, v5, v11, v1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;ILcom/google/zxing/datamatrix/detector/Detector$1;)V

    return-object v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 59
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-virtual {v0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    const/4 v8, 0x0

    move-object v1, v8

    .line 60
    .local v1, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    move-object v9, v0

    .end local v1    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .local v9, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v10, 0x0

    aget-object v11, v0, v10

    .line 61
    .local v11, "pointA":Lcom/google/zxing/ResultPoint;
    const/4 v12, 0x1

    aget-object v13, v9, v12

    .line 62
    .local v13, "pointB":Lcom/google/zxing/ResultPoint;
    const/4 v14, 0x2

    aget-object v15, v9, v14

    .line 63
    .local v15, "pointC":Lcom/google/zxing/ResultPoint;
    const/4 v6, 0x3

    aget-object v5, v9, v6

    .line 68
    .local v5, "pointD":Lcom/google/zxing/ResultPoint;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v1, "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    move-object v3, v0

    .end local v1    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .local v3, "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    invoke-direct {v7, v11, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-direct {v7, v11, v15}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-direct {v7, v13, v5}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-direct {v7, v15, v5}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;

    invoke-direct {v0, v8}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 78
    .local v16, "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 82
    .local v17, "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v8

    .line 83
    .local v1, "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    move-object v2, v0

    .end local v1    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .local v2, "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 84
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 85
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 86
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "maybeTopLeft":Lcom/google/zxing/ResultPoint;
    const/4 v1, 0x0

    .line 90
    .local v1, "bottomLeft":Lcom/google/zxing/ResultPoint;
    const/16 v18, 0x0

    .line 91
    .local v18, "maybeBottomRight":Lcom/google/zxing/ResultPoint;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v20, v1

    move-object v1, v8

    move-object/from16 v21, v18

    move-object/from16 v18, v0

    move-object v0, v1

    .end local v0    # "maybeTopLeft":Lcom/google/zxing/ResultPoint;
    .end local v1    # "bottomLeft":Lcom/google/zxing/ResultPoint;
    .local v18, "maybeTopLeft":Lcom/google/zxing/ResultPoint;
    .local v20, "bottomLeft":Lcom/google/zxing/ResultPoint;
    .local v21, "maybeBottomRight":Lcom/google/zxing/ResultPoint;
    :goto_89
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 92
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    move-object/from16 v0, v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/zxing/ResultPoint;

    .line 93
    .local v22, "point":Lcom/google/zxing/ResultPoint;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 94
    .local v1, "value":Ljava/lang/Integer;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v14, :cond_ad

    .line 95
    move-object/from16 v20, v22

    .line 91
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v1    # "value":Ljava/lang/Integer;
    .end local v22    # "point":Lcom/google/zxing/ResultPoint;
    :goto_ab
    const/4 v4, 0x4

    goto :goto_89

    .line 98
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .restart local v1    # "value":Ljava/lang/Integer;
    .restart local v22    # "point":Lcom/google/zxing/ResultPoint;
    :cond_ad
    if-nez v18, :cond_b2

    .line 99
    move-object/from16 v18, v22

    goto :goto_ab

    .line 101
    :cond_b2
    move-object/from16 v21, v22

    .line 104
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v1    # "value":Ljava/lang/Integer;
    .end local v22    # "point":Lcom/google/zxing/ResultPoint;
    goto :goto_ab

    .line 106
    :cond_b5
    if-eqz v18, :cond_1ea

    if-eqz v20, :cond_1ea

    if-eqz v21, :cond_1ea

    .line 111
    new-array v0, v6, [Lcom/google/zxing/ResultPoint;

    aput-object v18, v0, v10

    aput-object v20, v0, v12

    aput-object v21, v0, v14

    move-object/from16 v1, v19

    .line 113
    .local v1, "corners":[Lcom/google/zxing/ResultPoint;
    move-object/from16 v19, v0

    .end local v1    # "corners":[Lcom/google/zxing/ResultPoint;
    .local v19, "corners":[Lcom/google/zxing/ResultPoint;
    invoke-static {v0}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 116
    aget-object v4, v19, v10

    .line 117
    .local v4, "bottomRight":Lcom/google/zxing/ResultPoint;
    aget-object v20, v19, v12

    .line 118
    aget-object v1, v19, v14

    .line 122
    .local v1, "topLeft":Lcom/google/zxing/ResultPoint;
    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d8

    .line 123
    move-object v0, v11

    goto :goto_e9

    .line 124
    :cond_d8
    invoke-interface {v2, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 125
    move-object v0, v13

    goto :goto_e9

    .line 126
    :cond_e0
    invoke-interface {v2, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 127
    move-object v0, v15

    goto :goto_e9

    .line 129
    :cond_e8
    move-object v0, v5

    .line 141
    .local v0, "topRight":Lcom/google/zxing/ResultPoint;
    :goto_e9
    invoke-direct {v7, v1, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v22

    .line 142
    .local v22, "dimensionTop":I
    invoke-direct {v7, v4, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v23

    .line 144
    .local v23, "dimensionRight":I
    and-int/lit8 v6, v22, 0x1

    if-ne v6, v12, :cond_ff

    .line 146
    add-int/lit8 v22, v22, 0x1

    .line 148
    :cond_ff
    add-int/lit8 v6, v22, 0x2

    .line 150
    .end local v22    # "dimensionTop":I
    .local v6, "dimensionTop":I
    and-int/lit8 v10, v23, 0x1

    if-ne v10, v12, :cond_107

    .line 152
    add-int/lit8 v23, v23, 0x1

    .line 154
    :cond_107
    add-int/lit8 v10, v23, 0x2

    .line 162
    .end local v23    # "dimensionRight":I
    .local v10, "dimensionRight":I
    mul-int/lit8 v14, v6, 0x4

    mul-int/lit8 v12, v10, 0x7

    if-ge v14, v12, :cond_17f

    mul-int/lit8 v12, v10, 0x4

    mul-int/lit8 v14, v6, 0x7

    if-lt v12, v14, :cond_11f

    .line 165
    move-object v14, v0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    move-object v5, v1

    goto/16 :goto_187

    .line 189
    :cond_11f
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 191
    .local v12, "dimension":I
    move-object v14, v0

    .end local v0    # "topRight":Lcom/google/zxing/ResultPoint;
    .local v14, "topRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, p0

    move-object/from16 v33, v1

    .end local v1    # "topLeft":Lcom/google/zxing/ResultPoint;
    .local v33, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v1, v20

    move-object/from16 v22, v2

    .end local v2    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .local v22, "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    move-object v2, v4

    move-object/from16 v23, v3

    .end local v3    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .local v23, "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    move-object/from16 v3, v33

    move-object/from16 v34, v4

    .end local v4    # "bottomRight":Lcom/google/zxing/ResultPoint;
    .local v34, "bottomRight":Lcom/google/zxing/ResultPoint;
    move-object v4, v14

    move-object/from16 v24, v5

    .end local v5    # "pointD":Lcom/google/zxing/ResultPoint;
    .local v24, "pointD":Lcom/google/zxing/ResultPoint;
    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object v1, v8

    .line 192
    .local v1, "correctedTopRight":Lcom/google/zxing/ResultPoint;
    move-object v1, v0

    if-nez v0, :cond_141

    .line 193
    move-object v0, v14

    goto :goto_142

    .line 197
    :cond_141
    move-object v0, v1

    .end local v1    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .local v0, "correctedTopRight":Lcom/google/zxing/ResultPoint;
    :goto_142
    move-object/from16 v5, v33

    .end local v33    # "topLeft":Lcom/google/zxing/ResultPoint;
    .local v5, "topLeft":Lcom/google/zxing/ResultPoint;
    invoke-direct {v7, v5, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    .line 198
    move-object/from16 v4, v34

    .end local v34    # "bottomRight":Lcom/google/zxing/ResultPoint;
    .restart local v4    # "bottomRight":Lcom/google/zxing/ResultPoint;
    invoke-direct {v7, v4, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v2

    .line 197
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 199
    .local v1, "dimensionCorrected":I
    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 200
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v2, :cond_162

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 204
    :cond_162
    iget-object v2, v7, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v25, v2

    move-object/from16 v26, v5

    move-object/from16 v27, v20

    move-object/from16 v28, v4

    move-object/from16 v29, v0

    move/from16 v30, v1

    move/from16 v31, v1

    invoke-static/range {v25 .. v31}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    move-object v12, v4

    move v2, v6

    move v3, v10

    const/16 v32, 0x3

    move-object v4, v1

    move-object v1, v5

    goto/16 :goto_1d5

    .line 165
    .end local v12    # "dimension":I
    .end local v14    # "topRight":Lcom/google/zxing/ResultPoint;
    .end local v22    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v23    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .end local v24    # "pointD":Lcom/google/zxing/ResultPoint;
    .local v0, "topRight":Lcom/google/zxing/ResultPoint;
    .local v1, "topLeft":Lcom/google/zxing/ResultPoint;
    .restart local v2    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .restart local v3    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .local v5, "pointD":Lcom/google/zxing/ResultPoint;
    :cond_17f
    move-object v14, v0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    move-object v5, v1

    .line 166
    .end local v0    # "topRight":Lcom/google/zxing/ResultPoint;
    .end local v1    # "topLeft":Lcom/google/zxing/ResultPoint;
    .end local v2    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v3    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .local v5, "topLeft":Lcom/google/zxing/ResultPoint;
    .restart local v14    # "topRight":Lcom/google/zxing/ResultPoint;
    .restart local v22    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .restart local v23    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .restart local v24    # "pointD":Lcom/google/zxing/ResultPoint;
    :goto_187
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v4

    move-object v3, v5

    move-object v12, v4

    .end local v4    # "bottomRight":Lcom/google/zxing/ResultPoint;
    .local v12, "bottomRight":Lcom/google/zxing/ResultPoint;
    move-object v4, v14

    move-object/from16 v35, v5

    .end local v5    # "topLeft":Lcom/google/zxing/ResultPoint;
    .local v35, "topLeft":Lcom/google/zxing/ResultPoint;
    move v5, v6

    move/from16 v25, v6

    const/16 v32, 0x3

    .end local v6    # "dimensionTop":I
    .local v25, "dimensionTop":I
    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRightRectangular(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object v1, v8

    .line 167
    .local v1, "correctedTopRight":Lcom/google/zxing/ResultPoint;
    move-object v1, v0

    if-nez v0, :cond_1a1

    .line 168
    move-object v0, v14

    goto :goto_1a2

    .line 171
    :cond_1a1
    move-object v0, v1

    .end local v1    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .local v0, "correctedTopRight":Lcom/google/zxing/ResultPoint;
    :goto_1a2
    move-object/from16 v1, v35

    .end local v35    # "topLeft":Lcom/google/zxing/ResultPoint;
    .local v1, "topLeft":Lcom/google/zxing/ResultPoint;
    invoke-direct {v7, v1, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v2

    .line 172
    .end local v25    # "dimensionTop":I
    .local v2, "dimensionTop":I
    invoke-direct {v7, v12, v0}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v3

    .line 174
    .end local v10    # "dimensionRight":I
    .local v3, "dimensionRight":I
    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1bb

    .line 176
    add-int/lit8 v2, v2, 0x1

    .line 179
    :cond_1bb
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v5, :cond_1c1

    .line 181
    add-int/lit8 v3, v3, 0x1

    .line 184
    :cond_1c1
    iget-object v4, v7, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v25, v4

    move-object/from16 v26, v1

    move-object/from16 v27, v20

    move-object/from16 v28, v12

    move-object/from16 v29, v0

    move/from16 v30, v2

    move/from16 v31, v3

    invoke-static/range {v25 .. v31}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    .line 204
    .local v4, "bits":Lcom/google/zxing/common/BitMatrix;
    :goto_1d5
    nop

    .line 213
    new-instance v5, Lcom/google/zxing/common/DetectorResult;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    const/4 v8, 0x1

    aput-object v20, v6, v8

    const/4 v8, 0x2

    aput-object v12, v6, v8

    aput-object v0, v6, v32

    invoke-direct {v5, v4, v6}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v5

    .line 107
    .end local v0    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .end local v1    # "topLeft":Lcom/google/zxing/ResultPoint;
    .end local v4    # "bits":Lcom/google/zxing/common/BitMatrix;
    .end local v12    # "bottomRight":Lcom/google/zxing/ResultPoint;
    .end local v14    # "topRight":Lcom/google/zxing/ResultPoint;
    .end local v19    # "corners":[Lcom/google/zxing/ResultPoint;
    .end local v22    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v23    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .end local v24    # "pointD":Lcom/google/zxing/ResultPoint;
    .local v2, "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .local v3, "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .local v5, "pointD":Lcom/google/zxing/ResultPoint;
    :cond_1ea
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    .end local v2    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v3    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .end local v5    # "pointD":Lcom/google/zxing/ResultPoint;
    .restart local v22    # "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .restart local v23    # "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    .restart local v24    # "pointD":Lcom/google/zxing/ResultPoint;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

###### Class com.google.zxing.datamatrix.detector.Detector.AnonymousClass1 (com.google.zxing.datamatrix.detector.Detector$1)
.class synthetic Lcom/google/zxing/datamatrix/detector/Detector$1;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.zxing.datamatrix.detector.Detector.ResultPointsAndTransitions (com.google.zxing.datamatrix.detector.Detector$ResultPointsAndTransitions)
.class final Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultPointsAndTransitions"
.end annotation


# instance fields
.field private final from:Lcom/google/zxing/ResultPoint;

.field private final to:Lcom/google/zxing/ResultPoint;

.field private final transitions:I


# direct methods
.method private constructor <init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V
    .registers 4
    .param p1, "from"    # Lcom/google/zxing/ResultPoint;
    .param p2, "to"    # Lcom/google/zxing/ResultPoint;
    .param p3, "transitions"    # I

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->from:Lcom/google/zxing/ResultPoint;

    .line 407
    iput-object p2, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->to:Lcom/google/zxing/ResultPoint;

    .line 408
    iput p3, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->transitions:I

    .line 409
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;ILcom/google/zxing/datamatrix/detector/Detector$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/google/zxing/ResultPoint;
    .param p2, "x1"    # Lcom/google/zxing/ResultPoint;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/zxing/datamatrix/detector/Detector$1;

    .line 399
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V

    return-void
.end method


# virtual methods
.method getFrom()Lcom/google/zxing/ResultPoint;
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->from:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method getTo()Lcom/google/zxing/ResultPoint;
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->to:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method getTransitions()I
    .registers 2

    .line 420
    iget v0, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->transitions:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->from:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->to:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->transitions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.zxing.datamatrix.detector.Detector.ResultPointsAndTransitionsComparator (com.google.zxing.datamatrix.detector.Detector$ResultPointsAndTransitionsComparator)
.class final Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
.super Ljava/lang/Object;
.source "Detector.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultPointsAndTransitionsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/zxing/datamatrix/detector/Detector$1;

    .line 432
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I
    .registers 5
    .param p1, "o1"    # Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .param p2, "o2"    # Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 436
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 432
    check-cast p1, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    check-cast p2, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;->compare(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I

    move-result p1

    return p1
.end method
