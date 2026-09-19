###### Class com.google.zxing.pdf417.decoder.DecodedBitStreamParser (com.google.zxing.pdf417.decoder.DecodedBitStreamParser)
.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 67
    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 70
    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 73
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 81
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 82
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 83
    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 84
    .local v0, "nineHundred":Ljava/math/BigInteger;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 85
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_2f
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v1, v2, :cond_45

    .line 86
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 88
    .end local v0    # "nineHundred":Ljava/math/BigInteger;
    .end local v1    # "i":I
    :cond_45
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .registers 29
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "codeIndex"    # I
    .param p4, "result"    # Ljava/lang/StringBuilder;

    .line 444
    move/from16 v0, p0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 445
    .local v2, "decodedBytes":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    const/16 v6, 0x386

    const-wide/16 v7, 0x384

    const/16 v9, 0x39c

    const/4 v10, 0x6

    const/16 v11, 0x385

    const/16 v12, 0x384

    const/4 v13, 0x0

    if-ne v0, v11, :cond_9a

    .line 448
    const/4 v14, 0x0

    .line 449
    .local v14, "count":I
    const-wide/16 v15, 0x0

    .line 450
    .local v15, "value":J
    new-array v3, v10, [I

    .line 451
    .local v3, "byteCompactedCodewords":[I
    const/16 v17, 0x0

    .line 452
    .local v17, "end":Z
    add-int/lit8 v18, p3, 0x1

    .local v18, "codeIndex":I
    aget v1, p1, p3

    move-wide/from16 v22, v15

    move v15, v14

    move/from16 v14, v18

    move-wide/from16 v18, v22

    .line 453
    .end local p3    # "codeIndex":I
    .local v1, "nextCode":I
    .local v14, "codeIndex":I
    .local v15, "count":I
    .local v18, "value":J
    :goto_2b
    aget v10, p1, v13

    if-ge v14, v10, :cond_80

    if-nez v17, :cond_80

    .line 454
    add-int/lit8 v10, v15, 0x1

    .local v10, "count":I
    aput v1, v3, v15

    .line 456
    .end local v15    # "count":I
    mul-long v15, v18, v7

    int-to-long v7, v1

    add-long v18, v15, v7

    .line 457
    add-int/lit8 v7, v14, 0x1

    .local v7, "codeIndex":I
    aget v8, p1, v14

    .line 459
    .end local v14    # "codeIndex":I
    move v1, v8

    if-eq v8, v12, :cond_73

    if-eq v1, v11, :cond_73

    if-eq v1, v6, :cond_73

    if-eq v1, v9, :cond_73

    if-eq v1, v5, :cond_73

    if-eq v1, v4, :cond_73

    const/16 v8, 0x39a

    if-ne v1, v8, :cond_50

    goto :goto_73

    .line 469
    :cond_50
    rem-int/lit8 v8, v10, 0x5

    if-nez v8, :cond_71

    if-lez v10, :cond_71

    .line 472
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_57
    const/4 v14, 0x6

    if-ge v8, v14, :cond_6c

    .line 473
    rsub-int/lit8 v14, v8, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v4, v18, v14

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 472
    add-int/lit8 v8, v8, 0x1

    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    goto :goto_57

    .line 475
    .end local v8    # "j":I
    :cond_6c
    const-wide/16 v18, 0x0

    .line 476
    const/4 v15, 0x0

    .line 452
    move v14, v7

    goto :goto_78

    :cond_71
    move v14, v7

    goto :goto_77

    .line 466
    :cond_73
    :goto_73
    add-int/lit8 v14, v7, -0x1

    .line 467
    .end local v7    # "codeIndex":I
    .restart local v14    # "codeIndex":I
    const/16 v17, 0x1

    .line 452
    .end local v10    # "count":I
    .restart local v15    # "count":I
    :goto_77
    move v15, v10

    :goto_78
    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    const-wide/16 v7, 0x384

    const/4 v10, 0x6

    goto :goto_2b

    .line 482
    :cond_80
    aget v4, p1, v13

    if-ne v14, v4, :cond_8b

    if-ge v1, v12, :cond_8b

    .line 483
    add-int/lit8 v4, v15, 0x1

    .local v4, "count":I
    aput v1, v3, v15

    goto :goto_8c

    .line 489
    .end local v4    # "count":I
    :cond_8b
    move v4, v15

    .end local v15    # "count":I
    .restart local v4    # "count":I
    .local v13, "i":I
    :goto_8c
    move v5, v13

    .end local v13    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_98

    .line 490
    aget v6, v3, v5

    int-to-byte v6, v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 489
    add-int/lit8 v13, v5, 0x1

    goto :goto_8c

    .line 493
    .end local v1    # "nextCode":I
    .end local v3    # "byteCompactedCodewords":[I
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v17    # "end":Z
    .end local v18    # "value":J
    :cond_98
    goto/16 :goto_122

    .end local v14    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :cond_9a
    if-ne v0, v9, :cond_120

    .line 496
    const/4 v3, 0x0

    .line 497
    .local v3, "count":I
    const-wide/16 v4, 0x0

    .line 498
    .local v4, "value":J
    move-wide v7, v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    move v4, v3

    move/from16 v3, p3

    .line 499
    .end local p3    # "codeIndex":I
    .local v1, "end":Z
    .local v3, "codeIndex":I
    .local v4, "count":I
    .local v7, "value":J
    :goto_a5
    aget v10, p1, v13

    if-ge v3, v10, :cond_11e

    if-nez v1, :cond_11e

    .line 500
    add-int/lit8 v10, v3, 0x1

    .local v10, "codeIndex":I
    aget v3, p1, v3

    .line 501
    .end local v3    # "codeIndex":I
    .local v5, "code":I
    move v5, v3

    if-ge v3, v12, :cond_c2

    .line 502
    add-int/lit8 v4, v4, 0x1

    .line 504
    const-wide/16 v14, 0x384

    mul-long v17, v7, v14

    int-to-long v13, v5

    add-long v7, v17, v13

    .line 517
    const/16 v3, 0x39a

    const/16 v13, 0x3a0

    const/16 v14, 0x39b

    goto :goto_e6

    .line 506
    :cond_c2
    if-eq v5, v12, :cond_dd

    if-eq v5, v11, :cond_dd

    if-eq v5, v6, :cond_dd

    if-eq v5, v9, :cond_dd

    const/16 v13, 0x3a0

    if-eq v5, v13, :cond_da

    const/16 v14, 0x39b

    if-eq v5, v14, :cond_d7

    const/16 v3, 0x39a

    if-ne v5, v3, :cond_e6

    goto :goto_e3

    .line 513
    :cond_d7
    const/16 v3, 0x39a

    goto :goto_e3

    :cond_da
    const/16 v3, 0x39a

    goto :goto_e1

    :cond_dd
    const/16 v3, 0x39a

    const/16 v13, 0x3a0

    :goto_e1
    const/16 v14, 0x39b

    :goto_e3
    add-int/lit8 v10, v10, -0x1

    .line 514
    const/4 v1, 0x1

    .line 517
    :cond_e6
    :goto_e6
    rem-int/lit8 v15, v4, 0x5

    if-nez v15, :cond_113

    if-lez v4, :cond_113

    .line 520
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_ed
    move/from16 v20, v15

    move/from16 v3, v20

    const/4 v6, 0x6

    .end local v15    # "j":I
    .local v3, "j":I
    if-ge v3, v6, :cond_10c

    .line 521
    rsub-int/lit8 v15, v3, 0x5

    mul-int/lit8 v15, v15, 0x8

    move/from16 v21, v10

    .end local v10    # "codeIndex":I
    .local v21, "codeIndex":I
    shr-long v9, v7, v15

    long-to-int v9, v9

    int-to-byte v9, v9

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 520
    add-int/lit8 v15, v3, 0x1

    move/from16 v10, v21

    const/16 v3, 0x39a

    const/16 v6, 0x386

    const/16 v9, 0x39c

    goto :goto_ed

    .line 523
    .end local v3    # "j":I
    .end local v21    # "codeIndex":I
    .restart local v10    # "codeIndex":I
    :cond_10c
    move/from16 v21, v10

    .end local v10    # "codeIndex":I
    .restart local v21    # "codeIndex":I
    const-wide/16 v7, 0x0

    .line 524
    const/4 v3, 0x0

    .line 526
    move v4, v3

    goto :goto_116

    .end local v5    # "code":I
    .end local v21    # "codeIndex":I
    .restart local v10    # "codeIndex":I
    :cond_113
    move/from16 v21, v10

    const/4 v6, 0x6

    .line 498
    .end local v10    # "codeIndex":I
    .restart local v21    # "codeIndex":I
    :goto_116
    move/from16 v3, v21

    const/16 v6, 0x386

    const/16 v9, 0x39c

    const/4 v13, 0x0

    goto :goto_a5

    .line 528
    .end local v1    # "end":Z
    .end local v4    # "count":I
    .end local v7    # "value":J
    .end local v21    # "codeIndex":I
    .local v3, "codeIndex":I
    :cond_11e
    move v14, v3

    goto :goto_122

    .end local v3    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :cond_120
    move/from16 v14, p3

    .end local p3    # "codeIndex":I
    .restart local v14    # "codeIndex":I
    :goto_122
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v4, p2

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v3, p4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    return v14
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 11
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .local v0, "result":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 99
    .local v1, "encoding":Ljava/nio/charset/Charset;
    const/4 v3, 0x1

    .line 100
    .local v3, "codeIndex":I
    add-int/2addr v3, v2

    aget v2, p0, v2

    .line 101
    .local v2, "code":I
    new-instance v4, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    const/4 v5, 0x0

    move-object v6, v5

    .line 102
    .local v4, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    :goto_15
    const/4 v7, 0x0

    aget v7, p0, v7

    if-ge v3, v7, :cond_73

    .line 103
    const/16 v7, 0x391

    if-eq v2, v7, :cond_5b

    packed-switch v2, :pswitch_data_8e

    packed-switch v2, :pswitch_data_98

    .line 141
    add-int/lit8 v3, v3, -0x1

    .line 142
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    goto :goto_65

    .line 131
    :pswitch_2b
    invoke-static {p0, v3, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v3

    .line 132
    goto :goto_65

    .line 118
    :pswitch_30
    add-int/lit8 v7, v3, 0x1

    .local v7, "codeIndex":I
    aget v3, p0, v3

    .line 119
    .end local v3    # "codeIndex":I
    invoke-static {v3}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    .line 120
    .local v6, "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    invoke-virtual {v3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 121
    goto :goto_64

    .line 124
    .end local v6    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    .end local v7    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :pswitch_41
    add-int/lit8 v3, v3, 0x2

    .line 125
    goto :goto_65

    .line 128
    :pswitch_44
    add-int/lit8 v3, v3, 0x1

    .line 129
    goto :goto_65

    .line 136
    :pswitch_47
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 115
    :pswitch_4c
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    .line 116
    goto :goto_65

    .line 109
    :pswitch_51
    invoke-static {v2, p0, v1, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v3

    .line 110
    goto :goto_65

    .line 105
    :pswitch_56
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v3

    .line 106
    goto :goto_65

    .line 112
    :cond_5b
    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "codeIndex":I
    aget v3, p0, v3

    .end local v3    # "codeIndex":I
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    nop

    .line 145
    .end local v7    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :goto_64
    move v3, v7

    :goto_65
    array-length v7, p0

    if-ge v3, v7, :cond_6e

    .line 146
    add-int/lit8 v7, v3, 0x1

    .restart local v7    # "codeIndex":I
    aget v2, p0, v3

    .line 101
    move v3, v7

    goto :goto_15

    .line 148
    .end local v7    # "codeIndex":I
    :cond_6e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 151
    :cond_73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_88

    .line 154
    new-instance v7, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8, v5, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v5, v6

    .line 155
    .local v5, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v5, v7

    invoke-virtual {v7, v4}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 156
    return-object v5

    .line 152
    .end local v5    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    :cond_88
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    nop

    :pswitch_data_8e
    .packed-switch 0x384
        :pswitch_56
        :pswitch_51
        :pswitch_4c
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x39a
        :pswitch_47
        :pswitch_47
        :pswitch_51
        :pswitch_44
        :pswitch_41
        :pswitch_30
        :pswitch_2b
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 8
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 626
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 627
    .local v0, "result":Ljava/math/BigInteger;
    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "result":Ljava/math/BigInteger;
    :goto_5
    const/4 v3, 0x1

    if-ge v0, p1, :cond_21

    .line 628
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v0

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 630
    .end local v0    # "i":I
    :cond_21
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 631
    .local v4, "resultString":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_34

    .line 634
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 632
    :cond_34
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 14
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 161
    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v0, v2, :cond_7f

    .line 165
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 166
    .local v2, "segmentIndexArray":[I
    move v3, p1

    const/4 p1, 0x0

    .local v3, "codeIndex":I
    .local p1, "i":I
    :goto_c
    if-ge p1, v0, :cond_17

    .line 167
    aget v4, p0, v3

    aput v4, v2, p1

    .line 166
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 169
    .end local p1    # "i":I
    :cond_17
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local p1, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, v3, p1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v0

    .line 174
    .end local v3    # "codeIndex":I
    .local v0, "codeIndex":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 176
    aget v3, p0, v0

    const/16 v4, 0x39b

    const/16 v5, 0x39a

    const/4 v6, 0x1

    if-ne v3, v4, :cond_75

    .line 177
    add-int/lit8 v0, v0, 0x1

    .line 178
    aget v3, p0, v1

    sub-int/2addr v3, v0

    new-array v3, v3, [I

    .line 179
    .local v3, "additionalOptionCodeWords":[I
    const/4 v4, 0x0

    .line 181
    .local v4, "additionalOptionCodeWordsIndex":I
    move v7, v4

    const/4 v8, 0x0

    move v4, v0

    const/4 v0, 0x0

    .line 182
    .local v0, "end":Z
    .local v4, "codeIndex":I
    .local v7, "additionalOptionCodeWordsIndex":I
    :goto_47
    aget v9, p0, v1

    if-ge v4, v9, :cond_6b

    if-nez v0, :cond_6b

    .line 183
    add-int/lit8 v9, v4, 0x1

    .local v9, "codeIndex":I
    aget v4, p0, v4

    .line 184
    .end local v4    # "codeIndex":I
    .local v8, "code":I
    move v8, v4

    const/16 v10, 0x384

    if-ge v4, v10, :cond_5d

    .line 185
    add-int/lit8 v4, v7, 0x1

    .local v4, "additionalOptionCodeWordsIndex":I
    aput v8, v3, v7

    .line 181
    move v7, v4

    move v4, v9

    goto :goto_47

    .line 187
    .end local v4    # "additionalOptionCodeWordsIndex":I
    :cond_5d
    if-ne v8, v5, :cond_66

    .line 189
    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 190
    add-int/lit8 v4, v9, 0x1

    .line 191
    .end local v9    # "codeIndex":I
    .local v4, "codeIndex":I
    const/4 v0, 0x1

    .line 192
    goto :goto_47

    .line 194
    .end local v4    # "codeIndex":I
    .restart local v9    # "codeIndex":I
    :cond_66
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 199
    .end local v8    # "code":I
    .end local v9    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_6b
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 200
    .end local v0    # "end":Z
    .end local v3    # "additionalOptionCodeWords":[I
    .end local v7    # "additionalOptionCodeWordsIndex":I
    nop

    .line 205
    move v0, v4

    goto :goto_7e

    .line 200
    .end local v4    # "codeIndex":I
    .local v0, "codeIndex":I
    :cond_75
    aget v1, p0, v0

    if-ne v1, v5, :cond_7e

    .line 201
    invoke-virtual {p2, v6}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    .line 205
    :cond_7e
    :goto_7e
    return v0

    .line 163
    .end local v0    # "codeIndex":I
    .end local v2    # "segmentIndexArray":[I
    .local p1, "codeIndex":I
    :cond_7f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .registers 16
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .line 290
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 291
    .local v0, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 292
    .local v1, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v2, 0x0

    .line 293
    .local v2, "i":I
    :goto_5
    if-ge v2, p2, :cond_108

    .line 294
    aget v3, p0, v2

    .line 295
    .local v3, "subModeCh":I
    const/4 v4, 0x0

    .line 296
    .local v4, "ch":C
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x1c

    const/16 v7, 0x1b

    const/16 v8, 0x391

    const/16 v9, 0x384

    const/16 v10, 0x1d

    const/16 v11, 0x1a

    packed-switch v5, :pswitch_data_10a

    goto/16 :goto_ff

    .line 403
    :pswitch_23
    move-object v0, v1

    .line 404
    if-ge v3, v10, :cond_2c

    .line 405
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_ff

    .line 407
    :cond_2c
    if-ne v3, v10, :cond_32

    .line 408
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ff

    .line 409
    :cond_32
    if-ne v3, v8, :cond_3c

    .line 412
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_ff

    .line 413
    :cond_3c
    if-ne v3, v9, :cond_ff

    .line 414
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ff

    .line 389
    :pswitch_42
    move-object v0, v1

    .line 390
    if-ge v3, v11, :cond_4a

    .line 391
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto/16 :goto_ff

    .line 393
    :cond_4a
    if-ne v3, v11, :cond_50

    .line 394
    const/16 v4, 0x20

    goto/16 :goto_ff

    .line 395
    :cond_50
    if-ne v3, v9, :cond_ff

    .line 396
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ff

    .line 374
    :pswitch_56
    if-ge v3, v10, :cond_5e

    .line 375
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_ff

    .line 377
    :cond_5e
    if-ne v3, v10, :cond_64

    .line 378
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ff

    .line 379
    :cond_64
    if-ne v3, v8, :cond_6e

    .line 380
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_ff

    .line 381
    :cond_6e
    if-ne v3, v9, :cond_ff

    .line 382
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ff

    .line 349
    :pswitch_74
    const/16 v5, 0x19

    if-ge v3, v5, :cond_7e

    .line 350
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v4, v5, v3

    goto/16 :goto_ff

    .line 352
    :cond_7e
    if-ne v3, v5, :cond_84

    .line 353
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ff

    .line 354
    :cond_84
    if-ne v3, v11, :cond_8a

    .line 355
    const/16 v4, 0x20

    goto/16 :goto_ff

    .line 356
    :cond_8a
    if-ne v3, v7, :cond_90

    .line 357
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ff

    .line 358
    :cond_90
    if-ne v3, v6, :cond_96

    .line 359
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ff

    .line 360
    :cond_96
    if-ne v3, v10, :cond_9d

    .line 362
    move-object v1, v0

    .line 363
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ff

    .line 364
    :cond_9d
    if-ne v3, v8, :cond_a7

    .line 365
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_ff

    .line 366
    :cond_a7
    if-ne v3, v9, :cond_ff

    .line 367
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_ff

    .line 323
    :pswitch_ad
    if-ge v3, v11, :cond_b3

    .line 324
    add-int/lit8 v5, v3, 0x61

    int-to-char v4, v5

    goto :goto_ff

    .line 326
    :cond_b3
    if-ne v3, v11, :cond_b8

    .line 327
    const/16 v4, 0x20

    goto :goto_ff

    .line 328
    :cond_b8
    if-ne v3, v7, :cond_be

    .line 330
    move-object v1, v0

    .line 331
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ff

    .line 332
    :cond_be
    if-ne v3, v6, :cond_c3

    .line 333
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ff

    .line 334
    :cond_c3
    if-ne v3, v10, :cond_c9

    .line 336
    move-object v1, v0

    .line 337
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ff

    .line 338
    :cond_c9
    if-ne v3, v8, :cond_d2

    .line 340
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ff

    .line 341
    :cond_d2
    if-ne v3, v9, :cond_ff

    .line 342
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ff

    .line 299
    :pswitch_d7
    if-ge v3, v11, :cond_dd

    .line 301
    add-int/lit8 v5, v3, 0x41

    int-to-char v4, v5

    goto :goto_ff

    .line 303
    :cond_dd
    if-ne v3, v11, :cond_e2

    .line 304
    const/16 v4, 0x20

    goto :goto_ff

    .line 305
    :cond_e2
    if-ne v3, v7, :cond_e7

    .line 306
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ff

    .line 307
    :cond_e7
    if-ne v3, v6, :cond_ec

    .line 308
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ff

    .line 309
    :cond_ec
    if-ne v3, v10, :cond_f2

    .line 311
    move-object v1, v0

    .line 312
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_ff

    .line 313
    :cond_f2
    if-ne v3, v8, :cond_fb

    .line 314
    aget v5, p1, v2

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ff

    .line 315
    :cond_fb
    if-ne v3, v9, :cond_ff

    .line 316
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 419
    :cond_ff
    :goto_ff
    if-eqz v4, :cond_104

    .line 421
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    :cond_104
    add-int/lit8 v2, v2, 0x1

    .line 424
    .end local v3    # "subModeCh":I
    .end local v4    # "ch":C
    goto/16 :goto_5

    .line 425
    :cond_108
    return-void

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_ad
        :pswitch_74
        :pswitch_56
        :pswitch_42
        :pswitch_23
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .registers 8
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "count":I
    const/4 v1, 0x0

    .line 544
    .local v1, "end":Z
    const/16 v2, 0xf

    new-array v2, v2, [I

    .line 546
    .local v2, "numericCodewords":[I
    :goto_6
    const/4 v3, 0x0

    aget v4, p0, v3

    if-ge p1, v4, :cond_4f

    if-nez v1, :cond_4f

    .line 547
    add-int/lit8 v4, p1, 0x1

    .local v4, "codeIndex":I
    aget p1, p0, p1

    .line 548
    .local p1, "code":I
    aget v3, p0, v3

    if-ne v4, v3, :cond_16

    .line 549
    const/4 v1, 0x1

    .line 551
    :cond_16
    const/16 v3, 0x384

    if-ge p1, v3, :cond_1f

    .line 552
    aput p1, v2, v0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 555
    :cond_1f
    if-eq p1, v3, :cond_35

    const/16 v3, 0x385

    if-eq p1, v3, :cond_35

    const/16 v3, 0x39c

    if-eq p1, v3, :cond_35

    const/16 v3, 0x3a0

    if-eq p1, v3, :cond_35

    const/16 v3, 0x39b

    if-eq p1, v3, :cond_35

    const/16 v3, 0x39a

    if-ne p1, v3, :cond_38

    .line 561
    :cond_35
    add-int/lit8 v4, v4, -0x1

    .line 562
    const/4 v1, 0x1

    .line 565
    :cond_38
    :goto_38
    rem-int/lit8 v3, v0, 0xf

    if-eqz v3, :cond_42

    const/16 v3, 0x386

    if-eq p1, v3, :cond_42

    if-eqz v1, :cond_4d

    .line 572
    :cond_42
    if-lez v0, :cond_4d

    .line 573
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const/4 p1, 0x0

    .line 578
    move v0, p1

    .line 544
    .end local v3    # "s":Ljava/lang/String;
    .end local p1    # "code":I
    :cond_4d
    move p1, v4

    goto :goto_6

    .line 579
    .end local v4    # "codeIndex":I
    .local p1, "codeIndex":I
    :cond_4f
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .registers 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .line 220
    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 222
    .local v1, "textCompactionData":[I
    aget v2, p0, v0

    sub-int/2addr v2, p1

    shl-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 224
    .local v2, "byteCompactionData":[I
    const/4 v3, 0x0

    .line 225
    .local v3, "index":I
    move v4, v3

    const/4 v5, 0x0

    move v3, p1

    const/4 p1, 0x0

    .line 226
    .local v3, "codeIndex":I
    .local v4, "index":I
    .local p1, "end":Z
    :goto_14
    aget v6, p0, v0

    if-ge v3, v6, :cond_57

    if-nez p1, :cond_57

    .line 227
    add-int/lit8 v6, v3, 0x1

    .local v6, "codeIndex":I
    aget v3, p0, v3

    .line 228
    .end local v3    # "codeIndex":I
    .local v5, "code":I
    move v5, v3

    const/16 v7, 0x384

    if-ge v3, v7, :cond_31

    .line 229
    div-int/lit8 v3, v5, 0x1e

    aput v3, v1, v4

    .line 230
    add-int/lit8 v3, v4, 0x1

    rem-int/lit8 v7, v5, 0x1e

    aput v7, v1, v3

    .line 231
    add-int/lit8 v4, v4, 0x2

    .line 225
    .end local v5    # "code":I
    .end local v6    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    :goto_2f
    move v3, v6

    goto :goto_14

    .line 233
    .end local v3    # "codeIndex":I
    .restart local v5    # "code":I
    .restart local v6    # "codeIndex":I
    :cond_31
    const/16 v3, 0x391

    if-eq v5, v3, :cond_4c

    const/16 v3, 0x3a0

    if-eq v5, v3, :cond_48

    packed-switch v5, :pswitch_data_5c

    packed-switch v5, :pswitch_data_66

    .line 261
    move v3, v6

    goto :goto_56

    .line 236
    :pswitch_41
    add-int/lit8 v3, v4, 0x1

    .local v3, "index":I
    aput v7, v1, v4

    .line 237
    .end local v4    # "index":I
    nop

    .line 225
    move v4, v3

    goto :goto_2f

    .line 244
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_48
    :pswitch_48
    add-int/lit8 v3, v6, -0x1

    .line 245
    .end local v6    # "codeIndex":I
    .local v3, "codeIndex":I
    const/4 p1, 0x1

    .line 246
    goto :goto_14

    .line 254
    .end local v3    # "codeIndex":I
    .restart local v6    # "codeIndex":I
    :cond_4c
    aput v3, v1, v4

    .line 255
    add-int/lit8 v3, v6, 0x1

    .restart local v3    # "codeIndex":I
    aget v5, p0, v6

    .line 256
    .end local v6    # "codeIndex":I
    aput v5, v2, v4

    .line 257
    add-int/lit8 v4, v4, 0x1

    .line 261
    .end local v5    # "code":I
    :goto_56
    goto :goto_14

    .line 262
    :cond_57
    invoke-static {v1, v2, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 263
    return v3

    nop

    :pswitch_data_5c
    .packed-switch 0x384
        :pswitch_41
        :pswitch_48
        :pswitch_48
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x39a
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method

###### Class com.google.zxing.pdf417.decoder.DecodedBitStreamParser.AnonymousClass1 (com.google.zxing.pdf417.decoder.DecodedBitStreamParser$1)
.class synthetic Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 296
    invoke-static {}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->values()[Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    :try_start_9
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    return-void

    :catch_56
    move-exception v0

    return-void
.end method

###### Class com.google.zxing.pdf417.decoder.DecodedBitStreamParser.Mode (com.google.zxing.pdf417.decoder.DecodedBitStreamParser$Mode)
.class final enum Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
.super Ljava/lang/Enum;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 38
    new-instance v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 39
    new-instance v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "LOWER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 40
    new-instance v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "MIXED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 41
    new-instance v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "PUNCT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 42
    new-instance v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "ALPHA_SHIFT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 43
    new-instance v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "PUNCT_SHIFT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v0}, [Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    return-object v0
.end method
