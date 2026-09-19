###### Class com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder (com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder)
.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final BYTE_COMPACTION:I = 0x1

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final LATCH_TO_BYTE:I = 0x39c

.field private static final LATCH_TO_BYTE_PADDED:I = 0x385

.field private static final LATCH_TO_NUMERIC:I = 0x386

.field private static final LATCH_TO_TEXT:I = 0x384

.field private static final MIXED:[B

.field private static final NUMERIC_COMPACTION:I = 0x2

.field private static final PUNCTUATION:[B

.field private static final SHIFT_TO_BYTE:I = 0x391

.field private static final SUBMODE_ALPHA:I = 0x0

.field private static final SUBMODE_LOWER:I = 0x1

.field private static final SUBMODE_MIXED:I = 0x2

.field private static final SUBMODE_PUNCTUATION:I = 0x3

.field private static final TEXT_COMPACTION:I

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 115
    const/16 v0, 0x1e

    new-array v1, v0, [B

    fill-array-data v1, :array_5c

    sput-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 122
    new-array v0, v0, [B

    fill-array-data v0, :array_70

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    .line 126
    const/16 v0, 0x80

    new-array v1, v0, [B

    sput-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 127
    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 129
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 136
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 137
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v2, "i":I
    :goto_2b
    sget-object v4, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v4, v4

    if-ge v2, v4, :cond_3f

    .line 138
    sget-object v4, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    aget-byte v4, v4, v2

    .line 139
    .local v3, "b":B
    move v3, v4

    if-lez v4, :cond_3c

    .line 140
    sget-object v4, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    int-to-byte v5, v2

    aput-byte v5, v4, v3

    .line 137
    .end local v3    # "b":B
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 143
    .end local v2    # "i":I
    :cond_3f
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 144
    nop

    .local v0, "i":I
    :goto_45
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5a

    .line 145
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    aget-byte v1, v1, v0

    move v2, v3

    .line 146
    .local v2, "b":B
    move v3, v1

    .end local v2    # "b":B
    .restart local v3    # "b":B
    if-lez v1, :cond_57

    .line 147
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v3

    .line 144
    .end local v3    # "b":B
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 150
    .end local v0    # "i":I
    :cond_5a
    return-void

    nop

    :array_5c
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_70
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method private static determineConsecutiveBinaryCount(Ljava/lang/String;ILjava/nio/charset/Charset;)I
    .registers 12
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 536
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 537
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 538
    .local v1, "len":I
    const/4 v2, 0x0

    move v3, p1

    const/4 v4, 0x0

    .line 539
    .local v3, "idx":I
    :goto_b
    if-ge v3, v1, :cond_5e

    .line 540
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 541
    .local v5, "ch":C
    move v6, v4

    const/4 v4, 0x0

    .line 543
    .local v4, "numericCount":I
    :goto_13
    const/16 v7, 0xd

    if-ge v4, v7, :cond_29

    invoke-static {v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 544
    add-int/lit8 v4, v4, 0x1

    .line 546
    add-int v8, v3, v4

    .line 547
    .local v6, "i":I
    move v6, v8

    if-ge v8, v1, :cond_29

    .line 550
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 551
    .end local v6    # "i":I
    goto :goto_13

    .line 552
    :cond_29
    if-lt v4, v7, :cond_2e

    .line 553
    sub-int v2, v3, p1

    return v2

    .line 555
    :cond_2e
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 557
    invoke-virtual {v0, v5}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 560
    add-int/lit8 v3, v3, 0x1

    .line 561
    .end local v4    # "numericCount":I
    .end local v5    # "ch":C
    nop

    .line 538
    move v4, v6

    goto :goto_b

    .line 558
    .restart local v4    # "numericCount":I
    .restart local v5    # "ch":C
    :cond_3d
    new-instance v2, Lcom/google/zxing/WriterException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Non-encodable character detected: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, " (Unicode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 562
    .end local v4    # "numericCount":I
    .end local v5    # "ch":C
    :cond_5e
    sub-int v2, v3, p1

    return v2
.end method

.method private static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .registers 7
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 474
    .local v1, "len":I
    move v2, p1

    .line 475
    .local v2, "idx":I
    if-ge p1, v1, :cond_1f

    .line 476
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 477
    .local v3, "ch":C
    :cond_c
    :goto_c
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    if-ge v2, v1, :cond_1f

    .line 478
    add-int/lit8 v0, v0, 0x1

    .line 479
    add-int/lit8 v2, v2, 0x1

    .line 480
    if-ge v2, v1, :cond_c

    .line 481
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_c

    .line 485
    .end local v3    # "ch":C
    :cond_1f
    return v0
.end method

.method private static determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I
    .registers 8
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I

    .line 496
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 497
    .local v0, "len":I
    move v1, p1

    .line 498
    .local v1, "idx":I
    :cond_5
    :goto_5
    if-ge v1, v0, :cond_38

    .line 499
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 500
    .local v2, "ch":C
    const/4 v3, 0x0

    .line 501
    .local v3, "numericCount":I
    :cond_c
    :goto_c
    const/16 v4, 0xd

    if-ge v3, v4, :cond_23

    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_23

    if-ge v1, v0, :cond_23

    .line 502
    add-int/lit8 v3, v3, 0x1

    .line 503
    add-int/lit8 v1, v1, 0x1

    .line 504
    if-ge v1, v0, :cond_c

    .line 505
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_c

    .line 508
    :cond_23
    if-lt v3, v4, :cond_29

    .line 509
    sub-int v4, v1, p1

    sub-int/2addr v4, v3

    return v4

    .line 511
    :cond_29
    if-gtz v3, :cond_5

    .line 515
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 518
    invoke-static {v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 521
    add-int/lit8 v1, v1, 0x1

    .line 522
    .end local v2    # "ch":C
    .end local v3    # "numericCount":I
    goto :goto_5

    .line 523
    :cond_38
    sub-int v2, v1, p1

    return v2
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .registers 22
    .param p0, "bytes"    # [B
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "startmode"    # I
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .line 379
    move/from16 v0, p2

    move-object/from16 v1, p4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    if-nez p3, :cond_f

    .line 380
    const/16 v3, 0x391

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 382
    :cond_f
    rem-int/lit8 v3, v0, 0x6

    if-nez v3, :cond_19

    .line 383
    const/16 v3, 0x39c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 385
    :cond_19
    const/16 v3, 0x385

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    :goto_1e
    move/from16 v3, p1

    .line 391
    .local v3, "idx":I
    const/4 v4, 0x6

    if-lt v0, v4, :cond_61

    .line 392
    const/4 v5, 0x5

    new-array v6, v5, [C

    .line 393
    .local v6, "chars":[C
    :goto_26
    add-int v7, p1, v0

    sub-int/2addr v7, v3

    if-lt v7, v4, :cond_61

    .line 394
    const-wide/16 v7, 0x0

    .line 395
    .local v7, "t":J
    move-wide v10, v7

    const/4 v7, 0x0

    .local v7, "i":I
    .local v10, "t":J
    :goto_2f
    if-ge v7, v4, :cond_42

    .line 396
    const/16 v8, 0x8

    shl-long v12, v10, v8

    .line 397
    add-int v8, v3, v7

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    move-wide v15, v10

    .end local v10    # "t":J
    .local v15, "t":J
    int-to-long v9, v8

    add-long/2addr v9, v12

    .line 395
    .end local v15    # "t":J
    .local v9, "t":J
    add-int/lit8 v7, v7, 0x1

    move-wide v10, v9

    goto :goto_2f

    .line 399
    .end local v7    # "i":I
    .end local v9    # "t":J
    .restart local v10    # "t":J
    :cond_42
    move-wide v15, v10

    .end local v10    # "t":J
    .restart local v15    # "t":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_44
    move v7, v14

    .end local v14    # "i":I
    .restart local v7    # "i":I
    if-ge v7, v5, :cond_53

    .line 400
    const-wide/16 v8, 0x384

    rem-long v10, v15, v8

    long-to-int v10, v10

    int-to-char v10, v10

    aput-char v10, v6, v7

    .line 401
    div-long/2addr v15, v8

    .line 399
    add-int/lit8 v14, v7, 0x1

    goto :goto_44

    .line 403
    .end local v7    # "i":I
    :cond_53
    const/4 v7, 0x4

    .restart local v7    # "i":I
    :goto_54
    if-ltz v7, :cond_5e

    .line 404
    aget-char v8, v6, v7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    add-int/lit8 v7, v7, -0x1

    goto :goto_54

    .line 406
    .end local v7    # "i":I
    :cond_5e
    add-int/lit8 v3, v3, 0x6

    .line 407
    .end local v15    # "t":J
    goto :goto_26

    .line 410
    .end local v6    # "chars":[C
    :cond_61
    move v4, v3

    .local v4, "i":I
    :goto_62
    add-int v5, p1, v0

    if-ge v4, v5, :cond_71

    .line 411
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .line 412
    .local v5, "ch":I
    int-to-char v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    .end local v5    # "ch":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 414
    .end local v4    # "i":I
    :cond_71
    return-void
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 19
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "compaction"    # Lcom/google/zxing/pdf417/encoder/Compaction;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    if-nez v2, :cond_15

    .line 169
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    goto :goto_30

    .line 170
    :cond_15
    sget-object v5, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 171
    invoke-virtual/range {p2 .. p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v5

    move-object v6, v4

    .line 172
    .local v6, "eci":Lcom/google/zxing/common/CharacterSetECI;
    move-object v6, v5

    if-eqz v5, :cond_30

    .line 173
    invoke-virtual {v6}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v5

    invoke-static {v5, v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    .line 177
    .end local v6    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    .end local p2    # "encoding":Ljava/nio/charset/Charset;
    .local v2, "encoding":Ljava/nio/charset/Charset;
    :cond_30
    :goto_30
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 178
    .local v5, "len":I
    const/4 v6, 0x0

    .line 179
    .local v6, "p":I
    const/4 v7, 0x0

    .line 182
    .local v7, "textSubMode":I
    sget-object v8, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    const/4 v9, 0x0

    if-ne v1, v8, :cond_40

    .line 183
    invoke-static {v0, v9, v5, v3, v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    goto/16 :goto_ba

    .line 185
    :cond_40
    sget-object v8, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    const/4 v10, 0x1

    if-ne v1, v8, :cond_50

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 187
    .local v4, "bytes":[B
    move-object v4, v8

    array-length v11, v4

    invoke-static {v8, v9, v11, v10, v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 189
    .end local v4    # "bytes":[B
    goto/16 :goto_ba

    :cond_50
    sget-object v8, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    const/16 v11, 0x386

    if-ne v1, v8, :cond_5d

    .line 190
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {v0, v9, v5, v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_ba

    .line 194
    :cond_5d
    move-object v14, v4

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 195
    .local v4, "encodingMode":I
    :goto_62
    if-ge v6, v5, :cond_ba

    .line 196
    invoke-static {v0, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v15

    .line 197
    .local v8, "n":I
    move v8, v15

    const/16 v9, 0xd

    if-lt v15, v9, :cond_78

    .line 198
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    const/4 v4, 0x2

    .line 200
    const/4 v7, 0x0

    .line 201
    invoke-static {v0, v6, v8, v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 202
    add-int/2addr v6, v8

    .line 194
    const/4 v9, 0x0

    goto :goto_62

    .line 204
    :cond_78
    invoke-static {v0, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 205
    .local v12, "t":I
    move v12, v9

    const/4 v15, 0x5

    if-ge v9, v15, :cond_aa

    if-ne v8, v5, :cond_83

    goto :goto_aa

    .line 214
    :cond_83
    invoke-static {v0, v6, v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Ljava/lang/String;ILjava/nio/charset/Charset;)I

    move-result v9

    .line 215
    .local v13, "b":I
    move v13, v9

    if-nez v9, :cond_8c

    .line 216
    const/4 v9, 0x1

    .line 218
    move v13, v9

    :cond_8c
    add-int v9, v6, v13

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 219
    .local v14, "bytes":[B
    move-object v14, v9

    array-length v9, v9

    if-ne v9, v10, :cond_a1

    if-nez v4, :cond_a1

    .line 221
    const/4 v9, 0x0

    invoke-static {v14, v9, v10, v9, v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_a8

    .line 224
    :cond_a1
    const/4 v9, 0x0

    array-length v15, v14

    invoke-static {v14, v9, v15, v4, v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 225
    const/4 v4, 0x1

    .line 226
    const/4 v7, 0x0

    .line 228
    :goto_a8
    add-int/2addr v6, v13

    .line 231
    .end local v8    # "n":I
    .end local v12    # "t":I
    .end local v13    # "b":I
    .end local v14    # "bytes":[B
    goto :goto_62

    .line 206
    :cond_aa
    :goto_aa
    const/4 v9, 0x0

    if-eqz v4, :cond_b4

    .line 207
    const/16 v15, 0x384

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    const/4 v4, 0x0

    .line 209
    const/4 v7, 0x0

    .line 211
    :cond_b4
    invoke-static {v0, v6, v12, v3, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v7

    .line 212
    add-int/2addr v6, v12

    goto :goto_62

    .line 234
    .end local v4    # "encodingMode":I
    :cond_ba
    :goto_ba
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .registers 13
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "idx":I
    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v2, p2, 0x3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 419
    .local v1, "tmp":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 420
    .local v2, "num900":Ljava/math/BigInteger;
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 421
    .local v3, "num0":Ljava/math/BigInteger;
    :goto_16
    if-ge v0, p2, :cond_6b

    .line 422
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 423
    const/16 v4, 0x2c

    sub-int v5, p2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 424
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "1"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v6, p1, v0

    add-int v7, p1, v0

    add-int/2addr v7, v4

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, "part":Ljava/lang/String;
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 427
    .local v6, "bigint":Ljava/math/BigInteger;
    :cond_40
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 429
    move-object v6, v7

    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 432
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_5d
    if-ltz v7, :cond_69

    .line 433
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    add-int/lit8 v7, v7, -0x1

    goto :goto_5d

    .line 435
    .end local v7    # "i":I
    :cond_69
    add-int/2addr v0, v4

    .line 436
    .end local v4    # "len":I
    .end local v5    # "part":Ljava/lang/String;
    .end local v6    # "bigint":Ljava/math/BigInteger;
    goto :goto_16

    .line 437
    :cond_6b
    return-void
.end method

.method private static encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .registers 21
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "startpos"    # I
    .param p2, "count"    # I
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .param p4, "initialSubmode"    # I

    .line 253
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    .local v3, "tmp":Ljava/lang/StringBuilder;
    move/from16 v4, p4

    .line 255
    .local v4, "submode":I
    const/4 v5, 0x0

    move v6, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 257
    .local v4, "idx":I
    .local v6, "submode":I
    :cond_11
    :goto_11
    add-int v8, p1, v4

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 258
    .local v8, "ch":C
    const/16 v9, 0x1a

    const/16 v10, 0x20

    const/16 v11, 0x1c

    const/16 v12, 0x1b

    const/4 v13, 0x1

    const/16 v14, 0x1d

    packed-switch v6, :pswitch_data_130

    .line 333
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_129

    .line 334
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v8

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f3

    .line 307
    :pswitch_35
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 308
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v9, v9, v8

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f3

    .line 310
    :cond_45
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 311
    const/4 v6, 0x0

    .line 312
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    goto :goto_11

    .line 314
    :cond_50
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 315
    const/4 v6, 0x1

    .line 316
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    goto :goto_11

    .line 319
    :cond_5b
    add-int v9, p1, v4

    add-int/2addr v9, v13

    if-ge v9, v1, :cond_74

    .line 320
    add-int v9, p1, v4

    add-int/2addr v9, v13

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 321
    .local v7, "next":C
    invoke-static {v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 322
    const/4 v6, 0x3

    .line 323
    const/16 v9, 0x19

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    goto :goto_11

    .line 327
    .end local v7    # "next":C
    :cond_74
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v8

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    goto/16 :goto_f3

    .line 283
    :pswitch_81
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v15

    if-eqz v15, :cond_94

    .line 284
    if-ne v8, v10, :cond_8d

    .line 285
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f3

    .line 287
    :cond_8d
    add-int/lit8 v9, v8, -0x61

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f3

    .line 290
    :cond_94
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 291
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    add-int/lit8 v9, v8, -0x41

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    goto :goto_f3

    .line 295
    :cond_a4
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 296
    const/4 v6, 0x2

    .line 297
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    goto/16 :goto_11

    .line 300
    :cond_b0
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v8

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    goto :goto_f3

    .line 260
    :pswitch_bc
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v15

    if-eqz v15, :cond_cf

    .line 261
    if-ne v8, v10, :cond_c8

    .line 262
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f3

    .line 264
    :cond_c8
    add-int/lit8 v9, v8, -0x41

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f3

    .line 267
    :cond_cf
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v9

    if-eqz v9, :cond_db

    .line 268
    const/4 v6, 0x1

    .line 269
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    goto/16 :goto_11

    .line 271
    :cond_db
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v9

    if-eqz v9, :cond_e7

    .line 272
    const/4 v6, 0x2

    .line 273
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    goto/16 :goto_11

    .line 276
    :cond_e7
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v9, v9, v8

    int-to-char v9, v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    nop

    .line 341
    :goto_f3
    add-int/lit8 v4, v4, 0x1

    .line 342
    if-lt v4, v1, :cond_11

    .line 346
    .end local v8    # "ch":C
    const/4 v7, 0x0

    .line 347
    .local v7, "h":C
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 348
    .local v8, "len":I
    move v9, v7

    const/4 v7, 0x0

    .local v7, "i":I
    .local v9, "h":C
    :goto_fe
    if-ge v7, v8, :cond_11d

    .line 349
    rem-int/lit8 v10, v7, 0x2

    if-eqz v10, :cond_106

    .line 350
    const/4 v10, 0x1

    goto :goto_108

    .line 349
    :cond_106
    nop

    .line 350
    const/4 v10, 0x0

    :goto_108
    if-eqz v10, :cond_116

    .line 351
    mul-int/lit8 v10, v9, 0x1e

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    add-int/2addr v10, v11

    int-to-char v9, v10

    .line 352
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11a

    .line 354
    :cond_116
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    .line 348
    :goto_11a
    add-int/lit8 v7, v7, 0x1

    goto :goto_fe

    .line 357
    .end local v7    # "i":I
    :cond_11d
    rem-int/lit8 v5, v8, 0x2

    if-eqz v5, :cond_128

    .line 358
    mul-int/lit8 v5, v9, 0x1e

    add-int/2addr v5, v14

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    :cond_128
    return v6

    .line 336
    .end local v9    # "h":C
    .local v8, "ch":C
    :cond_129
    const/4 v6, 0x0

    .line 337
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    goto/16 :goto_11

    nop

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_81
        :pswitch_35
    .end packed-switch
.end method

.method private static encodingECI(ILjava/lang/StringBuilder;)V
    .registers 5
    .param p0, "eci"    # I
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 566
    if-ltz p0, :cond_10

    const/16 v0, 0x384

    if-ge p0, v0, :cond_10

    .line 567
    const/16 v0, 0x39f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 568
    int-to-char v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 569
    :cond_10
    const v0, 0xc5f94

    if-ge p0, v0, :cond_29

    .line 570
    const/16 v0, 0x39e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    div-int/lit16 v0, p0, 0x384

    add-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    rem-int/lit16 v0, p0, 0x384

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 573
    :cond_29
    const v1, 0xc6318

    if-ge p0, v1, :cond_39

    .line 574
    const/16 v1, 0x39d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    sub-int/2addr v0, p0

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 577
    :cond_39
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ECI number not in valid range from 0..811799, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlphaLower(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 449
    const/16 v0, 0x20

    if-eq p0, v0, :cond_f

    const/16 v0, 0x61

    if-lt p0, v0, :cond_d

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method private static isAlphaUpper(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 445
    const/16 v0, 0x20

    if-eq p0, v0, :cond_f

    const/16 v0, 0x41

    if-lt p0, v0, :cond_d

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method private static isDigit(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 441
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static isMixed(C)Z
    .registers 3
    .param p0, "ch"    # C

    .line 453
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private static isPunctuation(C)Z
    .registers 3
    .param p0, "ch"    # C

    .line 457
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private static isText(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 461
    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    const/16 v0, 0xa

    if-eq p0, v0, :cond_17

    const/16 v0, 0xd

    if-eq p0, v0, :cond_17

    const/16 v0, 0x20

    if-lt p0, v0, :cond_15

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method
