###### Class com.google.zxing.qrcode.detector.AlignmentPatternFinder (com.google.zxing.qrcode.detector.AlignmentPatternFinder)
.class final Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
.super Ljava/lang/Object;
.source "AlignmentPatternFinder.java"


# instance fields
.field private final crossCheckStateCount:[I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final moduleSize:F

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/AlignmentPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;

.field private final startX:I

.field private final startY:I

.field private final width:I


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V
    .registers 10
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "moduleSize"    # F
    .param p7, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    .line 71
    iput p2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 72
    iput p3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    .line 73
    iput p4, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    .line 74
    iput p5, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 75
    iput p6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    .line 77
    iput-object p7, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 78
    return-void
.end method

.method private static centerFromEnd([II)F
    .registers 5
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .line 161
    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckVertical(IIII)F
    .registers 14
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .line 193
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    move-object v2, v1

    .line 195
    .local v2, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 196
    .local v0, "maxI":I
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    .line 197
    .local v1, "stateCount":[I
    move-object v1, v3

    const/4 v4, 0x0

    aput v4, v3, v4

    .line 198
    const/4 v3, 0x1

    aput v4, v1, v3

    .line 199
    const/4 v5, 0x2

    aput v4, v1, v5

    .line 202
    move v6, p1

    .line 203
    .local v6, "i":I
    :goto_16
    if-ltz v6, :cond_2a

    invoke-virtual {v2, p2, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_2a

    aget v7, v1, v3

    if-gt v7, p3, :cond_2a

    .line 204
    aget v7, v1, v3

    add-int/2addr v7, v3

    aput v7, v1, v3

    .line 205
    add-int/lit8 v6, v6, -0x1

    goto :goto_16

    .line 208
    :cond_2a
    const/high16 v7, 0x7fc00000    # Float.NaN

    if-ltz v6, :cond_a5

    aget v8, v1, v3

    if-le v8, p3, :cond_34

    goto/16 :goto_a5

    .line 211
    :cond_34
    :goto_34
    if-ltz v6, :cond_48

    invoke-virtual {v2, p2, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_48

    aget v8, v1, v4

    if-gt v8, p3, :cond_48

    .line 212
    aget v8, v1, v4

    add-int/2addr v8, v3

    aput v8, v1, v4

    .line 213
    add-int/lit8 v6, v6, -0x1

    goto :goto_34

    .line 215
    :cond_48
    aget v8, v1, v4

    if-le v8, p3, :cond_4d

    .line 216
    return v7

    .line 220
    :cond_4d
    add-int/lit8 v6, p1, 0x1

    .line 221
    :goto_4f
    if-ge v6, v0, :cond_63

    invoke-virtual {v2, p2, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_63

    aget v8, v1, v3

    if-gt v8, p3, :cond_63

    .line 222
    aget v8, v1, v3

    add-int/2addr v8, v3

    aput v8, v1, v3

    .line 223
    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    .line 225
    :cond_63
    if-eq v6, v0, :cond_a4

    aget v8, v1, v3

    if-le v8, p3, :cond_6a

    goto :goto_a4

    .line 228
    :cond_6a
    :goto_6a
    if-ge v6, v0, :cond_7e

    invoke-virtual {v2, p2, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_7e

    aget v8, v1, v5

    if-gt v8, p3, :cond_7e

    .line 229
    aget v8, v1, v5

    add-int/2addr v8, v3

    aput v8, v1, v5

    .line 230
    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    .line 232
    :cond_7e
    aget v8, v1, v5

    if-le v8, p3, :cond_83

    .line 233
    return v7

    .line 236
    :cond_83
    aget v4, v1, v4

    aget v3, v1, v3

    add-int/2addr v4, v3

    aget v3, v1, v5

    add-int/2addr v4, v3

    .line 237
    .local v4, "stateCountTotal":I
    sub-int v3, v4, p4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    mul-int/lit8 v5, p4, 0x2

    if-lt v3, v5, :cond_98

    .line 238
    return v7

    .line 241
    :cond_98
    invoke-direct {p0, v1}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-static {v1, v6}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v3

    return v3

    :cond_a3
    return v7

    .line 226
    .end local v4    # "stateCountTotal":I
    :cond_a4
    :goto_a4
    return v7

    .line 209
    :cond_a5
    :goto_a5
    return v7
.end method

.method private foundPatternCross([I)Z
    .registers 7
    .param p1, "stateCount"    # [I

    .line 170
    iget v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    const/4 v1, 0x0

    .line 171
    .local v1, "moduleSize":F
    move v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 172
    .local v0, "maxVariance":F
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1d

    .line 173
    aget v4, p1, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_1a

    .line 174
    return v2

    .line 172
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 177
    .end local v3    # "i":I
    :cond_1d
    const/4 v2, 0x1

    return v2
.end method

.method private handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .registers 12
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I

    .line 256
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    .line 257
    .local v1, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v4

    .line 258
    .local v4, "centerJ":F
    float-to-int v5, v4

    aget v6, p1, v2

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {p0, p2, v5, v6, v1}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckVertical(IIII)F

    move-result v5

    const/4 v6, 0x0

    .line 259
    .local v6, "centerI":F
    move v6, v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_60

    .line 260
    aget v0, p1, v0

    aget v2, p1, v2

    add-int/2addr v0, v2

    aget v2, p1, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    .line 261
    .local v0, "estimatedModuleSize":F
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v7

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    .line 263
    .local v3, "center":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move-object v3, v5

    invoke-virtual {v5, v0, v6, v4}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->aboutEquals(FFF)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 264
    invoke-virtual {v3, v6, v4, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v2

    return-object v2

    .line 266
    :cond_4c
    goto :goto_34

    .line 268
    .end local v3    # "center":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_4d
    new-instance v2, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    invoke-direct {v2, v4, v6, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    .line 269
    .local v2, "point":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v3, :cond_60

    .line 271
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v3, v2}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 274
    .end local v0    # "estimatedModuleSize":F
    .end local v2    # "point":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_60
    return-object v7
.end method


# virtual methods
.method find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 88
    iget v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 89
    .local v0, "startX":I
    iget v1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 90
    .local v1, "height":I
    iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    add-int/2addr v2, v0

    .line 91
    .local v2, "maxJ":I
    iget v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    .line 94
    .local v3, "middleI":I
    const/4 v4, 0x3

    new-array v4, v4, [I

    .line 95
    .local v4, "stateCount":[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    .local v6, "iGen":I
    :goto_13
    if-ge v6, v1, :cond_8f

    .line 97
    and-int/lit8 v8, v6, 0x1

    const/4 v9, 0x2

    if-nez v8, :cond_1e

    add-int/lit8 v8, v6, 0x1

    div-int/2addr v8, v9

    goto :goto_22

    :cond_1e
    add-int/lit8 v8, v6, 0x1

    div-int/2addr v8, v9

    neg-int v8, v8

    :goto_22
    add-int/2addr v8, v3

    .line 98
    .local v8, "i":I
    aput v5, v4, v5

    .line 99
    const/4 v10, 0x1

    aput v5, v4, v10

    .line 100
    aput v5, v4, v9

    .line 101
    move v11, v0

    .line 105
    .local v11, "j":I
    :goto_2b
    if-ge v11, v2, :cond_38

    iget-object v12, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v12, v11, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-nez v12, :cond_38

    .line 106
    add-int/lit8 v11, v11, 0x1

    goto :goto_2b

    .line 108
    :cond_38
    move-object v12, v7

    const/4 v7, 0x0

    .line 109
    .local v7, "currentState":I
    :goto_3a
    if-ge v11, v2, :cond_7a

    .line 110
    iget-object v13, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v13, v11, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_6e

    .line 112
    if-ne v7, v10, :cond_4c

    .line 113
    aget v13, v4, v10

    add-int/2addr v13, v10

    aput v13, v4, v10

    goto :goto_77

    .line 115
    :cond_4c
    if-ne v7, v9, :cond_66

    .line 116
    invoke-direct {p0, v4}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v13

    if-eqz v13, :cond_5c

    .line 117
    invoke-direct {p0, v4, v8, v11}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v13

    .line 118
    .local v12, "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move-object v12, v13

    if-eqz v13, :cond_5c

    .line 119
    return-object v12

    .line 122
    .end local v12    # "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_5c
    aget v13, v4, v9

    aput v13, v4, v5

    .line 123
    aput v10, v4, v10

    .line 124
    aput v5, v4, v9

    .line 125
    const/4 v7, 0x1

    goto :goto_77

    .line 127
    :cond_66
    add-int/lit8 v7, v7, 0x1

    aget v13, v4, v7

    add-int/2addr v13, v10

    aput v13, v4, v7

    goto :goto_77

    .line 131
    :cond_6e
    if-ne v7, v10, :cond_72

    .line 132
    add-int/lit8 v7, v7, 0x1

    .line 134
    :cond_72
    aget v13, v4, v7

    add-int/2addr v13, v10

    aput v13, v4, v7

    .line 136
    :goto_77
    add-int/lit8 v11, v11, 0x1

    goto :goto_3a

    .line 138
    :cond_7a
    invoke-direct {p0, v4}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 139
    invoke-direct {p0, v4, v8, v2}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v9

    move-object v10, v12

    .line 140
    .local v10, "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move-object v10, v9

    if-eqz v9, :cond_89

    .line 141
    return-object v10

    .line 95
    .end local v7    # "currentState":I
    .end local v8    # "i":I
    .end local v11    # "j":I
    :cond_89
    move-object v7, v10

    goto :goto_8c

    .end local v10    # "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_8b
    move-object v7, v12

    :goto_8c
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 149
    .end local v6    # "iGen":I
    :cond_8f
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a0

    .line 150
    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    return-object v5

    .line 153
    :cond_a0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method
