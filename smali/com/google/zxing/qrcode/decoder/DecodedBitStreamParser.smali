###### Class com.google.zxing.qrcode.decoder.DecodedBitStreamParser (com.google.zxing.qrcode.decoder.DecodedBitStreamParser)
.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .registers 20
    .param p0, "bytes"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 56
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v1, p1

    new-instance v0, Lcom/google/zxing/common/BitSource;

    move-object/from16 v9, p0

    invoke-direct {v0, v9}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    move-object v8, v0

    .line 57
    .local v8, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v7, v0

    .line 58
    .local v7, "result":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v14, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, -0x1

    .line 60
    .local v2, "symbolSequence":I
    const/4 v3, -0x1

    .line 63
    .local v3, "parityData":I
    const/4 v4, 0x0

    .line 64
    .local v4, "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    const/4 v5, 0x0

    move v6, v3

    const/4 v3, 0x0

    .line 68
    .local v3, "value":I
    .local v5, "fc1InEffect":Z
    .local v6, "parityData":I
    :goto_1e
    :try_start_1e
    invoke-virtual {v8}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v10
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_22} :catch_103

    const/4 v11, 0x4

    if-ge v10, v11, :cond_28

    .line 70
    :try_start_25
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_27} :catch_5d

    goto :goto_30

    .line 72
    :cond_28
    :try_start_28
    invoke-virtual {v8, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v10

    .local v10, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_30
    move-object v15, v10

    .line 74
    .end local v10    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .local v15, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_33} :catch_103

    if-eq v15, v10, :cond_cc

    .line 75
    :try_start_35
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v15, v10, :cond_c7

    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_40

    .line 77
    move-object v0, v15

    goto/16 :goto_c8

    .line 78
    :cond_40
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_67

    .line 79
    invoke-virtual {v8}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v10

    const/16 v11, 0x10

    if-lt v10, v11, :cond_62

    .line 84
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    move v2, v11

    .line 85
    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    move v6, v10

    .line 120
    .end local v2    # "symbolSequence":I
    .end local v6    # "parityData":I
    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .local v0, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .local v10, "symbolSequence":I
    .local v11, "parityData":I
    :goto_58
    move v10, v2

    move v11, v6

    move-object v0, v15

    goto/16 :goto_cf

    .line 121
    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v3    # "value":I
    .end local v5    # "fc1InEffect":Z
    .end local v10    # "symbolSequence":I
    .end local v11    # "parityData":I
    .restart local v2    # "symbolSequence":I
    .restart local v6    # "parityData":I
    :catch_5d
    move-exception v0

    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .local v13, "result":Ljava/lang/StringBuilder;
    .local v15, "bits":Lcom/google/zxing/common/BitSource;
    move-object v13, v7

    move-object v15, v8

    goto/16 :goto_107

    .line 80
    .end local v13    # "result":Ljava/lang/StringBuilder;
    .restart local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .restart local v5    # "fc1InEffect":Z
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .local v15, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_62
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 86
    .restart local v3    # "value":I
    :cond_67
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_7c

    .line 88
    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v10

    .line 89
    invoke-static {v10}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v10

    .line 90
    move-object v4, v10

    if-eqz v10, :cond_77

    .line 93
    goto :goto_58

    .line 91
    :cond_77
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 95
    .end local v3    # "value":I
    :cond_7c
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v3, :cond_92

    .line 97
    invoke-virtual {v8, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 98
    .local v3, "subset":I
    invoke-virtual {v15, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    .line 99
    .local v10, "countHanzi":I
    if-ne v3, v0, :cond_91

    .line 100
    invoke-static {v8, v7, v10}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 102
    .end local v10    # "countHanzi":I
    :cond_91
    goto :goto_58

    .line 105
    .end local v3    # "subset":I
    :cond_92
    invoke-virtual {v15, v1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    .line 106
    .local v3, "count":I
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_a2

    .line 107
    invoke-static {v8, v7, v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_cc

    .line 108
    :cond_a2
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_aa

    .line 109
    invoke-static {v8, v7, v3, v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto :goto_cc

    .line 110
    :cond_aa
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v15, v10, :cond_b9

    .line 111
    move-object v10, v8

    move-object v11, v7

    move v12, v3

    move-object v13, v4

    move-object v0, v15

    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    move-object/from16 v15, p3

    invoke-static/range {v10 .. v15}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_cd

    .line 112
    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_b9
    move-object v0, v15

    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v0, v10, :cond_c2

    .line 113
    invoke-static {v8, v7, v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_cd

    .line 115
    :cond_c2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v10

    throw v10
    :try_end_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_c7} :catch_5d

    .line 77
    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .local v3, "value":I
    .restart local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_c7
    move-object v0, v15

    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_c8
    const/4 v5, 0x1

    .line 120
    move v10, v2

    move v11, v6

    goto :goto_cf

    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_cc
    :goto_cc
    move-object v0, v15

    .end local v2    # "symbolSequence":I
    .end local v6    # "parityData":I
    .local v10, "symbolSequence":I
    .restart local v11    # "parityData":I
    :goto_cd
    move v10, v2

    move v11, v6

    .end local v15    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_cf
    :try_start_cf
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cf .. :try_end_d1} :catch_fd

    if-ne v0, v2, :cond_f8

    .line 124
    .end local v0    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v3    # "value":I
    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v5    # "fc1InEffect":Z
    nop

    .line 126
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e3

    move-object v5, v3

    goto :goto_e4

    :cond_e3
    move-object v5, v14

    :goto_e4
    if-nez p2, :cond_e8

    .line 129
    move-object v6, v3

    goto :goto_ed

    :cond_e8
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    :goto_ed
    move-object v2, v0

    move-object/from16 v3, p0

    move-object v13, v7

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v13    # "result":Ljava/lang/StringBuilder;
    move v7, v10

    move-object v15, v8

    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .local v15, "bits":Lcom/google/zxing/common/BitSource;
    move v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    .line 126
    return-object v0

    .line 64
    .end local v13    # "result":Ljava/lang/StringBuilder;
    .end local v15    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v3    # "value":I
    .restart local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .restart local v5    # "fc1InEffect":Z
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    :cond_f8
    move v2, v10

    move v6, v11

    const/4 v0, 0x1

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v13    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "bits":Lcom/google/zxing/common/BitSource;
    goto/16 :goto_1e

    .line 121
    .end local v3    # "value":I
    .end local v5    # "fc1InEffect":Z
    .end local v13    # "result":Ljava/lang/StringBuilder;
    .end local v15    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    :catch_fd
    move-exception v0

    move-object v13, v7

    move-object v15, v8

    move v2, v10

    move v6, v11

    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .end local v10    # "symbolSequence":I
    .end local v11    # "parityData":I
    .restart local v2    # "symbolSequence":I
    .restart local v6    # "parityData":I
    .restart local v13    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "bits":Lcom/google/zxing/common/BitSource;
    :goto_102
    goto :goto_107

    .end local v13    # "result":Ljava/lang/StringBuilder;
    .end local v15    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "bits":Lcom/google/zxing/common/BitSource;
    :catch_103
    move-exception v0

    move-object v13, v7

    move-object v15, v8

    goto :goto_102

    .end local v4    # "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .end local v8    # "bits":Lcom/google/zxing/common/BitSource;
    .restart local v13    # "result":Ljava/lang/StringBuilder;
    .restart local v15    # "bits":Lcom/google/zxing/common/BitSource;
    :goto_107
    move-object v0, v4

    .line 123
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .registers 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "fc1InEffect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 256
    .local v0, "start":I
    :goto_4
    const/4 v1, 0x1

    if-le p2, v1, :cond_2d

    .line 257
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_28

    .line 260
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 261
    .local v1, "nextTwoCharsBits":I
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    rem-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    add-int/lit8 p2, p2, -0x2

    .line 264
    .end local v1    # "nextTwoCharsBits":I
    goto :goto_4

    .line 258
    :cond_28
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 265
    :cond_2d
    if-ne p2, v1, :cond_47

    .line 267
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_42

    .line 270
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 268
    :cond_42
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 273
    :cond_47
    :goto_47
    if-eqz p3, :cond_75

    .line 275
    move v2, v0

    .local v2, "i":I
    :goto_4a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_75

    .line 276
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_72

    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_6d

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_6d

    .line 279
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 282
    :cond_6d
    const/16 v3, 0x1d

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 275
    :cond_72
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 287
    .end local v2    # "i":I
    :cond_75
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .registers 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .param p3, "currentCharacterSetECI"    # Lcom/google/zxing/common/CharacterSetECI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 216
    .local p4, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    shl-int/lit8 v0, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_37

    .line 220
    new-array v0, p2, [B

    .line 221
    .local v0, "readBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p2, :cond_19

    .line 222
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 225
    .end local v1    # "i":I
    :cond_19
    if-nez p3, :cond_20

    .line 231
    invoke-static {v0, p5}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    .line 233
    :cond_20
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "encoding":Ljava/lang/String;
    :goto_24
    :try_start_24
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2c} :catch_31

    .line 239
    nop

    .line 240
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    return-void

    .line 237
    :catch_31
    move-exception v2

    .line 238
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 217
    .end local v0    # "readBytes":[B
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_37
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 141
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_4e

    .line 147
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    .line 148
    .local v0, "buffer":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 149
    .local v1, "offset":I
    :goto_f
    if-lez p2, :cond_3c

    .line 151
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 152
    .local v2, "twoBytes":I
    move v2, v4

    div-int/lit8 v4, v4, 0x60

    shl-int/lit8 v4, v4, 0x8

    rem-int/lit8 v5, v2, 0x60

    or-int/2addr v4, v5

    .line 153
    .local v3, "assembledTwoBytes":I
    move v3, v4

    const/16 v5, 0x3bf

    if-ge v4, v5, :cond_29

    .line 155
    const v4, 0xa1a1

    add-int/2addr v3, v4

    goto :goto_2d

    .line 158
    :cond_29
    const v4, 0xa6a1

    add-int/2addr v3, v4

    .line 160
    :goto_2d
    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 161
    add-int/lit8 v4, v1, 0x1

    int-to-byte v5, v3

    aput-byte v5, v0, v4

    .line 162
    add-int/lit8 v1, v1, 0x2

    .line 163
    add-int/lit8 p2, p2, -0x1

    .line 164
    .end local v2    # "twoBytes":I
    .end local v3    # "assembledTwoBytes":I
    goto :goto_f

    .line 167
    :cond_3c
    :try_start_3c
    new-instance v2, Ljava/lang/String;

    const-string v3, "GB2312"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3c .. :try_end_46} :catch_47

    .line 170
    return-void

    .line 168
    :catch_47
    move-exception v2

    const/4 v2, 0x0

    .line 169
    .local v2, "ignored":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 142
    .end local v0    # "buffer":[B
    .end local v1    # "offset":I
    .end local v2    # "ignored":Ljava/io/UnsupportedEncodingException;
    :cond_4e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 9
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 177
    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_4e

    .line 183
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    .line 184
    .local v0, "buffer":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 185
    .local v1, "offset":I
    :goto_f
    if-lez p2, :cond_3c

    .line 187
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 188
    .local v2, "twoBytes":I
    move v2, v4

    div-int/lit16 v4, v4, 0xc0

    shl-int/lit8 v4, v4, 0x8

    rem-int/lit16 v5, v2, 0xc0

    or-int/2addr v4, v5

    .line 189
    .local v3, "assembledTwoBytes":I
    move v3, v4

    const/16 v5, 0x1f00

    if-ge v4, v5, :cond_29

    .line 191
    const v4, 0x8140

    add-int/2addr v3, v4

    goto :goto_2d

    .line 194
    :cond_29
    const v4, 0xc140

    add-int/2addr v3, v4

    .line 196
    :goto_2d
    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 197
    add-int/lit8 v4, v1, 0x1

    int-to-byte v5, v3

    aput-byte v5, v0, v4

    .line 198
    add-int/lit8 v1, v1, 0x2

    .line 199
    add-int/lit8 p2, p2, -0x1

    .line 200
    .end local v2    # "twoBytes":I
    .end local v3    # "assembledTwoBytes":I
    goto :goto_f

    .line 203
    :cond_3c
    :try_start_3c
    new-instance v2, Ljava/lang/String;

    const-string v3, "SJIS"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3c .. :try_end_46} :catch_47

    .line 206
    return-void

    .line 204
    :catch_47
    move-exception v2

    const/4 v2, 0x0

    .line 205
    .local v2, "ignored":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 178
    .end local v0    # "buffer":[B
    .end local v1    # "offset":I
    .end local v2    # "ignored":Ljava/io/UnsupportedEncodingException;
    :cond_4e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 7
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 293
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    const/16 v2, 0xa

    if-lt p2, v1, :cond_3e

    .line 295
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-lt v1, v2, :cond_39

    .line 298
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 299
    .local v0, "threeDigitsBits":I
    move v0, v1

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_34

    .line 302
    div-int/lit8 v1, v0, 0x64

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    div-int/lit8 v1, v0, 0xa

    rem-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    rem-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 p2, p2, -0x3

    .line 306
    .end local v0    # "threeDigitsBits":I
    goto :goto_1

    .line 300
    :cond_34
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 296
    :cond_39
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 307
    :cond_3e
    const/4 v1, 0x2

    if-ne p2, v1, :cond_6e

    .line 309
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_69

    .line 312
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 313
    .local v0, "twoDigitsBits":I
    move v0, v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_64

    .line 316
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    rem-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    .end local v0    # "twoDigitsBits":I
    return-void

    .line 314
    .restart local v0    # "twoDigitsBits":I
    :cond_64
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 310
    .end local v0    # "twoDigitsBits":I
    :cond_69
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 318
    :cond_6e
    const/4 v1, 0x1

    if-ne p2, v1, :cond_91

    .line 320
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_8c

    .line 323
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 324
    .local v0, "digitBits":I
    move v0, v1

    if-ge v1, v2, :cond_87

    .line 327
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_91

    .line 325
    :cond_87
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 321
    .end local v0    # "digitBits":I
    :cond_8c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 329
    :cond_91
    :goto_91
    return-void
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .registers 5
    .param p0, "bits"    # Lcom/google/zxing/common/BitSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 332
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    const/4 v2, 0x0

    .line 333
    .local v2, "firstByte":I
    move v2, v1

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-nez v1, :cond_10

    .line 335
    and-int/lit8 v0, v2, 0x7f

    return v0

    .line 337
    :cond_10
    and-int/lit16 v1, v2, 0xc0

    if-ne v1, v3, :cond_1e

    .line 339
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 340
    .local v1, "secondByte":I
    and-int/lit8 v3, v2, 0x3f

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr v0, v1

    return v0

    .line 342
    .end local v1    # "secondByte":I
    :cond_1e
    and-int/lit16 v0, v2, 0xe0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_30

    .line 344
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    .line 345
    .local v1, "secondThirdBytes":I
    and-int/lit8 v3, v2, 0x1f

    shl-int/lit8 v0, v3, 0x10

    or-int/2addr v0, v1

    return v0

    .line 347
    .end local v1    # "secondThirdBytes":I
    :cond_30
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static toAlphaNumericChar(I)C
    .registers 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v0, v0

    if-ge p0, v0, :cond_a

    .line 247
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    aget-char v0, v0, p0

    return v0

    .line 245
    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
