###### Class com.google.zxing.oned.EAN8Reader (com.google.zxing.oned.EAN8Reader)
.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 34
    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .registers 15
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "startRange"    # [I
    .param p3, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    const/4 v1, 0x0

    move-object v2, v1

    .line 41
    .local v2, "counters":[I
    move-object v2, v0

    const/4 v3, 0x0

    aput v3, v0, v3

    .line 42
    const/4 v0, 0x1

    aput v3, v2, v0

    .line 43
    const/4 v4, 0x2

    aput v3, v2, v4

    .line 44
    const/4 v4, 0x3

    aput v3, v2, v4

    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 46
    .local v4, "end":I
    aget v5, p2, v0

    .line 48
    .local v5, "rowOffset":I
    move v6, v5

    const/4 v5, 0x0

    .local v5, "x":I
    .local v6, "rowOffset":I
    :goto_19
    const/4 v7, 0x4

    if-ge v5, v7, :cond_39

    if-ge v6, v4, :cond_39

    .line 49
    sget-object v7, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v2, v6, v7}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v7

    .line 50
    .local v7, "bestMatch":I
    add-int/lit8 v8, v7, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    array-length v8, v2

    move v9, v6

    const/4 v6, 0x0

    .end local v6    # "rowOffset":I
    .local v9, "rowOffset":I
    :goto_2d
    if-ge v6, v8, :cond_35

    aget v10, v2, v6

    .line 52
    .local v10, "counter":I
    add-int/2addr v9, v10

    .line 51
    .end local v10    # "counter":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 48
    .end local v7    # "bestMatch":I
    :cond_35
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_19

    .line 56
    .end local v5    # "x":I
    .end local v9    # "rowOffset":I
    .restart local v6    # "rowOffset":I
    :cond_39
    sget-object v5, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v6, v0, v5}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v5

    .line 57
    .local v1, "middleRange":[I
    aget v0, v5, v0

    .line 59
    .end local v6    # "rowOffset":I
    .local v0, "rowOffset":I
    move v5, v0

    const/4 v0, 0x0

    .local v0, "x":I
    .local v5, "rowOffset":I
    :goto_43
    if-ge v0, v7, :cond_62

    if-ge v5, v4, :cond_62

    .line 60
    sget-object v6, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v2, v5, v6}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v6

    .line 61
    .local v6, "bestMatch":I
    add-int/lit8 v8, v6, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    array-length v8, v2

    move v9, v5

    const/4 v5, 0x0

    .end local v5    # "rowOffset":I
    .restart local v9    # "rowOffset":I
    :goto_56
    if-ge v5, v8, :cond_5e

    aget v10, v2, v5

    .line 63
    .restart local v10    # "counter":I
    add-int/2addr v9, v10

    .line 62
    .end local v10    # "counter":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 59
    .end local v6    # "bestMatch":I
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    move v5, v9

    goto :goto_43

    .line 67
    .end local v0    # "x":I
    .end local v9    # "rowOffset":I
    .restart local v5    # "rowOffset":I
    :cond_62
    return v5
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .registers 2

    .line 72
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
