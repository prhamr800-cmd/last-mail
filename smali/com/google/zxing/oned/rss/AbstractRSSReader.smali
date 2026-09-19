###### Class com.google.zxing.oned.rss.AbstractRSSReader (com.google.zxing.oned.rss.AbstractRSSReader)
.class public abstract Lcom/google/zxing/oned/rss/AbstractRSSReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "AbstractRSSReader.java"


# static fields
.field private static final MAX_AVG_VARIANCE:F = 0.2f

.field private static final MAX_FINDER_PATTERN_RATIO:F = 0.89285713f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.45f

.field private static final MIN_FINDER_PATTERN_RATIO:F = 0.7916667f


# instance fields
.field private final dataCharacterCounters:[I

.field private final decodeFinderCounters:[I

.field private final evenCounts:[I

.field private final evenRoundingErrors:[F

.field private final oddCounts:[I

.field private final oddRoundingErrors:[F


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 43
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    .line 44
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    .line 45
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    .line 46
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    .line 47
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    .line 48
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    .line 49
    return-void
.end method

.method protected static count([I)I
    .registers 2
    .param p0, "array"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    return v0
.end method

.method protected static decrement([I[F)V
    .registers 7
    .param p0, "array"    # [I
    .param p1, "errors"    # [F

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "index":I
    const/4 v1, 0x0

    aget v1, p1, v1

    .line 111
    .local v1, "biggestError":F
    const/4 v2, 0x1

    move v3, v0

    const/4 v0, 0x1

    .local v0, "i":I
    .local v3, "index":I
    :goto_7
    array-length v4, p0

    if-ge v0, v4, :cond_16

    .line 112
    aget v4, p1, v0

    cmpg-float v4, v4, v1

    if-gez v4, :cond_13

    .line 113
    aget v1, p1, v0

    .line 114
    move v3, v0

    .line 111
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 117
    .end local v0    # "i":I
    :cond_16
    aget v0, p0, v3

    sub-int/2addr v0, v2

    aput v0, p0, v3

    .line 118
    return-void
.end method

.method protected static increment([I[F)V
    .registers 7
    .param p0, "array"    # [I
    .param p1, "errors"    # [F

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "index":I
    const/4 v1, 0x0

    aget v1, p1, v1

    .line 99
    .local v1, "biggestError":F
    const/4 v2, 0x1

    move v3, v0

    const/4 v0, 0x1

    .local v0, "i":I
    .local v3, "index":I
    :goto_7
    array-length v4, p0

    if-ge v0, v4, :cond_16

    .line 100
    aget v4, p1, v0

    cmpl-float v4, v4, v1

    if-lez v4, :cond_13

    .line 101
    aget v1, p1, v0

    .line 102
    move v3, v0

    .line 99
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 105
    .end local v0    # "i":I
    :cond_16
    aget v0, p0, v3

    add-int/2addr v0, v2

    aput v0, p0, v3

    .line 106
    return-void
.end method

.method protected static isFinderPattern([I)Z
    .registers 12
    .param p0, "counters"    # [I

    .line 121
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    add-int/2addr v1, v3

    move v3, v0

    .line 122
    .local v3, "firstTwoSum":I
    move v3, v1

    const/4 v4, 0x2

    aget v4, p0, v4

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p0, v4

    add-int/2addr v1, v4

    .line 123
    .local v1, "sum":I
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    const/4 v5, 0x0

    .line 124
    .local v5, "ratio":F
    move v5, v4

    const v6, 0x3f4aaaab

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_42

    const v4, 0x3f649249

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_42

    .line 126
    const v4, 0x7fffffff

    .line 127
    .local v4, "minCounter":I
    const/high16 v6, -0x80000000

    .line 128
    .local v6, "maxCounter":I
    array-length v7, p0

    move v9, v4

    move v8, v6

    const/4 v4, 0x0

    const/4 v6, 0x0

    .end local v4    # "minCounter":I
    .end local v6    # "maxCounter":I
    .local v8, "maxCounter":I
    .local v9, "minCounter":I
    :goto_2e
    if-ge v4, v7, :cond_3c

    aget v10, p0, v4

    .line 129
    .local v6, "counter":I
    move v6, v10

    if-le v10, v8, :cond_36

    .line 130
    move v8, v6

    .line 132
    :cond_36
    if-ge v6, v9, :cond_39

    .line 133
    move v9, v6

    .line 128
    .end local v6    # "counter":I
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 136
    :cond_3c
    mul-int/lit8 v4, v9, 0xa

    if-ge v8, v4, :cond_41

    return v2

    :cond_41
    return v0

    .line 138
    .end local v8    # "maxCounter":I
    .end local v9    # "minCounter":I
    :cond_42
    return v0
.end method

.method protected static parseFinderValue([I[[I)I
    .registers 5
    .param p0, "counters"    # [I
    .param p1, "finderPatterns"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    .local v0, "value":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 78
    aget-object v1, p1, v0

    const v2, 0x3ee66666    # 0.45f

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->patternMatchVariance([I[IF)F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    .line 80
    return v0

    .line 77
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    .end local v0    # "value":I
    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected final getDataCharacterCounters()[I
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    return-object v0
.end method

.method protected final getDecodeFinderCounters()[I
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    return-object v0
.end method

.method protected final getEvenCounts()[I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-object v0
.end method

.method protected final getEvenRoundingErrors()[F
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    return-object v0
.end method

.method protected final getOddCounts()[I
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    return-object v0
.end method

.method protected final getOddRoundingErrors()[F
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    return-object v0
.end method
