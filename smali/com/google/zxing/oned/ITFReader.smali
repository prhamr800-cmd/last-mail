###### Class com.google.zxing.oned.ITFReader (com.google.zxing.oned.ITFReader)
.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.78f

.field private static final N:I = 0x1

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 54
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_6e

    sput-object v1, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 65
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_7c

    sput-object v2, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 66
    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_88

    sput-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    .line 71
    const/16 v3, 0xa

    new-array v3, v3, [[I

    new-array v4, v0, [I

    fill-array-data v4, :array_92

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v0, [I

    fill-array-data v4, :array_a0

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-array v4, v0, [I

    fill-array-data v4, :array_ae

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-array v4, v0, [I

    fill-array-data v4, :array_bc

    aput-object v4, v3, v2

    new-array v2, v0, [I

    fill-array-data v2, :array_ca

    aput-object v2, v3, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_d8

    aput-object v1, v3, v0

    new-array v1, v0, [I

    fill-array-data v1, :array_e6

    const/4 v2, 0x6

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_f4

    const/4 v2, 0x7

    aput-object v1, v3, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_102

    const/16 v2, 0x8

    aput-object v1, v3, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_110

    const/16 v1, 0x9

    aput-object v0, v3, v1

    sput-object v3, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    :array_6e
    .array-data 4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    :array_7c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_88
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    :array_92
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_a0
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_ae
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_bc
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_ca
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_d8
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_e6
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_f4
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_102
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_110
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .registers 8
    .param p0, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 334
    const v0, 0x3ec28f5c    # 0.38f

    .line 335
    .local v0, "bestVariance":F
    const/4 v1, -0x1

    .line 336
    .local v1, "bestMatch":I
    sget-object v2, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v2, v2

    .line 337
    .local v2, "max":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    if-ge v4, v2, :cond_20

    .line 338
    sget-object v5, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    aget-object v5, v5, v4

    .line 339
    .local v5, "pattern":[I
    const v6, 0x3f47ae14    # 0.78f

    invoke-static {p0, v5, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v6

    .line 340
    .local v3, "variance":F
    move v3, v6

    cmpg-float v6, v6, v0

    if-gez v6, :cond_1d

    .line 341
    move v0, v3

    .line 342
    move v1, v4

    .line 337
    .end local v3    # "variance":F
    .end local v5    # "pattern":[I
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 345
    .end local v4    # "i":I
    :cond_20
    if-ltz v1, :cond_23

    .line 346
    return v1

    .line 348
    :cond_23
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
.end method

.method private decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .registers 9
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 261
    :try_start_3
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 262
    .local v0, "endStart":I
    sget-object v1, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {p1, v0, v1}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 267
    .local v1, "endPattern":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 272
    aget v3, v1, v2

    .line 273
    .local v3, "temp":I
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/4 v5, 0x1

    aget v6, v1, v5

    sub-int/2addr v4, v6

    aput v4, v1, v2

    .line 274
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    sub-int/2addr v2, v3

    aput v2, v1, v5
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2b

    .line 276
    nop

    .line 279
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 276
    return-object v1

    .line 279
    .end local v0    # "endStart":I
    .end local v1    # "endPattern":[I
    .end local v3    # "temp":I
    :catchall_2b
    move-exception v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw v0
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .registers 13
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "payloadStart"    # I
    .param p2, "payloadEnd"    # I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 150
    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 151
    .local v1, "counterDigitPair":[I
    const/4 v2, 0x5

    new-array v3, v2, [I

    .line 152
    .local v3, "counterBlack":[I
    new-array v4, v2, [I

    .line 154
    .local v4, "counterWhite":[I
    :goto_9
    if-ge p1, p2, :cond_3e

    .line 157
    invoke-static {p0, p1, v1}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 159
    const/4 v5, 0x0

    const/4 v6, 0x0

    .local v6, "k":I
    :goto_10
    if-ge v6, v2, :cond_21

    .line 160
    mul-int/lit8 v7, v6, 0x2

    .line 161
    .local v7, "twoK":I
    aget v8, v1, v7

    aput v8, v3, v6

    .line 162
    add-int/lit8 v8, v7, 0x1

    aget v8, v1, v8

    aput v8, v4, v6

    .line 159
    .end local v7    # "twoK":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 165
    .end local v6    # "k":I
    :cond_21
    invoke-static {v3}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v6

    .line 166
    .local v6, "bestMatch":I
    add-int/lit8 v7, v6, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v6

    .line 168
    add-int/lit8 v7, v6, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    :goto_35
    if-ge v5, v0, :cond_3d

    aget v7, v1, v5

    .line 171
    .local v7, "counterDigit":I
    add-int/2addr p1, v7

    .line 170
    .end local v7    # "counterDigit":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 173
    .end local v6    # "bestMatch":I
    :cond_3d
    goto :goto_9

    .line 174
    :cond_3e
    return-void
.end method

.method private decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .registers 7
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 184
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    .line 185
    .local v0, "endStart":I
    sget-object v1, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {p1, v0, v1}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v1

    .line 190
    .local v1, "startPattern":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v4, v1, v3

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 192
    aget v2, v1, v3

    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 194
    return-object v1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .registers 15
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 295
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    .line 296
    .local v2, "patternLength":I
    move v2, v0

    new-array v0, v0, [I

    .line 297
    .local v0, "counters":[I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 298
    .local v3, "width":I
    const/4 v4, 0x0

    .line 300
    .local v4, "isWhite":Z
    const/4 v5, 0x0

    .line 301
    .local v5, "counterPosition":I
    move v6, p1

    .line 302
    .local v6, "patternStart":I
    move v7, v6

    move v6, v5

    move v5, v4

    move v4, p1

    .local v4, "x":I
    .local v5, "isWhite":Z
    .local v6, "counterPosition":I
    .local v7, "patternStart":I
    :goto_11
    if-ge v4, v3, :cond_5d

    .line 303
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v5

    const/4 v9, 0x1

    if-eqz v8, :cond_21

    .line 304
    aget v8, v0, v6

    add-int/2addr v8, v9

    aput v8, v0, v6

    goto :goto_5a

    .line 306
    :cond_21
    add-int/lit8 v8, v2, -0x1

    if-ne v6, v8, :cond_51

    .line 307
    const v8, 0x3f47ae14    # 0.78f

    invoke-static {v0, p2, v8}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v8

    const v10, 0x3ec28f5c    # 0.38f

    const/4 v11, 0x2

    cmpg-float v8, v8, v10

    if-gez v8, :cond_3b

    .line 308
    new-array v8, v11, [I

    aput v7, v8, v1

    aput v4, v8, v9

    return-object v8

    .line 310
    :cond_3b
    aget v8, v0, v1

    aget v10, v0, v9

    add-int/2addr v8, v10

    add-int/2addr v7, v8

    .line 311
    add-int/lit8 v8, v2, -0x2

    invoke-static {v0, v11, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    add-int/lit8 v8, v2, -0x2

    aput v1, v0, v8

    .line 313
    add-int/lit8 v8, v2, -0x1

    aput v1, v0, v8

    .line 314
    add-int/lit8 v6, v6, -0x1

    goto :goto_53

    .line 316
    :cond_51
    add-int/lit8 v6, v6, 0x1

    .line 318
    :goto_53
    aput v9, v0, v6

    .line 319
    if-nez v5, :cond_58

    goto :goto_59

    :cond_58
    const/4 v9, 0x0

    :goto_59
    move v5, v9

    .line 302
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 322
    .end local v4    # "x":I
    :cond_5d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .registers 4
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    .line 240
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 241
    .local v1, "endStart":I
    move v1, v2

    if-eq v2, v0, :cond_d

    .line 245
    return v1

    .line 242
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .registers 6
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startPattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 214
    iget v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    .line 217
    .local v1, "quietCount":I
    move v1, v0

    if-ge v0, p2, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, p2

    .line 219
    .end local v1    # "quietCount":I
    .local v0, "quietCount":I
    :goto_b
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_d
    if-lez v0, :cond_1c

    if-ltz v1, :cond_1c

    .line 220
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 223
    add-int/lit8 v0, v0, -0x1

    .line 219
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 225
    .end local v1    # "i":I
    :cond_1c
    if-nez v0, :cond_1f

    .line 229
    return-void

    .line 227
    :cond_1f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
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
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 89
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v2}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v4

    .line 90
    .local v4, "startRange":[I
    invoke-direct {v0, v2}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v5

    .line 92
    .local v5, "endRange":[I
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    aget v8, v4, v7

    const/4 v9, 0x0

    aget v10, v5, v9

    invoke-static {v2, v8, v10, v6}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, "resultString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 97
    .local v10, "allowedLengths":[I
    if-eqz v3, :cond_30

    .line 98
    sget-object v11, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    check-cast v10, [I

    .line 101
    :cond_30
    if-nez v10, :cond_34

    .line 102
    sget-object v10, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 107
    :cond_34
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    .line 108
    .local v11, "length":I
    const/4 v12, 0x0

    .line 109
    .local v12, "lengthOK":Z
    const/4 v13, 0x0

    .line 110
    .local v13, "maxAllowedLength":I
    array-length v14, v10

    move v15, v13

    const/4 v13, 0x0

    .end local v13    # "maxAllowedLength":I
    .local v15, "maxAllowedLength":I
    :goto_3d
    if-ge v13, v14, :cond_4d

    aget v9, v10, v13

    .line 111
    .local v9, "allowedLength":I
    if-ne v11, v9, :cond_45

    .line 112
    const/4 v12, 0x1

    .line 113
    goto :goto_4d

    .line 115
    :cond_45
    if-le v9, v15, :cond_49

    .line 116
    nop

    .line 110
    move v15, v9

    .end local v9    # "allowedLength":I
    :cond_49
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    goto :goto_3d

    .line 119
    :cond_4d
    :goto_4d
    if-nez v12, :cond_52

    if-le v11, v15, :cond_52

    .line 120
    const/4 v12, 0x1

    .line 122
    :cond_52
    if-eqz v12, :cond_78

    .line 126
    new-instance v9, Lcom/google/zxing/Result;

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/zxing/ResultPoint;

    new-instance v13, Lcom/google/zxing/ResultPoint;

    aget v0, v4, v7

    int-to-float v0, v0

    int-to-float v7, v1

    invoke-direct {v13, v0, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v0, 0x0

    aput-object v13, v14, v0

    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v0, v5, v0

    int-to-float v0, v0

    int-to-float v13, v1

    invoke-direct {v7, v0, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v0, 0x1

    aput-object v7, v14, v0

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    const/4 v7, 0x0

    invoke-direct {v9, v8, v7, v14, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v9

    .line 123
    :cond_78
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
