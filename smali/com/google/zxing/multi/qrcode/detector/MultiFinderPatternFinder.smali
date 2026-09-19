###### Class com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder (com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder)
.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .line 93
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 98
    return-void
.end method

.method private selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 108
    .local v2, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    move-object v2, v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    .line 110
    .local v4, "size":I
    move v4, v0

    const/4 v5, 0x3

    if-lt v0, v5, :cond_1c6

    .line 118
    const/4 v0, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_34

    .line 119
    new-array v1, v6, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    new-array v5, v5, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 121
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v7, v5, v3

    .line 122
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v7, v5, v6

    .line 123
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v6, v5, v0

    aput-object v5, v1, v3

    .line 119
    return-object v1

    .line 129
    :cond_34
    new-instance v7, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    invoke-direct {v7, v1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    const/4 v8, 0x0

    move-object v8, v1

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    const/4 v1, 0x0

    const/4 v13, 0x0

    .local v1, "i1":I
    :goto_49
    add-int/lit8 v14, v4, -0x2

    if-ge v1, v14, :cond_1ac

    .line 149
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 150
    .local v8, "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v8, v14

    if-eqz v14, :cond_19a

    .line 154
    add-int/lit8 v14, v1, 0x1

    .local v14, "i2":I
    :goto_58
    add-int/lit8 v15, v4, -0x1

    if-ge v14, v15, :cond_19a

    .line 155
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 156
    .local v9, "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v9, v15

    if-eqz v15, :cond_188

    .line 161
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v15

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v16

    sub-float v15, v15, v16

    .line 162
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v15, v0

    .line 163
    .local v15, "vModSize12":F
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v6

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 164
    const v6, 0x3d4ccccd    # 0.05f

    const/high16 v16, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v16

    if-lez v0, :cond_a1

    cmpl-float v0, v15, v6

    if-gez v0, :cond_97

    goto :goto_a1

    .line 148
    .end local v14    # "i2":I
    .end local v15    # "vModSize12":F
    :cond_97
    move-object/from16 v23, v2

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v20, 0x0

    goto/16 :goto_1a2

    .line 170
    .restart local v14    # "i2":I
    .restart local v15    # "vModSize12":F
    :cond_a1
    :goto_a1
    add-int/lit8 v0, v14, 0x1

    .local v0, "i3":I
    :goto_a3
    if-ge v0, v4, :cond_188

    .line 171
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 172
    .local v10, "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object/from16 v10, v19

    if-eqz v19, :cond_175

    .line 177
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v19

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v20

    sub-float v19, v19, v20

    .line 178
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v19, v19, v3

    .line 179
    .local v19, "vModSize23":F
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 180
    cmpl-float v3, v3, v16

    if-lez v3, :cond_e7

    cmpl-float v3, v19, v6

    if-gez v3, :cond_dd

    goto :goto_e7

    .line 154
    .end local v0    # "i3":I
    .end local v15    # "vModSize12":F
    .end local v19    # "vModSize23":F
    :cond_dd
    move-object/from16 v23, v2

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v20, 0x0

    goto/16 :goto_190

    .line 186
    .restart local v0    # "i3":I
    .restart local v15    # "vModSize12":F
    .restart local v19    # "vModSize23":F
    :cond_e7
    :goto_e7
    const/4 v3, 0x3

    new-array v5, v3, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/16 v20, 0x0

    aput-object v8, v5, v20

    const/16 v18, 0x1

    aput-object v9, v5, v18

    const/16 v17, 0x2

    aput-object v10, v5, v17

    .line 187
    .local v11, "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v11, v5

    invoke-static {v5}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 190
    new-instance v5, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v5, v11}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 191
    .local v12, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object v12, v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v3

    .line 192
    .local v3, "dA":F
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    .line 193
    .local v5, "dC":F
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v6

    move-object/from16 v23, v2

    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .local v23, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 196
    .local v2, "dB":F
    add-float v6, v3, v2

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v21, v21, v22

    div-float v6, v6, v21

    .line 197
    .local v13, "estimatedModuleCount":F
    move v13, v6

    const/high16 v21, 0x43340000    # 180.0f

    cmpl-float v6, v6, v21

    if-gtz v6, :cond_17d

    const/high16 v6, 0x41100000    # 9.0f

    cmpg-float v6, v13, v6

    if-ltz v6, :cond_17d

    .line 203
    sub-float v6, v3, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v21

    div-float v6, v6, v21

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 204
    const v21, 0x3dcccccd    # 0.1f

    cmpl-float v6, v6, v21

    if-gez v6, :cond_17d

    .line 209
    mul-float v6, v3, v3

    mul-float v22, v2, v2

    add-float v6, v6, v22

    move/from16 v25, v2

    move/from16 v24, v3

    .end local v2    # "dB":F
    .end local v3    # "dA":F
    .local v24, "dA":F
    .local v25, "dB":F
    float-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 211
    .local v2, "dCpy":F
    sub-float v3, v5, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 213
    cmpl-float v3, v3, v21

    if-gez v3, :cond_17d

    .line 218
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17d

    .line 170
    .end local v5    # "dC":F
    .end local v10    # "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v11    # "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v12    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .end local v13    # "estimatedModuleCount":F
    .end local v19    # "vModSize23":F
    .end local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v24    # "dA":F
    .end local v25    # "dB":F
    .local v2, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_175
    move-object/from16 v23, v2

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v20, 0x0

    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_17d
    :goto_17d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v23

    const/4 v3, 0x0

    const/4 v5, 0x3

    const v6, 0x3d4ccccd    # 0.05f

    goto/16 :goto_a3

    .line 154
    .end local v0    # "i3":I
    .end local v15    # "vModSize12":F
    .end local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_188
    move-object/from16 v23, v2

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v20, 0x0

    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :goto_190
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v23

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    goto/16 :goto_58

    .line 148
    .end local v9    # "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v14    # "i2":I
    .end local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_19a
    move-object/from16 v23, v2

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v20, 0x0

    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :goto_1a2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v23

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    goto/16 :goto_49

    .line 223
    .end local v1    # "i1":I
    .end local v8    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_1ac
    move-object/from16 v23, v2

    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c1

    .line 224
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    return-object v0

    .line 228
    :cond_1c1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 112
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .end local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    :cond_1c6
    move-object/from16 v23, v2

    .end local v2    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    .restart local v23    # "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 232
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

    .line 233
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

    .line 234
    .local v5, "pureBarcode":Z
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    .line 235
    .local v8, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v8, v6

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    .line 236
    .local v6, "maxI":I
    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v9

    .line 244
    .local v9, "maxJ":I
    int-to-float v10, v6

    const/high16 v11, 0x43640000    # 228.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    mul-float v10, v10, v11

    float-to-int v10, v10

    move v11, v3

    .line 245
    .local v11, "iSkip":I
    move v11, v10

    const/4 v12, 0x3

    if-lt v10, v12, :cond_3f

    if-eqz v4, :cond_40

    .line 246
    :cond_3f
    const/4 v11, 0x3

    .line 249
    :cond_40
    const/4 v10, 0x5

    new-array v10, v10, [I

    .line 250
    .local v10, "stateCount":[I
    add-int/lit8 v13, v11, -0x1

    .local v13, "i":I
    :goto_45
    if-ge v13, v6, :cond_d5

    .line 252
    aput v3, v10, v3

    .line 253
    aput v3, v10, v2

    .line 254
    const/4 v14, 0x2

    aput v3, v10, v14

    .line 255
    aput v3, v10, v12

    .line 256
    const/4 v15, 0x4

    aput v3, v10, v15

    .line 257
    const/16 v16, 0x0

    .line 258
    .local v16, "currentState":I
    move/from16 v7, v16

    const/16 v16, 0x0

    .local v7, "currentState":I
    .local v16, "j":I
    :goto_59
    move/from16 v18, v16

    move/from16 v12, v18

    .end local v16    # "j":I
    .local v12, "j":I
    if-ge v12, v9, :cond_c5

    .line 259
    invoke-virtual {v8, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v16

    if-eqz v16, :cond_74

    .line 261
    and-int/lit8 v14, v7, 0x1

    if-ne v14, v2, :cond_6b

    .line 262
    add-int/lit8 v7, v7, 0x1

    .line 264
    :cond_6b
    aget v14, v10, v7

    add-int/2addr v14, v2

    aput v14, v10, v7

    .line 258
    const/4 v14, 0x2

    const/16 v16, 0x3

    goto :goto_bf

    .line 266
    :cond_74
    and-int/lit8 v14, v7, 0x1

    if-nez v14, :cond_b6

    .line 267
    if-ne v7, v15, :cond_aa

    .line 268
    invoke-static {v10}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_95

    invoke-virtual {v0, v10, v13, v12, v5}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v14

    if-eqz v14, :cond_95

    .line 270
    const/4 v7, 0x0

    .line 271
    aput v3, v10, v3

    .line 272
    aput v3, v10, v2

    .line 273
    const/4 v14, 0x2

    aput v3, v10, v14

    .line 274
    const/16 v16, 0x3

    aput v3, v10, v16

    .line 275
    aput v3, v10, v15

    goto :goto_bf

    .line 277
    :cond_95
    const/4 v14, 0x2

    const/16 v16, 0x3

    aget v18, v10, v14

    aput v18, v10, v3

    .line 278
    aget v18, v10, v16

    aput v18, v10, v2

    .line 279
    aget v18, v10, v15

    aput v18, v10, v14

    .line 280
    aput v2, v10, v16

    .line 281
    aput v3, v10, v15

    .line 282
    const/4 v7, 0x3

    goto :goto_bf

    .line 285
    :cond_aa
    const/4 v14, 0x2

    const/16 v16, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v18, v10, v7

    add-int/lit8 v18, v18, 0x1

    aput v18, v10, v7

    goto :goto_bf

    .line 288
    :cond_b6
    const/4 v14, 0x2

    const/16 v16, 0x3

    aget v18, v10, v7

    add-int/lit8 v18, v18, 0x1

    aput v18, v10, v7

    .line 258
    :goto_bf
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v12

    const/4 v12, 0x3

    goto :goto_59

    .line 293
    .end local v12    # "j":I
    :cond_c5
    const/16 v16, 0x3

    invoke-static {v10}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v12

    if-eqz v12, :cond_d0

    .line 294
    invoke-virtual {v0, v10, v13, v9, v5}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    .line 250
    .end local v7    # "currentState":I
    :cond_d0
    add-int/2addr v13, v11

    const/4 v7, 0x0

    const/4 v12, 0x3

    goto/16 :goto_45

    .line 297
    .end local v13    # "i":I
    :cond_d5
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    .line 298
    .local v2, "patternInfo":[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPatternInfo;>;"
    array-length v12, v2

    const/16 v17, 0x0

    :goto_e1
    if-ge v3, v12, :cond_f8

    aget-object v13, v2, v3

    move-object/from16 v14, v17

    .line 300
    .local v14, "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v14, v13

    invoke-static {v13}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 301
    new-instance v13, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v13, v14}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v14    # "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v17, v14

    goto :goto_e1

    .line 304
    :cond_f8
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_101

    .line 305
    sget-object v3, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object v3

    .line 307
    :cond_101
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-interface {v7, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object v3
.end method

###### Class com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder.AnonymousClass1 (com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder$1)
.class synthetic Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;
.super Ljava/lang/Object;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder.ModuleSizeComparator (com.google.zxing.multi.qrcode.detector.MultiFinderPatternFinder$ModuleSizeComparator)
.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
.super Ljava/lang/Object;
.source "MultiFinderPatternFinder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModuleSizeComparator"
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;

    .line 79
    invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I
    .registers 9
    .param p1, "center1"    # Lcom/google/zxing/qrcode/detector/FinderPattern;
    .param p2, "center2"    # Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 82
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 83
    .local v1, "value":F
    move v1, v0

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_14

    const/4 v0, -0x1

    return v0

    :cond_14
    float-to-double v2, v1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 79
    check-cast p1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    check-cast p2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;->compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I

    move-result p1

    return p1
.end method
