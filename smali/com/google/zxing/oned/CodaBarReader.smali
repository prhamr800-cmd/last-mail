###### Class com.google.zxing.oned.CodaBarReader (com.google.zxing.oned.CodaBarReader)
.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field static final CHARACTER_ENCODINGS:[I

.field private static final MAX_ACCEPTABLE:F = 2.0f

.field private static final MIN_CHARACTER_LENGTH:I = 0x3

.field private static final PADDING:F = 1.5f

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 50
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_46

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    :array_1a
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_46
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 75
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 77
    return-void
.end method

.method static arrayContains([CC)Z
    .registers 6
    .param p0, "array"    # [C
    .param p1, "key"    # C

    .line 282
    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 283
    array-length v1, p0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_10

    aget-char v3, p0, v2

    .line 284
    if-ne v3, p1, :cond_d

    .line 285
    const/4 v0, 0x1

    return v0

    .line 283
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 289
    :cond_10
    return v0
.end method

.method private counterAppend(I)V
    .registers 6
    .param p1, "e"    # I

    .line 254
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    aput p1, v0, v1

    .line 255
    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 256
    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    array-length v1, v1

    if-lt v0, v1, :cond_23

    .line 257
    iget v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 258
    .local v0, "temp":[I
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 261
    .end local v0    # "temp":[I
    :cond_23
    return-void
.end method

.method private findStartPattern()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .local v1, "i":I
    :goto_4
    iget v3, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v1, v3, :cond_3b

    .line 265
    invoke-direct {p0, v1}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v3

    .line 266
    .local v2, "charOffset":I
    move v2, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_38

    sget-object v3, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v4, v4, v2

    invoke-static {v3, v4}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 269
    const/4 v3, 0x0

    .line 270
    .local v3, "patternSize":I
    move v4, v3

    move v3, v1

    .local v3, "j":I
    .local v4, "patternSize":I
    :goto_1f
    add-int/lit8 v5, v1, 0x7

    if-ge v3, v5, :cond_2b

    .line 271
    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v5, v5, v3

    add-int/2addr v4, v5

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 273
    .end local v3    # "j":I
    :cond_2b
    if-eq v1, v0, :cond_37

    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v5, v1, -0x1

    aget v3, v3, v5

    div-int/lit8 v5, v4, 0x2

    if-lt v3, v5, :cond_38

    .line 274
    :cond_37
    return v1

    .line 264
    .end local v4    # "patternSize":I
    :cond_38
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    .line 278
    .end local v1    # "i":I
    .end local v2    # "charOffset":I
    :cond_3b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private setCounters(Lcom/google/zxing/common/BitArray;)V
    .registers 8
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 233
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v1

    .line 234
    .local v1, "i":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 235
    .local v2, "end":I
    if-ge v1, v2, :cond_2e

    .line 238
    const/4 v3, 0x1

    .line 239
    .local v3, "isWhite":Z
    move v4, v3

    move v3, v1

    const/4 v1, 0x0

    .line 240
    .local v1, "count":I
    .local v3, "i":I
    .local v4, "isWhite":Z
    :goto_11
    if-ge v3, v2, :cond_2a

    .line 241
    invoke-virtual {p1, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_1d

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 244
    :cond_1d
    invoke-direct {p0, v1}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 245
    const/4 v1, 0x1

    .line 246
    if-nez v4, :cond_25

    const/4 v5, 0x1

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    :goto_26
    move v4, v5

    .line 248
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 250
    :cond_2a
    invoke-direct {p0, v1}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 251
    return-void

    .line 236
    .end local v3    # "i":I
    .end local v4    # "isWhite":Z
    .local v1, "i":I
    :cond_2e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private toNarrowWidePattern(I)I
    .registers 19
    .param p1, "position"    # I

    .line 294
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x7

    const/4 v2, 0x0

    move v3, v2

    .line 295
    .local v3, "end":I
    move v3, v1

    iget v4, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v5, -0x1

    if-lt v1, v4, :cond_d

    .line 296
    return v5

    .line 299
    :cond_d
    iget-object v1, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 301
    .local v1, "theCounters":[I
    const/4 v4, 0x0

    .line 302
    .local v4, "maxBar":I
    const v6, 0x7fffffff

    .line 303
    .local v6, "minBar":I
    move v8, v4

    move v7, v6

    const/4 v6, 0x0

    move/from16 v4, p1

    .end local v6    # "minBar":I
    .local v4, "j":I
    .local v7, "minBar":I
    .local v8, "maxBar":I
    :goto_18
    if-ge v4, v3, :cond_26

    .line 304
    aget v9, v1, v4

    .line 305
    .local v6, "currentCounter":I
    move v6, v9

    if-ge v9, v7, :cond_20

    .line 306
    move v7, v6

    .line 308
    :cond_20
    if-le v6, v8, :cond_23

    .line 309
    move v8, v6

    .line 303
    .end local v6    # "currentCounter":I
    :cond_23
    add-int/lit8 v4, v4, 0x2

    goto :goto_18

    .line 312
    .end local v4    # "j":I
    :cond_26
    add-int v4, v7, v8

    div-int/lit8 v4, v4, 0x2

    .line 314
    .local v4, "thresholdBar":I
    const/4 v6, 0x0

    .line 315
    .local v6, "maxSpace":I
    const v9, 0x7fffffff

    .line 316
    .local v9, "minSpace":I
    add-int/lit8 v10, p1, 0x1

    move v11, v6

    const/4 v6, 0x0

    .end local v6    # "maxSpace":I
    .local v10, "j":I
    .local v11, "maxSpace":I
    :goto_32
    if-ge v10, v3, :cond_40

    .line 317
    aget v12, v1, v10

    .line 318
    .local v6, "currentCounter":I
    move v6, v12

    if-ge v12, v9, :cond_3a

    .line 319
    move v9, v6

    .line 321
    :cond_3a
    if-le v6, v11, :cond_3d

    .line 322
    move v11, v6

    .line 316
    .end local v6    # "currentCounter":I
    :cond_3d
    add-int/lit8 v10, v10, 0x2

    goto :goto_32

    .line 325
    .end local v10    # "j":I
    :cond_40
    add-int v6, v9, v11

    div-int/lit8 v6, v6, 0x2

    .line 327
    .local v6, "thresholdSpace":I
    const/16 v10, 0x80

    .line 328
    .local v10, "bitmask":I
    const/4 v12, 0x0

    .line 329
    .local v12, "pattern":I
    move v13, v12

    move v12, v10

    const/4 v10, 0x0

    .local v10, "i":I
    .local v12, "bitmask":I
    .local v13, "pattern":I
    :goto_4a
    const/4 v14, 0x7

    if-ge v10, v14, :cond_63

    .line 330
    and-int/lit8 v14, v10, 0x1

    if-nez v14, :cond_53

    move v14, v4

    goto :goto_54

    :cond_53
    move v14, v6

    .line 331
    .local v14, "threshold":I
    :goto_54
    shr-int/lit8 v12, v12, 0x1

    .line 332
    add-int v15, p1, v10

    aget v2, v1, v15

    if-le v2, v14, :cond_5f

    .line 333
    or-int v2, v13, v12

    .line 329
    move v13, v2

    .end local v14    # "threshold":I
    :cond_5f
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_4a

    .line 337
    .end local v10    # "i":I
    :cond_63
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_65
    move/from16 v2, v16

    .end local v16    # "i":I
    .local v2, "i":I
    sget-object v10, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v10, v10

    if-ge v2, v10, :cond_76

    .line 338
    sget-object v10, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v10, v10, v2

    if-ne v10, v13, :cond_73

    .line 339
    return v2

    .line 337
    :cond_73
    add-int/lit8 v16, v2, 0x1

    goto :goto_65

    .line 342
    .end local v2    # "i":I
    :cond_76
    return v5
.end method

.method private validatePattern(I)V
    .registers 16
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_cc

    .line 167
    .local v1, "sizes":[I
    new-array v2, v0, [I

    fill-array-data v2, :array_d8

    .line 168
    .local v2, "counts":[I
    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 172
    .local v3, "end":I
    move v4, p1

    .line 173
    .local v4, "pos":I
    const/4 v5, 0x0

    move v6, v4

    const/4 v4, 0x0

    .line 174
    .local v4, "i":I
    .local v6, "pos":I
    :goto_17
    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v8, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    aget v7, v7, v8

    .line 175
    .local v7, "pattern":I
    const/4 v8, 0x6

    move v9, v7

    const/4 v7, 0x6

    .local v7, "j":I
    .local v9, "pattern":I
    :goto_24
    if-ltz v7, :cond_43

    .line 178
    and-int/lit8 v10, v7, 0x1

    and-int/lit8 v11, v9, 0x1

    shl-int/lit8 v11, v11, 0x1

    add-int/2addr v10, v11

    .line 179
    .local v10, "category":I
    aget v11, v1, v10

    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v13, v6, v7

    aget v12, v12, v13

    add-int/2addr v11, v12

    aput v11, v1, v10

    .line 180
    aget v11, v2, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v2, v10

    .line 181
    shr-int/lit8 v9, v9, 0x1

    .line 175
    .end local v10    # "category":I
    add-int/lit8 v7, v7, -0x1

    goto :goto_24

    .line 183
    .end local v7    # "j":I
    :cond_43
    if-ge v4, v3, :cond_4a

    .line 187
    add-int/lit8 v6, v6, 0x8

    .line 173
    .end local v9    # "pattern":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 191
    .end local v4    # "i":I
    :cond_4a
    new-array v4, v0, [F

    .line 192
    .local v4, "maxes":[F
    new-array v0, v0, [F

    .line 196
    .local v0, "mins":[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4f
    const/4 v9, 0x2

    if-ge v7, v9, :cond_8c

    .line 197
    const/4 v9, 0x0

    aput v9, v0, v7

    .line 198
    add-int/lit8 v9, v7, 0x2

    aget v10, v1, v7

    int-to-float v10, v10

    aget v11, v2, v7

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-int/lit8 v11, v7, 0x2

    aget v11, v1, v11

    int-to-float v11, v11

    add-int/lit8 v12, v7, 0x2

    aget v12, v2, v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    aput v10, v0, v9

    .line 199
    add-int/lit8 v9, v7, 0x2

    aget v9, v0, v9

    aput v9, v4, v7

    .line 200
    add-int/lit8 v9, v7, 0x2

    add-int/lit8 v10, v7, 0x2

    aget v10, v1, v10

    int-to-float v10, v10

    mul-float v10, v10, v11

    const/high16 v11, 0x3fc00000    # 1.5f

    add-float/2addr v10, v11

    add-int/lit8 v11, v7, 0x2

    aget v11, v2, v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    aput v10, v4, v9

    .line 196
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    .line 204
    .end local v7    # "i":I
    :cond_8c
    move v6, p1

    .line 205
    const/4 v7, 0x0

    .line 206
    .local v5, "i":I
    :goto_8e
    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    aget v9, v9, v10

    .line 207
    .restart local v9    # "pattern":I
    move v10, v7

    const/4 v7, 0x6

    .local v7, "j":I
    :goto_9a
    if-ltz v7, :cond_c2

    .line 210
    and-int/lit8 v11, v7, 0x1

    and-int/lit8 v12, v9, 0x1

    shl-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v12

    .line 211
    .local v11, "category":I
    iget-object v12, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v13, v6, v7

    aget v12, v12, v13

    .line 212
    .local v10, "size":I
    move v10, v12

    int-to-float v12, v12

    aget v13, v0, v11

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_bd

    int-to-float v12, v10

    aget v13, v4, v11

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_bd

    .line 215
    shr-int/lit8 v9, v9, 0x1

    .line 207
    .end local v10    # "size":I
    .end local v11    # "category":I
    add-int/lit8 v7, v7, -0x1

    goto :goto_9a

    .line 213
    .restart local v11    # "category":I
    :cond_bd
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 217
    .end local v7    # "j":I
    .end local v11    # "category":I
    :cond_c2
    if-ge v5, v3, :cond_ca

    .line 220
    add-int/lit8 v6, v6, 0x8

    .line 205
    .end local v9    # "pattern":I
    add-int/lit8 v5, v5, 0x1

    move v7, v10

    goto :goto_8e

    .line 222
    .end local v5    # "i":I
    :cond_ca
    return-void

    nop

    :array_cc
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 20
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

    .line 82
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 83
    move-object/from16 v3, p2

    invoke-direct {v0, v3}, Lcom/google/zxing/oned/CodaBarReader;->setCounters(Lcom/google/zxing/common/BitArray;)V

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/oned/CodaBarReader;->findStartPattern()I

    move-result v5

    move v6, v4

    .line 85
    .local v6, "startOffset":I
    move v6, v5

    .line 87
    .local v5, "nextStart":I
    iget-object v7, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    const/4 v7, 0x0

    :goto_1d
    invoke-direct {v0, v5}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v8

    .line 90
    .local v7, "charOffset":I
    move v7, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_123

    .line 96
    iget-object v8, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    int-to-char v10, v7

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v5, v5, 0x8

    .line 99
    iget-object v8, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v10, 0x1

    if-le v8, v10, :cond_42

    sget-object v8, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v11, v11, v7

    .line 100
    invoke-static {v8, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_46

    .line 103
    :cond_42
    iget v8, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v5, v8, :cond_11d

    .line 106
    .end local v7    # "charOffset":I
    :cond_46
    iget-object v7, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v8, v5, -0x1

    aget v7, v7, v8

    .line 107
    .local v7, "trailingWhitespace":I
    const/4 v8, 0x0

    .line 108
    .local v8, "lastPatternSize":I
    const/4 v11, -0x8

    .local v11, "i":I
    :goto_4e
    if-ge v11, v9, :cond_5a

    .line 109
    iget-object v12, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v13, v5, v11

    aget v12, v12, v13

    add-int/2addr v8, v12

    .line 108
    add-int/lit8 v11, v11, 0x1

    goto :goto_4e

    .line 115
    .end local v11    # "i":I
    :cond_5a
    iget v9, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v5, v9, :cond_68

    div-int/lit8 v9, v8, 0x2

    if-lt v7, v9, :cond_63

    goto :goto_68

    .line 116
    :cond_63
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 119
    :cond_68
    :goto_68
    invoke-direct {v0, v6}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V

    .line 122
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6c
    iget-object v11, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-ge v9, v11, :cond_86

    .line 123
    iget-object v11, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    sget-object v12, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    aget-char v12, v12, v13

    invoke-virtual {v11, v9, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 122
    add-int/lit8 v9, v9, 0x1

    goto :goto_6c

    .line 126
    .end local v9    # "i":I
    :cond_86
    iget-object v9, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 127
    .local v9, "startchar":C
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v11, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v11

    if-eqz v11, :cond_118

    .line 130
    iget-object v11, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    .line 131
    .local v11, "endchar":C
    sget-object v12, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v12, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v12

    if-eqz v12, :cond_113

    .line 136
    iget-object v12, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_10e

    .line 141
    if-eqz v2, :cond_bc

    sget-object v12, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_cd

    .line 142
    :cond_bc
    iget-object v12, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    sub-int/2addr v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 143
    iget-object v12, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 146
    :cond_cd
    const/4 v12, 0x0

    .line 147
    .local v12, "runningCount":I
    move v13, v12

    const/4 v12, 0x0

    .local v12, "i":I
    .local v13, "runningCount":I
    :goto_d0
    if-ge v12, v6, :cond_da

    .line 148
    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v14, v14, v12

    add-int/2addr v13, v14

    .line 147
    add-int/lit8 v12, v12, 0x1

    goto :goto_d0

    .line 150
    .end local v12    # "i":I
    :cond_da
    int-to-float v12, v13

    .line 151
    .local v12, "left":F
    move v14, v13

    move v13, v6

    .local v13, "i":I
    .local v14, "runningCount":I
    :goto_dd
    add-int/lit8 v15, v5, -0x1

    if-ge v13, v15, :cond_e9

    .line 152
    iget-object v15, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v15, v15, v13

    add-int/2addr v14, v15

    .line 151
    add-int/lit8 v13, v13, 0x1

    goto :goto_dd

    .line 154
    .end local v13    # "i":I
    :cond_e9
    int-to-float v13, v14

    .line 155
    .local v13, "right":F
    new-instance v15, Lcom/google/zxing/Result;

    iget-object v10, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v2, v1

    invoke-direct {v0, v12, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v2, 0x0

    aput-object v0, v4, v2

    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v2, v1

    invoke-direct {v0, v13, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v2, 0x1

    aput-object v0, v4, v2

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    invoke-direct {v15, v10, v2, v4, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 155
    return-object v15

    .line 138
    .end local v12    # "left":F
    .end local v13    # "right":F
    .end local v14    # "runningCount":I
    :cond_10e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 132
    :cond_113
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 128
    .end local v11    # "endchar":C
    :cond_118
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 89
    .end local v8    # "lastPatternSize":I
    .end local v9    # "startchar":C
    .local v7, "charOffset":I
    :cond_11d
    move-object/from16 v0, p0

    move-object/from16 v2, p3

    goto/16 :goto_1d

    .line 91
    :cond_123
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
