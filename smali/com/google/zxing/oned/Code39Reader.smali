###### Class com.google.zxing.oned.Code39Reader (com.google.zxing.oned.Code39Reader)
.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"


# static fields
.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

.field static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I

.field private static final CHECK_DIGIT_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;

.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    .line 56
    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x27

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    return-void

    :array_10
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0x94
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "usingCheckDigit"    # Z

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(ZZ)V

    .line 80
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 5
    .param p1, "usingCheckDigit"    # Z
    .param p2, "extendedMode"    # Z

    .line 92
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 93
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 94
    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 96
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    .line 97
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 11
    .param p0, "encoded"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 269
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 270
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 271
    .local v1, "decoded":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_8b

    .line 272
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 273
    .local v3, "c":C
    move v3, v4

    const/16 v5, 0x2f

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_27

    const/16 v4, 0x24

    if-eq v3, v4, :cond_27

    const/16 v4, 0x25

    if-eq v3, v4, :cond_27

    if-ne v3, v5, :cond_23

    goto :goto_27

    .line 318
    :cond_23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 274
    .end local v3    # "c":C
    :cond_27
    :goto_27
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 275
    .local v4, "next":C
    const/4 v7, 0x0

    .line 276
    .local v7, "decodedChar":C
    const/16 v8, 0x5a

    const/16 v9, 0x41

    if-eq v3, v6, :cond_76

    if-eq v3, v5, :cond_62

    packed-switch v3, :pswitch_data_90

    goto :goto_7d

    .line 295
    :pswitch_3a
    if-lt v4, v9, :cond_44

    const/16 v5, 0x45

    if-gt v4, v5, :cond_44

    .line 296
    add-int/lit8 v5, v4, -0x26

    int-to-char v7, v5

    goto :goto_7d

    .line 297
    :cond_44
    const/16 v5, 0x46

    if-lt v4, v5, :cond_50

    const/16 v5, 0x57

    if-gt v4, v5, :cond_50

    .line 298
    add-int/lit8 v5, v4, -0xb

    int-to-char v7, v5

    goto :goto_7d

    .line 300
    :cond_50
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 287
    .restart local v3    # "c":C
    :pswitch_55
    if-lt v4, v9, :cond_5d

    if-gt v4, v8, :cond_5d

    .line 288
    add-int/lit8 v5, v4, -0x40

    int-to-char v7, v5

    goto :goto_7d

    .line 290
    :cond_5d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 305
    :cond_62
    if-lt v4, v9, :cond_6c

    const/16 v5, 0x4f

    if-gt v4, v5, :cond_6c

    .line 306
    add-int/lit8 v5, v4, -0x20

    int-to-char v7, v5

    goto :goto_7d

    .line 307
    :cond_6c
    if-ne v4, v8, :cond_71

    .line 308
    const/16 v7, 0x3a

    goto :goto_7d

    .line 310
    :cond_71
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 279
    :cond_76
    if-lt v4, v9, :cond_86

    if-gt v4, v8, :cond_86

    .line 280
    add-int/lit8 v5, v4, 0x20

    int-to-char v7, v5

    .line 314
    :goto_7d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v2, v2, 0x1

    .line 317
    .end local v4    # "next":C
    .end local v7    # "decodedChar":C
    nop

    .line 271
    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 282
    .restart local v4    # "next":C
    .restart local v7    # "decodedChar":C
    :cond_86
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 321
    .end local v2    # "i":I
    .end local v3    # "c":C
    .end local v4    # "next":C
    .end local v7    # "decodedChar":C
    :cond_8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_90
    .packed-switch 0x24
        :pswitch_55
        :pswitch_3a
    .end packed-switch
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
    .registers 14
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    .line 182
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v2

    .line 184
    .local v2, "rowOffset":I
    const/4 v3, 0x0

    .line 185
    .local v3, "counterPosition":I
    move v4, v2

    .line 186
    .local v4, "patternStart":I
    const/4 v5, 0x0

    .line 187
    .local v5, "isWhite":Z
    array-length v6, p1

    .line 189
    .local v6, "patternLength":I
    move v7, v4

    move v4, v3

    move v3, v2

    .local v3, "i":I
    .local v4, "counterPosition":I
    .local v7, "patternStart":I
    :goto_10
    if-ge v3, v0, :cond_65

    .line 190
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    xor-int/2addr v8, v5

    const/4 v9, 0x1

    if-eqz v8, :cond_20

    .line 191
    aget v8, p1, v4

    add-int/2addr v8, v9

    aput v8, p1, v4

    goto :goto_62

    .line 193
    :cond_20
    add-int/lit8 v8, v6, -0x1

    if-ne v4, v8, :cond_59

    .line 195
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v8

    sget v10, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    const/4 v11, 0x2

    if-ne v8, v10, :cond_43

    sub-int v8, v3, v7

    div-int/2addr v8, v11

    sub-int v8, v7, v8

    .line 196
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8, v7, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 197
    new-array v8, v11, [I

    aput v7, v8, v1

    aput v3, v8, v9

    return-object v8

    .line 199
    :cond_43
    aget v8, p1, v1

    aget v10, p1, v9

    add-int/2addr v8, v10

    add-int/2addr v7, v8

    .line 200
    add-int/lit8 v8, v6, -0x2

    invoke-static {p1, v11, p1, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    add-int/lit8 v8, v6, -0x2

    aput v1, p1, v8

    .line 202
    add-int/lit8 v8, v6, -0x1

    aput v1, p1, v8

    .line 203
    add-int/lit8 v4, v4, -0x1

    goto :goto_5b

    .line 205
    :cond_59
    add-int/lit8 v4, v4, 0x1

    .line 207
    :goto_5b
    aput v9, p1, v4

    .line 208
    if-nez v5, :cond_60

    goto :goto_61

    :cond_60
    const/4 v9, 0x0

    :goto_61
    move v5, v9

    .line 189
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 211
    .end local v3    # "i":I
    :cond_65
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method private static patternToChar(I)C
    .registers 3
    .param p0, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 261
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_13

    .line 262
    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 260
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    .end local v0    # "i":I
    :cond_16
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static toNarrowWidePattern([I)I
    .registers 12
    .param p0, "counters"    # [I

    .line 217
    array-length v0, p0

    .line 218
    .local v0, "numCounters":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 221
    .local v2, "maxNarrowCounter":I
    :goto_4
    const v4, 0x7fffffff

    .line 222
    .local v4, "minCounter":I
    array-length v5, p0

    move v6, v4

    move v4, v3

    const/4 v3, 0x0

    .end local v4    # "minCounter":I
    .local v6, "minCounter":I
    :goto_b
    if-ge v3, v5, :cond_18

    aget v7, p0, v3

    .line 223
    .local v4, "counter":I
    move v4, v7

    if-ge v7, v6, :cond_15

    if-le v4, v2, :cond_15

    .line 224
    move v6, v4

    .line 222
    .end local v4    # "counter":I
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 227
    :cond_18
    move v2, v6

    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, "wideCounters":I
    const/4 v5, 0x0

    .line 230
    .local v5, "totalWideCountersWidth":I
    const/4 v7, 0x0

    .line 231
    .local v7, "pattern":I
    move v8, v7

    move v7, v5

    move v5, v3

    const/4 v3, 0x0

    .local v3, "i":I
    .local v5, "wideCounters":I
    .local v7, "totalWideCountersWidth":I
    .local v8, "pattern":I
    :goto_20
    if-ge v3, v0, :cond_34

    .line 232
    aget v9, p0, v3

    .line 233
    .restart local v4    # "counter":I
    move v4, v9

    if-le v9, v2, :cond_31

    .line 234
    add-int/lit8 v9, v0, -0x1

    sub-int/2addr v9, v3

    const/4 v10, 0x1

    shl-int v9, v10, v9

    or-int/2addr v8, v9

    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 236
    add-int/2addr v7, v4

    .line 231
    .end local v4    # "counter":I
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 239
    .end local v3    # "i":I
    :cond_34
    const/4 v3, 0x3

    const/4 v9, -0x1

    if-ne v5, v3, :cond_4d

    .line 243
    nop

    .local v1, "i":I
    :goto_39
    if-ge v1, v0, :cond_4c

    if-lez v5, :cond_4c

    .line 244
    aget v3, p0, v1

    .line 245
    .restart local v4    # "counter":I
    move v4, v3

    if-le v3, v2, :cond_49

    .line 246
    add-int/lit8 v5, v5, -0x1

    .line 248
    shl-int/lit8 v3, v4, 0x1

    if-lt v3, v7, :cond_49

    .line 249
    return v9

    .line 243
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 253
    .end local v1    # "i":I
    .end local v4    # "counter":I
    :cond_4c
    return v8

    .line 255
    .end local v6    # "minCounter":I
    .end local v7    # "totalWideCountersWidth":I
    .end local v8    # "pattern":I
    :cond_4d
    if-gt v5, v3, :cond_50

    .line 256
    return v9

    .line 218
    .end local v5    # "wideCounters":I
    :cond_50
    move v3, v4

    goto :goto_4
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 24
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 103
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    const/4 v4, 0x0

    move-object v5, v4

    .line 104
    .local v5, "theCounters":[I
    move-object v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([II)V

    .line 105
    iget-object v3, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object v7, v4

    .line 106
    .local v7, "result":Ljava/lang/StringBuilder;
    move-object v7, v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 108
    invoke-static {v2, v5}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I

    move-result-object v3

    .line 110
    .local v3, "start":[I
    const/4 v8, 0x1

    aget v9, v3, v8

    invoke-virtual {v2, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v9

    .line 111
    .local v9, "nextStart":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    const/4 v11, 0x0

    .line 116
    .local v10, "end":I
    :goto_26
    invoke-static {v2, v9, v5}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 117
    invoke-static {v5}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v12

    .line 118
    .local v11, "pattern":I
    move v11, v12

    if-ltz v12, :cond_100

    .line 121
    invoke-static {v11}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    move-result v12

    .line 122
    .local v12, "decodedChar":C
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    move v13, v9

    .line 124
    .local v13, "lastStart":I
    array-length v14, v5

    move v15, v9

    const/4 v9, 0x0

    .end local v9    # "nextStart":I
    .local v15, "nextStart":I
    :goto_3b
    if-ge v9, v14, :cond_44

    aget v16, v5, v9

    .line 125
    .local v16, "counter":I
    add-int v15, v15, v16

    .line 124
    .end local v16    # "counter":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 128
    :cond_44
    invoke-virtual {v2, v15}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v9

    .line 129
    .end local v11    # "pattern":I
    .end local v15    # "nextStart":I
    .restart local v9    # "nextStart":I
    const/16 v14, 0x2a

    if-ne v12, v14, :cond_fa

    .line 130
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 133
    const/4 v11, 0x0

    .line 134
    .local v11, "lastPatternSize":I
    array-length v14, v5

    move v15, v11

    const/4 v11, 0x0

    .end local v11    # "lastPatternSize":I
    .local v15, "lastPatternSize":I
    :goto_58
    if-ge v11, v14, :cond_61

    aget v16, v5, v11

    .line 135
    .restart local v16    # "counter":I
    add-int v15, v15, v16

    .line 134
    .end local v16    # "counter":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_58

    .line 137
    :cond_61
    sub-int v11, v9, v13

    sub-int/2addr v11, v15

    .line 140
    .local v11, "whiteSpaceAfterEnd":I
    if-eq v9, v10, :cond_70

    shl-int/lit8 v14, v11, 0x1

    if-lt v14, v15, :cond_6b

    goto :goto_70

    .line 141
    :cond_6b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 144
    :cond_70
    :goto_70
    iget-boolean v14, v0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    if-eqz v14, :cond_b0

    .line 145
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    sub-int/2addr v14, v8

    .line 146
    .local v14, "max":I
    const/16 v16, 0x0

    .line 147
    .local v16, "total":I
    move/from16 v17, v16

    const/16 v16, 0x0

    .local v16, "i":I
    .local v17, "total":I
    :goto_7f
    move/from16 v18, v16

    move/from16 v4, v18

    .end local v16    # "i":I
    .local v4, "i":I
    if-ge v4, v14, :cond_99

    .line 148
    const-string v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    iget-object v8, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int v17, v17, v6

    .line 147
    add-int/lit8 v16, v4, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_7f

    .line 150
    .end local v4    # "i":I
    :cond_99
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const-string v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    rem-int/lit8 v8, v17, 0x2b

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_ab

    .line 153
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_b0

    .line 151
    :cond_ab
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 156
    .end local v14    # "max":I
    .end local v17    # "total":I
    :cond_b0
    :goto_b0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_f3

    .line 162
    iget-boolean v4, v0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    if-eqz v4, :cond_bf

    .line 163
    invoke-static {v7}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c3

    .line 165
    :cond_bf
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "resultString":Ljava/lang/String;
    :goto_c3
    const/4 v6, 0x1

    aget v8, v3, v6

    const/4 v6, 0x0

    aget v14, v3, v6

    add-int/2addr v8, v14

    int-to-float v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    .line 169
    .local v6, "left":F
    int-to-float v14, v13

    int-to-float v0, v15

    div-float/2addr v0, v8

    add-float/2addr v14, v0

    .line 170
    .local v14, "right":F
    new-instance v0, Lcom/google/zxing/Result;

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    new-instance v2, Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v3

    .end local v3    # "start":[I
    .local v19, "start":[I
    int-to-float v3, v1

    invoke-direct {v2, v6, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v3, 0x0

    aput-object v2, v8, v3

    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v1

    invoke-direct {v2, v14, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/16 v16, 0x1

    aput-object v2, v8, v16

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    const/4 v3, 0x0

    invoke-direct {v0, v4, v3, v8, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v0

    .line 158
    .end local v4    # "resultString":Ljava/lang/String;
    .end local v6    # "left":F
    .end local v14    # "right":F
    .end local v19    # "start":[I
    .restart local v3    # "start":[I
    :cond_f3
    move-object/from16 v19, v3

    .end local v3    # "start":[I
    .restart local v19    # "start":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 111
    .end local v12    # "decodedChar":C
    .end local v13    # "lastStart":I
    .end local v15    # "lastPatternSize":I
    .end local v19    # "start":[I
    .restart local v3    # "start":[I
    .local v11, "pattern":I
    :cond_fa
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    .end local v3    # "start":[I
    .restart local v19    # "start":[I
    goto/16 :goto_26

    .line 119
    .end local v19    # "start":[I
    .restart local v3    # "start":[I
    :cond_100
    move-object/from16 v19, v3

    .end local v3    # "start":[I
    .restart local v19    # "start":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
