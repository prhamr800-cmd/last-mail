###### Class com.google.zxing.datamatrix.encoder.Base256Encoder (com.google.zxing.datamatrix.encoder.Base256Encoder)
.class final Lcom/google/zxing/datamatrix/encoder/Base256Encoder;
.super Ljava/lang/Object;
.source "Base256Encoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static randomize255State(CI)C
    .registers 6
    .param p0, "ch"    # C
    .param p1, "codewordPosition"    # I

    .line 65
    mul-int/lit16 v0, p1, 0x95

    const/16 v1, 0xff

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 66
    .local v0, "pseudoRandom":I
    add-int v2, p0, v0

    const/4 v3, 0x0

    .line 67
    .local v3, "tempVariable":I
    move v3, v2

    if-gt v2, v1, :cond_f

    .line 68
    int-to-char v1, v3

    return v1

    .line 70
    :cond_f
    add-int/lit16 v1, v3, -0x100

    int-to-char v1, v1

    return v1
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .registers 12
    .param p1, "context"    # Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 29
    .local v1, "buffer":Ljava/lang/StringBuilder;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_39

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v3

    .line 32
    .local v3, "c":C
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    iget v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v5, v4

    iput v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 37
    .local v0, "newMode":I
    move v0, v5

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    move-result v6

    if-eq v5, v6, :cond_38

    .line 38
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 39
    goto :goto_39

    .line 41
    .end local v3    # "c":C
    :cond_38
    goto :goto_c

    .line 42
    .end local v0    # "newMode":I
    :cond_39
    :goto_39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 44
    .local v0, "lengthFieldSize":I
    .local v3, "dataCount":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    .line 45
    .local v5, "currentSize":I
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 46
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v6

    sub-int/2addr v6, v5

    if-lez v6, :cond_54

    const/4 v6, 0x1

    goto :goto_55

    :cond_54
    const/4 v6, 0x0

    .line 47
    .local v6, "mustPad":Z
    :goto_55
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v7

    if-nez v7, :cond_5d

    if-eqz v6, :cond_77

    .line 48
    :cond_5d
    const/16 v7, 0xf9

    if-gt v3, v7, :cond_66

    .line 49
    int-to-char v7, v3

    invoke-virtual {v1, v2, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_77

    .line 50
    :cond_66
    const/16 v8, 0x613

    if-gt v3, v8, :cond_93

    .line 51
    div-int/lit16 v8, v3, 0xfa

    add-int/2addr v8, v7

    int-to-char v7, v8

    invoke-virtual {v1, v2, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 52
    rem-int/lit16 v2, v3, 0xfa

    int-to-char v2, v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 58
    :cond_77
    :goto_77
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .local v7, "c":I
    :goto_7c
    if-ge v2, v7, :cond_92

    .line 59
    nop

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v9

    add-int/2addr v9, v4

    .line 59
    invoke-static {v8, v9}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->randomize255State(CI)C

    move-result v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 62
    .end local v2    # "i":I
    .end local v7    # "c":I
    :cond_92
    return-void

    .line 54
    :cond_93
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Message length not in valid ranges: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getEncodingMode()I
    .registers 2

    .line 23
    const/4 v0, 0x5

    return v0
.end method
