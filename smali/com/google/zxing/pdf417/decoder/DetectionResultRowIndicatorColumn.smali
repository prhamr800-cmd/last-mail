###### Class com.google.zxing.pdf417.decoder.DetectionResultRowIndicatorColumn (com.google.zxing.pdf417.decoder.DetectionResultRowIndicatorColumn)
.class final Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
.super Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.source "DetectionResultRowIndicatorColumn.java"


# instance fields
.field private final isLeft:Z


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V
    .registers 3
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "isLeft"    # Z

    .line 30
    invoke-direct {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 31
    iput-boolean p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    .line 32
    return-void
.end method

.method private adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .registers 18
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 137
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 138
    .local v1, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    iget-boolean v2, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 139
    .local v2, "top":Lcom/google/zxing/ResultPoint;
    :goto_13
    iget-boolean v3, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v3, :cond_1c

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 140
    .local v3, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_20
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v4

    .line 141
    .local v4, "firstRow":I
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v5

    .line 143
    .local v5, "lastRow":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    .line 144
    .local v6, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    const/4 v7, -0x1

    .line 145
    .local v7, "barcodeRow":I
    const/4 v8, 0x1

    .line 146
    .local v8, "maxRowHeight":I
    const/4 v9, 0x0

    .line 147
    .local v9, "currentRowHeight":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    move v11, v9

    move-object v12, v10

    const/4 v13, 0x0

    move v9, v8

    move v8, v7

    move v7, v4

    .local v7, "codewordsRow":I
    .local v8, "barcodeRow":I
    .local v9, "maxRowHeight":I
    .local v11, "currentRowHeight":I
    :goto_41
    if-ge v7, v5, :cond_7a

    .line 148
    aget-object v14, v6, v7

    if-eqz v14, :cond_77

    .line 151
    aget-object v14, v6, v7

    .line 153
    .local v12, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v12, v14

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 155
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v14

    sub-int/2addr v14, v8

    .line 159
    .local v13, "rowDifference":I
    move v13, v14

    if-nez v14, :cond_58

    .line 160
    add-int/lit8 v11, v11, 0x1

    goto :goto_77

    .line 161
    :cond_58
    const/4 v14, 0x1

    if-ne v13, v14, :cond_65

    .line 162
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 163
    const/4 v11, 0x1

    .line 164
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    goto :goto_77

    .line 165
    :cond_65
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v15

    if-lt v14, v15, :cond_72

    .line 166
    aput-object v10, v6, v7

    goto :goto_77

    .line 168
    :cond_72
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    .line 169
    const/4 v11, 0x1

    .line 147
    .end local v12    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v13    # "rowDifference":I
    :cond_77
    :goto_77
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 173
    .end local v7    # "codewordsRow":I
    :cond_7a
    return-void
.end method

.method private removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .registers 10
    .param p1, "codewords"    # [Lcom/google/zxing/pdf417/decoder/Codeword;
    .param p2, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 223
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v0, "codewordRow":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_59

    .line 224
    aget-object v2, p1, v0

    .line 225
    .local v2, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    aget-object v3, p1, v0

    if-eqz v3, :cond_56

    .line 228
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x1e

    .line 229
    .local v3, "rowIndicatorValue":I
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v4

    .line 230
    .local v1, "codewordRowNumber":I
    move v1, v4

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v5

    const/4 v6, 0x0

    if-le v4, v5, :cond_20

    .line 231
    aput-object v6, p1, v0

    .line 232
    goto :goto_56

    .line 234
    :cond_20
    iget-boolean v4, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v4, :cond_26

    .line 235
    add-int/lit8 v1, v1, 0x2

    .line 237
    :cond_26
    rem-int/lit8 v4, v1, 0x3

    packed-switch v4, :pswitch_data_5a

    .end local v1    # "codewordRowNumber":I
    .end local v2    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v3    # "rowIndicatorValue":I
    goto :goto_56

    .line 250
    .restart local v1    # "codewordRowNumber":I
    .restart local v2    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v3    # "rowIndicatorValue":I
    :pswitch_2c
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v5

    if-eq v4, v5, :cond_56

    .line 251
    aput-object v6, p1, v0

    goto :goto_56

    .line 244
    .end local v1    # "codewordRowNumber":I
    :pswitch_37
    div-int/lit8 v4, v3, 0x3

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v5

    if-ne v4, v5, :cond_47

    rem-int/lit8 v4, v3, 0x3

    .line 245
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountLowerPart()I

    move-result v5

    if-eq v4, v5, :cond_56

    .line 246
    :cond_47
    aput-object v6, p1, v0

    goto :goto_56

    .line 239
    :pswitch_4a
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCountUpperPart()I

    move-result v5

    if-eq v4, v5, :cond_56

    .line 240
    aput-object v6, p1, v0

    .line 223
    .end local v2    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v3    # "rowIndicatorValue":I
    :cond_56
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 256
    .end local v0    # "codewordRow":I
    :cond_59
    return-void

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_37
        :pswitch_2c
    .end packed-switch
.end method

.method private setRowNumbers()V
    .registers 6

    .line 35
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 36
    .local v2, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v2, v4

    if-eqz v4, :cond_11

    .line 37
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 35
    .end local v2    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 40
    :cond_14
    return-void
.end method


# virtual methods
.method adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V
    .registers 20
    .param p1, "barcodeMetadata"    # Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    .line 47
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 48
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setRowNumbers()V

    .line 49
    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    .line 51
    .local v3, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    iget-boolean v4, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    goto :goto_1f

    :cond_1b
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getTopRight()Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 52
    .local v4, "top":Lcom/google/zxing/ResultPoint;
    :goto_1f
    iget-boolean v5, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-eqz v5, :cond_28

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomLeft()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    goto :goto_2c

    :cond_28
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getBottomRight()Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 53
    .local v5, "bottom":Lcom/google/zxing/ResultPoint;
    :goto_2c
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v6

    .line 54
    .local v6, "firstRow":I
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->imageRowToCodewordIndex(I)I

    move-result v7

    .line 58
    .local v7, "lastRow":I
    const/4 v8, -0x1

    .line 59
    .local v8, "barcodeRow":I
    const/4 v9, 0x1

    .line 60
    .local v9, "maxRowHeight":I
    const/4 v10, 0x0

    .line 61
    .local v10, "currentRowHeight":I
    move v13, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v10, v9

    move v9, v8

    move v8, v6

    .local v8, "codewordsRow":I
    .local v9, "barcodeRow":I
    .local v10, "maxRowHeight":I
    .local v13, "currentRowHeight":I
    :goto_47
    if-ge v8, v7, :cond_b6

    .line 62
    aget-object v16, v1, v8

    if-eqz v16, :cond_b2

    .line 65
    aget-object v16, v1, v8

    .line 75
    .local v14, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object/from16 v14, v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v16

    sub-int v16, v16, v9

    .line 79
    .local v15, "rowDifference":I
    move/from16 v15, v16

    if-nez v16, :cond_5e

    .line 80
    add-int/lit8 v13, v13, 0x1

    goto :goto_b2

    .line 81
    :cond_5e
    const/4 v11, 0x1

    if-ne v15, v11, :cond_6c

    .line 82
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 83
    const/4 v11, 0x1

    .line 84
    .end local v13    # "currentRowHeight":I
    .local v11, "currentRowHeight":I
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    .line 61
    move v13, v11

    goto :goto_b2

    .line 85
    .end local v11    # "currentRowHeight":I
    .restart local v13    # "currentRowHeight":I
    :cond_6c
    if-ltz v15, :cond_ae

    .line 86
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v12

    if-ge v11, v12, :cond_ae

    if-le v15, v8, :cond_7b

    goto :goto_ae

    .line 91
    :cond_7b
    const/4 v11, 0x2

    if-le v10, v11, :cond_83

    .line 92
    add-int/lit8 v11, v10, -0x2

    mul-int v11, v11, v15

    goto :goto_84

    .line 94
    :cond_83
    move v11, v15

    .line 96
    .local v11, "checkedRows":I
    :goto_84
    if-lt v11, v8, :cond_88

    const/4 v12, 0x1

    goto :goto_89

    :cond_88
    const/4 v12, 0x0

    .line 97
    .local v12, "closePreviousCodewordFound":Z
    :goto_89
    move/from16 v16, v12

    const/4 v12, 0x1

    .local v12, "i":I
    .local v16, "closePreviousCodewordFound":Z
    :goto_8c
    if-gt v12, v11, :cond_a0

    if-nez v16, :cond_a0

    .line 100
    sub-int v17, v8, v12

    aget-object v17, v1, v17

    if-eqz v17, :cond_99

    const/16 v17, 0x1

    goto :goto_9b

    :cond_99
    const/16 v17, 0x0

    :goto_9b
    move/from16 v16, v17

    .line 97
    add-int/lit8 v12, v12, 0x1

    goto :goto_8c

    .line 102
    .end local v12    # "i":I
    :cond_a0
    if-eqz v16, :cond_a6

    .line 103
    const/4 v12, 0x0

    aput-object v12, v1, v8

    goto :goto_b3

    .line 105
    :cond_a6
    const/4 v12, 0x0

    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    .line 106
    const/4 v11, 0x1

    .line 61
    move v13, v11

    goto :goto_b3

    .line 88
    .end local v11    # "checkedRows":I
    .end local v14    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v15    # "rowDifference":I
    .end local v16    # "closePreviousCodewordFound":Z
    :cond_ae
    :goto_ae
    const/4 v12, 0x0

    aput-object v12, v1, v8

    goto :goto_b3

    .line 61
    :cond_b2
    :goto_b2
    const/4 v12, 0x0

    :goto_b3
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 111
    .end local v8    # "codewordsRow":I
    :cond_b6
    return-void
.end method

.method getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .registers 14

    .line 176
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    .line 177
    .local v0, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    new-instance v1, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 178
    .local v1, "barcodeColumnCount":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v2, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 179
    .local v2, "barcodeRowCountUpperPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v3, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 180
    .local v3, "barcodeRowCountLowerPart":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    new-instance v4, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    .line 181
    .local v4, "barcodeECLevel":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v6

    const/4 v8, 0x0

    :goto_1d
    if-ge v8, v5, :cond_59

    aget-object v10, v0, v8

    .line 182
    .local v9, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v9, v10

    if-eqz v10, :cond_56

    .line 185
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    .line 186
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v10

    rem-int/lit8 v10, v10, 0x1e

    .line 187
    .local v10, "rowIndicatorValue":I
    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v11

    .line 188
    .local v11, "codewordRowNumber":I
    iget-boolean v12, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    if-nez v12, :cond_37

    .line 189
    add-int/lit8 v11, v11, 0x2

    .line 191
    :cond_37
    rem-int/lit8 v12, v11, 0x3

    packed-switch v12, :pswitch_data_c2

    .end local v9    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v10    # "rowIndicatorValue":I
    .end local v11    # "codewordRowNumber":I
    goto :goto_56

    .line 200
    .restart local v9    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .restart local v10    # "rowIndicatorValue":I
    .restart local v11    # "codewordRowNumber":I
    :pswitch_3d
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_56

    .line 196
    .end local v9    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :pswitch_43
    div-int/lit8 v12, v10, 0x3

    invoke-virtual {v4, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 197
    rem-int/lit8 v12, v10, 0x3

    invoke-virtual {v3, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 198
    goto :goto_56

    .line 193
    :pswitch_4e
    mul-int/lit8 v12, v10, 0x3

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v2, v12}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 194
    nop

    .line 181
    .end local v10    # "rowIndicatorValue":I
    .end local v11    # "codewordRowNumber":I
    :cond_56
    :goto_56
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 205
    :cond_59
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    .line 206
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    .line 207
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    .line 208
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_c0

    .line 209
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v7

    if-lez v5, :cond_c0

    .line 210
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v7

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    aget v8, v8, v7

    add-int/2addr v5, v8

    const/4 v8, 0x3

    if-lt v5, v8, :cond_c0

    .line 211
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    aget v5, v5, v7

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    aget v8, v8, v7

    add-int/2addr v5, v8

    const/16 v8, 0x5a

    if-le v5, v8, :cond_9f

    goto :goto_c0

    .line 214
    :cond_9f
    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v6

    aget v6, v6, v7

    .line 215
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    aget v8, v8, v7

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v7

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v10

    aget v7, v10, v7

    invoke-direct {v5, v6, v8, v9, v7}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;-><init>(IIII)V

    .line 216
    .local v5, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    invoke-direct {p0, v0, v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->removeIncorrectCodewords([Lcom/google/zxing/pdf417/decoder/Codeword;Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 217
    return-object v5

    .line 212
    .end local v5    # "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_c0
    :goto_c0
    return-object v6

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_43
        :pswitch_3d
    .end packed-switch
.end method

.method getRowHeights()[I
    .registers 10

    .line 114
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 115
    .local v2, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    move-object v2, v0

    if-nez v0, :cond_a

    .line 116
    return-object v1

    .line 118
    :cond_a
    invoke-direct {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustIncompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)V

    .line 119
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    new-array v0, v0, [I

    .line 120
    .local v0, "result":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1a
    if-ge v5, v4, :cond_32

    aget-object v7, v3, v5

    .line 121
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v1, v7

    if-eqz v7, :cond_2f

    .line 122
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v7

    .line 123
    .local v6, "rowNumber":I
    move v6, v7

    array-length v8, v0

    if-ge v7, v8, :cond_2f

    .line 127
    aget v7, v0, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v6

    .line 120
    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v6    # "rowNumber":I
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 130
    :cond_32
    return-object v0
.end method

.method isLeft()Z
    .registers 2

    .line 259
    iget-boolean v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsLeft: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
