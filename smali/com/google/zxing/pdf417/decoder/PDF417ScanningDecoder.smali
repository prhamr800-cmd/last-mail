###### Class com.google.zxing.pdf417.decoder.PDF417ScanningDecoder (com.google.zxing.pdf417.decoder.PDF417ScanningDecoder)
.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "PDF417ScanningDecoder.java"


# static fields
.field private static final CODEWORD_SKEW_SIZE:I = 0x2

.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3

.field private static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 9
    .param p0, "rowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 145
    return-object v0

    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v1

    move-object v2, v0

    .line 148
    .local v2, "rowHeights":[I
    move-object v2, v1

    if-nez v1, :cond_d

    .line 149
    return-object v0

    .line 151
    :cond_d
    invoke-static {v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getMax([I)I

    move-result v0

    .line 152
    .local v0, "maxRowHeight":I
    const/4 v1, 0x0

    .line 153
    .local v1, "missingStartRows":I
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v1

    const/4 v1, 0x0

    .end local v1    # "missingStartRows":I
    .local v5, "missingStartRows":I
    :goto_16
    if-ge v1, v3, :cond_22

    aget v6, v2, v1

    .line 154
    .local v6, "rowHeight":I
    sub-int v7, v0, v6

    add-int/2addr v5, v7

    .line 155
    if-gtz v6, :cond_22

    .line 153
    .end local v6    # "rowHeight":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 159
    :cond_22
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 160
    .local v1, "codewords":[Lcom/google/zxing/pdf417/decoder/Codeword;
    nop

    .local v4, "row":I
    :goto_27
    move v3, v4

    .end local v4    # "row":I
    .local v3, "row":I
    if-lez v5, :cond_33

    aget-object v4, v1, v3

    if-nez v4, :cond_33

    .line 161
    add-int/lit8 v5, v5, -0x1

    .line 160
    add-int/lit8 v4, v3, 0x1

    goto :goto_27

    .line 163
    .end local v3    # "row":I
    :cond_33
    const/4 v3, 0x0

    .line 164
    .local v3, "missingEndRows":I
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "row":I
    :goto_37
    if-ltz v4, :cond_45

    .line 165
    aget v6, v2, v4

    sub-int v6, v0, v6

    add-int/2addr v3, v6

    .line 166
    aget v6, v2, v4

    if-gtz v6, :cond_45

    .line 164
    add-int/lit8 v4, v4, -0x1

    goto :goto_37

    .line 170
    .end local v4    # "row":I
    :cond_45
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "row":I
    :goto_48
    if-lez v3, :cond_53

    aget-object v6, v1, v4

    if-nez v6, :cond_53

    .line 171
    add-int/lit8 v3, v3, -0x1

    .line 170
    add-int/lit8 v4, v4, -0x1

    goto :goto_48

    .line 173
    .end local v4    # "row":I
    :cond_53
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    .line 174
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result v6

    .line 173
    invoke-virtual {v4, v5, v3, v6}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    return-object v4
.end method

.method private static adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V
    .registers 7
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v1

    .line 237
    .local v1, "numberOfCodewords":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    .line 238
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v4

    mul-int v3, v3, v4

    .line 239
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getNumberOfECCodeWords(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 240
    .local v3, "calculatedNumberOfCodewords":I
    array-length v4, v1

    if-nez v4, :cond_33

    .line 241
    if-lez v3, :cond_2e

    const/16 v4, 0x3a0

    if-gt v3, v4, :cond_2e

    .line 244
    aget-object v0, p1, v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    return-void

    .line 242
    :cond_2e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 245
    :cond_33
    aget v4, v1, v0

    if-eq v4, v3, :cond_3e

    .line 247
    aget-object v0, p1, v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 249
    :cond_3e
    return-void
.end method

.method private static adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I
    .registers 13
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "codewordStartColumn"    # I
    .param p5, "imageRow"    # I

    .line 500
    move v0, p4

    .line 501
    .local v0, "correctedStartColumn":I
    const/4 v1, 0x1

    if-eqz p3, :cond_6

    const/4 v2, -0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x1

    .line 503
    .local v2, "increment":I
    :goto_7
    const/4 v3, 0x0

    move v4, v2

    move v2, p3

    const/4 p3, 0x0

    .local v2, "leftToRight":Z
    .local v4, "increment":I
    .local p3, "i":I
    :goto_b
    const/4 v5, 0x2

    if-ge p3, v5, :cond_30

    .line 504
    :goto_e
    if-eqz v2, :cond_13

    if-lt v0, p1, :cond_26

    goto :goto_15

    :cond_13
    if-ge v0, p2, :cond_26

    .line 505
    :goto_15
    invoke-virtual {p0, v0, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-ne v2, v6, :cond_26

    .line 506
    sub-int v6, p4, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v5, :cond_24

    .line 507
    return p4

    .line 509
    :cond_24
    add-int/2addr v0, v4

    goto :goto_e

    .line 511
    :cond_26
    neg-int v4, v4

    .line 512
    if-nez v2, :cond_2b

    const/4 v5, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v5, 0x0

    :goto_2c
    move v2, v5

    .line 503
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    .line 514
    .end local p3    # "i":I
    :cond_30
    return v0
.end method

.method private static checkCodewordSkew(III)Z
    .registers 4
    .param p0, "codewordSize"    # I
    .param p1, "minCodewordWidth"    # I
    .param p2, "maxCodewordWidth"    # I

    .line 518
    add-int/lit8 v0, p1, -0x2

    if-gt v0, p0, :cond_a

    add-int/lit8 v0, p2, 0x2

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static correctErrors([I[II)I
    .registers 5
    .param p0, "codewords"    # [I
    .param p1, "erasures"    # [I
    .param p2, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 549
    if-eqz p1, :cond_9

    array-length v0, p1

    div-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_16

    :cond_9
    if-ltz p2, :cond_16

    const/16 v0, 0x200

    if-gt p2, v0, :cond_16

    .line 556
    sget-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result v0

    return v0

    .line 554
    :cond_16
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0
.end method

.method private static createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    .registers 15
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;

    .line 331
    nop

    .line 332
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .line 333
    .local v0, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "row":I
    :goto_19
    array-length v3, v0

    if-ge v2, v3, :cond_31

    .line 334
    const/4 v3, 0x0

    .local v3, "column":I
    :goto_1d
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_2e

    .line 335
    aget-object v4, v0, v2

    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v5, v4, v3

    .line 334
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 333
    .end local v3    # "column":I
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 339
    .end local v2    # "row":I
    :cond_31
    const/4 v2, 0x0

    .line 340
    .local v2, "column":I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v2

    move-object v8, v5

    const/4 v2, 0x0

    const/4 v7, 0x0

    .end local v2    # "column":I
    .local v6, "column":I
    :goto_3c
    if-ge v2, v4, :cond_6f

    aget-object v9, v3, v2

    .line 341
    .local v5, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    move-object v5, v9

    if-eqz v9, :cond_6a

    .line 342
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v9

    array-length v10, v9

    move v11, v7

    const/4 v7, 0x0

    :goto_4a
    if-ge v7, v10, :cond_69

    aget-object v12, v9, v7

    .line 343
    .local v8, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v8, v12

    if-eqz v12, :cond_66

    .line 344
    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v12

    .line 345
    .local v11, "rowNumber":I
    move v11, v12

    if-ltz v12, :cond_66

    .line 346
    array-length v12, v0

    if-ge v11, v12, :cond_66

    .line 350
    aget-object v12, v0, v11

    aget-object v12, v12, v6

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    .line 342
    .end local v8    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v11    # "rowNumber":I
    :cond_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    .line 355
    :cond_69
    move v7, v11

    :cond_6a
    add-int/lit8 v6, v6, 0x1

    .line 340
    .end local v5    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 357
    :cond_6f
    return-object v0
.end method

.method private static createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;
    .registers 13
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 253
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createBarcodeMatrix(Lcom/google/zxing/pdf417/decoder/DetectionResult;)[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    move-result-object v0

    .line 254
    .local v0, "barcodeMatrix":[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordCount(Lcom/google/zxing/pdf417/decoder/DetectionResult;[[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)V

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v1, "erasures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    mul-int v2, v2, v3

    new-array v2, v2, [I

    .line 257
    .local v2, "codewords":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v3, "ambiguousIndexValuesList":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v4, "ambiguousIndexesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    .local v6, "row":I
    :goto_24
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v7

    if-ge v6, v7, :cond_66

    .line 260
    const/4 v7, 0x0

    .local v7, "column":I
    :goto_2b
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v8

    if-ge v7, v8, :cond_63

    .line 261
    aget-object v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    .line 262
    .local v8, "values":[I
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v9

    mul-int v9, v9, v6

    add-int/2addr v9, v7

    .line 263
    .local v9, "codewordIndex":I
    array-length v10, v8

    if-nez v10, :cond_4d

    .line 264
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 265
    :cond_4d
    array-length v10, v8

    const/4 v11, 0x1

    if-ne v10, v11, :cond_56

    .line 266
    aget v10, v8, v5

    aput v10, v2, v9

    goto :goto_60

    .line 268
    :cond_56
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v8    # "values":[I
    .end local v9    # "codewordIndex":I
    :goto_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 259
    .end local v7    # "column":I
    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 273
    .end local v6    # "row":I
    :cond_66
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [[I

    .line 274
    .local v6, "ambiguousIndexValues":[[I
    nop

    .local v5, "i":I
    :goto_6d
    array-length v7, v6

    if-ge v5, v7, :cond_7b

    .line 275
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aput-object v7, v6, v5

    .line 274
    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    .line 277
    .end local v5    # "i":I
    :cond_7b
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v5

    .line 278
    invoke-static {v1}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v7

    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v8

    .line 277
    invoke-static {v5, v2, v7, v8, v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v5

    return-object v5
.end method

.method private static createDecoderResultFromAmbiguousValues(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .registers 12
    .param p0, "ecLevel"    # I
    .param p1, "codewords"    # [I
    .param p2, "erasureArray"    # [I
    .param p3, "ambiguousIndexes"    # [I
    .param p4, "ambiguousIndexValues"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 300
    array-length v0, p3

    new-array v0, v0, [I

    .line 302
    .local v0, "ambiguousIndexCount":[I
    const/16 v1, 0x64

    .line 303
    .local v1, "tries":I
    :goto_5
    add-int/lit8 v2, v1, -0x1

    .local v2, "tries":I
    if-lez v1, :cond_4e

    .line 304
    .end local v1    # "tries":I
    const/4 v1, 0x0

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    array-length v4, v0

    if-ge v3, v4, :cond_1b

    .line 305
    aget v4, p3, v3

    aget-object v5, p4, v3

    aget v6, v0, v3

    aget v5, v5, v6

    aput v5, p1, v4

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 308
    .end local v3    # "i":I
    :cond_1b
    :try_start_1b
    invoke-static {p1, p0, p2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3
    :try_end_1f
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1b .. :try_end_1f} :catch_20

    return-object v3

    .line 309
    :catch_20
    move-exception v3

    .line 312
    array-length v3, v0

    if-eqz v3, :cond_49

    .line 315
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_25
    array-length v4, v0

    if-ge v3, v4, :cond_47

    .line 316
    aget v4, v0, v3

    aget-object v5, p4, v3

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_38

    .line 317
    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 318
    goto :goto_47

    .line 320
    :cond_38
    aput v1, v0, v3

    .line 321
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_42

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 322
    :cond_42
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    .line 302
    .end local v3    # "i":I
    :cond_47
    :goto_47
    move v1, v2

    goto :goto_5

    .line 313
    :cond_49
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    .line 327
    :cond_4e
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .registers 31
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "imageTopLeft"    # Lcom/google/zxing/ResultPoint;
    .param p2, "imageBottomLeft"    # Lcom/google/zxing/ResultPoint;
    .param p3, "imageTopRight"    # Lcom/google/zxing/ResultPoint;
    .param p4, "imageBottomRight"    # Lcom/google/zxing/ResultPoint;
    .param p5, "minCodewordWidth"    # I
    .param p6, "maxCodewordWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 59
    new-instance v6, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 60
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    const/4 v1, 0x0

    .line 61
    .local v1, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v2, 0x0

    .line 62
    .local v2, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v3, 0x0

    .line 63
    .local v3, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    const/4 v4, 0x0

    move-object v11, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v1, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .local v2, "leftRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .local v3, "rightRowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .local v11, "detectionResult":Lcom/google/zxing/pdf417/decoder/DetectionResult;
    :goto_19
    const/4 v5, 0x2

    if-ge v0, v5, :cond_77

    .line 64
    if-eqz p1, :cond_2c

    .line 65
    const/4 v8, 0x1

    move-object/from16 v5, p0

    move-object v6, v1

    move-object/from16 v7, p1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v2

    .line 68
    :cond_2c
    if-eqz p3, :cond_3c

    .line 69
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object v6, v1

    move-object/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v3

    .line 72
    :cond_3c
    invoke-static {v2, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;

    move-result-object v5

    .line 73
    move-object v11, v5

    if-eqz v5, :cond_72

    .line 76
    if-nez v0, :cond_6e

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    if-eqz v5, :cond_6e

    .line 77
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v6

    if-lt v5, v6, :cond_67

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v6

    if-le v5, v6, :cond_6e

    .line 79
    :cond_67
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 81
    :cond_6e
    invoke-virtual {v11, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    .line 82
    goto :goto_77

    .line 74
    :cond_72
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 85
    .end local v0    # "i":I
    :cond_77
    :goto_77
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v0

    const/4 v5, 0x1

    add-int/2addr v0, v5

    .line 86
    .local v0, "maxBarcodeColumn":I
    invoke-virtual {v11, v4, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 87
    invoke-virtual {v11, v0, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    .line 89
    if-eqz v2, :cond_87

    const/4 v6, 0x1

    goto :goto_88

    :cond_87
    const/4 v6, 0x0

    .line 90
    .local v6, "leftToRight":Z
    :goto_88
    const/4 v7, 0x0

    move/from16 v8, p5

    move/from16 v9, p6

    move-object v12, v7

    const/4 v7, 0x1

    const/4 v10, 0x0

    .end local p5    # "minCodewordWidth":I
    .end local p6    # "maxCodewordWidth":I
    .local v7, "barcodeColumnCount":I
    .local v8, "minCodewordWidth":I
    .local v9, "maxCodewordWidth":I
    :goto_90
    if-gt v7, v0, :cond_134

    .line 91
    if-eqz v6, :cond_96

    move v13, v7

    goto :goto_98

    :cond_96
    sub-int v13, v0, v7

    .line 92
    .local v13, "barcodeColumn":I
    :goto_98
    invoke-virtual {v11, v13}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v14

    if-nez v14, :cond_12a

    .line 97
    if-eqz v13, :cond_a9

    if-ne v13, v0, :cond_a3

    goto :goto_a9

    .line 100
    :cond_a3
    new-instance v4, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v4, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_b2

    .line 98
    :cond_a9
    :goto_a9
    new-instance v4, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v13, :cond_ae

    goto :goto_af

    :cond_ae
    const/4 v5, 0x0

    :goto_af
    invoke-direct {v4, v1, v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    .line 100
    .local v4, "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    :goto_b2
    nop

    .line 102
    invoke-virtual {v11, v13, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    move v5, v10

    .line 104
    .local v5, "startColumn":I
    const/4 v10, -0x1

    .line 106
    .local v10, "previousStartColumn":I
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v14

    move-object/from16 v20, v12

    .local v14, "imageRow":I
    :goto_be
    move v12, v14

    move/from16 v21, v0

    .end local v0    # "maxBarcodeColumn":I
    .end local v14    # "imageRow":I
    .local v12, "imageRow":I
    .local v21, "maxBarcodeColumn":I
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v12, v0, :cond_126

    .line 107
    invoke-static {v11, v13, v12, v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I

    move-result v0

    .line 108
    move v5, v0

    if-ltz v0, :cond_d7

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v0

    if-le v5, v0, :cond_d5

    goto :goto_d7

    .line 114
    :cond_d5
    move v0, v5

    goto :goto_db

    .line 109
    :cond_d7
    :goto_d7
    const/4 v0, -0x1

    if-eq v10, v0, :cond_11c

    .line 112
    move v0, v10

    .line 114
    .end local v5    # "startColumn":I
    .local v0, "startColumn":I
    :goto_db
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v14

    move/from16 v22, v12

    .end local v12    # "imageRow":I
    .local v22, "imageRow":I
    move-object/from16 v12, p0

    move/from16 v23, v13

    .end local v13    # "barcodeColumn":I
    .local v23, "barcodeColumn":I
    move v13, v5

    move v15, v6

    move/from16 v16, v0

    move/from16 v17, v22

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-static/range {v12 .. v19}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    move-object/from16 v12, v20

    .line 116
    .local v12, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v12, v5

    if-eqz v5, :cond_116

    .line 117
    move/from16 v13, v22

    .end local v22    # "imageRow":I
    .local v13, "imageRow":I
    invoke-virtual {v4, v13, v12}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 118
    move v5, v0

    .line 119
    .end local v10    # "previousStartColumn":I
    .local v5, "previousStartColumn":I
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 120
    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 106
    move v10, v5

    move-object/from16 v20, v12

    goto :goto_11f

    .end local v5    # "previousStartColumn":I
    .end local v12    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .end local v13    # "imageRow":I
    .restart local v10    # "previousStartColumn":I
    .restart local v22    # "imageRow":I
    :cond_116
    move/from16 v13, v22

    move v5, v0

    move-object/from16 v20, v12

    .end local v22    # "imageRow":I
    .restart local v13    # "imageRow":I
    goto :goto_11f

    .end local v0    # "startColumn":I
    .end local v23    # "barcodeColumn":I
    .local v5, "startColumn":I
    .local v12, "imageRow":I
    .local v13, "barcodeColumn":I
    :cond_11c
    move/from16 v23, v13

    move v13, v12

    .end local v12    # "imageRow":I
    .local v13, "imageRow":I
    .restart local v23    # "barcodeColumn":I
    :goto_11f
    add-int/lit8 v14, v13, 0x1

    move/from16 v0, v21

    move/from16 v13, v23

    goto :goto_be

    .line 90
    .end local v4    # "detectionResultColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .end local v10    # "previousStartColumn":I
    .end local v13    # "imageRow":I
    .end local v23    # "barcodeColumn":I
    :cond_126
    move v10, v5

    move-object/from16 v12, v20

    goto :goto_12c

    .end local v5    # "startColumn":I
    .end local v21    # "maxBarcodeColumn":I
    .local v0, "maxBarcodeColumn":I
    :cond_12a
    move/from16 v21, v0

    .end local v0    # "maxBarcodeColumn":I
    .restart local v21    # "maxBarcodeColumn":I
    :goto_12c
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v21

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_90

    .line 124
    .end local v7    # "barcodeColumnCount":I
    .end local v21    # "maxBarcodeColumn":I
    .restart local v0    # "maxBarcodeColumn":I
    :cond_134
    move/from16 v21, v0

    .end local v0    # "maxBarcodeColumn":I
    .restart local v21    # "maxBarcodeColumn":I
    invoke-static {v11}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->createDecoderResult(Lcom/google/zxing/pdf417/decoder/DetectionResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .registers 8
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # I
    .param p2, "erasures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 524
    array-length v0, p0

    if-eqz v0, :cond_29

    .line 528
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 529
    .local v0, "numECCodewords":I
    invoke-static {p0, p2, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->correctErrors([I[II)I

    move-result v1

    .line 530
    .local v1, "correctedErrorsCount":I
    invoke-static {p0, v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->verifyCodewordCount([II)V

    .line 533
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    const/4 v3, 0x0

    .line 534
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v3, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    .line 535
    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    .line 536
    return-object v3

    .line 525
    .end local v0    # "numECCodewords":I
    .end local v1    # "correctedErrorsCount":I
    .end local v3    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    :cond_29
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .registers 21
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I
    .param p6, "minCodewordWidth"    # I
    .param p7, "maxCodewordWidth"    # I

    .line 411
    invoke-static/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustCodewordStartColumn(Lcom/google/zxing/common/BitMatrix;IIZII)I

    move-result v6

    .line 416
    .end local p4    # "startColumn":I
    .local v6, "startColumn":I
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move v4, v6

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 417
    .local v2, "moduleBitCount":[I
    move-object v2, v0

    if-nez v0, :cond_16

    .line 418
    return-object v1

    .line 421
    :cond_16
    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    .line 422
    .local v0, "codewordBitCount":I
    const/4 v3, 0x0

    if-eqz p3, :cond_21

    .line 423
    add-int v5, v6, v0

    .line 447
    const/4 v7, 0x0

    goto :goto_3f

    .line 425
    :cond_21
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_22
    array-length v7, v2

    div-int/lit8 v7, v7, 0x2

    if-ge v3, v7, :cond_3a

    .line 426
    aget v5, v2, v3

    .line 427
    .local v5, "tmpCount":I
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v3

    aget v7, v2, v7

    aput v7, v2, v3

    .line 428
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v3

    aput v5, v2, v7

    .line 425
    .end local v5    # "tmpCount":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 430
    :cond_3a
    move v7, v6

    .line 431
    .local v7, "endColumn":I
    sub-int/2addr v6, v0

    .line 447
    move v12, v7

    move v7, v5

    move v5, v12

    .end local v3    # "i":I
    .end local v7    # "endColumn":I
    .local v5, "endColumn":I
    :goto_3f
    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static {v0, v8, v9}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->checkCodewordSkew(III)Z

    move-result v10

    if-nez v10, :cond_4a

    .line 450
    return-object v1

    .line 453
    :cond_4a
    invoke-static {v2}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result v10

    .line 454
    .local v3, "decodedValue":I
    move v3, v10

    invoke-static {v10}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v10

    .line 455
    .local v7, "codeword":I
    move v7, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_58

    .line 456
    return-object v1

    .line 458
    :cond_58
    new-instance v1, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber(I)I

    move-result v10

    invoke-direct {v1, v6, v5, v10, v7}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    return-object v1
.end method

.method private static getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    .registers 7
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    .line 188
    const/4 v0, 0x0

    if-eqz p0, :cond_38

    .line 189
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    move-object v2, v1

    .local v2, "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_b

    .end local v2    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    goto :goto_38

    .line 190
    .restart local v2    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_b
    nop

    .line 193
    if-eqz p1, :cond_37

    .line 194
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    move-object v3, v1

    .local v3, "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    if-nez v1, :cond_16

    .end local v3    # "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    goto :goto_37

    .line 195
    .restart local v3    # "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_16
    nop

    .line 198
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v4

    if-eq v1, v4, :cond_36

    .line 199
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v4

    if-eq v1, v4, :cond_36

    .line 200
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-eq v1, v4, :cond_36

    .line 201
    return-object v0

    .line 203
    :cond_36
    return-object v2

    .line 195
    .end local v3    # "rightBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_37
    :goto_37
    return-object v2

    .line 190
    .end local v2    # "leftBarcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    :cond_38
    :goto_38
    if-nez p1, :cond_3b

    return-object v0

    :cond_3b
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static getBitCountForCodeword(I)[I
    .registers 5
    .param p0, "codeword"    # I

    .line 586
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 587
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 588
    .local v1, "previousValue":I
    const/4 v2, 0x7

    .line 590
    .local v2, "i":I
    :goto_6
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_12

    .line 591
    and-int/lit8 v1, p0, 0x1

    .line 592
    add-int/lit8 v2, v2, -0x1

    .line 593
    if-ltz v2, :cond_11

    goto :goto_12

    .line 600
    :cond_11
    return-object v0

    .line 597
    :cond_12
    :goto_12
    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 598
    shr-int/lit8 p0, p0, 0x1

    goto :goto_6
.end method

.method private static getCodewordBucketNumber(I)I
    .registers 2
    .param p0, "codeword"    # I

    .line 604
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBitCountForCodeword(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getCodewordBucketNumber([I)I

    move-result v0

    return v0
.end method

.method private static getCodewordBucketNumber([I)I
    .registers 3
    .param p0, "moduleBitCount"    # [I

    .line 608
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p0, v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    return v0
.end method

.method private static getMax([I)I
    .registers 5
    .param p0, "values"    # [I

    .line 178
    const/4 v0, -0x1

    .line 179
    .local v0, "maxValue":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_e

    aget v3, p0, v2

    .line 180
    .local v3, "value":I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 179
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 182
    :cond_e
    return v0
.end method

.method private static getModuleBitCount(Lcom/google/zxing/common/BitMatrix;IIZII)[I
    .registers 14
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "minColumn"    # I
    .param p2, "maxColumn"    # I
    .param p3, "leftToRight"    # Z
    .param p4, "startColumn"    # I
    .param p5, "imageRow"    # I

    .line 467
    move v0, p4

    .line 468
    .local v0, "imageColumn":I
    const/16 v1, 0x8

    new-array v2, v1, [I

    .line 469
    .local v2, "moduleBitCount":[I
    const/4 v3, 0x0

    .line 470
    .local v3, "moduleNumber":I
    const/4 v4, 0x1

    if-eqz p3, :cond_b

    const/4 v5, 0x1

    goto :goto_c

    :cond_b
    const/4 v5, -0x1

    .line 471
    .local v5, "increment":I
    :goto_c
    move v6, v3

    move v3, v0

    move v0, p3

    .line 472
    .local v0, "previousPixelValue":Z
    .local v3, "imageColumn":I
    .local v6, "moduleNumber":I
    :goto_f
    if-eqz p3, :cond_14

    if-ge v3, p2, :cond_2e

    goto :goto_16

    :cond_14
    if-lt v3, p1, :cond_2e

    :goto_16
    if-ge v6, v1, :cond_2e

    .line 474
    invoke-virtual {p0, v3, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-ne v7, v0, :cond_25

    .line 475
    aget v7, v2, v6

    add-int/2addr v7, v4

    aput v7, v2, v6

    .line 476
    add-int/2addr v3, v5

    goto :goto_f

    .line 478
    :cond_25
    add-int/lit8 v6, v6, 0x1

    .line 479
    if-nez v0, :cond_2b

    const/4 v7, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v7, 0x0

    :goto_2c
    move v0, v7

    goto :goto_f

    .line 482
    :cond_2e
    if-eq v6, v1, :cond_3d

    if-eqz p3, :cond_34

    move v1, p2

    goto :goto_35

    :cond_34
    move v1, p1

    :goto_35
    if-ne v3, v1, :cond_3b

    const/4 v1, 0x7

    if-ne v6, v1, :cond_3b

    goto :goto_3d

    .line 487
    :cond_3b
    const/4 v1, 0x0

    return-object v1

    .line 485
    :cond_3d
    :goto_3d
    return-object v2
.end method

.method private static getNumberOfECCodeWords(I)I
    .registers 2
    .param p0, "barcodeECLevel"    # I

    .line 491
    const/4 v0, 0x2

    shl-int/2addr v0, p0

    return v0
.end method

.method private static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .registers 22
    .param p0, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "boundingBox"    # Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .param p2, "startPoint"    # Lcom/google/zxing/ResultPoint;
    .param p3, "leftToRight"    # Z
    .param p4, "minCodewordWidth"    # I
    .param p5, "maxCodewordWidth"    # I

    .line 212
    move/from16 v8, p3

    new-instance v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-object/from16 v9, p1

    invoke-direct {v0, v9, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    move-object v10, v0

    .line 214
    .local v10, "rowIndicatorColumn":Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    move v11, v1

    .end local v1    # "i":I
    .local v11, "i":I
    const/4 v1, 0x2

    if-ge v11, v1, :cond_5b

    .line 215
    if-nez v11, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, -0x1

    :goto_15
    move v12, v1

    .line 216
    .local v12, "increment":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 217
    .local v1, "startColumn":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object v14, v0

    move v13, v1

    .end local v1    # "startColumn":I
    .local v2, "imageRow":I
    .local v13, "startColumn":I
    :goto_22
    move v15, v2

    .end local v2    # "imageRow":I
    .local v15, "imageRow":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v15, v0, :cond_57

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v15, v0, :cond_57

    .line 219
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v3, p3

    move v4, v13

    move v5, v15

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    move-object v1, v14

    .line 221
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v14, v0

    .end local v1    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    .local v14, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    if-eqz v0, :cond_54

    .line 222
    invoke-virtual {v10, v15, v14}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    .line 223
    if-eqz v8, :cond_50

    .line 224
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v13

    goto :goto_54

    .line 226
    :cond_50
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v13

    .line 218
    .end local v14    # "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_54
    :goto_54
    add-int v2, v15, v12

    goto :goto_22

    .line 214
    .end local v12    # "increment":I
    .end local v13    # "startColumn":I
    .end local v15    # "imageRow":I
    :cond_57
    add-int/lit8 v1, v11, 0x1

    move-object v0, v14

    goto :goto_c

    .line 231
    .end local v11    # "i":I
    :cond_5b
    return-object v10
.end method

.method private static getStartColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;IIZ)I
    .registers 13
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I
    .param p2, "imageRow"    # I
    .param p3, "leftToRight"    # Z

    .line 368
    if-eqz p3, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    .line 369
    .local v0, "offset":I
    :goto_5
    const/4 v1, 0x0

    .line 370
    .local v1, "codeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 371
    sub-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 373
    :cond_18
    if-eqz v1, :cond_26

    .line 374
    if-eqz p3, :cond_21

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    return v2

    :cond_21
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    return v2

    .line 376
    :cond_26
    invoke-virtual {p0, p1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    .line 377
    move-object v1, v2

    if-eqz v2, :cond_3d

    .line 378
    if-eqz p3, :cond_38

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    return v2

    :cond_38
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    return v2

    .line 380
    :cond_3d
    sub-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 381
    sub-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    .line 383
    :cond_4f
    if-eqz v1, :cond_5d

    .line 384
    if-eqz p3, :cond_58

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    return v2

    :cond_58
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    return v2

    .line 386
    :cond_5d
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, p1

    const/4 p1, 0x0

    .line 388
    .local v3, "barcodeColumn":I
    .local p1, "skippedColumns":I
    :goto_62
    sub-int v5, v3, v0

    invoke-static {p0, v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 389
    sub-int/2addr v3, v0

    .line 390
    invoke-virtual {p0, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    array-length v6, v5

    move-object v7, v4

    const/4 v4, 0x0

    :goto_76
    if-ge v4, v6, :cond_9a

    aget-object v8, v5, v4

    .line 391
    .local v7, "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    move-object v7, v8

    if-eqz v8, :cond_97

    .line 392
    if-eqz p3, :cond_84

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v2

    goto :goto_88

    :cond_84
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v2

    :goto_88
    mul-int v4, v0, p1

    .line 395
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v5

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v6

    sub-int/2addr v5, v6

    mul-int v4, v4, v5

    add-int/2addr v2, v4

    .line 392
    return v2

    .line 390
    :cond_97
    add-int/lit8 v4, v4, 0x1

    goto :goto_76

    .line 398
    .end local v7    # "previousRowCodeword":Lcom/google/zxing/pdf417/decoder/Codeword;
    :cond_9a
    add-int/lit8 p1, p1, 0x1

    .line 386
    move-object v4, v7

    goto :goto_62

    .line 400
    :cond_9e
    if-eqz p3, :cond_a9

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v2

    return v2

    :cond_a9
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v2

    return v2
.end method

.method private static isValidBarcodeColumn(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .registers 4
    .param p0, "detectionResult"    # Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .param p1, "barcodeColumn"    # I

    .line 361
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static merge(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/DetectionResult;
    .registers 5
    .param p0, "leftRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .param p1, "rightRowIndicatorColumn"    # Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 131
    return-object v0

    .line 133
    :cond_6
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->getBarcodeMetadata(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    move-object v2, v0

    .line 134
    .local v2, "barcodeMetadata":Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;
    move-object v2, v1

    if-nez v1, :cond_f

    .line 135
    return-object v0

    .line 137
    :cond_f
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 138
    invoke-static {p1}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    .line 139
    .local v0, "boundingBox":Lcom/google/zxing/pdf417/decoder/BoundingBox;
    new-instance v1, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v1, v2, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    return-object v1
.end method

.method public static toString([[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)Ljava/lang/String;
    .registers 11
    .param p0, "barcodeMatrix"    # [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    .line 612
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 613
    .local v0, "formatter":Ljava/util/Formatter;
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    const/4 v3, 0x0

    .local v3, "row":I
    :goto_9
    array-length v5, p0

    if-ge v3, v5, :cond_61

    .line 614
    const-string v5, "Row %2d: "

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v0, v5, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 615
    move-object v5, v4

    const/4 v4, 0x0

    .local v4, "column":I
    :goto_1c
    aget-object v7, p0, v3

    array-length v7, v7

    if-ge v4, v7, :cond_56

    .line 616
    aget-object v7, p0, v3

    aget-object v7, v7, v4

    .line 617
    .local v5, "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    move-object v5, v7

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_33

    .line 618
    const-string v7, "        "

    invoke-virtual {v0, v7, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_53

    .line 620
    :cond_33
    const-string v7, "%4d(%2d)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    .line 621
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v9

    aget v9, v9, v2

    invoke-virtual {v5, v9}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getConfidence(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    .line 620
    invoke-virtual {v0, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 615
    .end local v5    # "barcodeValue":Lcom/google/zxing/pdf417/decoder/BarcodeValue;
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 624
    .end local v4    # "column":I
    :cond_56
    const-string v4, "%n"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 613
    add-int/lit8 v3, v3, 0x1

    move-object v4, v5

    goto :goto_9

    .line 626
    .end local v3    # "row":I
    :cond_61
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 628
    return-object v1
.end method

.method private static verifyCodewordCount([II)V
    .registers 6
    .param p0, "codewords"    # [I
    .param p1, "numECCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 563
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_21

    .line 571
    const/4 v0, 0x0

    aget v1, p0, v0

    move v2, v0

    .line 572
    .local v2, "numberOfCodewords":I
    move v2, v1

    array-length v3, p0

    if-gt v1, v3, :cond_1c

    .line 575
    if-nez v2, :cond_1b

    .line 577
    array-length v1, p0

    if-ge p1, v1, :cond_16

    .line 578
    array-length v1, p0

    sub-int/2addr v1, p1

    aput v1, p0, v0

    return-void

    .line 580
    :cond_16
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 583
    :cond_1b
    return-void

    .line 573
    :cond_1c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 566
    .end local v2    # "numberOfCodewords":I
    :cond_21
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
