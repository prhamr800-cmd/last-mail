###### Class com.google.zxing.oned.UPCEANReader (com.google.zxing.oned.UPCEANReader)
.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field static final END_PATTERN:[I

.field static final L_AND_G_PATTERNS:[[I

.field static final L_PATTERNS:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.48f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;

.field private final eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

.field private final extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 53
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_9e

    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 58
    const/4 v1, 0x5

    new-array v2, v1, [I

    fill-array-data v2, :array_a8

    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 62
    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_b6

    sput-object v3, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    .line 66
    const/16 v3, 0xa

    new-array v4, v3, [[I

    const/4 v5, 0x4

    new-array v6, v5, [I

    fill-array-data v6, :array_c6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_d2

    const/4 v8, 0x1

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_de

    const/4 v9, 0x2

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_ea

    aput-object v6, v4, v0

    new-array v0, v5, [I

    fill-array-data v0, :array_f6

    aput-object v0, v4, v5

    new-array v0, v5, [I

    fill-array-data v0, :array_102

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_10e

    aput-object v0, v4, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_11a

    const/4 v1, 0x7

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_126

    const/16 v1, 0x8

    aput-object v0, v4, v1

    new-array v0, v5, [I

    fill-array-data v0, :array_132

    const/16 v1, 0x9

    aput-object v0, v4, v1

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 85
    const/16 v0, 0x14

    new-array v1, v0, [[I

    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 86
    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    sget-object v2, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {v1, v7, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_7b
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    if-ge v2, v0, :cond_9d

    .line 88
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v4, v2, -0xa

    aget-object v3, v3, v4

    .line 89
    .local v1, "widths":[I
    move-object v1, v3

    array-length v3, v3

    new-array v3, v3, [I

    .line 90
    .local v3, "reversedWidths":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_89
    array-length v5, v1

    if-ge v4, v5, :cond_96

    .line 91
    array-length v5, v1

    sub-int/2addr v5, v4

    sub-int/2addr v5, v8

    aget v5, v1, v5

    aput v5, v3, v4

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    .line 93
    .end local v4    # "j":I
    :cond_96
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v3, v4, v2

    .line 87
    .end local v1    # "widths":[I
    .end local v3    # "reversedWidths":[I
    add-int/lit8 v3, v2, 0x1

    goto :goto_7b

    .line 95
    .end local v2    # "i":I
    :cond_9d
    return-void

    :array_9e
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_a8
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_b6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_c6
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_d2
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_de
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_ea
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_f6
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_102
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_10e
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_11a
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_126
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_132
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 3

    .line 101
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 103
    new-instance v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    .line 104
    new-instance v0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    .line 105
    return-void
.end method

.method static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 264
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 265
    .local v2, "length":I
    move v2, v0

    if-nez v0, :cond_a

    .line 266
    return v1

    .line 269
    :cond_a
    const/4 v0, 0x0

    .line 270
    .local v0, "sum":I
    add-int/lit8 v3, v2, -0x2

    move v4, v0

    const/4 v0, 0x0

    .end local v0    # "sum":I
    .local v3, "i":I
    .local v4, "sum":I
    :goto_f
    const/16 v5, 0x9

    if-ltz v3, :cond_27

    .line 271
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 272
    .local v0, "digit":I
    move v0, v6

    if-ltz v6, :cond_22

    if-gt v0, v5, :cond_22

    .line 275
    add-int/2addr v4, v0

    .line 270
    .end local v0    # "digit":I
    add-int/lit8 v3, v3, -0x2

    goto :goto_f

    .line 273
    :cond_22
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 277
    .end local v3    # "i":I
    :cond_27
    mul-int/lit8 v4, v4, 0x3

    .line 278
    add-int/lit8 v3, v2, -0x1

    .restart local v3    # "i":I
    :goto_2b
    if-ltz v3, :cond_41

    .line 279
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 280
    .restart local v0    # "digit":I
    move v0, v6

    if-ltz v6, :cond_3c

    if-gt v0, v5, :cond_3c

    .line 283
    add-int/2addr v4, v0

    .line 278
    .end local v0    # "digit":I
    add-int/lit8 v3, v3, -0x2

    goto :goto_2b

    .line 281
    :cond_3c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 285
    .end local v3    # "i":I
    :cond_41
    rem-int/lit8 v0, v4, 0xa

    if-nez v0, :cond_47

    const/4 v0, 0x1

    return v0

    :cond_47
    return v1
.end method

.method static decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
    .registers 11
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .param p3, "patterns"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 358
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/UPCEANReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 359
    const v0, 0x3ef5c28f    # 0.48f

    .line 360
    .local v0, "bestVariance":F
    const/4 v1, -0x1

    .line 361
    .local v1, "bestMatch":I
    array-length v2, p3

    .line 362
    .local v2, "max":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v2, :cond_1f

    .line 363
    aget-object v5, p3, v4

    .line 364
    .local v5, "pattern":[I
    const v6, 0x3f333333    # 0.7f

    invoke-static {p1, v5, v6}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[IF)F

    move-result v6

    .line 365
    .local v3, "variance":F
    move v3, v6

    cmpg-float v6, v6, v0

    if-gez v6, :cond_1c

    .line 366
    move v0, v3

    .line 367
    move v1, v4

    .line 362
    .end local v3    # "variance":F
    .end local v5    # "pattern":[I
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 370
    .end local v4    # "i":I
    :cond_1f
    if-ltz v1, :cond_22

    .line 371
    return v1

    .line 373
    :cond_22
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
.end method

.method static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
    .registers 5
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "whiteFirst"    # Z
    .param p3, "pattern"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 296
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
    .registers 16
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "rowOffset"    # I
    .param p2, "whiteFirst"    # Z
    .param p3, "pattern"    # [I
    .param p4, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    .line 316
    .local v0, "width":I
    if-eqz p2, :cond_b

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v1

    goto :goto_f

    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    :goto_f
    move p1, v1

    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "counterPosition":I
    move v2, p1

    .line 319
    .local v2, "patternStart":I
    array-length v3, p3

    .line 320
    .local v3, "patternLength":I
    move v4, p2

    .line 321
    .local v4, "isWhite":Z
    move v5, v2

    move v2, v1

    move v1, p1

    .local v1, "x":I
    .local v2, "counterPosition":I
    .local v5, "patternStart":I
    :goto_17
    if-ge v1, v0, :cond_64

    .line 322
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v4

    const/4 v7, 0x1

    if-eqz v6, :cond_27

    .line 323
    aget v6, p4, v2

    add-int/2addr v6, v7

    aput v6, p4, v2

    goto :goto_61

    .line 325
    :cond_27
    add-int/lit8 v6, v3, -0x1

    const/4 v8, 0x0

    if-ne v2, v6, :cond_58

    .line 326
    const v6, 0x3f333333    # 0.7f

    invoke-static {p4, p3, v6}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[IF)F

    move-result v6

    const v9, 0x3ef5c28f    # 0.48f

    const/4 v10, 0x2

    cmpg-float v6, v6, v9

    if-gez v6, :cond_42

    .line 327
    new-array v6, v10, [I

    aput v5, v6, v8

    aput v1, v6, v7

    return-object v6

    .line 329
    :cond_42
    aget v6, p4, v8

    aget v9, p4, v7

    add-int/2addr v6, v9

    add-int/2addr v5, v6

    .line 330
    add-int/lit8 v6, v3, -0x2

    invoke-static {p4, v10, p4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    add-int/lit8 v6, v3, -0x2

    aput v8, p4, v6

    .line 332
    add-int/lit8 v6, v3, -0x1

    aput v8, p4, v6

    .line 333
    add-int/lit8 v2, v2, -0x1

    goto :goto_5a

    .line 335
    :cond_58
    add-int/lit8 v2, v2, 0x1

    .line 337
    :goto_5a
    aput v7, p4, v2

    .line 338
    if-nez v4, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v7, 0x0

    :goto_60
    move v4, v7

    .line 321
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 341
    .end local v1    # "x":I
    :cond_64
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method static findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I
    .registers 9
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "foundStart":Z
    const/4 v1, 0x0

    .line 110
    .local v1, "startRange":[I
    const/4 v2, 0x0

    .line 111
    .local v2, "nextStart":I
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v3, v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 112
    .local v3, "counters":[I
    :goto_a
    if-nez v0, :cond_2a

    .line 113
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v6, v6

    invoke-static {v3, v4, v6, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 114
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {p0, v2, v4, v6, v3}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v6

    .line 115
    move-object v1, v6

    aget v6, v6, v4

    .line 116
    .local v6, "start":I
    const/4 v7, 0x1

    aget v2, v1, v7

    .line 120
    sub-int v7, v2, v6

    sub-int v7, v6, v7

    .line 121
    .local v5, "quietStart":I
    move v5, v7

    if-ltz v7, :cond_29

    .line 122
    invoke-virtual {p0, v5, v6, v4}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v0

    .line 124
    .end local v5    # "quietStart":I
    .end local v6    # "start":I
    :cond_29
    goto :goto_a

    .line 125
    :cond_2a
    return-object v1
.end method


# virtual methods
.method checkChecksum(Ljava/lang/String;)Z
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 252
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .registers 5
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "endStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 289
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected abstract decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
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
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 131
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .registers 26
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "startGuardRange"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 154
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/4 v6, 0x0

    if-nez v5, :cond_f

    .line 155
    move-object v0, v6

    goto :goto_17

    .line 154
    :cond_f
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 155
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPointCallback;

    :goto_17
    move-object v7, v6

    .line 157
    .local v7, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    move-object v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_2f

    .line 158
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v11, v4, v10

    aget v12, v4, v9

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v8

    int-to-float v12, v2

    invoke-direct {v0, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v7, v0}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 163
    :cond_2f
    iget-object v0, v1, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    move-object v11, v6

    .line 164
    .local v11, "result":Ljava/lang/StringBuilder;
    move-object v11, v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 165
    invoke-virtual {v1, v3, v4, v11}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v12

    .line 167
    .local v12, "endStart":I
    if-eqz v7, :cond_46

    .line 168
    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v13, v12

    int-to-float v14, v2

    invoke-direct {v0, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v7, v0}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 173
    :cond_46
    invoke-virtual {v1, v3, v12}, Lcom/google/zxing/oned/UPCEANReader;->decodeEnd(Lcom/google/zxing/common/BitArray;I)[I

    move-result-object v13

    .line 175
    .local v13, "endRange":[I
    if-eqz v7, :cond_5c

    .line 176
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v14, v13, v10

    aget v15, v13, v9

    add-int/2addr v14, v15

    int-to-float v14, v14

    div-float/2addr v14, v8

    int-to-float v15, v2

    invoke-direct {v0, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v7, v0}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 184
    :cond_5c
    aget v0, v13, v9

    move v14, v10

    .line 185
    .local v14, "end":I
    move v14, v0

    aget v15, v13, v10

    sub-int v15, v0, v15

    add-int/2addr v0, v15

    move v15, v10

    .line 186
    .local v15, "quietEnd":I
    move v15, v0

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    if-ge v0, v8, :cond_147

    invoke-virtual {v3, v14, v15, v10}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 190
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v6

    .line 192
    .local v8, "resultString":Ljava/lang/String;
    move-object v8, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x8

    if-lt v0, v6, :cond_13e

    .line 195
    invoke-virtual {v1, v8}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 199
    aget v0, v4, v9

    aget v6, v4, v10

    add-int/2addr v0, v6

    int-to-float v0, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v10, v0, v6

    .line 200
    .local v10, "left":F
    aget v0, v13, v9

    const/16 v16, 0x0

    aget v17, v13, v16

    add-int v0, v0, v17

    int-to-float v0, v0

    div-float v6, v0, v6

    .line 201
    .local v6, "right":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/UPCEANReader;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v9

    .line 202
    .local v9, "format":Lcom/google/zxing/BarcodeFormat;
    new-instance v0, Lcom/google/zxing/Result;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v7

    .end local v7    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .local v18, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    new-instance v7, Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v11

    .end local v11    # "result":Ljava/lang/StringBuilder;
    .local v19, "result":Ljava/lang/StringBuilder;
    int-to-float v11, v2

    invoke-direct {v7, v10, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/16 v16, 0x0

    aput-object v7, v4, v16

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v11, v2

    invoke-direct {v7, v6, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v11, 0x1

    aput-object v7, v4, v11

    const/4 v7, 0x0

    invoke-direct {v0, v8, v7, v4, v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v4, v0

    .line 209
    .local v4, "decodeResult":Lcom/google/zxing/Result;
    move/from16 v7, v16

    .line 212
    .local v7, "extensionLength":I
    :try_start_c3
    iget-object v0, v1, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    aget v11, v13, v11

    invoke-virtual {v0, v2, v3, v11}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_cb
    .catch Lcom/google/zxing/ReaderException; {:try_start_c3 .. :try_end_cb} :catch_ef

    move-object v11, v0

    .line 213
    .local v11, "extensionResult":Lcom/google/zxing/Result;
    :try_start_cc
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 215
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V

    .line 216
    invoke-virtual {v11}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_eb
    .catch Lcom/google/zxing/ReaderException; {:try_start_cc .. :try_end_eb} :catch_ed

    move v7, v0

    .line 219
    .end local v11    # "extensionResult":Lcom/google/zxing/Result;
    goto :goto_f1

    .line 217
    :catch_ed
    move-exception v0

    goto :goto_f1

    :catch_ef
    move-exception v0

    const/4 v11, 0x0

    .line 221
    :goto_f1
    if-nez v5, :cond_f5

    .line 222
    const/4 v0, 0x0

    goto :goto_fd

    .line 221
    :cond_f5
    sget-object v0, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    .line 222
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_fd
    move-object v2, v11

    .line 223
    .local v2, "allowedExtensions":[I
    move-object v2, v0

    if-eqz v0, :cond_11d

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "valid":Z
    array-length v11, v2

    move/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "valid":Z
    .local v20, "valid":Z
    :goto_106
    if-ge v0, v11, :cond_113

    aget v3, v2, v0

    .line 226
    .local v3, "length":I
    if-ne v7, v3, :cond_10e

    .line 227
    const/4 v0, 0x1

    .line 228
    .end local v20    # "valid":Z
    .restart local v0    # "valid":Z
    goto :goto_115

    .line 225
    .end local v0    # "valid":Z
    .end local v3    # "length":I
    .restart local v20    # "valid":Z
    :cond_10e
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p2

    goto :goto_106

    .line 231
    :cond_113
    move/from16 v0, v20

    .end local v20    # "valid":Z
    .restart local v0    # "valid":Z
    :goto_115
    if-eqz v0, :cond_118

    .end local v0    # "valid":Z
    goto :goto_11d

    .line 232
    .restart local v0    # "valid":Z
    :cond_118
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 236
    .end local v0    # "valid":Z
    :cond_11d
    :goto_11d
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v9, v0, :cond_125

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-ne v9, v0, :cond_134

    .line 237
    :cond_125
    iget-object v0, v1, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-virtual {v0, v8}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 238
    .local v3, "countryID":Ljava/lang/String;
    move-object v3, v0

    if-eqz v0, :cond_134

    .line 239
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v4, v0, v3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 243
    .end local v3    # "countryID":Ljava/lang/String;
    :cond_134
    return-object v4

    .line 196
    .end local v2    # "allowedExtensions":[I
    .end local v4    # "decodeResult":Lcom/google/zxing/Result;
    .end local v6    # "right":F
    .end local v9    # "format":Lcom/google/zxing/BarcodeFormat;
    .end local v10    # "left":F
    .end local v18    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v19    # "result":Ljava/lang/StringBuilder;
    .local v7, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .local v11, "result":Ljava/lang/StringBuilder;
    :cond_135
    move-object/from16 v18, v7

    move-object/from16 v19, v11

    .end local v7    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v11    # "result":Ljava/lang/StringBuilder;
    .restart local v18    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .restart local v19    # "result":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 193
    .end local v18    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v19    # "result":Ljava/lang/StringBuilder;
    .restart local v7    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .restart local v11    # "result":Ljava/lang/StringBuilder;
    :cond_13e
    move-object/from16 v18, v7

    move-object/from16 v19, v11

    .end local v7    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v11    # "result":Ljava/lang/StringBuilder;
    .restart local v18    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .restart local v19    # "result":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 187
    .end local v8    # "resultString":Ljava/lang/String;
    .end local v18    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v19    # "result":Ljava/lang/StringBuilder;
    .restart local v7    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .restart local v11    # "result":Ljava/lang/StringBuilder;
    :cond_147
    move-object/from16 v18, v7

    move-object/from16 v19, v11

    .end local v7    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v11    # "result":Ljava/lang/StringBuilder;
    .restart local v18    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .restart local v19    # "result":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method abstract getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.end method
