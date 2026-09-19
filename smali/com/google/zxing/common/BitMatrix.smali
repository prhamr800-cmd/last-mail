###### Class com.google.zxing.common.BitMatrix (com.google.zxing.common.BitMatrix)
.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "dimension"    # I

    .line 45
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-lez p1, :cond_1a

    if-lez p2, :cond_1a

    .line 52
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 53
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 54
    add-int/lit8 v0, p1, 0x1f

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 55
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 56
    return-void

    .line 50
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(III[I)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rowSize"    # I
    .param p4, "bits"    # [I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 60
    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 61
    iput p3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 62
    iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 63
    return-void
.end method

.method private buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 436
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "y":I
    :goto_f
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2d

    .line 437
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_14
    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v3, v4, :cond_27

    .line 438
    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object v4, p1

    goto :goto_21

    :cond_20
    move-object v4, p2

    :goto_21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 440
    .end local v3    # "x":I
    :cond_27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 442
    .end local v2    # "y":I
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/common/BitMatrix;
    .registers 13
    .param p0, "stringRepresentation"    # Ljava/lang/String;
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;

    .line 66
    if-eqz p0, :cond_bc

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Z

    .line 71
    .local v0, "bits":[Z
    const/4 v1, 0x0

    .line 72
    .local v1, "bitsPos":I
    const/4 v2, 0x0

    .line 73
    .local v2, "rowStartPos":I
    const/4 v3, -0x1

    .line 74
    .local v3, "rowLength":I
    const/4 v4, 0x0

    .line 75
    .local v4, "nRows":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v1

    const/4 v1, 0x0

    .line 76
    .local v1, "pos":I
    .local v2, "bitsPos":I
    .local v3, "rowStartPos":I
    .local v4, "rowLength":I
    .local v6, "nRows":I
    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, -0x1

    if-ge v1, v7, :cond_8f

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0xa

    if-eq v7, v9, :cond_75

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0xd

    if-ne v7, v9, :cond_2a

    goto :goto_75

    .line 89
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    .line 91
    const/4 v7, 0x1

    aput-boolean v7, v0, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 93
    :cond_44
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    .line 95
    aput-boolean v5, v0, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 98
    :cond_5d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "illegal character encountered: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_75
    :goto_75
    if-le v2, v3, :cond_8c

    .line 80
    if-ne v4, v8, :cond_7c

    .line 81
    sub-int v4, v2, v3

    goto :goto_80

    .line 82
    :cond_7c
    sub-int v7, v2, v3

    if-ne v7, v4, :cond_84

    .line 85
    :goto_80
    move v3, v2

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_8c

    .line 83
    :cond_84
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "row lengths do not match"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_8c
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 104
    :cond_8f
    if-le v2, v3, :cond_a5

    .line 105
    if-ne v4, v8, :cond_96

    .line 106
    sub-int v4, v2, v3

    goto :goto_9a

    .line 107
    :cond_96
    sub-int v7, v2, v3

    if-ne v7, v4, :cond_9d

    .line 110
    :goto_9a
    add-int/lit8 v6, v6, 0x1

    goto :goto_a5

    .line 108
    :cond_9d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "row lengths do not match"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    :cond_a5
    :goto_a5
    new-instance v7, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v7, v4, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 114
    .local v7, "matrix":Lcom/google/zxing/common/BitMatrix;
    nop

    .local v5, "i":I
    :goto_ab
    if-ge v5, v2, :cond_bb

    .line 115
    aget-boolean v8, v0, v5

    if-eqz v8, :cond_b8

    .line 116
    rem-int v8, v5, v4

    div-int v9, v5, v4

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 114
    :cond_b8
    add-int/lit8 v5, v5, 0x1

    goto :goto_ab

    .line 119
    .end local v5    # "i":I
    :cond_bb
    return-object v7

    .line 67
    .end local v0    # "bits":[Z
    .end local v1    # "pos":I
    .end local v2    # "bitsPos":I
    .end local v3    # "rowStartPos":I
    .end local v4    # "rowLength":I
    .end local v6    # "nRows":I
    .end local v7    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :cond_bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 186
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v0, v0

    .line 187
    .local v0, "max":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_e

    .line 188
    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aput v1, v3, v2

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 190
    .end local v2    # "i":I
    :cond_e
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitMatrix;
    .registers 6

    .line 447
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 387
    instance-of v0, p1, Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 388
    return v1

    .line 390
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/google/zxing/common/BitMatrix;

    .line 391
    .local v0, "other":Lcom/google/zxing/common/BitMatrix;
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v3, v0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget-object v3, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 392
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    return v1

    .line 391
    :cond_27
    return v1
.end method

.method public flip(II)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 157
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 158
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    xor-int/2addr v2, v3

    aput v2, v1, v0

    .line 159
    return-void
.end method

.method public get(II)Z
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 130
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 131
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    ushr-int/2addr v1, v2

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    return v2

    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public getBottomRightOnBit()[I
    .registers 9

    .line 343
    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 344
    .local v0, "bitsOffset":I
    :goto_5
    if-ltz v0, :cond_10

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v2, v0

    if-nez v2, :cond_10

    .line 345
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 347
    :cond_10
    if-gez v0, :cond_14

    .line 348
    const/4 v1, 0x0

    return-object v1

    .line 351
    :cond_14
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v2, v0, v2

    .line 352
    .local v2, "y":I
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v3, v0, v3

    shl-int/lit8 v3, v3, 0x5

    .line 354
    .local v3, "x":I
    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v4, v4, v0

    .line 355
    .local v4, "theBits":I
    const/16 v5, 0x1f

    .line 356
    .local v5, "bit":I
    :goto_24
    ushr-int v6, v4, v5

    if-nez v6, :cond_2b

    .line 357
    add-int/lit8 v5, v5, -0x1

    goto :goto_24

    .line 359
    :cond_2b
    add-int/2addr v3, v5

    .line 361
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    aput v2, v6, v1

    return-object v6
.end method

.method public getEnclosingRectangle()[I
    .registers 12

    .line 273
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 274
    .local v0, "left":I
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 275
    .local v1, "top":I
    const/4 v2, -0x1

    .line 276
    .local v2, "right":I
    const/4 v3, -0x1

    .line 278
    .local v3, "bottom":I
    const/4 v4, 0x0

    move v5, v1

    const/4 v6, 0x0

    move v1, v0

    const/4 v0, 0x0

    .local v0, "y":I
    .local v1, "left":I
    .local v5, "top":I
    :goto_b
    iget v7, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v0, v7, :cond_62

    .line 279
    move v7, v3

    move v3, v2

    move v2, v1

    const/4 v1, 0x0

    .local v1, "x32":I
    .local v2, "left":I
    .local v3, "right":I
    .local v7, "bottom":I
    :goto_13
    iget v8, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v1, v8, :cond_5c

    .line 280
    iget-object v8, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v9, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v9, v9, v0

    add-int/2addr v9, v1

    aget v8, v8, v9

    .line 281
    .local v6, "theBits":I
    move v6, v8

    if-eqz v8, :cond_59

    .line 282
    if-ge v0, v5, :cond_26

    .line 283
    move v5, v0

    .line 285
    :cond_26
    if-le v0, v7, :cond_29

    .line 286
    move v7, v0

    .line 288
    :cond_29
    shl-int/lit8 v8, v1, 0x5

    const/16 v9, 0x1f

    if-ge v8, v2, :cond_42

    .line 289
    const/4 v8, 0x0

    .line 290
    .local v8, "bit":I
    :goto_30
    rsub-int/lit8 v10, v8, 0x1f

    shl-int v10, v6, v10

    if-nez v10, :cond_39

    .line 291
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 293
    :cond_39
    shl-int/lit8 v10, v1, 0x5

    add-int/2addr v10, v8

    if-ge v10, v2, :cond_42

    .line 294
    shl-int/lit8 v10, v1, 0x5

    add-int/2addr v10, v8

    .line 297
    move v2, v10

    .end local v8    # "bit":I
    :cond_42
    shl-int/lit8 v8, v1, 0x5

    add-int/2addr v8, v9

    if-le v8, v3, :cond_59

    .line 298
    nop

    .local v9, "bit":I
    :goto_48
    move v8, v9

    .line 299
    .end local v9    # "bit":I
    .restart local v8    # "bit":I
    ushr-int v9, v6, v8

    if-nez v9, :cond_50

    .line 300
    add-int/lit8 v9, v8, -0x1

    goto :goto_48

    .line 302
    :cond_50
    shl-int/lit8 v9, v1, 0x5

    add-int/2addr v9, v8

    if-le v9, v3, :cond_59

    .line 303
    shl-int/lit8 v9, v1, 0x5

    add-int v3, v9, v8

    .line 279
    .end local v6    # "theBits":I
    .end local v8    # "bit":I
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 278
    .end local v1    # "x32":I
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v2, v3

    move v3, v7

    goto :goto_b

    .line 310
    .end local v0    # "y":I
    .end local v7    # "bottom":I
    .local v1, "left":I
    .local v2, "right":I
    .local v3, "bottom":I
    :cond_62
    if-lt v2, v1, :cond_7c

    if-ge v3, v5, :cond_67

    goto :goto_7c

    .line 314
    :cond_67
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v1, v0, v4

    const/4 v4, 0x1

    aput v5, v0, v4

    const/4 v6, 0x2

    sub-int v7, v2, v1

    add-int/2addr v7, v4

    aput v7, v0, v6

    const/4 v6, 0x3

    sub-int v7, v3, v5

    add-int/2addr v7, v4

    aput v7, v0, v6

    return-object v0

    .line 311
    :cond_7c
    :goto_7c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 375
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .registers 8
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;

    .line 229
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v0, v1, :cond_b

    goto :goto_f

    .line 232
    :cond_b
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_17

    .line 230
    :cond_f
    :goto_f
    new-instance v0, Lcom/google/zxing/common/BitArray;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    move-object p2, v0

    .line 234
    :goto_17
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p1

    .line 235
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1c
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v1, v2, :cond_2e

    .line 236
    shl-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 238
    .end local v1    # "x":I
    :cond_2e
    return-object p2
.end method

.method public getRowSize()I
    .registers 2

    .line 382
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    return v0
.end method

.method public getTopLeftOnBit()[I
    .registers 8

    .line 323
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 324
    .local v1, "bitsOffset":I
    :goto_2
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    if-ge v1, v2, :cond_10

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v2, v1

    if-nez v2, :cond_10

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 327
    :cond_10
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    if-ne v1, v2, :cond_17

    .line 328
    const/4 v0, 0x0

    return-object v0

    .line 330
    :cond_17
    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int v2, v1, v2

    .line 331
    .local v2, "y":I
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int v3, v1, v3

    shl-int/lit8 v3, v3, 0x5

    .line 333
    .local v3, "x":I
    iget-object v4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v4, v4, v1

    .line 334
    .local v4, "theBits":I
    const/4 v5, 0x0

    .line 335
    .local v5, "bit":I
    :goto_26
    rsub-int/lit8 v6, v5, 0x1f

    shl-int v6, v4, v6

    if-nez v6, :cond_2f

    .line 336
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 338
    :cond_2f
    add-int/2addr v3, v5

    .line 339
    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v3, v6, v0

    const/4 v0, 0x1

    aput v2, v6, v0

    return-object v6
.end method

.method public getWidth()I
    .registers 2

    .line 368
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 397
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 398
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/2addr v0, v1

    .line 399
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/2addr v0, v1

    .line 400
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int/2addr v0, v1

    .line 401
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    return v0
.end method

.method public rotate180()V
    .registers 7

    .line 253
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 254
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 255
    .local v1, "height":I
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 256
    .local v2, "topRow":Lcom/google/zxing/common/BitArray;
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 257
    .local v3, "bottomRow":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    add-int/lit8 v5, v1, 0x1

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_36

    .line 258
    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v2

    .line 259
    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5, v3}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    .line 260
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 261
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 262
    invoke-virtual {p0, v4, v3}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 263
    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5, v2}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 257
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 265
    .end local v4    # "i":I
    :cond_36
    return-void
.end method

.method public set(II)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 141
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 142
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 143
    return-void
.end method

.method public setRegion(IIII)V
    .registers 15
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 201
    if-ltz p2, :cond_46

    if-ltz p1, :cond_46

    .line 204
    if-lez p4, :cond_3e

    if-lez p3, :cond_3e

    .line 207
    add-int v0, p1, p3

    .line 208
    .local v0, "right":I
    add-int v1, p2, p4

    const/4 v2, 0x0

    .line 209
    .local v2, "bottom":I
    move v2, v1

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v1, v3, :cond_36

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-gt v0, v1, :cond_36

    .line 212
    move v1, p2

    .local v1, "y":I
    :goto_17
    if-ge v1, v2, :cond_35

    .line 213
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v3, v3, v1

    .line 214
    .local v3, "offset":I
    move v4, p1

    .local v4, "x":I
    :goto_1e
    if-ge v4, v0, :cond_32

    .line 215
    iget-object v5, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    div-int/lit8 v6, v4, 0x20

    add-int/2addr v6, v3

    aget v7, v5, v6

    and-int/lit8 v8, v4, 0x1f

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 212
    .end local v3    # "offset":I
    .end local v4    # "x":I
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 218
    .end local v1    # "y":I
    :cond_35
    return-void

    .line 210
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "The region must fit inside the matrix"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    .end local v0    # "right":I
    .end local v2    # "bottom":I
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .registers 8
    .param p1, "y"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;

    .line 246
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v2, v2, p1

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 410
    const-string v0, "X "

    const-string v1, "  "

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;

    .line 419
    const-string v0, "\n"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "setString"    # Ljava/lang/String;
    .param p2, "unsetString"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unset(II)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 146
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v0, v0, p2

    div-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    .line 147
    .local v0, "offset":I
    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aget v2, v1, v0

    and-int/lit8 v3, p1, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v1, v0

    .line 148
    return-void
.end method

.method public xor(Lcom/google/zxing/common/BitMatrix;)V
    .registers 12
    .param p1, "mask"    # Lcom/google/zxing/common/BitMatrix;

    .line 168
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4c

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_4c

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 169
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getRowSize()I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 172
    new-instance v0, Lcom/google/zxing/common/BitArray;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    div-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 173
    .local v0, "rowArray":Lcom/google/zxing/common/BitArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "y":I
    :goto_25
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_4b

    .line 174
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int v3, v3, v2

    .line 175
    .local v3, "offset":I
    invoke-virtual {p1, v2, v0}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v4

    .line 176
    .local v4, "row":[I
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_36
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v5, v6, :cond_48

    .line 177
    iget-object v6, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v7, v3, v5

    aget v8, v6, v7

    aget v9, v4, v5

    xor-int/2addr v8, v9

    aput v8, v6, v7

    .line 176
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 173
    .end local v3    # "offset":I
    .end local v4    # "row":[I
    .end local v5    # "x":I
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 180
    .end local v2    # "y":I
    :cond_4b
    return-void

    .line 170
    .end local v0    # "rowArray":Lcom/google/zxing/common/BitArray;
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input matrix dimensions do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
