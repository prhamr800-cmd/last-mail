###### Class com.google.zxing.oned.rss.RSS14Reader (com.google.zxing.oned.rss.RSS14Reader)
.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 38
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_7a

    sput-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 39
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_88

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    .line 40
    new-array v2, v0, [I

    fill-array-data v2, :array_94

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 41
    new-array v2, v1, [I

    fill-array-data v2, :array_a2

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    .line 42
    new-array v2, v0, [I

    fill-array-data v2, :array_ae

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 43
    new-array v2, v1, [I

    fill-array-data v2, :array_bc

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    .line 45
    const/16 v2, 0x9

    new-array v2, v2, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_c8

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_d4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_e0

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_ec

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_f8

    aput-object v3, v2, v1

    new-array v3, v1, [I

    fill-array-data v3, :array_104

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_110

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_11c

    const/4 v3, 0x7

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_128

    const/16 v1, 0x8

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    :array_7a
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    :array_88
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    :array_94
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    :array_a2
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    :array_ae
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    :array_bc
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_c8
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_d4
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_e0
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_ec
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_f8
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_104
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_110
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_11c
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_128
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 63
    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .registers 7
    .param p1, "pair"    # Lcom/google/zxing/oned/rss/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    .line 90
    .local p0, "possiblePairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/Pair;>;"
    if-nez p1, :cond_3

    .line 91
    return-void

    .line 93
    :cond_3
    const/4 v0, 0x0

    .line 94
    .local v0, "found":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/Pair;

    .line 95
    .local v2, "other":Lcom/google/zxing/oned/rss/Pair;
    move-object v2, v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_25

    .line 96
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    .line 97
    const/4 v0, 0x1

    .line 98
    goto :goto_26

    .line 100
    :cond_25
    goto :goto_9

    .line 101
    .end local v2    # "other":Lcom/google/zxing/oned/rss/Pair;
    :cond_26
    :goto_26
    if-nez v0, :cond_2b

    .line 102
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2b
    return-void
.end method

.method private adjustOddEvenCounts(ZI)V
    .registers 14
    .param p1, "outsideChar"    # Z
    .param p2, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    .line 360
    .local v0, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v1

    .line 362
    .local v1, "evenSum":I
    const/4 v2, 0x0

    .line 363
    .local v2, "incrementOdd":Z
    const/4 v3, 0x0

    .line 364
    .local v3, "decrementOdd":Z
    const/4 v4, 0x0

    .line 365
    .local v4, "incrementEven":Z
    const/4 v5, 0x0

    .line 367
    .local v5, "decrementEven":Z
    const/4 v6, 0x4

    if-eqz p1, :cond_28

    .line 368
    const/16 v7, 0xc

    if-le v0, v7, :cond_1d

    .line 369
    const/4 v3, 0x1

    goto :goto_20

    .line 370
    :cond_1d
    if-ge v0, v6, :cond_20

    .line 371
    const/4 v2, 0x1

    .line 373
    :cond_20
    :goto_20
    if-le v1, v7, :cond_24

    .line 374
    const/4 v5, 0x1

    goto :goto_3b

    .line 375
    :cond_24
    if-ge v1, v6, :cond_3b

    .line 376
    const/4 v4, 0x1

    goto :goto_3b

    .line 379
    :cond_28
    const/16 v7, 0xb

    if-le v0, v7, :cond_2e

    .line 380
    const/4 v3, 0x1

    goto :goto_32

    .line 381
    :cond_2e
    const/4 v7, 0x5

    if-ge v0, v7, :cond_32

    .line 382
    const/4 v2, 0x1

    .line 384
    :cond_32
    :goto_32
    const/16 v7, 0xa

    if-le v1, v7, :cond_38

    .line 385
    const/4 v5, 0x1

    goto :goto_3b

    .line 386
    :cond_38
    if-ge v1, v6, :cond_3b

    .line 387
    const/4 v4, 0x1

    .line 391
    :cond_3b
    :goto_3b
    add-int v6, v0, v1

    sub-int/2addr v6, p2

    .line 392
    .local v6, "mismatch":I
    and-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, p1, :cond_46

    const/4 v7, 0x1

    goto :goto_47

    :cond_46
    const/4 v7, 0x0

    .line 393
    .local v7, "oddParityBad":Z
    :goto_47
    and-int/lit8 v10, v1, 0x1

    if-ne v10, v9, :cond_4d

    const/4 v8, 0x1

    nop

    .line 406
    .local v8, "evenParityBad":Z
    :cond_4d
    if-ne v6, v9, :cond_63

    .line 407
    if-eqz v7, :cond_5a

    .line 408
    if-nez v8, :cond_55

    .line 411
    const/4 v3, 0x1

    goto :goto_8f

    .line 409
    :cond_55
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 413
    :cond_5a
    if-eqz v8, :cond_5e

    .line 416
    const/4 v5, 0x1

    goto :goto_8f

    .line 414
    :cond_5e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 418
    :cond_63
    const/4 v9, -0x1

    if-ne v6, v9, :cond_7a

    .line 419
    if-eqz v7, :cond_71

    .line 420
    if-nez v8, :cond_6c

    .line 423
    const/4 v2, 0x1

    goto :goto_8f

    .line 421
    :cond_6c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 425
    :cond_71
    if-eqz v8, :cond_75

    .line 428
    const/4 v4, 0x1

    goto :goto_8f

    .line 426
    :cond_75
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 430
    :cond_7a
    if-nez v6, :cond_d9

    .line 431
    if-eqz v7, :cond_8d

    .line 432
    if-eqz v8, :cond_88

    .line 436
    if-ge v0, v1, :cond_85

    .line 437
    const/4 v2, 0x1

    .line 438
    const/4 v5, 0x1

    goto :goto_8f

    .line 440
    :cond_85
    const/4 v3, 0x1

    .line 441
    const/4 v4, 0x1

    goto :goto_8f

    .line 433
    :cond_88
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 444
    :cond_8d
    if-nez v8, :cond_d4

    .line 453
    :goto_8f
    if-eqz v2, :cond_a4

    .line 454
    if-nez v3, :cond_9f

    .line 457
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    goto :goto_a4

    .line 455
    :cond_9f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 459
    :cond_a4
    :goto_a4
    if-eqz v3, :cond_b1

    .line 460
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 462
    :cond_b1
    if-eqz v4, :cond_c6

    .line 463
    if-nez v5, :cond_c1

    .line 466
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    goto :goto_c6

    .line 464
    :cond_c1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 468
    :cond_c6
    :goto_c6
    if-eqz v5, :cond_d3

    .line 469
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 472
    :cond_d3
    return-void

    .line 445
    :cond_d4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 450
    :cond_d9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .registers 7
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .line 148
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4f

    .line 149
    .local v0, "checkValue":I
    nop

    .line 150
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    .line 151
    .local v3, "targetCheckValue":I
    move v3, v1

    const/16 v4, 0x48

    if-le v1, v4, :cond_2a

    .line 152
    add-int/lit8 v3, v3, -0x1

    .line 154
    :cond_2a
    const/16 v1, 0x8

    if-le v3, v1, :cond_30

    .line 155
    add-int/lit8 v3, v3, -0x1

    .line 157
    :cond_30
    if-ne v0, v3, :cond_34

    const/4 v1, 0x1

    return v1

    :cond_34
    return v2
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .registers 14
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .line 113
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x453af5

    mul-long v0, v0, v2

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 114
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    rsub-int/lit8 v2, v2, 0xd

    .local v2, "i":I
    :goto_23
    const/16 v4, 0x30

    if-lez v2, :cond_2d

    .line 118
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 120
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "checkDigit":I
    const/4 v5, 0x0

    move v6, v2

    const/4 v2, 0x0

    .local v2, "i":I
    .local v6, "checkDigit":I
    :goto_34
    if-ge v2, v3, :cond_47

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    sub-int/2addr v7, v4

    .line 125
    .local v7, "digit":I
    and-int/lit8 v8, v2, 0x1

    if-nez v8, :cond_42

    mul-int/lit8 v8, v7, 0x3

    goto :goto_43

    :cond_42
    move v8, v7

    :goto_43
    add-int/2addr v6, v8

    .line 123
    .end local v7    # "digit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 127
    .end local v2    # "i":I
    :cond_47
    rem-int/lit8 v2, v6, 0xa

    const/16 v3, 0xa

    rsub-int/lit8 v2, v2, 0xa

    .line 128
    move v4, v2

    .end local v6    # "checkDigit":I
    .local v4, "checkDigit":I
    if-ne v2, v3, :cond_51

    .line 129
    const/4 v4, 0x0

    .line 131
    :cond_51
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 134
    .local v2, "leftPoints":[Lcom/google/zxing/ResultPoint;
    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 135
    .local v3, "rightPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v6, Lcom/google/zxing/Result;

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/google/zxing/ResultPoint;

    aget-object v10, v2, v5

    aput-object v10, v9, v5

    const/4 v10, 0x1

    aget-object v11, v2, v10

    aput-object v11, v9, v10

    const/4 v11, 0x2

    aget-object v5, v3, v5

    aput-object v5, v9, v11

    aget-object v5, v3, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 135
    return-object v6
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .registers 31
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "outsideChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 190
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDataCharacterCounters()[I

    move-result-object v2

    const/4 v3, 0x0

    .line 191
    .local v3, "counters":[I
    move-object v3, v2

    const/4 v4, 0x0

    aput v4, v2, v4

    .line 192
    const/4 v2, 0x1

    aput v4, v3, v2

    .line 193
    const/4 v5, 0x2

    aput v4, v3, v5

    .line 194
    const/4 v6, 0x3

    aput v4, v3, v6

    .line 195
    const/4 v6, 0x4

    aput v4, v3, v6

    .line 196
    const/4 v7, 0x5

    aput v4, v3, v7

    .line 197
    const/4 v7, 0x6

    aput v4, v3, v7

    .line 198
    const/4 v7, 0x7

    aput v4, v3, v7

    .line 200
    if-eqz v1, :cond_2e

    .line 201
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v7

    aget v7, v7, v4

    invoke-static {v0, v7, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    goto :goto_4a

    .line 203
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v7

    aget v7, v7, v2

    add-int/2addr v7, v2

    invoke-static {v0, v7, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 205
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v3

    sub-int/2addr v8, v2

    .local v8, "j":I
    :goto_3b
    if-ge v7, v8, :cond_4a

    .line 206
    aget v9, v3, v7

    .line 207
    .local v9, "temp":I
    aget v10, v3, v8

    aput v10, v3, v7

    .line 208
    aput v9, v3, v8

    .line 205
    .end local v9    # "temp":I
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_3b

    .line 212
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_4a
    :goto_4a
    if-eqz v1, :cond_4f

    const/16 v7, 0x10

    goto :goto_51

    :cond_4f
    const/16 v7, 0xf

    .line 213
    .local v7, "numModules":I
    :goto_51
    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    .line 215
    .local v8, "elementWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v9

    .line 216
    .local v9, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v10

    .line 217
    .local v10, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v11

    .line 218
    .local v11, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v12

    .line 220
    .local v12, "evenRoundingErrors":[F
    const/4 v13, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .local v13, "i":I
    :goto_6c
    array-length v4, v3

    if-ge v13, v4, :cond_a0

    .line 221
    aget v4, v3, v13

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 222
    .local v14, "value":F
    move v14, v4

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v4, v4, v17

    float-to-int v4, v4

    .line 223
    .local v15, "count":I
    move v15, v4

    if-gtz v4, :cond_7f

    .line 224
    const/4 v4, 0x1

    .line 228
    :goto_7d
    move v15, v4

    goto :goto_86

    .line 225
    :cond_7f
    const/16 v4, 0x8

    if-le v15, v4, :cond_86

    .line 226
    const/16 v4, 0x8

    goto :goto_7d

    .line 228
    :cond_86
    :goto_86
    div-int/lit8 v4, v13, 0x2

    .line 229
    .local v4, "offset":I
    and-int/lit8 v17, v13, 0x1

    if-nez v17, :cond_94

    .line 230
    aput v15, v9, v4

    .line 231
    int-to-float v5, v15

    sub-float v5, v14, v5

    aput v5, v11, v4

    goto :goto_9b

    .line 233
    :cond_94
    aput v15, v10, v4

    .line 234
    int-to-float v5, v15

    sub-float v5, v14, v5

    aput v5, v12, v4

    .line 220
    .end local v4    # "offset":I
    .end local v14    # "value":F
    .end local v15    # "count":I
    :goto_9b
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto :goto_6c

    .line 238
    .end local v13    # "i":I
    :cond_a0
    move-object/from16 v4, p0

    invoke-direct {v4, v1, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 240
    const/4 v5, 0x0

    .line 241
    .local v5, "oddSum":I
    const/4 v13, 0x0

    .line 242
    .local v13, "oddChecksumPortion":I
    array-length v14, v9

    sub-int/2addr v14, v2

    .local v14, "i":I
    :goto_a9
    if-ltz v14, :cond_b7

    .line 243
    mul-int/lit8 v15, v13, 0x9

    .line 244
    aget v17, v9, v14

    add-int v13, v15, v17

    .line 245
    aget v15, v9, v14

    add-int/2addr v5, v15

    .line 242
    add-int/lit8 v14, v14, -0x1

    goto :goto_a9

    .line 247
    .end local v14    # "i":I
    :cond_b7
    const/4 v14, 0x0

    .line 248
    .local v14, "evenChecksumPortion":I
    const/4 v15, 0x0

    .line 249
    .local v15, "evenSum":I
    array-length v6, v10

    sub-int/2addr v6, v2

    .local v6, "i":I
    :goto_bb
    if-ltz v6, :cond_ca

    .line 250
    mul-int/lit8 v17, v14, 0x9

    .line 251
    aget v19, v10, v6

    add-int v14, v17, v19

    .line 252
    aget v17, v10, v6

    add-int v15, v15, v17

    .line 249
    add-int/lit8 v6, v6, -0x1

    goto :goto_bb

    .line 254
    .end local v6    # "i":I
    :cond_ca
    mul-int/lit8 v6, v14, 0x3

    add-int/2addr v6, v13

    .line 256
    .local v6, "checksumPortion":I
    if-eqz v1, :cond_114

    .line 257
    and-int/lit8 v17, v5, 0x1

    if-nez v17, :cond_10d

    const/16 v2, 0xc

    if-gt v5, v2, :cond_10d

    const/4 v2, 0x4

    if-lt v5, v2, :cond_10d

    .line 260
    const/16 v2, 0xc

    sub-int/2addr v2, v5

    const/16 v17, 0x2

    div-int/lit8 v2, v2, 0x2

    .line 261
    .local v2, "group":I
    sget-object v17, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v0, v17, v2

    .line 262
    .local v0, "oddWidest":I
    rsub-int/lit8 v1, v0, 0x9

    .line 263
    .local v1, "evenWidest":I
    move-object/from16 v20, v3

    const/4 v3, 0x0

    .end local v3    # "counters":[I
    .local v20, "counters":[I
    invoke-static {v9, v0, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v3

    .line 264
    .local v3, "vOdd":I
    move/from16 v21, v0

    const/4 v0, 0x1

    .end local v0    # "oddWidest":I
    .local v21, "oddWidest":I
    invoke-static {v10, v1, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v0

    .line 265
    .local v0, "vEven":I
    sget-object v16, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v16, v16, v2

    .line 266
    .local v16, "tEven":I
    sget-object v17, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v17, v17, v2

    .line 267
    .local v17, "gSum":I
    move/from16 v22, v1

    .end local v1    # "evenWidest":I
    .local v22, "evenWidest":I
    new-instance v1, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v18, v3, v16

    add-int v18, v18, v0

    move/from16 v23, v0

    .end local v0    # "vEven":I
    .local v23, "vEven":I
    add-int v0, v18, v17

    invoke-direct {v1, v0, v6}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v1

    .line 258
    .end local v2    # "group":I
    .end local v16    # "tEven":I
    .end local v17    # "gSum":I
    .end local v20    # "counters":[I
    .end local v21    # "oddWidest":I
    .end local v22    # "evenWidest":I
    .end local v23    # "vEven":I
    .local v3, "counters":[I
    :cond_10d
    move-object/from16 v20, v3

    .end local v3    # "counters":[I
    .restart local v20    # "counters":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 269
    .end local v20    # "counters":[I
    .restart local v3    # "counters":[I
    :cond_114
    move-object/from16 v20, v3

    .end local v3    # "counters":[I
    .restart local v20    # "counters":[I
    and-int/lit8 v0, v15, 0x1

    if-nez v0, :cond_14e

    const/16 v0, 0xa

    if-gt v15, v0, :cond_14e

    const/4 v1, 0x4

    if-lt v15, v1, :cond_14e

    .line 272
    sub-int/2addr v0, v15

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 273
    .local v0, "group":I
    sget-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v1, v1, v0

    .line 274
    .local v1, "oddWidest":I
    rsub-int/lit8 v2, v1, 0x9

    .line 275
    .local v2, "evenWidest":I
    const/4 v3, 0x1

    invoke-static {v9, v1, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v3

    .line 276
    .local v3, "vOdd":I
    move/from16 v24, v1

    const/4 v1, 0x0

    .end local v1    # "oddWidest":I
    .local v24, "oddWidest":I
    invoke-static {v10, v2, v1}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 277
    .local v1, "vEven":I
    sget-object v16, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v16, v16, v0

    .line 278
    .local v16, "tOdd":I
    sget-object v17, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v17, v17, v0

    .line 279
    .restart local v17    # "gSum":I
    move/from16 v25, v0

    .end local v0    # "group":I
    .local v25, "group":I
    new-instance v0, Lcom/google/zxing/oned/rss/DataCharacter;

    mul-int v18, v1, v16

    add-int v18, v18, v3

    move/from16 v26, v1

    .end local v1    # "vEven":I
    .local v26, "vEven":I
    add-int v1, v18, v17

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v0

    .line 270
    .end local v2    # "evenWidest":I
    .end local v3    # "vOdd":I
    .end local v16    # "tOdd":I
    .end local v17    # "gSum":I
    .end local v24    # "oddWidest":I
    .end local v25    # "group":I
    .end local v26    # "vEven":I
    :cond_14e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .registers 15
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "right"    # Z
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    .line 162
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I

    move-result-object v2
    :try_end_6
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_6} :catch_5d

    .line 163
    .local v2, "startEnd":[I
    :try_start_6
    invoke-direct {p0, p1, p3, p2, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    .line 165
    .local v3, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez p4, :cond_e

    .line 166
    move-object v4, v1

    goto :goto_16

    .line 165
    :cond_e
    sget-object v4, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 166
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/ResultPointCallback;

    :goto_16
    move-object v5, v1

    .line 168
    .local v5, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    move-object v5, v4

    const/4 v6, 0x1

    if-eqz v4, :cond_37

    .line 169
    aget v4, v2, v0

    aget v7, v2, v6

    add-int/2addr v4, v7

    int-to-float v4, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    .line 170
    .local v4, "center":F
    if-eqz p2, :cond_2e

    .line 172
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    sub-int/2addr v7, v6

    int-to-float v7, v7

    sub-float v4, v7, v4

    .line 174
    :cond_2e
    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p3

    invoke-direct {v7, v4, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v5, v7}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 177
    .end local v4    # "center":F
    :cond_37
    invoke-direct {p0, p1, v3, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    .line 178
    .local v4, "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-direct {p0, p1, v3, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    .line 179
    .local v0, "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    new-instance v6, Lcom/google/zxing/oned/rss/Pair;

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v7

    mul-int/lit16 v7, v7, 0x63d

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    add-int/2addr v7, v8

    .line 180
    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    invoke-direct {v6, v7, v8, v3}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V
    :try_end_5a
    .catch Lcom/google/zxing/NotFoundException; {:try_start_6 .. :try_end_5a} :catch_5b

    .line 179
    return-object v6

    .line 182
    .end local v0    # "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v3    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v4    # "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v5    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :catch_5b
    move-exception v0

    goto :goto_5f

    .end local v2    # "startEnd":[I
    :catch_5d
    move-exception v0

    move-object v2, v1

    :goto_5f
    move-object v0, v2

    .line 183
    .local v0, "ignored":Lcom/google/zxing/NotFoundException;
    return-object v1
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I
    .registers 16
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowOffset"    # I
    .param p3, "rightFinderPattern"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 288
    .local v1, "counters":[I
    move-object v1, v0

    const/4 v2, 0x0

    aput v2, v0, v2

    .line 289
    const/4 v0, 0x1

    aput v2, v1, v0

    .line 290
    const/4 v3, 0x2

    aput v2, v1, v3

    .line 291
    const/4 v4, 0x3

    aput v2, v1, v4

    .line 293
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 294
    .local v5, "width":I
    move v6, p2

    const/4 p2, 0x0

    .line 295
    .local v6, "rowOffset":I
    .local p2, "isWhite":Z
    :goto_18
    if-ge v6, v5, :cond_25

    .line 296
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v0

    move p2, v7

    .line 297
    if-eq p3, p2, :cond_25

    .line 301
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 304
    :cond_25
    const/4 v7, 0x0

    .line 305
    .local v7, "counterPosition":I
    move v8, v6

    .line 306
    .local v8, "patternStart":I
    move v9, v8

    move v8, v7

    move v7, p2

    move p2, v6

    .local v7, "isWhite":Z
    .local v8, "counterPosition":I
    .local v9, "patternStart":I
    .local p2, "x":I
    :goto_2b
    if-ge p2, v5, :cond_6b

    .line 307
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v7

    if-eqz v10, :cond_3a

    .line 308
    aget v10, v1, v8

    add-int/2addr v10, v0

    aput v10, v1, v8

    goto :goto_68

    .line 310
    :cond_3a
    if-ne v8, v4, :cond_5e

    .line 311
    invoke-static {v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v10

    if-eqz v10, :cond_49

    .line 312
    new-array v3, v3, [I

    aput v9, v3, v2

    aput p2, v3, v0

    return-object v3

    .line 314
    :cond_49
    aget v10, v1, v2

    aget v11, v1, v0

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 315
    aget v10, v1, v3

    aput v10, v1, v2

    .line 316
    aget v10, v1, v4

    aput v10, v1, v0

    .line 317
    aput v2, v1, v3

    .line 318
    aput v2, v1, v4

    .line 319
    add-int/lit8 v8, v8, -0x1

    goto :goto_60

    .line 321
    :cond_5e
    add-int/lit8 v8, v8, 0x1

    .line 323
    :goto_60
    aput v0, v1, v8

    .line 324
    if-nez v7, :cond_66

    const/4 v10, 0x1

    goto :goto_67

    :cond_66
    const/4 v10, 0x0

    :goto_67
    move v7, v10

    .line 306
    :goto_68
    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    .line 327
    .end local p2    # "x":I
    :cond_6b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p2

    throw p2
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .registers 22
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "right"    # Z
    .param p4, "startEnd"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 334
    move-object/from16 v0, p1

    const/4 v1, 0x0

    aget v2, p4, v1

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    .line 335
    .local v2, "firstIsBlack":Z
    aget v3, p4, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 337
    .local v3, "firstElementStart":I
    :goto_d
    if-ltz v3, :cond_19

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_19

    .line 338
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .line 340
    :cond_19
    add-int/2addr v3, v4

    .line 341
    aget v5, p4, v1

    sub-int/2addr v5, v3

    .line 343
    .local v5, "firstCounter":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v6

    const/4 v7, 0x0

    .line 344
    .local v7, "counters":[I
    move-object v7, v6

    array-length v8, v7

    sub-int/2addr v8, v4

    invoke-static {v6, v1, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    aput v5, v7, v1

    .line 346
    sget-object v6, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v7, v6}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v6

    .line 347
    .local v6, "value":I
    move v8, v3

    .line 348
    .local v8, "start":I
    aget v9, p4, v4

    .line 349
    .local v9, "end":I
    if-eqz p3, :cond_44

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    sub-int/2addr v10, v4

    sub-int/2addr v10, v8

    .line 352
    .end local v8    # "start":I
    .local v10, "start":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    sub-int/2addr v8, v4

    sub-int/2addr v8, v9

    .line 354
    move v15, v8

    move v14, v10

    goto :goto_46

    .end local v10    # "start":I
    .restart local v8    # "start":I
    :cond_44
    move v14, v8

    move v15, v9

    .end local v8    # "start":I
    .end local v9    # "end":I
    .local v14, "start":I
    .local v15, "end":I
    :goto_46
    new-instance v16, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v8, 0x2

    new-array v10, v8, [I

    aput v3, v10, v1

    aget v1, p4, v4

    aput v1, v10, v4

    move-object/from16 v8, v16

    move v9, v6

    move v11, v14

    move v12, v15

    move/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v16
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 12
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 69
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v0

    .line 70
    .local v0, "leftPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v1, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 71
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 72
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v2

    .line 73
    .local v2, "rightPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {v3, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 74
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 75
    iget-object v3, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/Pair;

    .line 76
    .local v4, "left":Lcom/google/zxing/oned/rss/Pair;
    move-object v4, v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v6

    if-le v6, v1, :cond_5a

    .line 77
    iget-object v6, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/Pair;

    .line 78
    .local v5, "right":Lcom/google/zxing/oned/rss/Pair;
    move-object v5, v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v7

    if-le v7, v1, :cond_59

    .line 79
    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 80
    invoke-static {v4, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v1

    return-object v1

    .line 83
    :cond_59
    goto :goto_3b

    .line 85
    .end local v5    # "right":Lcom/google/zxing/oned/rss/Pair;
    :cond_5a
    goto :goto_22

    .line 86
    .end local v4    # "left":Lcom/google/zxing/oned/rss/Pair;
    :cond_5b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method public reset()V
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    return-void
.end method
