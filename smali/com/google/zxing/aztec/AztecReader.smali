###### Class com.google.zxing.aztec.AztecReader (com.google.zxing.aztec.AztecReader)
.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 21
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 59
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 60
    .local v2, "notFoundException":Lcom/google/zxing/NotFoundException;
    const/4 v3, 0x0

    .line 61
    .local v3, "formatException":Lcom/google/zxing/FormatException;
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    move-object v4, v0

    .line 62
    .local v4, "detector":Lcom/google/zxing/aztec/detector/Detector;
    const/4 v5, 0x0

    .line 63
    .local v5, "points":[Lcom/google/zxing/ResultPoint;
    const/4 v6, 0x0

    move-object v7, v6

    .line 65
    .local v7, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    const/4 v8, 0x0

    :try_start_12
    invoke-virtual {v4, v8}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0
    :try_end_16
    .catch Lcom/google/zxing/NotFoundException; {:try_start_12 .. :try_end_16} :catch_31
    .catch Lcom/google/zxing/FormatException; {:try_start_12 .. :try_end_16} :catch_2c

    move-object v9, v6

    .line 66
    .local v9, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v9, v0

    :try_start_18
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object v5, v0

    .line 67
    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v0, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0
    :try_end_26
    .catch Lcom/google/zxing/NotFoundException; {:try_start_18 .. :try_end_26} :catch_2a
    .catch Lcom/google/zxing/FormatException; {:try_start_18 .. :try_end_26} :catch_28

    move-object v7, v0

    .end local v9    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    goto :goto_35

    .line 71
    :catch_28
    move-exception v0

    goto :goto_2e

    .line 69
    :catch_2a
    move-exception v0

    goto :goto_33

    .line 71
    :catch_2c
    move-exception v0

    move-object v9, v6

    .line 72
    .local v9, "e":Lcom/google/zxing/FormatException;
    :goto_2e
    nop

    .line 71
    move-object v3, v0

    goto :goto_36

    .line 69
    .end local v9    # "e":Lcom/google/zxing/FormatException;
    :catch_31
    move-exception v0

    move-object v9, v6

    .line 72
    .local v9, "e":Lcom/google/zxing/NotFoundException;
    :goto_33
    nop

    .line 69
    move-object v2, v0

    .line 72
    .end local v9    # "e":Lcom/google/zxing/NotFoundException;
    :goto_35
    nop

    .line 73
    :goto_36
    if-nez v7, :cond_56

    .line 75
    const/4 v0, 0x1

    :try_start_39
    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v0

    .line 76
    .local v9, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v9, v0

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    move-object v5, v0

    .line 77
    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v0, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0
    :try_end_4c
    .catch Lcom/google/zxing/NotFoundException; {:try_start_39 .. :try_end_4c} :catch_4e
    .catch Lcom/google/zxing/FormatException; {:try_start_39 .. :try_end_4c} :catch_4e

    move-object v7, v0

    .line 86
    .end local v9    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    goto :goto_56

    .line 78
    :catch_4e
    move-exception v0

    .line 79
    .local v0, "e":Lcom/google/zxing/ReaderException;
    if-nez v2, :cond_55

    .line 82
    if-eqz v3, :cond_54

    .line 83
    throw v3

    .line 85
    :cond_54
    throw v0

    .line 80
    :cond_55
    throw v2

    .line 89
    .end local v0    # "e":Lcom/google/zxing/ReaderException;
    :cond_56
    :goto_56
    if-eqz v1, :cond_70

    .line 90
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPointCallback;

    .line 91
    .local v9, "rpcb":Lcom/google/zxing/ResultPointCallback;
    move-object v9, v0

    if-eqz v0, :cond_70

    .line 92
    array-length v0, v5

    :goto_64
    if-ge v8, v0, :cond_6e

    aget-object v10, v5, v8

    .line 93
    .local v10, "point":Lcom/google/zxing/ResultPoint;
    invoke-interface {v9, v10}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 92
    .end local v10    # "point":Lcom/google/zxing/ResultPoint;
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    .line 98
    .end local v9    # "rpcb":Lcom/google/zxing/ResultPointCallback;
    :cond_6e
    move-object v0, v5

    goto :goto_71

    :cond_70
    move-object v0, v6

    :goto_71
    new-instance v8, Lcom/google/zxing/Result;

    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v11

    .line 99
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v12

    .line 100
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getNumBits()I

    move-result v13

    sget-object v15, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v10, v8

    move-object v14, v5

    invoke-direct/range {v10 .. v17}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 105
    .local v8, "result":Lcom/google/zxing/Result;
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v9

    .line 106
    .local v0, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v0, v9

    if-eqz v9, :cond_96

    .line 107
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v8, v9, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 109
    :cond_96
    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v6, "ecLevel":Ljava/lang/String;
    move-object v6, v9

    if-eqz v9, :cond_a2

    .line 111
    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v8, v9, v6}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 114
    :cond_a2
    return-object v8
.end method

.method public reset()V
    .registers 1

    .line 120
    return-void
.end method
