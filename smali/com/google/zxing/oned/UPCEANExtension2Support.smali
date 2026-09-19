###### Class com.google.zxing.oned.UPCEANExtension2Support (com.google.zxing.oned.UPCEANExtension2Support)
.class final Lcom/google/zxing/oned/UPCEANExtension2Support;
.super Ljava/lang/Object;
.source "UPCEANExtension2Support.java"


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .registers 16
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    const/4 v1, 0x0

    .line 62
    .local v1, "counters":[I
    move-object v1, v0

    const/4 v2, 0x0

    aput v2, v0, v2

    .line 63
    const/4 v0, 0x1

    aput v2, v1, v0

    .line 64
    const/4 v3, 0x2

    aput v2, v1, v3

    .line 65
    const/4 v4, 0x3

    aput v2, v1, v4

    .line 66
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 67
    .local v4, "end":I
    aget v5, p2, v0

    .line 69
    .local v5, "rowOffset":I
    const/4 v6, 0x0

    .line 71
    .local v6, "checkParity":I
    move v7, v6

    move v6, v5

    const/4 v5, 0x0

    .local v5, "x":I
    .local v6, "rowOffset":I
    .local v7, "checkParity":I
    :goto_1a
    if-ge v5, v3, :cond_50

    if-ge v6, v4, :cond_50

    .line 72
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v1, v6, v8}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v8

    .line 73
    .local v8, "bestMatch":I
    rem-int/lit8 v9, v8, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    array-length v9, v1

    move v10, v6

    const/4 v6, 0x0

    .end local v6    # "rowOffset":I
    .local v10, "rowOffset":I
    :goto_2f
    if-ge v6, v9, :cond_37

    aget v11, v1, v6

    .line 75
    .local v11, "counter":I
    add-int/2addr v10, v11

    .line 74
    .end local v11    # "counter":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 77
    :cond_37
    const/16 v6, 0xa

    if-lt v8, v6, :cond_41

    .line 78
    rsub-int/lit8 v6, v5, 0x1

    shl-int v6, v0, v6

    or-int/2addr v6, v7

    .line 80
    move v7, v6

    :cond_41
    if-eq v5, v0, :cond_4c

    .line 82
    invoke-virtual {p1, v10}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v6

    .line 83
    .end local v10    # "rowOffset":I
    .restart local v6    # "rowOffset":I
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v6

    goto :goto_4d

    .line 71
    .end local v6    # "rowOffset":I
    .end local v8    # "bestMatch":I
    .restart local v10    # "rowOffset":I
    :cond_4c
    move v6, v10

    .end local v10    # "rowOffset":I
    .restart local v6    # "rowOffset":I
    :goto_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 87
    .end local v5    # "x":I
    :cond_50
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v3, :cond_68

    .line 91
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-ne v0, v7, :cond_63

    .line 95
    return v6

    .line 92
    :cond_63
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 88
    :cond_68
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
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

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    .line 105
    return-object v1

    .line 107
    :cond_9
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 108
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
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

    .line 39
    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move-object v2, v1

    .line 40
    .local v2, "result":Ljava/lang/StringBuilder;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 41
    invoke-direct {p0, p2, p3, v2}, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v0

    .line 43
    .local v0, "end":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    .line 44
    .local v5, "resultString":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v4}, Lcom/google/zxing/oned/UPCEANExtension2Support;->parseExtensionString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 46
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

    .line 54
    .local v1, "extensionResult":Lcom/google/zxing/Result;
    if-eqz v4, :cond_42

    .line 55
    invoke-virtual {v1, v4}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 57
    :cond_42
    return-object v1
.end method
