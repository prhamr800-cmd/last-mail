###### Class com.google.zxing.oned.Code39Writer (com.google.zxing.oned.Code39Writer)
.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .registers 5
    .param p0, "a"    # I
    .param p1, "toReturn"    # [I

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_14

    .line 84
    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    .line 85
    .local v1, "temp":I
    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x2

    :goto_f
    aput v2, p1, v0

    .line 83
    .end local v1    # "temp":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    .end local v0    # "i":I
    :cond_14
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 9
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 39
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_9

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 40
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_39, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 14
    .param p1, "contents"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 48
    .local v2, "length":I
    move v2, v0

    const/16 v3, 0x50

    if-gt v0, v3, :cond_8e

    .line 53
    const/16 v0, 0x9

    new-array v3, v0, [I

    .line 54
    .local v3, "widths":[I
    add-int/lit8 v4, v2, 0x19

    .line 55
    .local v4, "codeWidth":I
    move v6, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v4, "i":I
    .local v6, "codeWidth":I
    :goto_14
    if-ge v4, v2, :cond_4c

    .line 56
    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 57
    .local v5, "indexInString":I
    move v5, v7

    if-ltz v7, :cond_38

    .line 60
    sget-object v7, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v7, v7, v5

    invoke-static {v7, v3}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 61
    move v7, v6

    const/4 v6, 0x0

    .end local v6    # "codeWidth":I
    .local v7, "codeWidth":I
    :goto_2c
    if-ge v6, v0, :cond_34

    aget v8, v3, v6

    .line 62
    .local v8, "width":I
    add-int/2addr v7, v8

    .line 61
    .end local v8    # "width":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 55
    :cond_34
    add-int/lit8 v4, v4, 0x1

    move v6, v7

    goto :goto_14

    .line 58
    .end local v7    # "codeWidth":I
    .restart local v6    # "codeWidth":I
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Bad contents: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    .end local v4    # "i":I
    .end local v5    # "indexInString":I
    :cond_4c
    new-array v0, v6, [Z

    .line 66
    .local v0, "result":[Z
    sget v4, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    invoke-static {v4, v3}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 67
    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v5

    .line 68
    .local v5, "pos":I
    new-array v7, v4, [I

    aput v4, v7, v1

    .line 69
    .local v7, "narrowWhite":[I
    invoke-static {v0, v5, v7, v1}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v5, v8

    .line 71
    move v8, v5

    const/4 v5, 0x0

    .local v5, "i":I
    .local v8, "pos":I
    :goto_63
    if-ge v5, v2, :cond_85

    .line 72
    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 73
    .local v9, "indexInString":I
    sget-object v10, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v10, v10, v9

    invoke-static {v10, v3}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 74
    invoke-static {v0, v8, v3, v4}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v10, v8

    .line 75
    move v8, v10

    invoke-static {v0, v8, v7, v1}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v11

    add-int v8, v10, v11

    .line 71
    .end local v9    # "indexInString":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 77
    .end local v5    # "i":I
    :cond_85
    sget v1, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    invoke-static {v1, v3}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 78
    invoke-static {v0, v8, v3, v4}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    .line 79
    return-object v0

    .line 49
    .end local v0    # "result":[Z
    .end local v3    # "widths":[I
    .end local v6    # "codeWidth":I
    .end local v7    # "narrowWhite":[I
    .end local v8    # "pos":I
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
