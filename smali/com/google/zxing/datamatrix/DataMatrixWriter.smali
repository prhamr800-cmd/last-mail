###### Class com.google.zxing.datamatrix.DataMatrixWriter (com.google.zxing.datamatrix.DataMatrixWriter)
.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)Lcom/google/zxing/common/BitMatrix;
    .registers 9
    .param p0, "matrix"    # Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 163
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    .line 164
    .local v0, "matrixWidgth":I
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    .line 166
    .local v1, "matrixHeight":I
    new-instance v2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v3, 0x0

    .line 167
    .local v3, "output":Lcom/google/zxing/common/BitMatrix;
    move-object v3, v2

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 168
    const/4 v2, 0x0

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v0, :cond_29

    .line 169
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_17
    if-ge v5, v1, :cond_26

    .line 171
    invoke-virtual {p0, v4, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_23

    .line 172
    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 169
    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 168
    .end local v5    # "j":I
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 177
    .end local v4    # "i":I
    :cond_29
    return-object v3
.end method

.method private static encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Lcom/google/zxing/common/BitMatrix;
    .registers 13
    .param p0, "placement"    # Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
    .param p1, "symbolInfo"    # Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 108
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v0

    .line 109
    .local v0, "symbolWidth":I
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v1

    .line 111
    .local v1, "symbolHeight":I
    new-instance v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 113
    .local v2, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v3, 0x0

    .line 115
    .local v3, "matrixY":I
    const/4 v4, 0x0

    move v5, v3

    const/4 v3, 0x0

    .local v3, "y":I
    .local v5, "matrixY":I
    :goto_19
    if-ge v3, v1, :cond_8d

    .line 118
    iget v6, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v6, v3, v6

    const/4 v7, 0x1

    if-nez v6, :cond_3c

    .line 119
    const/4 v6, 0x0

    .line 120
    .local v6, "matrixX":I
    move v8, v6

    const/4 v6, 0x0

    .local v6, "x":I
    .local v8, "matrixX":I
    :goto_25
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v9

    if-ge v6, v9, :cond_3a

    .line 121
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_31

    const/4 v9, 0x1

    goto :goto_32

    :cond_31
    const/4 v9, 0x0

    :goto_32
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 122
    add-int/lit8 v8, v8, 0x1

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 124
    .end local v6    # "x":I
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    .line 126
    .end local v8    # "matrixX":I
    :cond_3c
    const/4 v6, 0x0

    .line 127
    .local v6, "matrixX":I
    move v8, v6

    const/4 v6, 0x0

    .local v6, "x":I
    .restart local v8    # "matrixX":I
    :goto_3f
    if-ge v6, v0, :cond_6c

    .line 129
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v9, v6, v9

    if-nez v9, :cond_4c

    .line 130
    invoke-virtual {v2, v8, v5, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 131
    add-int/lit8 v8, v8, 0x1

    .line 133
    :cond_4c
    invoke-virtual {p0, v6, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->getBit(II)Z

    move-result v9

    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 134
    add-int/2addr v8, v7

    .line 136
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v9, v6, v9

    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    sub-int/2addr v10, v7

    if-ne v9, v10, :cond_69

    .line 137
    rem-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_63

    const/4 v9, 0x1

    goto :goto_64

    :cond_63
    const/4 v9, 0x0

    :goto_64
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 138
    add-int/lit8 v8, v8, 0x1

    .line 127
    :cond_69
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    .line 141
    .end local v6    # "x":I
    :cond_6c
    add-int/lit8 v5, v5, 0x1

    .line 143
    iget v6, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v6, v3, v6

    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    sub-int/2addr v9, v7

    if-ne v6, v9, :cond_8a

    .line 144
    const/4 v6, 0x0

    .line 145
    .end local v8    # "matrixX":I
    .local v6, "matrixX":I
    move v8, v6

    const/4 v6, 0x0

    .local v6, "x":I
    .restart local v8    # "matrixX":I
    :goto_7a
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v9

    if-ge v6, v9, :cond_88

    .line 146
    invoke-virtual {v2, v8, v5, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 147
    add-int/lit8 v8, v8, 0x1

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    .line 149
    .end local v6    # "x":I
    :cond_88
    add-int/lit8 v5, v5, 0x1

    .line 115
    .end local v8    # "matrixX":I
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 153
    .end local v3    # "y":I
    :cond_8d
    invoke-static {v2}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .registers 11
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 43
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 16
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

    .line 49
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_96

    .line 53
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_82

    .line 57
    if-ltz p3, :cond_66

    if-ltz p4, :cond_66

    .line 62
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 63
    .local v0, "shape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    const/4 v1, 0x0

    .line 64
    .local v1, "minSize":Lcom/google/zxing/Dimension;
    const/4 v2, 0x0

    .line 65
    .local v2, "maxSize":Lcom/google/zxing/Dimension;
    const/4 v3, 0x0

    if-eqz p5, :cond_3d

    .line 66
    sget-object v4, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    move-object v5, v3

    .line 67
    .local v5, "requestedShape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    move-object v5, v4

    if-eqz v4, :cond_22

    .line 68
    move-object v0, v5

    .line 71
    :cond_22
    sget-object v4, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/Dimension;

    move-object v6, v3

    .line 72
    .local v6, "requestedMinSize":Lcom/google/zxing/Dimension;
    move-object v6, v4

    if-eqz v4, :cond_2f

    .line 73
    move-object v1, v6

    .line 76
    :cond_2f
    sget-object v4, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/Dimension;

    move-object v7, v3

    .line 77
    .local v7, "requestedMaxSize":Lcom/google/zxing/Dimension;
    move-object v7, v4

    if-eqz v4, :cond_3e

    .line 78
    move-object v2, v7

    goto :goto_3e

    .line 84
    .end local v5    # "requestedShape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .end local v6    # "requestedMinSize":Lcom/google/zxing/Dimension;
    .end local v7    # "requestedMaxSize":Lcom/google/zxing/Dimension;
    :cond_3d
    move-object v5, v3

    :cond_3e
    :goto_3e
    invoke-static {p1, v0, v1, v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v5, "encoded":Ljava/lang/String;
    move-object v5, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    invoke-static {v4, v0, v1, v2, v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v4

    .line 89
    .local v4, "symbolInfo":Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    invoke-static {v5, v4}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "codewords":Ljava/lang/String;
    new-instance v7, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;

    .line 93
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v8

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v9

    invoke-direct {v7, v6, v8, v9}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/CharSequence;II)V

    .line 94
    .local v3, "placement":Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
    move-object v3, v7

    invoke-virtual {v7}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->place()V

    .line 97
    invoke-static {v3, v4}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    return-object v7

    .line 58
    .end local v0    # "shape":Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .end local v1    # "minSize":Lcom/google/zxing/Dimension;
    .end local v2    # "maxSize":Lcom/google/zxing/Dimension;
    .end local v3    # "placement":Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
    .end local v4    # "symbolInfo":Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .end local v5    # "encoded":Ljava/lang/String;
    .end local v6    # "codewords":Ljava/lang/String;
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested dimensions are too small: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode DATA_MATRIX, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
