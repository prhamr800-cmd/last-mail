###### Class com.google.zxing.oned.EAN13Reader (com.google.zxing.oned.EAN13Reader)
.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN13Reader.java"


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .line 69
    return-void
.end method

.method private static determineFirstDigit(Ljava/lang/StringBuilder;I)V
    .registers 5
    .param p0, "resultString"    # Ljava/lang/StringBuilder;
    .param p1, "lgPatternFound"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "d":I
    :goto_2
    const/16 v2, 0xa

    if-ge v1, v2, :cond_16

    .line 130
    sget-object v2, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_13

    .line 131
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 132
    return-void

    .line 129
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 135
    .end local v1    # "d":I
    :cond_16
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .registers 16
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "resultString"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    const/4 v1, 0x0

    move-object v2, v1

    .line 76
    .local v2, "counters":[I
    move-object v2, v0

    const/4 v3, 0x0

    aput v3, v0, v3

    .line 77
    const/4 v0, 0x1

    aput v3, v2, v0

    .line 78
    const/4 v4, 0x2

    aput v3, v2, v4

    .line 79
    const/4 v4, 0x3

    aput v3, v2, v4

    .line 80
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 81
    .local v4, "end":I
    aget v5, p2, v0

    .line 83
    .local v5, "rowOffset":I
    const/4 v6, 0x0

    .line 85
    .local v6, "lgPatternFound":I
    move v7, v6

    move v6, v5

    const/4 v5, 0x0

    .local v5, "x":I
    .local v6, "rowOffset":I
    .local v7, "lgPatternFound":I
    :goto_1b
    const/4 v8, 0x6

    if-ge v5, v8, :cond_47

    if-ge v6, v4, :cond_47

    .line 86
    sget-object v8, Lcom/google/zxing/oned/EAN13Reader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v2, v6, v8}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v8

    .line 87
    .local v8, "bestMatch":I
    rem-int/lit8 v9, v8, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    array-length v9, v2

    move v10, v6

    const/4 v6, 0x0

    .end local v6    # "rowOffset":I
    .local v10, "rowOffset":I
    :goto_31
    if-ge v6, v9, :cond_39

    aget v11, v2, v6

    .line 89
    .local v11, "counter":I
    add-int/2addr v10, v11

    .line 88
    .end local v11    # "counter":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 91
    :cond_39
    const/16 v6, 0xa

    if-lt v8, v6, :cond_43

    .line 92
    rsub-int/lit8 v6, v5, 0x5

    shl-int v6, v0, v6

    or-int/2addr v6, v7

    .line 85
    move v7, v6

    .end local v8    # "bestMatch":I
    :cond_43
    add-int/lit8 v5, v5, 0x1

    move v6, v10

    goto :goto_1b

    .line 96
    .end local v5    # "x":I
    .end local v10    # "rowOffset":I
    .restart local v6    # "rowOffset":I
    :cond_47
    invoke-static {p3, v7}, Lcom/google/zxing/oned/EAN13Reader;->determineFirstDigit(Ljava/lang/StringBuilder;I)V

    .line 98
    sget-object v5, Lcom/google/zxing/oned/EAN13Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v6, v0, v5}, Lcom/google/zxing/oned/EAN13Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v5

    .line 99
    .local v1, "middleRange":[I
    aget v0, v5, v0

    .line 101
    .end local v6    # "rowOffset":I
    .local v0, "rowOffset":I
    move v5, v0

    const/4 v0, 0x0

    .local v0, "x":I
    .local v5, "rowOffset":I
    :goto_54
    if-ge v0, v8, :cond_73

    if-ge v5, v4, :cond_73

    .line 102
    sget-object v6, Lcom/google/zxing/oned/EAN13Reader;->L_PATTERNS:[[I

    invoke-static {p1, v2, v5, v6}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v6

    .line 103
    .local v6, "bestMatch":I
    add-int/lit8 v9, v6, 0x30

    int-to-char v9, v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    array-length v9, v2

    move v10, v5

    const/4 v5, 0x0

    .end local v5    # "rowOffset":I
    .restart local v10    # "rowOffset":I
    :goto_67
    if-ge v5, v9, :cond_6f

    aget v11, v2, v5

    .line 105
    .restart local v11    # "counter":I
    add-int/2addr v10, v11

    .line 104
    .end local v11    # "counter":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 101
    .end local v6    # "bestMatch":I
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    move v5, v10

    goto :goto_54

    .line 109
    .end local v0    # "x":I
    .end local v10    # "rowOffset":I
    .restart local v5    # "rowOffset":I
    :cond_73
    return v5
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .registers 2

    .line 114
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
