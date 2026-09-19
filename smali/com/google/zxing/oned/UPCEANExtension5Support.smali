###### Class com.google.zxing.oned.UPCEANExtension5Support (com.google.zxing.oned.UPCEANExtension5Support)
.class final Lcom/google/zxing/oned/UPCEANExtension5Support;
.super Ljava/lang/Object;
.source "UPCEANExtension5Support.java"


# static fields
.field private static final CHECK_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtension5Support;->CHECK_DIGIT_ENCODINGS:[I

    return-void

    :array_a
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddleCounters:[I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .registers 15
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddleCounters:[I

    const/4 v1, 0x0

    .line 66
    .local v1, "counters":[I
    move-object v1, v0

    const/4 v2, 0x0

    aput v2, v0, v2

    .line 67
    const/4 v0, 0x1

    aput v2, v1, v0

    .line 68
    const/4 v3, 0x2

    aput v2, v1, v3

    .line 69
    const/4 v3, 0x3

    aput v2, v1, v3

    .line 70
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    .line 71
    .local v3, "end":I
    aget v4, p2, v0

    .line 73
    .local v4, "rowOffset":I
    const/4 v5, 0x0

    .line 75
    .local v5, "lgPatternFound":I
    move v6, v5

    move v5, v4

    const/4 v4, 0x0

    .local v4, "x":I
    .local v5, "rowOffset":I
    .local v6, "lgPatternFound":I
    :goto_1a
    const/4 v7, 0x5

    if-ge v4, v7, :cond_51

    if-ge v5, v3, :cond_51

    .line 76
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v1, v5, v7}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v7

    .line 77
    .local v7, "bestMatch":I
    rem-int/lit8 v8, v7, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    array-length v8, v1

    move v9, v5

    const/4 v5, 0x0

    .end local v5    # "rowOffset":I
    .local v9, "rowOffset":I
    :goto_30
    if-ge v5, v8, :cond_38

    aget v10, v1, v5

    .line 79
    .local v10, "counter":I
    add-int/2addr v9, v10

    .line 78
    .end local v10    # "counter":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 81
    :cond_38
    const/4 v5, 0x4

    const/16 v8, 0xa

    if-lt v7, v8, :cond_42

    .line 82
    rsub-int/lit8 v8, v4, 0x4

    shl-int v8, v0, v8

    or-int/2addr v6, v8

    .line 84
    :cond_42
    if-eq v4, v5, :cond_4d

    .line 86
    invoke-virtual {p1, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    .line 87
    .end local v9    # "rowOffset":I
    .restart local v5    # "rowOffset":I
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v5

    goto :goto_4e

    .line 75
    .end local v5    # "rowOffset":I
    .end local v7    # "bestMatch":I
    .restart local v9    # "rowOffset":I
    :cond_4d
    move v5, v9

    .end local v9    # "rowOffset":I
    .restart local v5    # "rowOffset":I
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 91
    .end local v4    # "x":I
    :cond_51
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v7, :cond_6b

    .line 95
    invoke-static {v6}, Lcom/google/zxing/oned/UPCEANExtension5Support;->determineCheckDigit(I)I

    move-result v0

    .line 96
    .local v0, "checkDigit":I
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/oned/UPCEANExtension5Support;->extensionChecksum(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_66

    .line 100
    return v5

    .line 97
    :cond_66
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 92
    .end local v0    # "checkDigit":I
    :cond_6b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static determineCheckDigit(I)I
    .registers 3
    .param p0, "lgPatternFound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 120
    sget-object v1, Lcom/google/zxing/oned/UPCEANExtension5Support;->CHECK_DIGIT_ENCODINGS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_c

    .line 121
    return v0

    .line 119
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "d":I
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static extensionChecksum(Ljava/lang/CharSequence;)I
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 104
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 105
    .local v0, "length":I
    const/4 v1, 0x0

    .line 106
    .local v1, "sum":I
    add-int/lit8 v2, v0, -0x2

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_13

    .line 107
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v1, v3

    .line 106
    add-int/lit8 v2, v2, -0x2

    goto :goto_7

    .line 109
    .end local v2    # "i":I
    :cond_13
    mul-int/lit8 v1, v1, 0x3

    .line 110
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_17
    if-ltz v2, :cond_23

    .line 111
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v1, v3

    .line 110
    add-int/lit8 v2, v2, -0x2

    goto :goto_17

    .line 113
    .end local v2    # "i":I
    :cond_23
    mul-int/lit8 v2, v1, 0x3

    .line 114
    rem-int/lit8 v2, v2, 0xa

    return v2
.end method

.method private static parseExtension5String(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "raw"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_3a

    const/16 v2, 0x35

    if-eq v1, v2, :cond_37

    const/16 v2, 0x39

    if-eq v1, v2, :cond_14

    .line 171
    const-string v1, ""

    goto :goto_3e

    .line 156
    :cond_14
    const-string v1, "90000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 160
    :cond_1e
    const-string v1, "99991"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 162
    const-string v0, "0.00"

    return-object v0

    .line 164
    :cond_29
    const-string v1, "99990"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 165
    const-string v0, "Used"

    return-object v0

    .line 168
    :cond_34
    const-string v1, ""

    .line 169
    .local v1, "currency":Ljava/lang/String;
    goto :goto_3e

    .line 152
    .end local v1    # "currency":Ljava/lang/String;
    :cond_37
    const-string v1, "$"

    .line 153
    .restart local v1    # "currency":Ljava/lang/String;
    goto :goto_3e

    .line 149
    .end local v1    # "currency":Ljava/lang/String;
    :cond_3a
    const-string/jumbo v1, "\u00a3"

    .line 150
    .restart local v1    # "currency":Ljava/lang/String;
    nop

    .line 171
    :goto_3e
    nop

    .line 174
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v3, v0

    .line 175
    .local v3, "rawAmount":I
    move v3, v2

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "unitsString":Ljava/lang/String;
    rem-int/lit8 v4, v3, 0x64

    .line 177
    .local v0, "hundredths":I
    move v0, v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_66

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6a

    :cond_66
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "hundredthsString":Ljava/lang/String;
    :goto_6a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static parseExtensionString(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .param p0, "raw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_9

    .line 134
    return-object v1

    .line 136
    :cond_9
    invoke-static {p0}, Lcom/google/zxing/oned/UPCEANExtension5Support;->parseExtension5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 137
    .local v2, "value":Ljava/lang/Object;
    move-object v2, v0

    if-nez v0, :cond_12

    .line 138
    return-object v1

    .line 140
    :cond_12
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    move-object v1, v0

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object v1
.end method


# virtual methods
.method decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    .registers 16
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .param p3, "extensionStartRange"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move-object v2, v1

    .line 44
    .local v2, "result":Ljava/lang/StringBuilder;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    invoke-direct {p0, p2, p3, v2}, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v0

    .line 47
    .local v0, "end":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 48
    .local v5, "resultString":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v4}, Lcom/google/zxing/oned/UPCEANExtension5Support;->parseExtensionString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 50
    .local v4, "extensionData":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    new-instance v6, Lcom/google/zxing/Result;

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    new-instance v8, Lcom/google/zxing/ResultPoint;

    aget v9, p3, v3

    const/4 v10, 0x1

    aget v11, p3, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    int-to-float v11, p1

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v7, v3

    new-instance v3, Lcom/google/zxing/ResultPoint;

    int-to-float v8, v0

    int-to-float v9, p1

    invoke-direct {v3, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v7, v10

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v6, v5, v1, v7, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v1, v6

    .line 58
    .local v1, "extensionResult":Lcom/google/zxing/Result;
    if-eqz v4, :cond_42

    .line 59
    invoke-virtual {v1, v4}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 61
    :cond_42
    return-object v1
.end method
