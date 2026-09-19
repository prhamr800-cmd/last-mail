###### Class com.google.zxing.oned.Code93Writer (com.google.zxing.oned.Code93Writer)
.class public Lcom/google/zxing/oned/Code93Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code93Writer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method protected static appendPattern([ZI[IZ)I
    .registers 10
    .param p0, "target"    # [Z
    .param p1, "pos"    # I
    .param p2, "pattern"    # [I
    .param p3, "startColor"    # Z

    .line 96
    array-length v0, p2

    const/4 v1, 0x0

    move v2, p1

    const/4 p1, 0x0

    .end local p1    # "pos":I
    .local v2, "pos":I
    :goto_4
    if-ge p1, v0, :cond_15

    aget v3, p2, p1

    .line 97
    .local v3, "bit":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "pos":I
    if-eqz v3, :cond_e

    const/4 v5, 0x1

    goto :goto_f

    :cond_e
    const/4 v5, 0x0

    :goto_f
    aput-boolean v5, p0, v2

    .line 96
    .end local v2    # "pos":I
    .end local v3    # "bit":I
    add-int/lit8 p1, p1, 0x1

    move v2, v4

    goto :goto_4

    .line 99
    .end local v4    # "pos":I
    .restart local v2    # "pos":I
    :cond_15
    const/16 p1, 0x9

    return p1
.end method

.method private static computeChecksumIndex(Ljava/lang/String;I)I
    .registers 7
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "maxWeight"    # I

    .line 103
    const/4 v0, 0x1

    .line 104
    .local v0, "weight":I
    const/4 v1, 0x0

    .line 106
    .local v1, "total":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_8
    if-ltz v2, :cond_1f

    .line 107
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 108
    .local v3, "indexInString":I
    mul-int v4, v3, v0

    add-int/2addr v1, v4

    .line 109
    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_1c

    .line 110
    const/4 v0, 0x1

    .line 106
    .end local v3    # "indexInString":I
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 113
    .end local v2    # "i":I
    :cond_1f
    rem-int/lit8 v2, v1, 0x2f

    return v2
.end method

.method private static toIntArray(I[I)V
    .registers 6
    .param p0, "a"    # I
    .param p1, "toReturn"    # [I

    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x9

    if-ge v1, v2, :cond_15

    .line 90
    rsub-int/lit8 v2, v1, 0x8

    const/4 v3, 0x1

    shl-int v2, v3, v2

    and-int/2addr v2, p0

    .line 91
    .local v2, "temp":I
    if-nez v2, :cond_10

    const/4 v3, 0x0

    nop

    :cond_10
    aput v3, p1, v1

    .line 89
    .end local v2    # "temp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    .end local v1    # "i":I
    :cond_15
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

    .line 35
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_9

    .line 38
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 36
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_93, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 11
    .param p1, "contents"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 44
    .local v2, "length":I
    move v2, v0

    const/16 v3, 0x50

    if-gt v0, v3, :cond_8e

    .line 49
    const/16 v0, 0x9

    new-array v3, v0, [I

    .line 52
    .local v3, "widths":[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x9

    const/4 v0, 0x1

    add-int/2addr v4, v0

    .line 54
    new-array v4, v4, [Z

    .line 57
    .local v4, "result":[Z
    sget-object v5, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v6, 0x2f

    aget v5, v5, v6

    invoke-static {v5, v3}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 58
    invoke-static {v4, v1, v3, v0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v5

    .line 60
    .local v5, "pos":I
    nop

    .local v1, "i":I
    :goto_2b
    if-ge v1, v2, :cond_46

    .line 61
    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 62
    .local v7, "indexInString":I
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v7

    invoke-static {v8, v3}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 63
    invoke-static {v4, v5, v3, v0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v5, v8

    .line 60
    .end local v7    # "indexInString":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 67
    .end local v1    # "i":I
    :cond_46
    const/16 v1, 0x14

    invoke-static {p1, v1}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v1

    .line 68
    .local v1, "check1":I
    sget-object v7, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v7, v7, v1

    invoke-static {v7, v3}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 69
    invoke-static {v4, v5, v3, v0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v5, v7

    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 74
    const/16 v8, 0xf

    invoke-static {v7, v8}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result v7

    .line 75
    .local v7, "check2":I
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v8, v8, v7

    invoke-static {v8, v3}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 76
    invoke-static {v4, v5, v3, v0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v5, v8

    .line 79
    sget-object v8, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v6, v8, v6

    invoke-static {v6, v3}, Lcom/google/zxing/oned/Code93Writer;->toIntArray(I[I)V

    .line 80
    invoke-static {v4, v5, v3, v0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZI[IZ)I

    move-result v6

    add-int/2addr v5, v6

    .line 83
    aput-boolean v0, v4, v5

    .line 85
    return-object v4

    .line 45
    .end local v1    # "check1":I
    .end local v3    # "widths":[I
    .end local v4    # "result":[Z
    .end local v5    # "pos":I
    .end local v7    # "check2":I
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
