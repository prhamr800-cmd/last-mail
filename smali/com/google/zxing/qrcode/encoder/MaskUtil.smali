###### Class com.google.zxing.qrcode.encoder.MaskUtil (com.google.zxing.qrcode.encoder.MaskUtil)
.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# static fields
.field private static final N1:I = 0x3

.field private static final N2:I = 0x3

.field private static final N3:I = 0x28

.field private static final N4:I = 0xa


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 3
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .registers 14
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .param p1, "isHorizontal"    # Z

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "penalty":I
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    .line 197
    .local v1, "iLimit":I
    :goto_c
    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    .line 198
    .local v2, "jLimit":I
    :goto_17
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v3

    .line 199
    .local v3, "array":[[B
    const/4 v4, 0x0

    move v5, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .local v0, "i":I
    .local v5, "penalty":I
    :goto_1f
    if-ge v0, v1, :cond_52

    .line 200
    const/4 v7, 0x0

    .line 201
    .local v7, "numSameBitCells":I
    const/4 v8, -0x1

    .line 202
    .local v8, "prevBit":I
    move v9, v6

    move v6, v5

    const/4 v5, 0x0

    .local v5, "j":I
    .local v6, "penalty":I
    :goto_26
    const/4 v10, 0x5

    if-ge v5, v2, :cond_46

    .line 203
    if-eqz p1, :cond_30

    aget-object v11, v3, v0

    aget-byte v11, v11, v5

    goto :goto_34

    :cond_30
    aget-object v11, v3, v5

    aget-byte v11, v11, v0

    .line 204
    .local v9, "bit":I
    :goto_34
    move v9, v11

    if-ne v11, v8, :cond_3a

    .line 205
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 207
    :cond_3a
    if-lt v7, v10, :cond_41

    .line 208
    add-int/lit8 v10, v7, -0x5

    add-int/lit8 v10, v10, 0x3

    add-int/2addr v6, v10

    .line 210
    :cond_41
    const/4 v7, 0x1

    .line 211
    move v8, v9

    .line 202
    .end local v9    # "bit":I
    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 214
    .end local v5    # "j":I
    :cond_46
    if-lt v7, v10, :cond_4d

    .line 215
    add-int/lit8 v5, v7, -0x5

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v6, v5

    .line 199
    .end local v6    # "penalty":I
    .end local v7    # "numSameBitCells":I
    .end local v8    # "prevBit":I
    .local v5, "penalty":I
    :cond_4d
    move v5, v6

    add-int/lit8 v0, v0, 0x1

    move v6, v9

    goto :goto_1f

    .line 218
    .end local v0    # "i":I
    :cond_52
    return v5
.end method

.method static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 12
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "penalty":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    .line 52
    .local v1, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    .line 53
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 54
    .local v3, "height":I
    const/4 v4, 0x0

    move v5, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .local v0, "y":I
    .local v5, "penalty":I
    :goto_11
    add-int/lit8 v7, v3, -0x1

    if-ge v0, v7, :cond_43

    .line 55
    move v7, v5

    const/4 v5, 0x0

    .local v5, "x":I
    .local v7, "penalty":I
    :goto_17
    add-int/lit8 v8, v2, -0x1

    if-ge v5, v8, :cond_3f

    .line 56
    aget-object v8, v1, v0

    aget-byte v8, v8, v5

    .line 57
    .local v6, "value":I
    move v6, v8

    aget-object v9, v1, v0

    add-int/lit8 v10, v5, 0x1

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_3c

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v6, v8, :cond_3c

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v1, v8

    add-int/lit8 v9, v5, 0x1

    aget-byte v8, v8, v9

    if-ne v6, v8, :cond_3c

    .line 58
    add-int/lit8 v7, v7, 0x1

    .line 55
    .end local v6    # "value":I
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 54
    .end local v5    # "x":I
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    move v5, v7

    goto :goto_11

    .line 62
    .end local v0    # "y":I
    .end local v7    # "penalty":I
    .local v5, "penalty":I
    :cond_43
    mul-int/lit8 v0, v5, 0x3

    return v0
.end method

.method static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 12
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "numPenalties":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    .line 73
    .local v1, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    .line 74
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 75
    .local v3, "height":I
    const/4 v4, 0x0

    move v5, v0

    const/4 v0, 0x0

    .local v0, "y":I
    .local v5, "numPenalties":I
    :goto_10
    if-ge v0, v3, :cond_b0

    .line 76
    move v6, v5

    const/4 v5, 0x0

    .local v5, "x":I
    .local v6, "numPenalties":I
    :goto_14
    if-ge v5, v2, :cond_ab

    .line 77
    aget-object v7, v1, v0

    .line 78
    .local v7, "arrayY":[B
    add-int/lit8 v8, v5, 0x6

    const/4 v9, 0x1

    if-ge v8, v2, :cond_59

    aget-byte v8, v7, v5

    if-ne v8, v9, :cond_59

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v7, v8

    if-nez v8, :cond_59

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_59

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_59

    add-int/lit8 v8, v5, 0x4

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_59

    add-int/lit8 v8, v5, 0x5

    aget-byte v8, v7, v8

    if-nez v8, :cond_59

    add-int/lit8 v8, v5, 0x6

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_59

    add-int/lit8 v8, v5, -0x4

    .line 86
    invoke-static {v7, v8, v5}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v8

    if-nez v8, :cond_57

    add-int/lit8 v8, v5, 0x7

    add-int/lit8 v10, v5, 0xb

    invoke-static {v7, v8, v10}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 87
    :cond_57
    add-int/lit8 v6, v6, 0x1

    .line 89
    :cond_59
    add-int/lit8 v8, v0, 0x6

    if-ge v8, v3, :cond_a7

    aget-object v8, v1, v0

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_a7

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-nez v8, :cond_a7

    add-int/lit8 v8, v0, 0x2

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_a7

    add-int/lit8 v8, v0, 0x3

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_a7

    add-int/lit8 v8, v0, 0x4

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_a7

    add-int/lit8 v8, v0, 0x5

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-nez v8, :cond_a7

    add-int/lit8 v8, v0, 0x6

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_a7

    add-int/lit8 v8, v0, -0x4

    .line 97
    invoke-static {v1, v5, v8, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v8

    if-nez v8, :cond_a5

    add-int/lit8 v8, v0, 0x7

    add-int/lit8 v9, v0, 0xb

    invoke-static {v1, v5, v8, v9}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 98
    :cond_a5
    add-int/lit8 v6, v6, 0x1

    .line 76
    .end local v7    # "arrayY":[B
    :cond_a7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14

    .line 75
    .end local v5    # "x":I
    :cond_ab
    add-int/lit8 v0, v0, 0x1

    move v5, v6

    goto/16 :goto_10

    .line 102
    .end local v0    # "y":I
    .end local v6    # "numPenalties":I
    .local v5, "numPenalties":I
    :cond_b0
    mul-int/lit8 v0, v5, 0x28

    return v0
.end method

.method static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 11
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "numDarkCells":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    .line 134
    .local v1, "array":[[B
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    .line 135
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    .line 136
    .local v3, "height":I
    const/4 v4, 0x0

    move v5, v0

    const/4 v0, 0x0

    .local v0, "y":I
    .local v5, "numDarkCells":I
    :goto_10
    if-ge v0, v3, :cond_26

    .line 137
    aget-object v6, v1, v0

    .line 138
    .local v6, "arrayY":[B
    move v7, v5

    const/4 v5, 0x0

    .local v5, "x":I
    .local v7, "numDarkCells":I
    :goto_16
    if-ge v5, v2, :cond_22

    .line 139
    aget-byte v8, v6, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1f

    .line 140
    add-int/lit8 v7, v7, 0x1

    .line 138
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 136
    .end local v5    # "x":I
    .end local v6    # "arrayY":[B
    :cond_22
    add-int/lit8 v0, v0, 0x1

    move v5, v7

    goto :goto_10

    .line 144
    .end local v0    # "y":I
    .end local v7    # "numDarkCells":I
    .local v5, "numDarkCells":I
    :cond_26
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v6

    mul-int v0, v0, v6

    .line 145
    .local v0, "numTotalCells":I
    shl-int/lit8 v6, v5, 0x1

    sub-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    div-int/2addr v6, v0

    .line 146
    .local v4, "fivePercentVariances":I
    mul-int/lit8 v6, v6, 0xa

    return v6
.end method

.method static getDataMaskBit(III)Z
    .registers 8
    .param p0, "maskPattern"    # I
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_52

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mask pattern: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_19
    mul-int v2, p2, p1

    move v3, v0

    .line 182
    .local v3, "temp":I
    rem-int/lit8 v2, v2, 0x3

    add-int v4, p2, p1

    and-int/2addr v4, v1

    add-int/2addr v2, v4

    and-int/2addr v2, v1

    .line 183
    .local v2, "intermediate":I
    goto :goto_4d

    .line 177
    .end local v2    # "intermediate":I
    .end local v3    # "temp":I
    :pswitch_24
    mul-int v2, p2, p1

    move v3, v0

    .line 178
    .restart local v3    # "temp":I
    move v3, v2

    and-int/2addr v2, v1

    rem-int/lit8 v4, v3, 0x3

    add-int/2addr v2, v4

    and-int/2addr v2, v1

    .line 179
    .restart local v2    # "intermediate":I
    goto :goto_4d

    .line 173
    .end local v2    # "intermediate":I
    .end local v3    # "temp":I
    :pswitch_2e
    mul-int v2, p2, p1

    move v3, v0

    .line 174
    .restart local v3    # "temp":I
    move v3, v2

    and-int/2addr v2, v1

    rem-int/lit8 v4, v3, 0x3

    add-int/2addr v2, v4

    .line 175
    .restart local v2    # "intermediate":I
    goto :goto_4d

    .line 170
    .end local v2    # "intermediate":I
    .end local v3    # "temp":I
    :pswitch_37
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, p1, 0x3

    add-int/2addr v2, v3

    and-int/2addr v2, v1

    .line 171
    .restart local v2    # "intermediate":I
    goto :goto_4d

    .line 167
    .end local v2    # "intermediate":I
    :pswitch_3e
    add-int v2, p2, p1

    rem-int/lit8 v2, v2, 0x3

    .line 168
    .restart local v2    # "intermediate":I
    goto :goto_4d

    .line 164
    .end local v2    # "intermediate":I
    :pswitch_43
    rem-int/lit8 v2, p1, 0x3

    .line 165
    .restart local v2    # "intermediate":I
    goto :goto_4d

    .line 161
    .end local v2    # "intermediate":I
    :pswitch_46
    and-int/lit8 v2, p2, 0x1

    .line 162
    .restart local v2    # "intermediate":I
    goto :goto_4d

    .line 158
    .end local v2    # "intermediate":I
    :pswitch_49
    add-int v2, p2, p1

    and-int/2addr v2, v1

    .line 159
    .restart local v2    # "intermediate":I
    nop

    .line 185
    :goto_4d
    nop

    .line 187
    if-nez v2, :cond_51

    return v1

    :cond_51
    return v0

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_3e
        :pswitch_37
        :pswitch_2e
        :pswitch_24
        :pswitch_19
    .end packed-switch
.end method

.method private static isWhiteHorizontal([BII)Z
    .registers 7
    .param p0, "rowArray"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 106
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 107
    array-length v1, p0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 108
    move v1, p1

    .local v1, "i":I
    :goto_b
    const/4 v2, 0x1

    if-ge v1, p2, :cond_16

    .line 109
    aget-byte v3, p0, v1

    if-ne v3, v2, :cond_13

    .line 110
    return v0

    .line 108
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 113
    .end local v1    # "i":I
    :cond_16
    return v2
.end method

.method private static isWhiteVertical([[BIII)Z
    .registers 8
    .param p0, "array"    # [[B
    .param p1, "col"    # I
    .param p2, "from"    # I
    .param p3, "to"    # I

    .line 117
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 118
    array-length v1, p0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 119
    move v1, p2

    .local v1, "i":I
    :goto_b
    const/4 v2, 0x1

    if-ge v1, p3, :cond_18

    .line 120
    aget-object v3, p0, v1

    aget-byte v3, v3, p1

    if-ne v3, v2, :cond_15

    .line 121
    return v0

    .line 119
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 124
    .end local v1    # "i":I
    :cond_18
    return v2
.end method
