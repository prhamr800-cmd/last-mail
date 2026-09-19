###### Class com.google.zxing.oned.rss.expanded.RSSExpandedReader (com.google.zxing.oned.rss.expanded.RSSExpandedReader)
.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSSExpandedReader.java"


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 55
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_15c

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 56
    new-array v1, v0, [I

    fill-array-data v1, :array_16a

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 57
    new-array v1, v0, [I

    fill-array-data v1, :array_178

    sput-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 59
    const/4 v1, 0x6

    new-array v2, v1, [[I

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_186

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_192

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_19e

    const/4 v7, 0x2

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_1aa

    const/4 v8, 0x3

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_1b6

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_1c2

    aput-object v4, v2, v0

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 68
    const/16 v2, 0x17

    new-array v2, v2, [[I

    const/16 v4, 0x8

    new-array v9, v4, [I

    fill-array-data v9, :array_1ce

    aput-object v9, v2, v5

    new-array v9, v4, [I

    fill-array-data v9, :array_1e2

    aput-object v9, v2, v6

    new-array v9, v4, [I

    fill-array-data v9, :array_1f6

    aput-object v9, v2, v7

    new-array v9, v4, [I

    fill-array-data v9, :array_20a

    aput-object v9, v2, v8

    new-array v9, v4, [I

    fill-array-data v9, :array_21e

    aput-object v9, v2, v3

    new-array v9, v4, [I

    fill-array-data v9, :array_232

    aput-object v9, v2, v0

    new-array v9, v4, [I

    fill-array-data v9, :array_246

    aput-object v9, v2, v1

    new-array v9, v4, [I

    fill-array-data v9, :array_25a

    const/4 v10, 0x7

    aput-object v9, v2, v10

    new-array v9, v4, [I

    fill-array-data v9, :array_26e

    aput-object v9, v2, v4

    new-array v9, v4, [I

    fill-array-data v9, :array_282

    const/16 v11, 0x9

    aput-object v9, v2, v11

    new-array v9, v4, [I

    fill-array-data v9, :array_296

    const/16 v12, 0xa

    aput-object v9, v2, v12

    new-array v9, v4, [I

    fill-array-data v9, :array_2aa

    const/16 v13, 0xb

    aput-object v9, v2, v13

    new-array v9, v4, [I

    fill-array-data v9, :array_2be

    const/16 v14, 0xc

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_2d2

    const/16 v14, 0xd

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_2e6

    const/16 v14, 0xe

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_2fa

    const/16 v14, 0xf

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_30e

    const/16 v14, 0x10

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_322

    const/16 v14, 0x11

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_336

    const/16 v14, 0x12

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_34a

    const/16 v14, 0x13

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_35e

    const/16 v14, 0x14

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_372

    const/16 v14, 0x15

    aput-object v9, v2, v14

    new-array v9, v4, [I

    fill-array-data v9, :array_386

    const/16 v14, 0x16

    aput-object v9, v2, v14

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 101
    new-array v2, v12, [[I

    new-array v9, v7, [I

    fill-array-data v9, :array_39a

    aput-object v9, v2, v5

    new-array v5, v8, [I

    fill-array-data v5, :array_3a2

    aput-object v5, v2, v6

    new-array v5, v3, [I

    fill-array-data v5, :array_3ac

    aput-object v5, v2, v7

    new-array v5, v0, [I

    fill-array-data v5, :array_3b8

    aput-object v5, v2, v8

    new-array v5, v1, [I

    fill-array-data v5, :array_3c6

    aput-object v5, v2, v3

    new-array v3, v10, [I

    fill-array-data v3, :array_3d6

    aput-object v3, v2, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_3e8

    aput-object v0, v2, v1

    new-array v0, v11, [I

    fill-array-data v0, :array_3fc

    aput-object v0, v2, v10

    new-array v0, v12, [I

    fill-array-data v0, :array_412

    aput-object v0, v2, v4

    new-array v0, v13, [I

    fill-array-data v0, :array_42a

    aput-object v0, v2, v11

    sput-object v2, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    return-void

    nop

    :array_15c
    .array-data 4
        0x7
        0x5
        0x4
        0x3
        0x1
    .end array-data

    :array_16a
    .array-data 4
        0x4
        0x14
        0x34
        0x68
        0xcc
    .end array-data

    :array_178
    .array-data 4
        0x0
        0x15c
        0x56c
        0xb84
        0xf94
    .end array-data

    :array_186
    .array-data 4
        0x1
        0x8
        0x4
        0x1
    .end array-data

    :array_192
    .array-data 4
        0x3
        0x6
        0x4
        0x1
    .end array-data

    :array_19e
    .array-data 4
        0x3
        0x4
        0x6
        0x1
    .end array-data

    :array_1aa
    .array-data 4
        0x3
        0x2
        0x8
        0x1
    .end array-data

    :array_1b6
    .array-data 4
        0x2
        0x6
        0x5
        0x1
    .end array-data

    :array_1c2
    .array-data 4
        0x2
        0x2
        0x9
        0x1
    .end array-data

    :array_1ce
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_1e2
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_1f6
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_20a
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_21e
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_232
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_246
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_25a
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_26e
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_282
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_296
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_2aa
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_2be
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_2d2
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_2e6
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_2fa
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_30e
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_322
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_336
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_34a
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_35e
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_372
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_386
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    :array_39a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3a2
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_3ac
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_3b8
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_3c6
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_3d6
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_3e8
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_3fc
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_412
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_42a
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .registers 13
    .param p1, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 691
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    .line 692
    .local v0, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v1

    .line 694
    .local v1, "evenSum":I
    const/4 v2, 0x0

    .line 695
    .local v2, "incrementOdd":Z
    const/4 v3, 0x0

    .line 697
    .local v3, "decrementOdd":Z
    const/4 v4, 0x4

    const/16 v5, 0xd

    if-le v0, v5, :cond_19

    .line 698
    const/4 v3, 0x1

    goto :goto_1c

    .line 699
    :cond_19
    if-ge v0, v4, :cond_1c

    .line 700
    const/4 v2, 0x1

    .line 702
    :cond_1c
    :goto_1c
    const/4 v6, 0x0

    .line 703
    .local v6, "incrementEven":Z
    const/4 v7, 0x0

    .line 704
    .local v7, "decrementEven":Z
    if-le v1, v5, :cond_22

    .line 705
    const/4 v7, 0x1

    goto :goto_25

    .line 706
    :cond_22
    if-ge v1, v4, :cond_25

    .line 707
    const/4 v6, 0x1

    .line 710
    :cond_25
    :goto_25
    add-int v4, v0, v1

    sub-int/2addr v4, p1

    .line 711
    .local v4, "mismatch":I
    and-int/lit8 v5, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v9, :cond_30

    const/4 v5, 0x1

    goto :goto_31

    :cond_30
    const/4 v5, 0x0

    .line 712
    .local v5, "oddParityBad":Z
    :goto_31
    and-int/lit8 v10, v1, 0x1

    if-nez v10, :cond_37

    const/4 v8, 0x1

    nop

    .line 713
    .local v8, "evenParityBad":Z
    :cond_37
    if-ne v4, v9, :cond_4d

    .line 714
    if-eqz v5, :cond_44

    .line 715
    if-nez v8, :cond_3f

    .line 718
    const/4 v3, 0x1

    goto :goto_79

    .line 716
    :cond_3f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 720
    :cond_44
    if-eqz v8, :cond_48

    .line 723
    const/4 v7, 0x1

    goto :goto_79

    .line 721
    :cond_48
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 725
    :cond_4d
    const/4 v9, -0x1

    if-ne v4, v9, :cond_64

    .line 726
    if-eqz v5, :cond_5b

    .line 727
    if-nez v8, :cond_56

    .line 730
    const/4 v2, 0x1

    goto :goto_79

    .line 728
    :cond_56
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 732
    :cond_5b
    if-eqz v8, :cond_5f

    .line 735
    const/4 v6, 0x1

    goto :goto_79

    .line 733
    :cond_5f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 737
    :cond_64
    if-nez v4, :cond_c3

    .line 738
    if-eqz v5, :cond_77

    .line 739
    if-eqz v8, :cond_72

    .line 743
    if-ge v0, v1, :cond_6f

    .line 744
    const/4 v2, 0x1

    .line 745
    const/4 v7, 0x1

    goto :goto_79

    .line 747
    :cond_6f
    const/4 v3, 0x1

    .line 748
    const/4 v6, 0x1

    goto :goto_79

    .line 740
    :cond_72
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 751
    :cond_77
    if-nez v8, :cond_be

    .line 760
    :goto_79
    if-eqz v2, :cond_8e

    .line 761
    if-nez v3, :cond_89

    .line 764
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_8e

    .line 762
    :cond_89
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 766
    :cond_8e
    :goto_8e
    if-eqz v3, :cond_9b

    .line 767
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 769
    :cond_9b
    if-eqz v6, :cond_b0

    .line 770
    if-nez v7, :cond_ab

    .line 773
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_b0

    .line 771
    :cond_ab
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 775
    :cond_b0
    :goto_b0
    if-eqz v7, :cond_bd

    .line 776
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    .line 778
    :cond_bd
    return-void

    .line 752
    :cond_be
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 757
    :cond_c3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method private checkChecksum()Z
    .registers 12

    .line 377
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    const/4 v2, 0x0

    move-object v3, v2

    .line 378
    .local v3, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v3, v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    .line 379
    .local v0, "checkCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v4

    move-object v5, v2

    .line 381
    .local v5, "firstCharacter":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v5, v4

    if-nez v4, :cond_19

    .line 382
    return v1

    .line 385
    :cond_19
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v4

    .line 386
    .local v4, "checksum":I
    const/4 v6, 0x2

    .line 388
    .local v6, "s":I
    const/4 v7, 0x1

    move-object v8, v2

    const/4 v2, 0x1

    .local v2, "i":I
    :goto_21
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_4d

    .line 389
    iget-object v9, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 390
    .local v9, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    add-int/2addr v4, v10

    .line 391
    add-int/lit8 v6, v6, 0x1

    .line 392
    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    .line 393
    .local v8, "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v8, v10

    if-eqz v10, :cond_4a

    .line 394
    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    add-int/2addr v4, v10

    .line 395
    add-int/lit8 v6, v6, 0x1

    .line 388
    .end local v8    # "currentRightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v9    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 399
    :cond_4d
    rem-int/lit16 v4, v4, 0xd3

    .line 401
    add-int/lit8 v8, v6, -0x4

    mul-int/lit16 v8, v8, 0xd3

    add-int/2addr v8, v4

    .line 403
    .local v2, "checkCharacterValue":I
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v9

    if-ne v8, v9, :cond_5b

    return v7

    :cond_5b
    return v1
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .registers 9
    .param p2, "currentRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 214
    .local p1, "collectedRows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    move v0, p2

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 215
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 216
    .local v1, "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 218
    .local v3, "collectedRow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    .end local v3    # "collectedRow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    goto :goto_1a

    .line 220
    :cond_30
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-static {v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 226
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 227
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object v2

    .line 230
    :cond_4a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v2, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    move-object v2, v3

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v3, v0, 0x1

    :try_start_58
    invoke-direct {p0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3
    :try_end_5c
    .catch Lcom/google/zxing/NotFoundException; {:try_start_58 .. :try_end_5c} :catch_5d

    return-object v3

    .line 236
    :catch_5d
    move-exception v3

    .line 214
    .end local v1    # "row":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .end local v2    # "rs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    .end local v0    # "i":I
    :cond_61
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private checkRows(Z)Ljava/util/List;
    .registers 5
    .param p1, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x19

    if-le v0, v2, :cond_11

    .line 188
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    return-object v1

    .line 192
    :cond_11
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    if-eqz p1, :cond_1d

    .line 194
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 197
    :cond_1d
    move-object v0, v1

    .line 199
    .local v0, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :try_start_1e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1
    :try_end_28
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1e .. :try_end_28} :catch_2a

    move-object v0, v1

    .line 202
    goto :goto_2b

    .line 200
    :catch_2a
    move-exception v1

    .line 204
    :goto_2b
    if-eqz p1, :cond_32

    .line 205
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 208
    :cond_32
    return-object v0
.end method

.method static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 360
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "resultingString":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 366
    .local v2, "firstPoints":[Lcom/google/zxing/ResultPoint;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 368
    .local v3, "lastPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v5, Lcom/google/zxing/Result;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    aget-object v7, v2, v1

    aput-object v7, v6, v1

    aget-object v7, v2, v4

    aput-object v7, v6, v4

    aget-object v1, v3, v1

    const/4 v7, 0x2

    aput-object v1, v6, v7

    aget-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v1, v6, v4

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v4, 0x0

    invoke-direct {v5, v0, v4, v6, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v5
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .registers 21
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "forcedOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 460
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 461
    .local v4, "counters":[I
    move-object v4, v2

    const/4 v5, 0x0

    aput v5, v2, v5

    .line 462
    const/4 v2, 0x1

    aput v5, v4, v2

    .line 463
    const/4 v6, 0x2

    aput v5, v4, v6

    .line 464
    const/4 v7, 0x3

    aput v5, v4, v7

    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    .line 469
    .local v8, "width":I
    if-ltz p3, :cond_22

    .line 470
    move/from16 v3, p3

    .line 475
    .local v3, "rowOffset":I
    :goto_1f
    move-object/from16 v10, p2

    goto :goto_41

    .line 471
    .end local v3    # "rowOffset":I
    :cond_22
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 472
    const/4 v3, 0x0

    goto :goto_1f

    .line 474
    :cond_2a
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v2

    move-object/from16 v10, p2

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 475
    .local v3, "lastPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v9

    aget v3, v9, v2

    .line 477
    .local v3, "rowOffset":I
    :goto_41
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    rem-int/2addr v9, v6

    if-eqz v9, :cond_4a

    const/4 v9, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v9, 0x0

    .line 478
    .local v9, "searchingEvenPair":Z
    :goto_4b
    iget-boolean v11, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v11, :cond_55

    .line 479
    if-nez v9, :cond_53

    const/4 v11, 0x1

    goto :goto_54

    :cond_53
    const/4 v11, 0x0

    :goto_54
    move v9, v11

    .line 482
    :cond_55
    move v11, v3

    const/4 v3, 0x0

    .line 483
    .local v3, "isWhite":Z
    .local v11, "rowOffset":I
    :goto_57
    if-ge v11, v8, :cond_64

    .line 484
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    .line 485
    xor-int/2addr v12, v2

    move v3, v12

    if-eqz v12, :cond_64

    .line 488
    add-int/lit8 v11, v11, 0x1

    goto :goto_57

    .line 491
    :cond_64
    const/4 v12, 0x0

    .line 492
    .local v12, "counterPosition":I
    move v13, v11

    .line 493
    .local v13, "patternStart":I
    move v14, v13

    move v13, v12

    move v12, v3

    move v3, v11

    .local v3, "x":I
    .local v12, "isWhite":Z
    .local v13, "counterPosition":I
    .local v14, "patternStart":I
    :goto_6a
    if-ge v3, v8, :cond_b7

    .line 494
    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v15

    xor-int/2addr v15, v12

    if-eqz v15, :cond_79

    .line 495
    aget v15, v4, v13

    add-int/2addr v15, v2

    aput v15, v4, v13

    goto :goto_b4

    .line 497
    :cond_79
    if-ne v13, v7, :cond_aa

    .line 498
    if-eqz v9, :cond_80

    .line 499
    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 502
    :cond_80
    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v15

    if-eqz v15, :cond_8f

    .line 503
    iget-object v6, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aput v14, v6, v5

    .line 504
    iget-object v5, v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aput v3, v5, v2

    .line 505
    return-void

    .line 508
    :cond_8f
    if-eqz v9, :cond_94

    .line 509
    invoke-static {v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 512
    :cond_94
    aget v15, v4, v5

    aget v16, v4, v2

    add-int v15, v15, v16

    add-int/2addr v14, v15

    .line 513
    aget v15, v4, v6

    aput v15, v4, v5

    .line 514
    aget v15, v4, v7

    aput v15, v4, v2

    .line 515
    aput v5, v4, v6

    .line 516
    aput v5, v4, v7

    .line 517
    add-int/lit8 v13, v13, -0x1

    goto :goto_ac

    .line 519
    :cond_aa
    add-int/lit8 v13, v13, 0x1

    .line 521
    :goto_ac
    aput v2, v4, v13

    .line 522
    if-nez v12, :cond_b2

    const/4 v15, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v15, 0x0

    :goto_b3
    move v12, v15

    .line 493
    :goto_b4
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 525
    .end local v3    # "x":I
    :cond_b7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .registers 3
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "initialPos"    # I

    .line 408
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 409
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 410
    .local v0, "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    goto :goto_17

    .line 412
    .end local v0    # "currentPos":I
    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v0

    .line 413
    .restart local v0    # "currentPos":I
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v0

    .line 415
    :goto_17
    return v0
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .registers 4
    .param p0, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p1, "isOddPattern"    # Z
    .param p2, "leftChar"    # Z

    .line 686
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    if-nez p2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    .line 330
    .local p0, "pairs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 331
    .local v1, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    const/4 v2, 0x1

    .line 332
    .local v2, "allFound":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 333
    .local v4, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v5, 0x0

    .line 334
    .local v5, "found":Z
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 335
    .local v7, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v4, v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 336
    const/4 v5, 0x1

    .line 337
    goto :goto_3f

    .line 339
    .end local v7    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_3e
    goto :goto_2a

    .line 340
    :cond_3f
    :goto_3f
    if-nez v5, :cond_43

    .line 341
    const/4 v2, 0x0

    .line 342
    goto :goto_44

    .line 344
    .end local v4    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v5    # "found":Z
    :cond_43
    goto :goto_15

    .line 345
    :cond_44
    :goto_44
    if-eqz v2, :cond_48

    .line 347
    const/4 v0, 0x1

    return v0

    .line 349
    .end local v1    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .end local v2    # "allFound":Z
    :cond_48
    goto :goto_4

    .line 350
    :cond_49
    const/4 v0, 0x0

    return v0
.end method

.method private static isValidSequence(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)Z"
        }
    .end annotation

    .line 247
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_36

    aget-object v4, v0, v3

    .line 248
    .local v4, "sequence":[I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, v4

    if-gt v5, v6, :cond_33

    .line 252
    const/4 v5, 0x1

    .line 253
    .local v5, "stop":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2f

    .line 254
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v7

    aget v8, v4, v6

    if-eq v7, v8, :cond_2c

    .line 255
    const/4 v5, 0x0

    .line 256
    goto :goto_2f

    .line 253
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 260
    .end local v6    # "j":I
    :cond_2f
    :goto_2f
    if-eqz v5, :cond_33

    .line 261
    const/4 v0, 0x1

    return v0

    .line 247
    .end local v4    # "sequence":[I
    .end local v5    # "stop":Z
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 265
    :cond_36
    return v2
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .registers 19
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "oddPattern"    # Z

    .line 543
    move-object v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_26

    .line 546
    iget-object v4, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v4, v4, v0

    sub-int/2addr v4, v3

    .line 548
    .local v4, "firstElementStart":I
    :goto_c
    if-ltz v4, :cond_17

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_17

    .line 549
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 552
    :cond_17
    add-int/2addr v4, v3

    .line 553
    iget-object v5, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v5, v5, v0

    sub-int/2addr v5, v4

    .line 554
    .local v5, "firstCounter":I
    move v6, v4

    .line 555
    .local v6, "start":I
    iget-object v7, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v4, v7, v3

    .line 557
    .local v4, "end":I
    nop

    .line 563
    move v12, v4

    move v4, v5

    goto :goto_3b

    .line 560
    .end local v4    # "end":I
    .end local v5    # "firstCounter":I
    .end local v6    # "start":I
    :cond_26
    iget-object v4, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v6, v4, v0

    .line 562
    .restart local v6    # "start":I
    iget-object v4, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v4, v4, v3

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v4

    move v5, v0

    .line 563
    .local v5, "end":I
    move v5, v4

    iget-object v7, v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v7, v7, v3

    sub-int/2addr v4, v7

    move v12, v5

    .end local v5    # "end":I
    .end local v6    # "start":I
    .local v4, "firstCounter":I
    .local v11, "start":I
    .local v12, "end":I
    :goto_3b
    move v11, v6

    .line 567
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    .line 568
    .local v7, "counters":[I
    move-object v13, v5

    .end local v7    # "counters":[I
    .local v13, "counters":[I
    array-length v7, v13

    sub-int/2addr v7, v3

    invoke-static {v5, v0, v13, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    aput v4, v13, v0

    .line 573
    :try_start_4a
    sget-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    invoke-static {v13, v5}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I

    move-result v5
    :try_end_50
    .catch Lcom/google/zxing/NotFoundException; {:try_start_4a .. :try_end_50} :catch_65

    move v6, v5

    .line 576
    .local v6, "value":I
    nop

    .line 575
    nop

    .line 577
    new-instance v14, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v5, 0x2

    new-array v7, v5, [I

    aput v11, v7, v0

    aput v12, v7, v3

    move-object v5, v14

    move v8, v11

    move v9, v12

    move/from16 v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v14

    .line 574
    .end local v6    # "value":I
    :catch_65
    move-exception v0

    .line 575
    return-object v6
.end method

.method private static removePartialRows(Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 304
    .local v1, "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    move-object v1, v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 307
    const/4 v2, 0x1

    .line 308
    .local v2, "allFound":Z
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 309
    .local v4, "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    const/4 v5, 0x0

    .line 310
    .local v5, "found":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 311
    .local v7, "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v4, v7}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 312
    const/4 v5, 0x1

    .line 313
    goto :goto_4f

    .line 315
    .end local v7    # "pp":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_4e
    goto :goto_3a

    .line 316
    :cond_4f
    :goto_4f
    if-nez v5, :cond_53

    .line 317
    const/4 v2, 0x0

    .line 318
    goto :goto_54

    .line 320
    .end local v4    # "p":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v5    # "found":Z
    :cond_53
    goto :goto_29

    .line 321
    :cond_54
    :goto_54
    if-eqz v2, :cond_59

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 325
    .end local v1    # "r":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    .end local v2    # "allFound":Z
    :cond_59
    goto :goto_5

    .line 326
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/oned/rss/expanded/ExpandedRow;>;"
    :cond_5a
    return-void
.end method

.method private static reverseCounters([I)V
    .registers 5
    .param p0, "counters"    # [I

    .line 529
    array-length v0, p0

    .line 530
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_19

    .line 531
    aget v2, p0, v1

    .line 532
    .local v2, "tmp":I
    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v1

    .line 533
    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    .line 530
    .end local v2    # "tmp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 535
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method private storeRow(IZ)V
    .registers 9
    .param p1, "rowNumber"    # I
    .param p2, "wasReversed"    # Z

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "insertPos":I
    const/4 v1, 0x0

    .line 272
    .local v1, "prevIsSame":Z
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 273
    .local v3, "nextIsSame":Z
    :goto_4
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2b

    .line 274
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 275
    .local v2, "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    move-object v2, v4

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v4

    if-le v4, p1, :cond_22

    .line 276
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v3

    .line 277
    goto :goto_2b

    .line 279
    :cond_22
    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v1

    .line 280
    add-int/lit8 v0, v0, 0x1

    .line 281
    .end local v2    # "erow":Lcom/google/zxing/oned/rss/expanded/ExpandedRow;
    goto :goto_4

    .line 282
    :cond_2b
    :goto_2b
    if-nez v3, :cond_4f

    if-eqz v1, :cond_30

    goto :goto_4f

    .line 291
    :cond_30
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 292
    return-void

    .line 295
    :cond_3b
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    new-instance v4, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v5, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v4, v5, p1, p2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;IZ)V

    invoke-interface {v2, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 297
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/List;Ljava/util/List;)V

    .line 298
    return-void

    .line 283
    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .registers 31
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "isOddPattern"    # Z
    .param p4, "leftChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 584
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v2

    const/4 v3, 0x0

    .line 585
    .local v3, "counters":[I
    move-object v3, v2

    const/4 v4, 0x0

    aput v4, v2, v4

    .line 586
    const/4 v2, 0x1

    aput v4, v3, v2

    .line 587
    const/4 v5, 0x2

    aput v4, v3, v5

    .line 588
    const/4 v6, 0x3

    aput v4, v3, v6

    .line 589
    const/4 v6, 0x4

    aput v4, v3, v6

    .line 590
    const/4 v7, 0x5

    aput v4, v3, v7

    .line 591
    const/4 v7, 0x6

    aput v4, v3, v7

    .line 592
    const/4 v7, 0x7

    aput v4, v3, v7

    .line 594
    if-eqz p4, :cond_2d

    .line 595
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v7

    aget v7, v7, v4

    invoke-static {v0, v7, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 599
    const/4 v7, 0x0

    goto :goto_48

    .line 597
    :cond_2d
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v7

    aget v7, v7, v2

    invoke-static {v0, v7, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 599
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v3

    sub-int/2addr v8, v2

    .local v8, "j":I
    :goto_39
    if-ge v7, v8, :cond_48

    .line 600
    aget v9, v3, v7

    .line 601
    .local v9, "temp":I
    aget v10, v3, v8

    aput v10, v3, v7

    .line 602
    aput v9, v3, v8

    .line 599
    .end local v9    # "temp":I
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_39

    .line 607
    .end local v8    # "j":I
    .local v7, "numModules":I
    :cond_48
    :goto_48
    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x41880000    # 17.0f

    div-float/2addr v8, v9

    .line 610
    .local v8, "elementWidth":F
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v9

    aget v9, v9, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v10

    aget v10, v10, v4

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x41700000    # 15.0f

    div-float/2addr v9, v10

    .line 611
    .local v9, "expectedElementWidth":F
    sub-float v10, v8, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v10, v9

    const v11, 0x3e99999a    # 0.3f

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_17d

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v10

    .line 616
    .local v10, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v12

    .line 617
    .local v12, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v13

    .line 618
    .local v13, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v14

    .line 620
    .local v14, "evenRoundingErrors":[F
    const/4 v15, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .local v15, "i":I
    :goto_85
    array-length v4, v3

    if-ge v15, v4, :cond_db

    .line 621
    const/high16 v4, 0x3f800000    # 1.0f

    aget v5, v3, v15

    int-to-float v5, v5

    mul-float v5, v5, v4

    div-float/2addr v5, v8

    move/from16 v4, v16

    .line 622
    .local v4, "value":F
    move/from16 v16, v5

    .end local v4    # "value":F
    .local v16, "value":F
    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v4, v5

    move/from16 v5, v17

    .line 623
    .local v5, "count":I
    move v5, v4

    if-gtz v4, :cond_a8

    .line 624
    cmpg-float v4, v16, v11

    if-ltz v4, :cond_a3

    .line 627
    const/4 v4, 0x1

    goto :goto_bc

    .line 625
    :cond_a3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 628
    :cond_a8
    const/16 v4, 0x8

    if-le v5, v4, :cond_bb

    .line 629
    const v4, 0x410b3333    # 8.7f

    cmpl-float v4, v16, v4

    if-gtz v4, :cond_b6

    .line 632
    const/16 v4, 0x8

    goto :goto_bc

    .line 630
    :cond_b6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 634
    :cond_bb
    move v4, v5

    .end local v5    # "count":I
    .local v4, "count":I
    :goto_bc
    div-int/lit8 v5, v15, 0x2

    .line 635
    .local v5, "offset":I
    and-int/lit8 v17, v15, 0x1

    if-nez v17, :cond_ca

    .line 636
    aput v4, v10, v5

    .line 637
    int-to-float v11, v4

    sub-float v11, v16, v11

    aput v11, v13, v5

    goto :goto_d1

    .line 639
    :cond_ca
    aput v4, v12, v5

    .line 640
    int-to-float v11, v4

    sub-float v11, v16, v11

    aput v11, v14, v5

    .line 620
    .end local v4    # "count":I
    .end local v5    # "offset":I
    .end local v16    # "value":F
    :goto_d1
    add-int/lit8 v15, v15, 0x1

    move/from16 v17, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    const v11, 0x3e99999a    # 0.3f

    goto :goto_85

    .line 644
    .end local v15    # "i":I
    :cond_db
    const/16 v4, 0x11

    move-object/from16 v5, p0

    invoke-direct {v5, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    if-eqz p3, :cond_ec

    const/4 v15, 0x0

    goto :goto_ed

    :cond_ec
    const/4 v15, 0x2

    :goto_ed
    add-int/2addr v4, v15

    xor-int/lit8 v15, p4, 0x1

    add-int/2addr v4, v15

    sub-int/2addr v4, v2

    .line 648
    .local v4, "weightRowNumber":I
    const/4 v15, 0x0

    .line 649
    .local v15, "oddSum":I
    const/16 v16, 0x0

    .line 650
    .local v16, "oddChecksumPortion":I
    array-length v6, v10

    sub-int/2addr v6, v2

    .local v6, "i":I
    :goto_f7
    if-ltz v6, :cond_114

    .line 651
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v17

    if-eqz v17, :cond_10d

    .line 652
    sget-object v17, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v17, v17, v4

    mul-int/lit8 v20, v6, 0x2

    aget v17, v17, v20

    .line 653
    .local v17, "weight":I
    aget v20, v10, v6

    mul-int v20, v20, v17

    add-int v16, v16, v20

    .line 655
    .end local v17    # "weight":I
    :cond_10d
    aget v17, v10, v6

    add-int v15, v15, v17

    .line 650
    add-int/lit8 v6, v6, -0x1

    goto :goto_f7

    .line 657
    .end local v6    # "i":I
    :cond_114
    const/4 v6, 0x0

    .line 659
    .local v6, "evenChecksumPortion":I
    array-length v0, v12

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_117
    if-ltz v0, :cond_132

    .line 660
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v17

    if-eqz v17, :cond_12f

    .line 661
    sget-object v17, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    aget-object v17, v17, v4

    mul-int/lit8 v20, v0, 0x2

    add-int/lit8 v20, v20, 0x1

    aget v17, v17, v20

    .line 662
    .restart local v17    # "weight":I
    aget v20, v12, v0

    mul-int v20, v20, v17

    add-int v6, v6, v20

    .line 659
    .end local v17    # "weight":I
    :cond_12f
    add-int/lit8 v0, v0, -0x1

    goto :goto_117

    .line 666
    .end local v0    # "i":I
    :cond_132
    add-int v0, v16, v6

    .line 668
    .local v0, "checksumPortion":I
    and-int/lit8 v17, v15, 0x1

    if-nez v17, :cond_174

    const/16 v2, 0xd

    if-gt v15, v2, :cond_174

    const/4 v2, 0x4

    if-lt v15, v2, :cond_174

    .line 672
    const/16 v2, 0xd

    sub-int/2addr v2, v15

    const/16 v17, 0x2

    div-int/lit8 v2, v2, 0x2

    .line 673
    .local v2, "group":I
    sget-object v17, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    aget v1, v17, v2

    .line 674
    .local v1, "oddWidest":I
    move-object/from16 v21, v3

    .end local v3    # "counters":[I
    .local v21, "counters":[I
    rsub-int/lit8 v3, v1, 0x9

    .line 675
    .local v3, "evenWidest":I
    move/from16 v22, v4

    const/4 v4, 0x1

    .end local v4    # "weightRowNumber":I
    .local v22, "weightRowNumber":I
    invoke-static {v10, v1, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v4

    .line 676
    .local v4, "vOdd":I
    move/from16 v23, v1

    const/4 v1, 0x0

    .end local v1    # "oddWidest":I
    .local v23, "oddWidest":I
    invoke-static {v12, v3, v1}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 677
    .local v1, "vEven":I
    sget-object v17, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    aget v17, v17, v2

    .line 678
    .local v17, "tEven":I
    sget-object v18, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    aget v18, v18, v2

    .line 679
    .local v18, "gSum":I
    mul-int v19, v4, v17

    add-int v19, v19, v1

    move/from16 v24, v1

    .end local v1    # "vEven":I
    .local v24, "vEven":I
    add-int v1, v19, v18

    .line 681
    .local v1, "value":I
    move/from16 v25, v2

    .end local v2    # "group":I
    .local v25, "group":I
    new-instance v2, Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v2

    .line 669
    .end local v1    # "value":I
    .end local v17    # "tEven":I
    .end local v18    # "gSum":I
    .end local v21    # "counters":[I
    .end local v22    # "weightRowNumber":I
    .end local v23    # "oddWidest":I
    .end local v24    # "vEven":I
    .end local v25    # "group":I
    .local v3, "counters":[I
    .local v4, "weightRowNumber":I
    :cond_174
    move-object/from16 v21, v3

    move/from16 v22, v4

    .end local v3    # "counters":[I
    .end local v4    # "weightRowNumber":I
    .restart local v21    # "counters":[I
    .restart local v22    # "weightRowNumber":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 612
    .end local v0    # "checksumPortion":I
    .end local v6    # "evenChecksumPortion":I
    .end local v10    # "oddCounts":[I
    .end local v12    # "evenCounts":[I
    .end local v13    # "oddRoundingErrors":[F
    .end local v14    # "evenRoundingErrors":[F
    .end local v15    # "oddSum":I
    .end local v16    # "oddChecksumPortion":I
    .end local v21    # "counters":[I
    .end local v22    # "weightRowNumber":I
    .restart local v3    # "counters":[I
    :cond_17d
    move-object/from16 v5, p0

    move-object/from16 v21, v3

    .end local v3    # "counters":[I
    .restart local v21    # "counters":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 5
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 127
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 130
    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_10
    .catch Lcom/google/zxing/NotFoundException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v0

    .line 131
    :catch_11
    move-exception v0

    .line 135
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .registers 7
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 150
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-virtual {p0, p2, v0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v0

    .line 151
    .local v0, "nextPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    .line 153
    .end local v0    # "nextPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    goto :goto_0

    .line 154
    :catch_c
    move-exception v0

    .line 155
    .local v0, "nfe":Lcom/google/zxing/NotFoundException;
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 161
    .end local v0    # "nfe":Lcom/google/zxing/NotFoundException;
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 162
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object v0

    .line 165
    :cond_1e
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 166
    .local v0, "tryStackedDecode":Z
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->storeRow(IZ)V

    .line 167
    if-eqz v0, :cond_3d

    .line 170
    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 171
    .local v3, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    move-object v3, v2

    if-eqz v2, :cond_35

    .line 172
    return-object v3

    .line 174
    :cond_35
    invoke-direct {p0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object v1

    .line 175
    move-object v2, v1

    .end local v3    # "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    .local v2, "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    if-eqz v1, :cond_3d

    .line 176
    return-object v2

    .line 180
    .end local v2    # "ps":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    :cond_3d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 156
    .local v0, "nfe":Lcom/google/zxing/NotFoundException;
    :cond_42
    throw v0
.end method

.method getRows()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .registers 13
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 421
    .local p2, "previousPairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 422
    .local v0, "isOddPattern":Z
    :goto_d
    iget-boolean v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v3, :cond_17

    .line 423
    if-nez v0, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    move v0, v3

    .line 428
    :cond_17
    const/4 v3, 0x1

    .line 429
    .local v3, "keepFinding":Z
    const/4 v4, -0x1

    const/4 v5, 0x0

    move v6, v3

    move-object v3, v5

    .line 431
    .end local v3    # "keepFinding":Z
    .local v4, "forcedOffset":I
    .local v6, "keepFinding":Z
    :cond_1c
    invoke-direct {p0, p1, p2, v4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 432
    invoke-direct {p0, p1, p3, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v7

    .line 433
    .local v3, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    move-object v3, v7

    if-nez v7, :cond_2f

    .line 434
    iget-object v7, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    aget v7, v7, v1

    invoke-static {p1, v7}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v4

    goto :goto_30

    .line 436
    :cond_2f
    const/4 v6, 0x0

    .line 438
    :goto_30
    if-nez v6, :cond_1c

    .line 443
    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v7

    .line 445
    .local v7, "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_53

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result v8

    if-nez v8, :cond_4e

    goto :goto_53

    .line 446
    :cond_4e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 451
    :cond_53
    :goto_53
    :try_start_53
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v1
    :try_end_57
    .catch Lcom/google/zxing/NotFoundException; {:try_start_53 .. :try_end_57} :catch_59

    move-object v5, v1

    .line 454
    .local v5, "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    goto :goto_5b

    .line 452
    .end local v5    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :catch_59
    move-exception v1

    .line 453
    nop

    .restart local v5    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    :goto_5b
    move-object v1, v5

    .line 455
    .end local v5    # "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    .local v1, "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-direct {v5, v7, v1, v3, v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V

    return-object v5
.end method
