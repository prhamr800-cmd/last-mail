###### Class com.google.zxing.common.HybridBinarizer (com.google.zxing.common.HybridBinarizer)
.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "HybridBinarizer.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final BLOCK_SIZE_MASK:I = 0x7

.field private static final BLOCK_SIZE_POWER:I = 0x3

.field private static final MINIMUM_DIMENSION:I = 0x28

.field private static final MIN_DYNAMIC_RANGE:I = 0x18


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .registers 2
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 53
    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 54
    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .registers 21
    .param p0, "luminances"    # [B
    .param p1, "subWidth"    # I
    .param p2, "subHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 166
    move/from16 v0, p1

    move/from16 v1, p2

    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 167
    .local v2, "blackPoints":[[I
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_11
    if-ge v4, v1, :cond_b8

    .line 168
    shl-int/lit8 v5, v4, 0x3

    .line 169
    .local v5, "yoffset":I
    add-int/lit8 v6, p4, -0x8

    .line 170
    .local v6, "maxYOffset":I
    if-le v5, v6, :cond_1a

    .line 171
    move v5, v6

    .line 173
    :cond_1a
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1b
    if-ge v7, v0, :cond_b0

    .line 174
    shl-int/lit8 v8, v7, 0x3

    .line 175
    .local v8, "xoffset":I
    add-int/lit8 v9, p3, -0x8

    .line 176
    .local v9, "maxXOffset":I
    if-le v8, v9, :cond_24

    .line 177
    move v8, v9

    .line 179
    :cond_24
    const/4 v10, 0x0

    .line 180
    .local v10, "sum":I
    const/16 v11, 0xff

    .line 181
    .local v11, "min":I
    const/4 v12, 0x0

    .line 182
    .local v12, "max":I
    const/4 v13, 0x0

    .local v13, "yy":I
    mul-int v14, v5, p3

    add-int/2addr v14, v8

    move v3, v11

    move v11, v10

    move v10, v13

    .end local v13    # "yy":I
    .local v3, "min":I
    .local v10, "yy":I
    .local v11, "sum":I
    .local v14, "offset":I
    :goto_2f
    move v13, v14

    .end local v14    # "offset":I
    .local v13, "offset":I
    const/16 v0, 0x8

    if-ge v10, v0, :cond_79

    .line 183
    move v15, v12

    move v12, v3

    const/4 v3, 0x0

    .local v3, "xx":I
    .local v12, "min":I
    .local v15, "max":I
    :goto_37
    if-ge v3, v0, :cond_50

    .line 184
    add-int v14, v13, v3

    aget-byte v0, p0, v14

    and-int/lit16 v0, v0, 0xff

    .line 185
    .local v0, "pixel":I
    add-int/2addr v11, v0

    .line 187
    if-ge v0, v12, :cond_43

    .line 188
    move v12, v0

    .line 190
    :cond_43
    move v1, v15

    .end local v15    # "max":I
    .local v1, "max":I
    if-le v0, v1, :cond_48

    .line 191
    move v15, v0

    goto :goto_49

    .line 183
    .end local v0    # "pixel":I
    :cond_48
    move v15, v1

    .end local v1    # "max":I
    .restart local v15    # "max":I
    :goto_49
    add-int/lit8 v3, v3, 0x1

    const/16 v0, 0x8

    move/from16 v1, p2

    goto :goto_37

    .line 195
    .end local v3    # "xx":I
    :cond_50
    move v1, v15

    .end local v15    # "max":I
    .restart local v1    # "max":I
    sub-int v0, v1, v12

    const/16 v3, 0x18

    if-le v0, v3, :cond_6e

    .line 197
    :cond_57
    add-int/lit8 v10, v10, 0x1

    add-int v13, v13, p3

    const/16 v0, 0x8

    if-ge v10, v0, :cond_6e

    .line 198
    const/4 v3, 0x0

    .restart local v3    # "xx":I
    :goto_60
    if-ge v3, v0, :cond_57

    .line 199
    add-int v14, v13, v3

    aget-byte v0, p0, v14

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v11, v0

    .line 198
    add-int/lit8 v3, v3, 0x1

    const/16 v0, 0x8

    goto :goto_60

    .line 182
    .end local v3    # "xx":I
    :cond_6e
    add-int/lit8 v10, v10, 0x1

    add-int v14, v13, p3

    move v3, v12

    move/from16 v0, p1

    move v12, v1

    move/from16 v1, p2

    goto :goto_2f

    .line 206
    .end local v1    # "max":I
    .end local v10    # "yy":I
    .end local v13    # "offset":I
    .local v3, "min":I
    .local v12, "max":I
    :cond_79
    shr-int/lit8 v0, v11, 0x6

    .line 207
    .local v0, "average":I
    sub-int v1, v12, v3

    const/16 v10, 0x18

    if-gt v1, v10, :cond_a4

    .line 214
    div-int/lit8 v0, v3, 0x2

    .line 216
    if-lez v4, :cond_a4

    if-lez v7, :cond_a4

    .line 224
    add-int/lit8 v1, v4, -0x1

    aget-object v1, v2, v1

    aget v1, v1, v7

    aget-object v10, v2, v4

    add-int/lit8 v13, v7, -0x1

    aget v10, v10, v13

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v1, v10

    add-int/lit8 v10, v4, -0x1

    aget-object v10, v2, v10

    add-int/lit8 v13, v7, -0x1

    aget v10, v10, v13

    add-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x4

    .line 226
    .local v1, "averageNeighborBlackPoint":I
    if-ge v3, v1, :cond_a4

    .line 227
    move v0, v1

    .line 231
    .end local v1    # "averageNeighborBlackPoint":I
    :cond_a4
    aget-object v1, v2, v4

    aput v0, v1, v7

    .line 173
    .end local v0    # "average":I
    .end local v3    # "min":I
    .end local v8    # "xoffset":I
    .end local v9    # "maxXOffset":I
    .end local v11    # "sum":I
    .end local v12    # "max":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    goto/16 :goto_1b

    .line 167
    .end local v5    # "yoffset":I
    .end local v6    # "maxYOffset":I
    .end local v7    # "x":I
    :cond_b0
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    goto/16 :goto_11

    .line 234
    .end local v4    # "y":I
    :cond_b8
    return-object v2
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .registers 26
    .param p0, "luminances"    # [B
    .param p1, "subWidth"    # I
    .param p2, "subHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "blackPoints"    # [[I
    .param p6, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .line 108
    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "y":I
    :goto_6
    if-ge v3, v1, :cond_63

    .line 109
    shl-int/lit8 v4, v3, 0x3

    .line 110
    .local v4, "yoffset":I
    add-int/lit8 v5, p4, -0x8

    .line 111
    .local v5, "maxYOffset":I
    if-le v4, v5, :cond_f

    .line 112
    move v4, v5

    .line 114
    :cond_f
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_10
    move v12, v6

    .end local v6    # "x":I
    .local v12, "x":I
    if-ge v12, v0, :cond_60

    .line 115
    shl-int/lit8 v6, v12, 0x3

    .line 116
    .local v6, "xoffset":I
    add-int/lit8 v13, p3, -0x8

    .line 117
    .local v13, "maxXOffset":I
    if-le v6, v13, :cond_1a

    .line 118
    move v6, v13

    .line 120
    .end local v6    # "xoffset":I
    .local v14, "xoffset":I
    :cond_1a
    move v14, v6

    add-int/lit8 v6, v0, -0x3

    const/4 v7, 0x2

    invoke-static {v12, v7, v6}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v15

    .line 121
    .local v15, "left":I
    add-int/lit8 v6, v1, -0x3

    invoke-static {v3, v7, v6}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v16

    .line 122
    .local v16, "top":I
    const/4 v6, 0x0

    .line 123
    .local v6, "sum":I
    const/4 v8, -0x2

    move/from16 v17, v6

    .end local v6    # "sum":I
    .local v8, "z":I
    .local v17, "sum":I
    :goto_2c
    move v6, v8

    .end local v8    # "z":I
    .local v6, "z":I
    if-gt v6, v7, :cond_4e

    .line 124
    add-int v8, v16, v6

    aget-object v8, p5, v8

    .line 125
    .local v8, "blackRow":[I
    add-int/lit8 v9, v15, -0x2

    aget v9, v8, v9

    add-int/lit8 v10, v15, -0x1

    aget v10, v8, v10

    add-int/2addr v9, v10

    aget v10, v8, v15

    add-int/2addr v9, v10

    add-int/lit8 v10, v15, 0x1

    aget v10, v8, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v15, 0x2

    aget v10, v8, v10

    add-int/2addr v9, v10

    add-int v17, v17, v9

    .line 123
    .end local v8    # "blackRow":[I
    add-int/lit8 v8, v6, 0x1

    goto :goto_2c

    .line 127
    .end local v6    # "z":I
    :cond_4e
    div-int/lit8 v18, v17, 0x19

    .line 128
    .local v18, "average":I
    move-object/from16 v6, p0

    move v7, v14

    move v8, v4

    move/from16 v9, v18

    move/from16 v10, p3

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v11}, Lcom/google/zxing/common/HybridBinarizer;->thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V

    .line 114
    .end local v13    # "maxXOffset":I
    .end local v14    # "xoffset":I
    .end local v15    # "left":I
    .end local v16    # "top":I
    .end local v17    # "sum":I
    .end local v18    # "average":I
    add-int/lit8 v6, v12, 0x1

    goto :goto_10

    .line 108
    .end local v4    # "yoffset":I
    .end local v5    # "maxYOffset":I
    .end local v12    # "x":I
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 131
    .end local v3    # "y":I
    :cond_63
    return-void
.end method

.method private static cap(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 134
    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    if-le p0, p2, :cond_6

    return p2

    :cond_6
    return p0
.end method

.method private static thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V
    .registers 12
    .param p0, "luminances"    # [B
    .param p1, "xoffset"    # I
    .param p2, "yoffset"    # I
    .param p3, "threshold"    # I
    .param p4, "stride"    # I
    .param p5, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .line 146
    const/4 v0, 0x0

    .local v0, "y":I
    mul-int v1, p2, p4

    add-int/2addr v1, p1

    .local v1, "offset":I
    :goto_4
    const/16 v2, 0x8

    if-ge v0, v2, :cond_21

    .line 147
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_9
    if-ge v3, v2, :cond_1d

    .line 149
    add-int v4, v1, v3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-gt v4, p3, :cond_1a

    .line 150
    add-int v4, p1, v3

    add-int v5, p2, v0

    invoke-virtual {p5, v4, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 147
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 146
    .end local v3    # "x":I
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, p4

    goto :goto_4

    .line 154
    .end local v0    # "y":I
    .end local v1    # "offset":I
    :cond_21
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .registers 3
    .param p1, "source"    # Lcom/google/zxing/LuminanceSource;

    .line 93
    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-eqz v0, :cond_7

    .line 64
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v0

    .line 66
    :cond_7
    invoke-virtual {p0}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    .local v1, "source":Lcom/google/zxing/LuminanceSource;
    move-object v1, v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    .line 68
    .local v0, "width":I
    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v9

    .line 69
    .local v9, "height":I
    const/16 v2, 0x28

    if-lt v0, v2, :cond_48

    if-lt v9, v2, :cond_48

    .line 70
    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v10

    .line 71
    .local v10, "luminances":[B
    shr-int/lit8 v2, v0, 0x3

    .line 72
    .local v2, "subWidth":I
    and-int/lit8 v3, v0, 0x7

    if-eqz v3, :cond_27

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 75
    .end local v2    # "subWidth":I
    .local v11, "subWidth":I
    :cond_27
    move v11, v2

    shr-int/lit8 v2, v9, 0x3

    .line 76
    .local v2, "subHeight":I
    and-int/lit8 v3, v9, 0x7

    if-eqz v3, :cond_30

    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 79
    .end local v2    # "subHeight":I
    .local v12, "subHeight":I
    :cond_30
    move v12, v2

    invoke-static {v10, v11, v12, v0, v9}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v13

    .line 81
    .local v13, "blackPoints":[[I
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v2, v0, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v14, v2

    .line 82
    .local v14, "newMatrix":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v10

    move v3, v11

    move v4, v12

    move v5, v0

    move v6, v9

    move-object v7, v13

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    .line 83
    iput-object v14, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 84
    .end local v10    # "luminances":[B
    .end local v11    # "subWidth":I
    .end local v12    # "subHeight":I
    .end local v13    # "blackPoints":[[I
    .end local v14    # "newMatrix":Lcom/google/zxing/common/BitMatrix;
    goto :goto_4e

    .line 86
    :cond_48
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    iput-object v2, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 88
    :goto_4e
    iget-object v2, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v2
.end method
