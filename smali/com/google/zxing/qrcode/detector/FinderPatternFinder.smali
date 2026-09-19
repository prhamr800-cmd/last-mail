###### Class com.google.zxing.qrcode.detector.FinderPatternFinder (com.google.zxing.qrcode.detector.FinderPatternFinder)
.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field protected static final MAX_MODULES:I = 0x39

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .registers 4
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 65
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 66
    return-void
.end method

.method private static centerFromEnd([II)F
    .registers 5
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .line 191
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckDiagonal(IIII)Z
    .registers 20
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .line 244
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v4

    .line 247
    .local v4, "stateCount":[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 248
    .local v6, "i":I
    :goto_d
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lt v1, v6, :cond_27

    if-lt v2, v6, :cond_27

    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v10, v2, v6

    sub-int v11, v1, v6

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 249
    aget v9, v4, v7

    add-int/2addr v9, v8

    aput v9, v4, v7

    .line 250
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 253
    :cond_27
    if-lt v1, v6, :cond_120

    if-ge v2, v6, :cond_2d

    goto/16 :goto_120

    .line 258
    :cond_2d
    :goto_2d
    if-lt v1, v6, :cond_49

    if-lt v2, v6, :cond_49

    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v10, v2, v6

    sub-int v11, v1, v6

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_49

    aget v9, v4, v8

    if-gt v9, v3, :cond_49

    .line 260
    aget v9, v4, v8

    add-int/2addr v9, v8

    aput v9, v4, v8

    .line 261
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 265
    :cond_49
    if-lt v1, v6, :cond_11f

    if-lt v2, v6, :cond_11f

    aget v9, v4, v8

    if-le v9, v3, :cond_53

    goto/16 :goto_11f

    .line 270
    :cond_53
    :goto_53
    if-lt v1, v6, :cond_6f

    if-lt v2, v6, :cond_6f

    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v10, v2, v6

    sub-int v11, v1, v6

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_6f

    aget v9, v4, v5

    if-gt v9, v3, :cond_6f

    .line 272
    aget v9, v4, v5

    add-int/2addr v9, v8

    aput v9, v4, v5

    .line 273
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 275
    :cond_6f
    aget v9, v4, v5

    if-le v9, v3, :cond_74

    .line 276
    return v5

    .line 279
    :cond_74
    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    .line 280
    .local v9, "maxI":I
    iget-object v10, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 283
    .local v10, "maxJ":I
    const/4 v6, 0x1

    .line 284
    :goto_81
    add-int v11, v1, v6

    if-ge v11, v9, :cond_9d

    add-int v11, v2, v6

    if-ge v11, v10, :cond_9d

    iget-object v11, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v12, v2, v6

    add-int v13, v1, v6

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 285
    aget v11, v4, v7

    add-int/2addr v11, v8

    aput v11, v4, v7

    .line 286
    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    .line 290
    :cond_9d
    add-int v11, v1, v6

    if-ge v11, v9, :cond_11e

    add-int v11, v2, v6

    if-lt v11, v10, :cond_a7

    goto/16 :goto_11e

    .line 294
    :cond_a7
    :goto_a7
    add-int v11, v1, v6

    const/4 v12, 0x3

    if-ge v11, v9, :cond_c8

    add-int v11, v2, v6

    if-ge v11, v10, :cond_c8

    iget-object v11, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v13, v2, v6

    add-int v14, v1, v6

    invoke-virtual {v11, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_c8

    aget v11, v4, v12

    if-ge v11, v3, :cond_c8

    .line 296
    aget v11, v4, v12

    add-int/2addr v11, v8

    aput v11, v4, v12

    .line 297
    add-int/lit8 v6, v6, 0x1

    goto :goto_a7

    .line 300
    :cond_c8
    add-int v11, v1, v6

    if-ge v11, v9, :cond_11d

    add-int v11, v2, v6

    if-ge v11, v10, :cond_11d

    aget v11, v4, v12

    if-lt v11, v3, :cond_d5

    goto :goto_11d

    .line 304
    :cond_d5
    :goto_d5
    add-int v11, v1, v6

    const/4 v13, 0x4

    if-ge v11, v9, :cond_f7

    add-int v11, v2, v6

    if-ge v11, v10, :cond_f7

    iget-object v11, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v14, v2, v6

    add-int v12, v1, v6

    invoke-virtual {v11, v14, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_f7

    aget v11, v4, v13

    if-ge v11, v3, :cond_f7

    .line 306
    aget v11, v4, v13

    add-int/2addr v11, v8

    aput v11, v4, v13

    .line 307
    add-int/lit8 v6, v6, 0x1

    .line 304
    const/4 v12, 0x3

    goto :goto_d5

    .line 310
    :cond_f7
    aget v11, v4, v13

    if-lt v11, v3, :cond_fc

    .line 311
    return v5

    .line 316
    :cond_fc
    aget v11, v4, v5

    aget v12, v4, v8

    add-int/2addr v11, v12

    aget v7, v4, v7

    add-int/2addr v11, v7

    const/4 v7, 0x3

    aget v7, v4, v7

    add-int/2addr v11, v7

    aget v7, v4, v13

    add-int/2addr v11, v7

    .line 317
    sub-int v11, v11, p4

    .line 318
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v11, p4, 0x2

    if-ge v7, v11, :cond_11c

    .line 319
    invoke-static {v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v7

    if-eqz v7, :cond_11c

    return v8

    .line 317
    :cond_11c
    return v5

    .line 301
    :cond_11d
    :goto_11d
    return v5

    .line 291
    :cond_11e
    :goto_11e
    return v5

    .line 266
    .end local v9    # "maxI":I
    .end local v10    # "maxJ":I
    :cond_11f
    :goto_11f
    return v5

    .line 254
    :cond_120
    :goto_120
    return v5
.end method

.method private crossCheckHorizontal(IIII)F
    .registers 16
    .param p1, "startJ"    # I
    .param p2, "centerI"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .line 407
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    .line 409
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 410
    .local v0, "maxJ":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v2

    .line 412
    .local v2, "stateCount":[I
    move v3, p1

    .line 413
    .local v3, "j":I
    :goto_d
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_1f

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 414
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    .line 415
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .line 417
    :cond_1f
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_24

    .line 418
    return v6

    .line 420
    :cond_24
    :goto_24
    if-ltz v3, :cond_38

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_38

    aget v7, v2, v5

    if-gt v7, p3, :cond_38

    .line 421
    aget v7, v2, v5

    add-int/2addr v7, v5

    aput v7, v2, v5

    .line 422
    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    .line 424
    :cond_38
    if-ltz v3, :cond_cb

    aget v7, v2, v5

    if-le v7, p3, :cond_40

    goto/16 :goto_cb

    .line 427
    :cond_40
    :goto_40
    const/4 v7, 0x0

    if-ltz v3, :cond_55

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_55

    aget v8, v2, v7

    if-gt v8, p3, :cond_55

    .line 428
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    .line 429
    add-int/lit8 v3, v3, -0x1

    goto :goto_40

    .line 431
    :cond_55
    aget v8, v2, v7

    if-le v8, p3, :cond_5a

    .line 432
    return v6

    .line 435
    :cond_5a
    add-int/lit8 v3, p1, 0x1

    .line 436
    :goto_5c
    if-ge v3, v0, :cond_6c

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 437
    aget v8, v2, v4

    add-int/2addr v8, v5

    aput v8, v2, v4

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 440
    :cond_6c
    if-ne v3, v0, :cond_6f

    .line 441
    return v6

    .line 443
    :cond_6f
    :goto_6f
    const/4 v8, 0x3

    if-ge v3, v0, :cond_84

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_84

    aget v9, v2, v8

    if-ge v9, p3, :cond_84

    .line 444
    aget v9, v2, v8

    add-int/2addr v9, v5

    aput v9, v2, v8

    .line 445
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 447
    :cond_84
    if-eq v3, v0, :cond_ca

    aget v9, v2, v8

    if-lt v9, p3, :cond_8b

    goto :goto_ca

    .line 450
    :cond_8b
    :goto_8b
    const/4 v9, 0x4

    if-ge v3, v0, :cond_a0

    invoke-virtual {v1, v3, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_a0

    aget v10, v2, v9

    if-ge v10, p3, :cond_a0

    .line 451
    aget v10, v2, v9

    add-int/2addr v10, v5

    aput v10, v2, v9

    .line 452
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 454
    :cond_a0
    aget v10, v2, v9

    if-lt v10, p3, :cond_a5

    .line 455
    return v6

    .line 460
    :cond_a5
    aget v7, v2, v7

    aget v5, v2, v5

    add-int/2addr v7, v5

    aget v4, v2, v4

    add-int/2addr v7, v4

    aget v4, v2, v8

    add-int/2addr v7, v4

    aget v4, v2, v9

    add-int/2addr v7, v4

    .line 462
    .local v7, "stateCountTotal":I
    sub-int v4, v7, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    if-lt v4, p4, :cond_be

    .line 463
    return v6

    .line 466
    :cond_be
    invoke-static {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v4

    return v4

    :cond_c9
    return v6

    .line 448
    .end local v7    # "stateCountTotal":I
    :cond_ca
    :goto_ca
    return v6

    .line 425
    :cond_cb
    :goto_cb
    return v6
.end method

.method private crossCheckVertical(IIII)F
    .registers 16
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .line 335
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    .line 337
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 338
    .local v0, "maxI":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v2

    .line 341
    .local v2, "stateCount":[I
    move v3, p1

    .line 342
    .local v3, "i":I
    :goto_d
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ltz v3, :cond_1f

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 343
    aget v6, v2, v4

    add-int/2addr v6, v5

    aput v6, v2, v4

    .line 344
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .line 346
    :cond_1f
    const/high16 v6, 0x7fc00000    # Float.NaN

    if-gez v3, :cond_24

    .line 347
    return v6

    .line 349
    :cond_24
    :goto_24
    if-ltz v3, :cond_38

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_38

    aget v7, v2, v5

    if-gt v7, p3, :cond_38

    .line 350
    aget v7, v2, v5

    add-int/2addr v7, v5

    aput v7, v2, v5

    .line 351
    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    .line 354
    :cond_38
    if-ltz v3, :cond_cd

    aget v7, v2, v5

    if-le v7, p3, :cond_40

    goto/16 :goto_cd

    .line 357
    :cond_40
    :goto_40
    const/4 v7, 0x0

    if-ltz v3, :cond_55

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_55

    aget v8, v2, v7

    if-gt v8, p3, :cond_55

    .line 358
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    .line 359
    add-int/lit8 v3, v3, -0x1

    goto :goto_40

    .line 361
    :cond_55
    aget v8, v2, v7

    if-le v8, p3, :cond_5a

    .line 362
    return v6

    .line 366
    :cond_5a
    add-int/lit8 v3, p1, 0x1

    .line 367
    :goto_5c
    if-ge v3, v0, :cond_6c

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 368
    aget v8, v2, v4

    add-int/2addr v8, v5

    aput v8, v2, v4

    .line 369
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 371
    :cond_6c
    if-ne v3, v0, :cond_6f

    .line 372
    return v6

    .line 374
    :cond_6f
    :goto_6f
    const/4 v8, 0x3

    if-ge v3, v0, :cond_84

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_84

    aget v9, v2, v8

    if-ge v9, p3, :cond_84

    .line 375
    aget v9, v2, v8

    add-int/2addr v9, v5

    aput v9, v2, v8

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 378
    :cond_84
    if-eq v3, v0, :cond_cc

    aget v9, v2, v8

    if-lt v9, p3, :cond_8b

    goto :goto_cc

    .line 381
    :cond_8b
    :goto_8b
    const/4 v9, 0x4

    if-ge v3, v0, :cond_a0

    invoke-virtual {v1, p2, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_a0

    aget v10, v2, v9

    if-ge v10, p3, :cond_a0

    .line 382
    aget v10, v2, v9

    add-int/2addr v10, v5

    aput v10, v2, v9

    .line 383
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 385
    :cond_a0
    aget v10, v2, v9

    if-lt v10, p3, :cond_a5

    .line 386
    return v6

    .line 391
    :cond_a5
    aget v7, v2, v7

    aget v5, v2, v5

    add-int/2addr v7, v5

    aget v4, v2, v4

    add-int/2addr v7, v4

    aget v4, v2, v8

    add-int/2addr v7, v4

    aget v4, v2, v9

    add-int/2addr v7, v4

    .line 393
    .local v7, "stateCountTotal":I
    sub-int v4, v7, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, p4, 0x2

    if-lt v4, v5, :cond_c0

    .line 394
    return v6

    .line 397
    :cond_c0
    invoke-static {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v4

    if-eqz v4, :cond_cb

    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v4

    return v4

    :cond_cb
    return v6

    .line 379
    .end local v7    # "stateCountTotal":I
    :cond_cc
    :goto_cc
    return v6

    .line 355
    :cond_cd
    :goto_cd
    return v6
.end method

.method private findRowSkip()I
    .registers 8

    .line 528
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 529
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_b

    .line 530
    return v1

    .line 532
    :cond_b
    const/4 v0, 0x0

    .line 533
    .local v0, "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 534
    .local v4, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v4, v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_4b

    .line 535
    if-nez v0, :cond_2b

    .line 536
    move-object v0, v4

    goto :goto_13

    .line 543
    :cond_2b
    iput-boolean v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 544
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 545
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/2addr v1, v6

    .line 544
    return v1

    .line 548
    :cond_4b
    goto :goto_13

    .line 549
    .end local v4    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_4c
    return v1
.end method

.method protected static foundPatternCross([I)Z
    .registers 8

    .line 200
    nop

    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x5

    if-ge v1, v3, :cond_10

    .line 202
    aget v3, p0, v1

    .line 203
    if-nez v3, :cond_c

    .line 204
    return v0

    .line 206
    :cond_c
    add-int/2addr v2, v3

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 208
    :cond_10
    const/4 v1, 0x7

    if-ge v2, v1, :cond_14

    .line 209
    return v0

    .line 211
    :cond_14
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    .line 212
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    .line 214
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 215
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_66

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 216
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_66

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v5, v1, v4

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 217
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v4, v4, v2

    cmpg-float v4, v5, v4

    if-gez v4, :cond_66

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 218
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_66

    const/4 v4, 0x4

    aget p0, p0, v4

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 219
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_66

    return v3

    .line 214
    :cond_66
    return v0
.end method

.method private getCrossCheckStateCount()[I
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 224
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 225
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 226
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 227
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 228
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .registers 10

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "confirmedCount":I
    const/4 v1, 0x0

    .line 560
    .local v1, "totalModuleSize":F
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 561
    .local v2, "max":I
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 562
    .local v4, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v4, v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2a

    .line 563
    add-int/lit8 v0, v0, 0x1

    .line 564
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    add-float/2addr v1, v5

    .line 566
    .end local v4    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_2a
    goto :goto_f

    .line 567
    :cond_2b
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ge v0, v3, :cond_30

    .line 568
    return v4

    .line 574
    :cond_30
    int-to-float v3, v2

    div-float v3, v1, v3

    .line 575
    .local v3, "average":F
    const/4 v5, 0x0

    .line 576
    .local v5, "totalDeviation":F
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 577
    .local v7, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v5, v8

    .line 578
    .end local v7    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    goto :goto_3a

    .line 579
    :cond_51
    const v6, 0x3d4ccccd    # 0.05f

    mul-float v6, v6, v1

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_5b

    const/4 v4, 0x1

    :cond_5b
    return v4
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 591
    .local v2, "startSize":I
    move v2, v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_e6

    .line 597
    const/4 v0, 0x1

    const/4 v4, 0x0

    if-le v2, v3, :cond_81

    .line 599
    const/4 v5, 0x0

    .line 600
    .local v5, "totalModuleSize":F
    const/4 v6, 0x0

    .line 601
    .local v6, "square":F
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v6

    move v6, v5

    move-object v5, v4

    .end local v5    # "totalModuleSize":F
    .local v6, "totalModuleSize":F
    .local v8, "square":F
    :goto_1b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 602
    .local v5, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    .line 603
    .local v9, "size":F
    add-float/2addr v6, v9

    .line 604
    mul-float v10, v9, v9

    add-float/2addr v8, v10

    .line 605
    .end local v5    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v9    # "size":F
    goto :goto_1b

    .line 606
    :cond_30
    int-to-float v5, v2

    div-float v5, v6, v5

    .line 607
    .local v5, "average":F
    int-to-float v7, v2

    div-float v7, v8, v7

    mul-float v9, v5, v5

    sub-float/2addr v7, v9

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v7, v9

    .line 609
    .local v7, "stdDev":F
    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    invoke-direct {v10, v5, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 611
    const v9, 0x3e4ccccd    # 0.2f

    mul-float v9, v9, v5

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 613
    .local v9, "limit":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_53
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_81

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v3, :cond_81

    .line 614
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 615
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    sub-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v11, v11, v9

    if-lez v11, :cond_7f

    .line 616
    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 617
    add-int/lit8 v10, v10, -0x1

    .line 613
    :cond_7f
    add-int/2addr v10, v0

    goto :goto_53

    .line 622
    .end local v5    # "average":F
    .end local v6    # "totalModuleSize":F
    .end local v7    # "stdDev":F
    .end local v8    # "square":F
    .end local v9    # "limit":F
    .end local v10    # "i":I
    :cond_81
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_c4

    .line 625
    const/4 v5, 0x0

    .line 626
    .local v5, "totalModuleSize":F
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_90
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 627
    .local v7, "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    add-float/2addr v5, v8

    .line 628
    .end local v7    # "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    goto :goto_90

    .line 630
    :cond_a2
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v5, v6

    .line 632
    .local v6, "average":F
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    invoke-direct {v8, v6, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 634
    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v4, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 637
    .end local v5    # "totalModuleSize":F
    .end local v6    # "average":F
    :cond_c4
    new-array v3, v3, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    iget-object v4, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 638
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 639
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 640
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v3, v1

    .line 637
    return-object v3

    .line 593
    :cond_e6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 77
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    sget-object v4, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    .line 78
    .local v4, "tryHarder":Z
    :goto_13
    if-eqz v1, :cond_1f

    sget-object v5, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x1

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    .line 79
    .local v5, "pureBarcode":Z
    :goto_20
    iget-object v6, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 80
    .local v6, "maxI":I
    iget-object v7, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 88
    .local v7, "maxJ":I
    mul-int/lit8 v8, v6, 0x3

    div-int/lit16 v8, v8, 0xe4

    move v9, v3

    .line 89
    .local v9, "iSkip":I
    move v9, v8

    const/4 v10, 0x3

    if-lt v8, v10, :cond_37

    if-eqz v4, :cond_38

    .line 90
    :cond_37
    const/4 v9, 0x3

    .line 93
    :cond_38
    const/4 v8, 0x0

    .line 94
    .local v8, "done":Z
    const/4 v11, 0x5

    new-array v11, v11, [I

    .line 95
    .local v11, "stateCount":[I
    add-int/lit8 v12, v9, -0x1

    const/4 v13, 0x0

    .local v12, "i":I
    :goto_3f
    if-ge v12, v6, :cond_119

    if-nez v8, :cond_119

    .line 97
    aput v3, v11, v3

    .line 98
    aput v3, v11, v2

    .line 99
    const/4 v14, 0x2

    aput v3, v11, v14

    .line 100
    aput v3, v11, v10

    .line 101
    const/4 v15, 0x4

    aput v3, v11, v15

    .line 102
    const/16 v16, 0x0

    .line 103
    .local v16, "currentState":I
    move/from16 v17, v13

    move v13, v9

    move/from16 v9, v16

    move/from16 v16, v8

    const/4 v8, 0x0

    .local v8, "j":I
    .local v9, "currentState":I
    .local v13, "iSkip":I
    .local v16, "done":Z
    :goto_59
    if-ge v8, v7, :cond_f5

    .line 104
    iget-object v10, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10, v8, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 106
    and-int/lit8 v10, v9, 0x1

    if-ne v10, v2, :cond_69

    .line 107
    add-int/lit8 v9, v9, 0x1

    .line 109
    :cond_69
    aget v10, v11, v9

    add-int/2addr v10, v2

    aput v10, v11, v9

    .line 103
    const/4 v10, 0x4

    const/4 v15, 0x3

    goto/16 :goto_f0

    .line 111
    :cond_72
    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_e8

    .line 112
    if-ne v9, v15, :cond_dd

    .line 113
    invoke-static {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v10

    if-eqz v10, :cond_c9

    .line 114
    invoke-virtual {v0, v11, v12, v8, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v10

    .line 115
    if-eqz v10, :cond_b2

    .line 118
    const/4 v10, 0x2

    .line 119
    .end local v13    # "iSkip":I
    .local v10, "iSkip":I
    iget-boolean v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v13, :cond_8e

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v16

    goto :goto_a1

    .line 122
    :cond_8e
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v13

    .line 123
    .local v17, "rowSkip":I
    move/from16 v17, v13

    aget v15, v11, v14

    if-le v13, v15, :cond_a0

    .line 132
    aget v13, v11, v14

    sub-int v13, v17, v13

    sub-int/2addr v13, v14

    add-int/2addr v12, v13

    .line 133
    add-int/lit8 v8, v7, -0x1

    .line 135
    .end local v17    # "rowSkip":I
    :cond_a0
    nop

    .line 146
    :goto_a1
    const/4 v9, 0x0

    .line 147
    aput v3, v11, v3

    .line 148
    aput v3, v11, v2

    .line 149
    aput v3, v11, v14

    .line 150
    const/4 v15, 0x3

    aput v3, v11, v15

    .line 151
    const/16 v18, 0x4

    aput v3, v11, v18

    .line 152
    nop

    .line 103
    move v13, v10

    goto :goto_c7

    .line 137
    .end local v10    # "iSkip":I
    .restart local v13    # "iSkip":I
    :cond_b2
    const/4 v15, 0x3

    const/16 v18, 0x4

    aget v10, v11, v14

    aput v10, v11, v3

    .line 138
    aget v10, v11, v15

    aput v10, v11, v2

    .line 139
    aget v10, v11, v18

    aput v10, v11, v14

    .line 140
    aput v2, v11, v15

    .line 141
    aput v3, v11, v18

    .line 142
    const/4 v9, 0x3

    .line 143
    nop

    .line 103
    :goto_c7
    const/4 v10, 0x4

    goto :goto_f0

    .line 153
    :cond_c9
    const/4 v15, 0x3

    aget v10, v11, v14

    aput v10, v11, v3

    .line 154
    aget v10, v11, v15

    aput v10, v11, v2

    .line 155
    const/4 v10, 0x4

    aget v18, v11, v10

    aput v18, v11, v14

    .line 156
    aput v2, v11, v15

    .line 157
    aput v3, v11, v10

    .line 158
    const/4 v9, 0x3

    goto :goto_f0

    .line 161
    :cond_dd
    const/4 v10, 0x4

    const/4 v15, 0x3

    add-int/lit8 v9, v9, 0x1

    aget v18, v11, v9

    add-int/lit8 v18, v18, 0x1

    aput v18, v11, v9

    goto :goto_f0

    .line 164
    :cond_e8
    const/4 v10, 0x4

    const/4 v15, 0x3

    aget v18, v11, v9

    add-int/lit8 v18, v18, 0x1

    aput v18, v11, v9

    .line 103
    :goto_f0
    add-int/2addr v8, v2

    const/4 v10, 0x3

    const/4 v15, 0x4

    goto/16 :goto_59

    .line 168
    :cond_f5
    const/4 v15, 0x3

    invoke-static {v11}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v10

    if-eqz v10, :cond_110

    .line 169
    invoke-virtual {v0, v11, v12, v7, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v10

    .line 170
    .local v8, "confirmed":Z
    if-eqz v10, :cond_110

    .line 171
    aget v10, v11, v3

    .line 172
    .end local v13    # "iSkip":I
    .restart local v10    # "iSkip":I
    iget-boolean v13, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v13, :cond_10e

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v8

    .line 95
    move v9, v10

    goto :goto_113

    .end local v8    # "confirmed":Z
    .end local v9    # "currentState":I
    :cond_10e
    move v9, v10

    goto :goto_111

    .end local v10    # "iSkip":I
    .restart local v13    # "iSkip":I
    :cond_110
    move v9, v13

    .end local v13    # "iSkip":I
    .end local v16    # "done":Z
    .local v8, "done":Z
    .local v9, "iSkip":I
    :goto_111
    move/from16 v8, v16

    :goto_113
    add-int/2addr v12, v9

    move/from16 v13, v17

    const/4 v10, 0x3

    goto/16 :goto_3f

    .line 180
    .end local v12    # "i":I
    :cond_119
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    const/4 v3, 0x0

    .line 181
    .local v3, "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v3, v2

    invoke-static {v2}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 183
    new-instance v2, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v2
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object v0
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .registers 15
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "pureBarcode"    # Z

    .line 488
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    add-int/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    add-int/2addr v1, v4

    .line 490
    .local v1, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v4

    .line 491
    .local v4, "centerJ":F
    float-to-int v5, v4

    aget v6, p1, v3

    invoke-direct {p0, p2, v5, v6, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v5

    const/4 v6, 0x0

    .line 492
    .local v6, "centerI":F
    move v6, v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_82

    .line 494
    float-to-int v5, v4

    float-to-int v7, v6

    aget v8, p1, v3

    invoke-direct {p0, v5, v7, v8, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v5

    .line 495
    move v4, v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_82

    if-eqz p4, :cond_41

    float-to-int v5, v6

    float-to-int v7, v4

    aget v3, p1, v3

    .line 496
    invoke-direct {p0, v5, v7, v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(IIII)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 497
    :cond_41
    int-to-float v3, v1

    const/high16 v5, 0x40e00000    # 7.0f

    div-float/2addr v3, v5

    .line 498
    .local v3, "estimatedModuleSize":F
    const/4 v5, 0x0

    .line 499
    .local v5, "found":Z
    const/4 v7, 0x0

    .local v0, "index":I
    :goto_47
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_6c

    .line 500
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 502
    .local v7, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v7, v8

    invoke-virtual {v8, v3, v6, v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 503
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v7, v6, v4, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    invoke-interface {v8, v0, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    const/4 v5, 0x1

    .line 505
    goto :goto_6c

    .line 499
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 508
    .end local v0    # "index":I
    .end local v7    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_6c
    :goto_6c
    if-nez v5, :cond_81

    .line 509
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v0, v4, v6, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 510
    .local v0, "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v7, :cond_81

    .line 512
    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v7, v0}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 515
    .end local v0    # "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_81
    return v2

    .line 518
    .end local v3    # "estimatedModuleSize":F
    .end local v5    # "found":Z
    :cond_82
    return v0
.end method

###### Class com.google.zxing.qrcode.detector.FinderPatternFinder.AnonymousClass1 (com.google.zxing.qrcode.detector.FinderPatternFinder$1)
.class synthetic Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.zxing.qrcode.detector.FinderPatternFinder.CenterComparator (com.google.zxing.qrcode.detector.FinderPatternFinder$CenterComparator)
.class final Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CenterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/google/zxing/qrcode/detector/FinderPattern;",
        ">;"
    }
.end annotation


# instance fields
.field private final average:F


# direct methods
.method private constructor <init>(F)V
    .registers 2
    .param p1, "f"    # F

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    .line 667
    return-void
.end method

.method synthetic constructor <init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V
    .registers 3
    .param p1, "x0"    # F
    .param p2, "x1"    # Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;

    .line 663
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(F)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I
    .registers 6
    .param p1, "center1"    # Lcom/google/zxing/qrcode/detector/FinderPattern;
    .param p2, "center2"    # Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 670
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2e

    .line 671
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    iget v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 672
    .local v0, "dA":F
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v1

    iget v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->average:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 673
    .local v1, "dB":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_26

    const/4 v2, 0x1

    return v2

    :cond_26
    cmpl-float v2, v0, v1

    if-nez v2, :cond_2c

    const/4 v2, 0x0

    return v2

    :cond_2c
    const/4 v2, -0x1

    return v2

    .line 675
    .end local v0    # "dA":F
    .end local v1    # "dB":F
    :cond_2e
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 663
    check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;->compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I

    move-result p1

    return p1
.end method

###### Class com.google.zxing.qrcode.detector.FinderPatternFinder.FurthestFromAverageComparator (com.google.zxing.qrcode.detector.FinderPatternFinder$FurthestFromAverageComparator)
.class final Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FurthestFromAverageComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/google/zxing/qrcode/detector/FinderPattern;",
        ">;"
    }
.end annotation


# instance fields
.field private final average:F


# direct methods
.method private constructor <init>(F)V
    .registers 2
    .param p1, "f"    # F

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->average:F

    .line 651
    return-void
.end method

.method synthetic constructor <init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V
    .registers 3
    .param p1, "x0"    # F
    .param p2, "x1"    # Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;

    .line 647
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(F)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I
    .registers 6
    .param p1, "center1"    # Lcom/google/zxing/qrcode/detector/FinderPattern;
    .param p2, "center2"    # Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 654
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    iget v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->average:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 655
    .local v0, "dA":F
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v1

    iget v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->average:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 656
    .local v1, "dB":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1c

    const/4 v2, -0x1

    return v2

    :cond_1c
    cmpl-float v2, v0, v1

    if-nez v2, :cond_22

    const/4 v2, 0x0

    return v2

    :cond_22
    const/4 v2, 0x1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 647
    check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I

    move-result p1

    return p1
.end method
