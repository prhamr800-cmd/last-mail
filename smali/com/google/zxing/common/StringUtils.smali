###### Class com.google.zxing.common.StringUtils (com.google.zxing.common.StringUtils)
.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 38
    const-string v0, "SJIS"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .registers 23
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 52
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_19

    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 53
    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 57
    :cond_19
    array-length v2, v0

    .line 58
    .local v2, "length":I
    const/4 v3, 0x1

    .line 59
    .local v3, "canBeISO88591":Z
    const/4 v4, 0x1

    .line 60
    .local v4, "canBeShiftJIS":Z
    const/4 v5, 0x1

    .line 61
    .local v5, "canBeUTF8":Z
    const/4 v6, 0x0

    .line 63
    .local v6, "utf8BytesLeft":I
    const/4 v7, 0x0

    .line 64
    .local v7, "utf2BytesChars":I
    const/4 v8, 0x0

    .line 65
    .local v8, "utf3BytesChars":I
    const/4 v9, 0x0

    .line 66
    .local v9, "utf4BytesChars":I
    const/4 v10, 0x0

    .line 68
    .local v10, "sjisBytesLeft":I
    const/4 v11, 0x0

    .line 70
    .local v11, "sjisKatakanaChars":I
    const/4 v12, 0x0

    .line 71
    .local v12, "sjisCurKatakanaWordLength":I
    const/4 v13, 0x0

    .line 72
    .local v13, "sjisCurDoubleBytesWordLength":I
    const/4 v14, 0x0

    .line 73
    .local v14, "sjisMaxKatakanaWordLength":I
    const/4 v15, 0x0

    .line 76
    .local v15, "sjisMaxDoubleBytesWordLength":I
    const/16 v16, 0x0

    .line 78
    .local v16, "isoHighOther":I
    array-length v1, v0

    move/from16 v17, v3

    .end local v3    # "canBeISO88591":Z
    .local v17, "canBeISO88591":Z
    const/16 v18, 0x0

    const/4 v3, 0x3

    const/16 v19, 0x1

    if-le v1, v3, :cond_47

    aget-byte v1, v0, v18

    const/16 v3, -0x11

    if-ne v1, v3, :cond_47

    aget-byte v1, v0, v19

    const/16 v3, -0x45

    if-ne v1, v3, :cond_47

    const/4 v1, 0x2

    aget-byte v3, v0, v1

    const/16 v1, -0x41

    if-ne v3, v1, :cond_47

    goto :goto_49

    :cond_47
    const/16 v19, 0x0

    :goto_49
    move/from16 v1, v19

    .line 83
    .local v1, "utf8bom":Z
    nop

    .local v18, "i":I
    :goto_4c
    move/from16 v3, v18

    .line 84
    .end local v18    # "i":I
    .local v3, "i":I
    if-ge v3, v2, :cond_106

    if-nez v17, :cond_5b

    if-nez v4, :cond_5b

    if-eqz v5, :cond_57

    goto :goto_5b

    .line 171
    .end local v3    # "i":I
    :cond_57
    move/from16 v20, v2

    goto/16 :goto_108

    .line 87
    .restart local v3    # "i":I
    :cond_5b
    :goto_5b
    move/from16 v20, v2

    .end local v2    # "length":I
    .local v20, "length":I
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    .line 90
    .local v2, "value":I
    if-eqz v5, :cond_91

    .line 91
    if-lez v6, :cond_6c

    .line 92
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_8f

    .line 95
    add-int/lit8 v6, v6, -0x1

    goto :goto_91

    .line 97
    :cond_6c
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_91

    .line 98
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_8f

    .line 101
    add-int/lit8 v6, v6, 0x1

    .line 102
    and-int/lit8 v0, v2, 0x20

    if-nez v0, :cond_7d

    .line 103
    add-int/lit8 v7, v7, 0x1

    goto :goto_91

    .line 105
    :cond_7d
    add-int/lit8 v6, v6, 0x1

    .line 106
    and-int/lit8 v0, v2, 0x10

    if-nez v0, :cond_86

    .line 107
    add-int/lit8 v8, v8, 0x1

    goto :goto_91

    .line 109
    :cond_86
    add-int/lit8 v6, v6, 0x1

    .line 110
    and-int/lit8 v0, v2, 0x8

    if-nez v0, :cond_8f

    .line 111
    add-int/lit8 v9, v9, 0x1

    goto :goto_91

    .line 113
    :cond_8f
    const/4 v0, 0x0

    .line 124
    move v5, v0

    :cond_91
    :goto_91
    const/16 v0, 0x7f

    if-eqz v17, :cond_b1

    .line 125
    if-le v2, v0, :cond_9f

    const/16 v0, 0xa0

    if-ge v2, v0, :cond_9f

    .line 126
    const/4 v0, 0x0

    .line 139
    move/from16 v17, v0

    goto :goto_b1

    .line 127
    :cond_9f
    const/16 v0, 0x9f

    if-le v2, v0, :cond_b1

    .line 128
    const/16 v0, 0xc0

    if-lt v2, v0, :cond_af

    const/16 v0, 0xd7

    if-eq v2, v0, :cond_af

    const/16 v0, 0xf7

    if-ne v2, v0, :cond_b1

    .line 129
    :cond_af
    add-int/lit8 v16, v16, 0x1

    .line 139
    :cond_b1
    :goto_b1
    if-eqz v4, :cond_fe

    .line 140
    if-lez v10, :cond_c8

    .line 141
    const/16 v0, 0x40

    if-lt v2, v0, :cond_c5

    const/16 v0, 0x7f

    if-eq v2, v0, :cond_c5

    const/16 v0, 0xfc

    if-le v2, v0, :cond_c2

    goto :goto_c5

    .line 144
    :cond_c2
    add-int/lit8 v10, v10, -0x1

    goto :goto_fe

    .line 142
    :cond_c5
    :goto_c5
    const/4 v0, 0x0

    .line 85
    .end local v2    # "value":I
    :goto_c6
    move v4, v0

    goto :goto_fe

    .line 146
    .restart local v2    # "value":I
    :cond_c8
    const/16 v0, 0x80

    if-eq v2, v0, :cond_fc

    const/16 v0, 0xa0

    if-eq v2, v0, :cond_fc

    const/16 v0, 0xef

    if-le v2, v0, :cond_d5

    goto :goto_fc

    .line 148
    :cond_d5
    const/16 v0, 0xa0

    if-le v2, v0, :cond_e8

    const/16 v0, 0xe0

    if-ge v2, v0, :cond_e8

    .line 149
    add-int/lit8 v11, v11, 0x1

    .line 150
    const/4 v0, 0x0

    .line 151
    .end local v13    # "sjisCurDoubleBytesWordLength":I
    .local v0, "sjisCurDoubleBytesWordLength":I
    add-int/lit8 v12, v12, 0x1

    .line 152
    if-le v12, v14, :cond_e6

    .line 153
    move v13, v12

    .line 85
    move v14, v13

    .end local v0    # "sjisCurDoubleBytesWordLength":I
    .end local v2    # "value":I
    .restart local v13    # "sjisCurDoubleBytesWordLength":I
    :cond_e6
    move v13, v0

    goto :goto_fe

    .line 155
    .restart local v2    # "value":I
    :cond_e8
    const/16 v0, 0x7f

    if-le v2, v0, :cond_f7

    .line 156
    add-int/lit8 v10, v10, 0x1

    .line 158
    const/4 v0, 0x0

    .line 159
    .end local v12    # "sjisCurKatakanaWordLength":I
    .local v0, "sjisCurKatakanaWordLength":I
    add-int/lit8 v13, v13, 0x1

    .line 160
    if-le v13, v15, :cond_f5

    .line 161
    move v12, v13

    .line 85
    move v15, v12

    .end local v0    # "sjisCurKatakanaWordLength":I
    .end local v2    # "value":I
    .restart local v12    # "sjisCurKatakanaWordLength":I
    :cond_f5
    move v12, v0

    goto :goto_fe

    .line 165
    .restart local v2    # "value":I
    :cond_f7
    const/4 v0, 0x0

    .line 166
    .end local v12    # "sjisCurKatakanaWordLength":I
    .restart local v0    # "sjisCurKatakanaWordLength":I
    const/4 v2, 0x0

    .line 85
    move v12, v0

    move v13, v2

    goto :goto_fe

    .line 147
    .end local v0    # "sjisCurKatakanaWordLength":I
    .restart local v12    # "sjisCurKatakanaWordLength":I
    :cond_fc
    :goto_fc
    const/4 v0, 0x0

    goto :goto_c6

    .line 85
    .end local v2    # "value":I
    :cond_fe
    :goto_fe
    add-int/lit8 v18, v3, 0x1

    .line 83
    move/from16 v2, v20

    move-object/from16 v0, p0

    goto/16 :goto_4c

    .line 171
    .end local v3    # "i":I
    .end local v20    # "length":I
    .local v2, "length":I
    :cond_106
    move/from16 v20, v2

    .end local v2    # "length":I
    .restart local v20    # "length":I
    :goto_108
    if-eqz v5, :cond_10d

    if-lez v6, :cond_10d

    .line 172
    const/4 v5, 0x0

    .line 174
    :cond_10d
    if-eqz v4, :cond_112

    if-lez v10, :cond_112

    .line 175
    const/4 v4, 0x0

    .line 179
    :cond_112
    if-eqz v5, :cond_11e

    if-nez v1, :cond_11b

    add-int v0, v7, v8

    add-int/2addr v0, v9

    if-lez v0, :cond_11e

    .line 180
    :cond_11b
    const-string v0, "UTF8"

    return-object v0

    .line 183
    :cond_11e
    if-eqz v4, :cond_12c

    sget-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v0, :cond_129

    const/4 v0, 0x3

    if-ge v14, v0, :cond_129

    if-lt v15, v0, :cond_12c

    .line 184
    :cond_129
    const-string v0, "SJIS"

    return-object v0

    .line 191
    :cond_12c
    if-eqz v17, :cond_145

    if-eqz v4, :cond_145

    .line 192
    const/4 v0, 0x2

    if-ne v14, v0, :cond_139

    if-eq v11, v0, :cond_136

    goto :goto_139

    :cond_136
    move/from16 v2, v20

    goto :goto_13f

    :cond_139
    :goto_139
    mul-int/lit8 v0, v16, 0xa

    move/from16 v2, v20

    .end local v20    # "length":I
    .restart local v2    # "length":I
    if-lt v0, v2, :cond_142

    :goto_13f
    const-string v0, "SJIS"

    return-object v0

    :cond_142
    const-string v0, "ISO8859_1"

    return-object v0

    .line 197
    .end local v2    # "length":I
    .restart local v20    # "length":I
    :cond_145
    move/from16 v2, v20

    .end local v20    # "length":I
    .restart local v2    # "length":I
    if-eqz v17, :cond_14c

    .line 198
    const-string v0, "ISO8859_1"

    return-object v0

    .line 200
    :cond_14c
    if-eqz v4, :cond_151

    .line 201
    const-string v0, "SJIS"

    return-object v0

    .line 203
    :cond_151
    if-eqz v5, :cond_156

    .line 204
    const-string v0, "UTF8"

    return-object v0

    .line 207
    :cond_156
    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    return-object v0
.end method
