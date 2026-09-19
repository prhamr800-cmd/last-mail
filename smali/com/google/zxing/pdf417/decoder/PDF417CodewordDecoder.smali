###### Class com.google.zxing.pdf417.decoder.PDF417CodewordDecoder (com.google.zxing.pdf417.decoder.PDF417CodewordDecoder)
.class final Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;
.super Ljava/lang/Object;
.source "PDF417CodewordDecoder.java"


# static fields
.field private static final RATIOS_TABLE:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 28
    sget-object v0, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v0, v0

    const/16 v1, 0x8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v2, F

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    .line 33
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v2, "i":I
    :goto_16
    sget-object v4, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v4, v4

    if-ge v2, v4, :cond_49

    .line 34
    sget-object v4, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v4, v4, v2

    .line 35
    .local v3, "currentSymbol":I
    move v3, v4

    and-int/lit8 v4, v4, 0x1

    .line 36
    .local v4, "currentBit":I
    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    .local v3, "j":I
    .local v4, "currentSymbol":I
    .local v5, "currentBit":I
    :goto_25
    if-ge v3, v1, :cond_45

    .line 37
    const/4 v6, 0x0

    .line 38
    .local v6, "size":F
    :goto_28
    and-int/lit8 v7, v4, 0x1

    if-ne v7, v5, :cond_32

    .line 39
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    .line 40
    shr-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 42
    :cond_32
    and-int/lit8 v5, v4, 0x1

    .line 43
    sget-object v7, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    aget-object v7, v7, v2

    rsub-int/lit8 v8, v3, 0x8

    add-int/lit8 v8, v8, -0x1

    const/high16 v9, 0x41880000    # 17.0f

    div-float v9, v6, v9

    aput v9, v7, v8

    .line 36
    .end local v6    # "size":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 33
    .end local v3    # "j":I
    .end local v5    # "currentBit":I
    :cond_45
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_16

    .line 46
    .end local v2    # "i":I
    .end local v4    # "currentSymbol":I
    :cond_49
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static getBitValue([I)I
    .registers 11
    .param p0, "moduleBitCount"    # [I

    .line 83
    const-wide/16 v0, 0x0

    .line 84
    .local v0, "result":J
    const/4 v2, 0x0

    move-wide v3, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v3, "result":J
    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 85
    const/4 v1, 0x0

    .local v1, "bit":I
    :goto_9
    aget v5, p0, v0

    if-ge v1, v5, :cond_1c

    .line 86
    const/4 v5, 0x1

    shl-long v6, v3, v5

    rem-int/lit8 v8, v0, 0x2

    if-nez v8, :cond_15

    goto :goto_16

    :cond_15
    const/4 v5, 0x0

    :goto_16
    int-to-long v8, v5

    or-long v3, v6, v8

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 84
    .end local v1    # "bit":I
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 89
    .end local v0    # "i":I
    :cond_1f
    long-to-int v0, v3

    return v0
.end method

.method private static getClosestDecodedValue([I)I
    .registers 13
    .param p0, "moduleBitCount"    # [I

    .line 93
    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    .line 94
    .local v0, "bitCountSum":I
    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 95
    .local v2, "bitCountRatios":[F
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v1, :cond_16

    .line 96
    aget v5, p0, v4

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    aput v5, v2, v4

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 98
    .end local v4    # "i":I
    :cond_16
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 99
    .local v4, "bestMatchError":F
    const/4 v5, -0x1

    .line 100
    .local v5, "bestMatch":I
    move v6, v4

    const/4 v4, 0x0

    .local v4, "j":I
    .local v6, "bestMatchError":F
    :goto_1c
    sget-object v7, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    array-length v7, v7

    if-ge v4, v7, :cond_46

    .line 101
    const/4 v7, 0x0

    .line 102
    .local v7, "error":F
    sget-object v8, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    aget-object v8, v8, v4

    .line 103
    .local v8, "ratioTableRow":[F
    move v9, v7

    const/4 v7, 0x0

    .local v7, "k":I
    .local v9, "error":F
    :goto_28
    if-ge v7, v1, :cond_3a

    .line 104
    aget v10, v8, v7

    aget v11, v2, v7

    sub-float/2addr v10, v11

    .line 105
    .local v10, "diff":F
    mul-float v11, v10, v10

    add-float/2addr v11, v9

    .line 106
    move v9, v11

    cmpl-float v11, v11, v6

    if-gez v11, :cond_3a

    .line 103
    .end local v10    # "diff":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 110
    .end local v7    # "k":I
    :cond_3a
    cmpg-float v7, v9, v6

    if-gez v7, :cond_43

    .line 111
    move v6, v9

    .line 112
    sget-object v7, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v5, v7, v4

    .line 100
    .end local v8    # "ratioTableRow":[F
    .end local v9    # "error":F
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 115
    .end local v4    # "j":I
    :cond_46
    return v5
.end method

.method private static getDecodedCodewordValue([I)I
    .registers 4
    .param p0, "moduleBitCount"    # [I

    .line 78
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getBitValue([I)I

    move-result v0

    const/4 v1, 0x0

    .line 79
    .local v1, "decodedValue":I
    move v1, v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    return v2

    :cond_e
    return v1
.end method

.method static getDecodedValue([I)I
    .registers 4
    .param p0, "moduleBitCount"    # [I

    .line 52
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->sampleBitCounts([I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedCodewordValue([I)I

    move-result v0

    const/4 v1, 0x0

    .line 53
    .local v1, "decodedValue":I
    move v1, v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    .line 54
    return v1

    .line 56
    :cond_e
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getClosestDecodedValue([I)I

    move-result v0

    return v0
.end method

.method private static sampleBitCounts([I)[I
    .registers 9
    .param p0, "moduleBitCount"    # [I

    .line 60
    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    int-to-float v0, v0

    .line 61
    .local v0, "bitCountSum":F
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 62
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 63
    .local v2, "bitCountIndex":I
    const/4 v3, 0x0

    .line 64
    .local v3, "sumPreviousBits":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    const/16 v5, 0x11

    if-ge v4, v5, :cond_31

    .line 65
    const/high16 v5, 0x42080000    # 34.0f

    div-float v5, v0, v5

    int-to-float v6, v4

    mul-float v6, v6, v0

    const/high16 v7, 0x41880000    # 17.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 68
    .local v5, "sampleIndex":F
    aget v6, p0, v2

    add-int/2addr v6, v3

    int-to-float v6, v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_28

    .line 69
    aget v6, p0, v2

    add-int/2addr v3, v6

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 72
    :cond_28
    aget v6, v1, v2

    add-int/lit8 v6, v6, 0x1

    aput v6, v1, v2

    .line 64
    .end local v5    # "sampleIndex":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 74
    .end local v4    # "i":I
    :cond_31
    return-object v1
.end method
