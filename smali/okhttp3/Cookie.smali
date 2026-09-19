###### Class okhttp3.Cookie (okhttp3.Cookie)
.class public final Lokhttp3/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cookie$Builder;
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-string v0, "(\\d{2,4})[^\\d]*"

    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "(\\d{1,2})[^\\d]*"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "expiresAt"    # J
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "secure"    # Z
    .param p8, "httpOnly"    # Z
    .param p9, "hostOnly"    # Z
    .param p10, "persistent"    # Z

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 71
    iput-wide p3, p0, Lokhttp3/Cookie;->expiresAt:J

    .line 72
    iput-object p5, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 74
    iput-boolean p7, p0, Lokhttp3/Cookie;->secure:Z

    .line 75
    iput-boolean p8, p0, Lokhttp3/Cookie;->httpOnly:Z

    .line 76
    iput-boolean p9, p0, Lokhttp3/Cookie;->hostOnly:Z

    .line 77
    iput-boolean p10, p0, Lokhttp3/Cookie;->persistent:Z

    .line 78
    return-void
.end method

.method constructor <init>(Lokhttp3/Cookie$Builder;)V
    .registers 4
    .param p1, "builder"    # Lokhttp3/Cookie$Builder;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 82
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 83
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 85
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 87
    iget-wide v0, p1, Lokhttp3/Cookie$Builder;->expiresAt:J

    iput-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    .line 88
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 90
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->secure:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    .line 91
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->httpOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    .line 92
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->persistent:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    .line 93
    iget-boolean v0, p1, Lokhttp3/Cookie$Builder;->hostOnly:Z

    iput-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    .line 94
    return-void

    .line 83
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .registers 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "invert"    # Z

    .line 389
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_3b

    .line 390
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 391
    .local v1, "c":I
    const/16 v2, 0x20

    if-ge v1, v2, :cond_f

    const/16 v2, 0x9

    if-ne v1, v2, :cond_32

    :cond_f
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_32

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1b

    const/16 v2, 0x39

    if-le v1, v2, :cond_32

    :cond_1b
    const/16 v2, 0x61

    if-lt v1, v2, :cond_23

    const/16 v2, 0x7a

    if-le v1, v2, :cond_32

    :cond_23
    const/16 v2, 0x41

    if-lt v1, v2, :cond_2b

    const/16 v2, 0x5a

    if-le v1, v2, :cond_32

    :cond_2b
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_30

    goto :goto_32

    :cond_30
    const/4 v2, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v2, 0x1

    .line 396
    .local v2, "dateCharacter":Z
    :goto_33
    xor-int/lit8 v3, p3, 0x1

    if-ne v2, v3, :cond_38

    return v0

    .line 389
    .end local v1    # "c":I
    .end local v2    # "dateCharacter":Z
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    .end local v0    # "i":I
    :cond_3b
    return p2
.end method

.method private static domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "urlHost"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 187
    return v1

    .line 190
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_27

    .line 192
    invoke-static {p0}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 193
    return v1

    .line 196
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method static parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 33
    .param p0, "currentTimeMillis"    # J
    .param p2, "url"    # Lokhttp3/HttpUrl;
    .param p3, "setCookie"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 223
    move-object/from16 v1, p3

    const/4 v0, 0x0

    .line 224
    .local v0, "pos":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 225
    .local v2, "limit":I
    const/16 v3, 0x3b

    invoke-static {v1, v0, v2, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    .line 227
    .local v4, "cookiePairEnd":I
    const/16 v5, 0x3d

    invoke-static {v1, v0, v4, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v6

    .line 228
    .local v6, "pairEqualsSign":I
    const/4 v7, 0x0

    if-ne v6, v4, :cond_17

    return-object v7

    .line 230
    :cond_17
    invoke-static {v1, v0, v6}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v19

    .line 231
    .local v19, "cookieName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_176

    invoke-static/range {v19 .. v19}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2a

    goto/16 :goto_176

    .line 233
    :cond_2a
    add-int/lit8 v8, v6, 0x1

    invoke-static {v1, v8, v4}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v20

    .line 234
    .local v20, "cookieValue":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lokhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_37

    return-object v7

    .line 236
    :cond_37
    const-wide v8, 0xe677d21fdbffL

    .line 237
    .local v8, "expiresAt":J
    const-wide/16 v10, -0x1

    .line 238
    .local v10, "deltaSeconds":J
    const/4 v12, 0x0

    .line 239
    .local v12, "domain":Ljava/lang/String;
    const/4 v13, 0x0

    .line 240
    .local v13, "path":Ljava/lang/String;
    const/4 v14, 0x0

    .line 241
    .local v14, "secureOnly":Z
    const/4 v15, 0x0

    .line 242
    .local v15, "httpOnly":Z
    const/16 v16, 0x1

    .line 243
    .local v16, "hostOnly":Z
    const/16 v17, 0x0

    .line 245
    .local v17, "persistent":Z
    add-int/lit8 v0, v4, 0x1

    .line 246
    move-wide/from16 v21, v10

    move-object v10, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v23, v17

    move v13, v0

    .end local v0    # "pos":I
    .end local v14    # "secureOnly":Z
    .end local v15    # "httpOnly":Z
    .end local v16    # "hostOnly":Z
    .end local v17    # "persistent":Z
    .local v10, "path":Ljava/lang/String;
    .local v13, "pos":I
    .local v21, "deltaSeconds":J
    .local v23, "persistent":Z
    .local v24, "secureOnly":Z
    .local v25, "httpOnly":Z
    .local v26, "hostOnly":Z
    :goto_54
    if-ge v13, v2, :cond_d7

    .line 247
    invoke-static {v1, v13, v2, v3}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v11

    .line 249
    .local v11, "attributePairEnd":I
    invoke-static {v1, v13, v11, v5}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v3

    .line 250
    .local v3, "attributeEqualsSign":I
    invoke-static {v1, v13, v3}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "attributeName":Ljava/lang/String;
    if-ge v3, v11, :cond_6b

    .line 252
    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v7, v11}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    goto :goto_6d

    .line 253
    :cond_6b
    const-string v7, ""

    .line 255
    .local v7, "attributeValue":Ljava/lang/String;
    :goto_6d
    const-string v0, "expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 257
    :try_start_75
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v7, v1, v0}, Lokhttp3/Cookie;->parseExpires(Ljava/lang/String;II)J

    move-result-wide v14
    :try_end_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_7e} :catch_82

    move-wide v8, v14

    .line 258
    const/16 v23, 0x1

    .line 261
    :goto_81
    goto :goto_cb

    .line 259
    :catch_82
    move-exception v0

    goto :goto_81

    .line 262
    :cond_84
    const-string v0, "max-age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 264
    :try_start_8c
    invoke-static {v7}, Lokhttp3/Cookie;->parseMaxAge(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_90
    .catch Ljava/lang/NumberFormatException; {:try_start_8c .. :try_end_90} :catch_96

    .line 265
    .end local v21    # "deltaSeconds":J
    .local v14, "deltaSeconds":J
    const/16 v23, 0x1

    .line 268
    nop

    .line 284
    move-wide/from16 v21, v14

    goto :goto_cb

    .line 266
    .end local v14    # "deltaSeconds":J
    .restart local v21    # "deltaSeconds":J
    :catch_96
    move-exception v0

    .line 268
    goto :goto_cb

    .line 269
    :cond_98
    const-string v0, "domain"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 271
    :try_start_a0
    invoke-static {v7}, Lokhttp3/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a0 .. :try_end_a4} :catch_a9

    .line 272
    .end local v12    # "domain":Ljava/lang/String;
    .local v0, "domain":Ljava/lang/String;
    const/16 v26, 0x0

    .line 275
    nop

    .line 284
    move-object v12, v0

    goto :goto_cb

    .line 273
    .end local v0    # "domain":Ljava/lang/String;
    .restart local v12    # "domain":Ljava/lang/String;
    :catch_a9
    move-exception v0

    .line 275
    goto :goto_cb

    .line 276
    :cond_ab
    const-string v0, "path"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 277
    move-object v0, v7

    .line 284
    move-object v10, v0

    goto :goto_cb

    .line 278
    :cond_b6
    const-string v0, "secure"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 279
    const/16 v24, 0x1

    goto :goto_cb

    .line 280
    :cond_c1
    const-string v0, "httponly"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 281
    const/16 v25, 0x1

    .line 284
    :cond_cb
    :goto_cb
    add-int/lit8 v13, v11, 0x1

    .line 285
    .end local v3    # "attributeEqualsSign":I
    .end local v5    # "attributeName":Ljava/lang/String;
    .end local v7    # "attributeValue":Ljava/lang/String;
    .end local v11    # "attributePairEnd":I
    nop

    .line 246
    move-object/from16 v1, p3

    const/16 v3, 0x3b

    const/16 v5, 0x3d

    const/4 v7, 0x0

    goto/16 :goto_54

    .line 289
    :cond_d7
    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v0, v21, v14

    if-nez v0, :cond_e2

    .line 290
    const-wide/high16 v7, -0x8000000000000000L

    .line 302
    .end local v8    # "expiresAt":J
    .local v27, "expiresAt":J
    :cond_df
    :goto_df
    move-wide/from16 v27, v7

    goto :goto_113

    .line 291
    .end local v27    # "expiresAt":J
    .restart local v8    # "expiresAt":J
    :cond_e2
    const-wide/16 v14, -0x1

    cmp-long v0, v21, v14

    if-eqz v0, :cond_111

    .line 292
    const-wide v14, 0x20c49ba5e353f7L

    cmp-long v0, v21, v14

    if-gtz v0, :cond_f6

    .line 293
    const-wide/16 v14, 0x3e8

    mul-long v14, v14, v21

    goto :goto_fb

    .line 294
    :cond_f6
    const-wide v14, 0x7fffffffffffffffL

    .line 295
    .local v14, "deltaMilliseconds":J
    :goto_fb
    const/4 v0, 0x0

    add-long v7, p0, v14

    .line 296
    .end local v8    # "expiresAt":J
    .local v7, "expiresAt":J
    cmp-long v0, v7, p0

    if-ltz v0, :cond_10b

    const-wide v16, 0xe677d21fdbffL

    cmp-long v0, v7, v16

    if-lez v0, :cond_df

    .line 297
    :cond_10b
    const-wide v7, 0xe677d21fdbffL

    goto :goto_df

    .line 302
    .end local v7    # "expiresAt":J
    .end local v14    # "deltaMilliseconds":J
    .restart local v8    # "expiresAt":J
    :cond_111
    move-wide/from16 v27, v8

    .end local v8    # "expiresAt":J
    .restart local v27    # "expiresAt":J
    :goto_113
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "urlHost":Ljava/lang/String;
    if-nez v12, :cond_11d

    .line 304
    move-object v1, v0

    .line 310
    move-object v3, v1

    const/4 v1, 0x0

    goto :goto_127

    .line 305
    :cond_11d
    invoke-static {v0, v12}, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_125

    .line 306
    const/4 v1, 0x0

    return-object v1

    .line 310
    :cond_125
    const/4 v1, 0x0

    move-object v3, v12

    .end local v12    # "domain":Ljava/lang/String;
    .local v3, "domain":Ljava/lang/String;
    :goto_127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v5, v7, :cond_13c

    .line 311
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v5

    invoke-virtual {v5, v3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_13c

    .line 312
    return-object v1

    .line 317
    :cond_13c
    if-eqz v10, :cond_149

    const-string v1, "/"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_147

    goto :goto_149

    .line 323
    :cond_147
    move-object v1, v10

    goto :goto_15e

    .line 318
    :cond_149
    :goto_149
    invoke-virtual/range {p2 .. p2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "encodedPath":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 320
    .local v5, "lastSlash":I
    if-eqz v5, :cond_15b

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_15d

    :cond_15b
    const-string v7, "/"

    :goto_15d
    move-object v1, v7

    .line 323
    .end local v5    # "lastSlash":I
    .end local v10    # "path":Ljava/lang/String;
    .local v1, "path":Ljava/lang/String;
    :goto_15e
    new-instance v5, Lokhttp3/Cookie;

    move-object v8, v5

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-wide/from16 v11, v27

    move v7, v13

    .end local v13    # "pos":I
    .local v7, "pos":I
    move-object v13, v3

    move-object v14, v1

    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v23

    invoke-direct/range {v8 .. v18}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v5

    .line 231
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "domain":Ljava/lang/String;
    .end local v7    # "pos":I
    .end local v20    # "cookieValue":Ljava/lang/String;
    .end local v21    # "deltaSeconds":J
    .end local v23    # "persistent":Z
    .end local v24    # "secureOnly":Z
    .end local v25    # "httpOnly":Z
    .end local v26    # "hostOnly":Z
    .end local v27    # "expiresAt":J
    .local v0, "pos":I
    :cond_176
    :goto_176
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;
    .registers 4
    .param p0, "url"    # Lokhttp3/HttpUrl;
    .param p1, "setCookie"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lokhttp3/Cookie;->parse(JLokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public static parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;
    .registers 8
    .param p0, "url"    # Lokhttp3/HttpUrl;
    .param p1, "headers"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 441
    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 442
    .local v0, "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 444
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_c
    if-ge v2, v3, :cond_29

    .line 445
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v4

    .line 446
    .local v4, "cookie":Lokhttp3/Cookie;
    if-nez v4, :cond_1b

    .end local v4    # "cookie":Lokhttp3/Cookie;
    goto :goto_26

    .line 447
    .restart local v4    # "cookie":Lokhttp3/Cookie;
    :cond_1b
    if-nez v1, :cond_23

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 448
    :cond_23
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    .end local v4    # "cookie":Lokhttp3/Cookie;
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 451
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_29
    if-eqz v1, :cond_30

    .line 452
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_34

    .line 453
    :cond_30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 451
    :goto_34
    return-object v2
.end method

.method private static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 426
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 429
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 432
    :cond_15
    invoke-static {p0}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "canonicalDomain":Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 436
    return-object v0

    .line 434
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 427
    .end local v0    # "canonicalDomain":Ljava/lang/String;
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static parseExpires(Ljava/lang/String;II)J
    .registers 16
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 329
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result p1

    .line 331
    const/4 v1, -0x1

    .line 332
    .local v1, "hour":I
    const/4 v2, -0x1

    .line 333
    .local v2, "minute":I
    const/4 v3, -0x1

    .line 334
    .local v3, "second":I
    const/4 v4, -0x1

    .line 335
    .local v4, "dayOfMonth":I
    const/4 v5, -0x1

    .line 336
    .local v5, "month":I
    const/4 v6, -0x1

    .line 337
    .local v6, "year":I
    sget-object v7, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 339
    .local v7, "matcher":Ljava/util/regex/Matcher;
    :goto_11
    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ge p1, p2, :cond_a3

    .line 340
    add-int/lit8 v11, p1, 0x1

    invoke-static {p0, v11, p2, v10}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v11

    .line 341
    .local v11, "end":I
    invoke-virtual {v7, p1, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 343
    if-ne v1, v9, :cond_47

    sget-object v12, Lokhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_47

    .line 344
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 345
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 346
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_9b

    .line 347
    :cond_47
    if-ne v4, v9, :cond_5e

    sget-object v8, Lokhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 348
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_9b

    .line 349
    :cond_5e
    if-ne v5, v9, :cond_85

    sget-object v8, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_85

    .line 350
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, "monthString":Ljava/lang/String;
    sget-object v9, Lokhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    div-int/lit8 v9, v9, 0x4

    .line 352
    .end local v5    # "month":I
    .end local v8    # "monthString":Ljava/lang/String;
    .local v9, "month":I
    nop

    .line 356
    move v5, v9

    goto :goto_9b

    .line 352
    .end local v9    # "month":I
    .restart local v5    # "month":I
    :cond_85
    if-ne v6, v9, :cond_9b

    sget-object v8, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 353
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 356
    :cond_9b
    :goto_9b
    add-int/lit8 v8, v11, 0x1

    invoke-static {p0, v8, p2, v0}, Lokhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result p1

    .line 357
    .end local v11    # "end":I
    goto/16 :goto_11

    .line 360
    :cond_a3
    const/16 v11, 0x46

    if-lt v6, v11, :cond_ad

    const/16 v11, 0x63

    if-gt v6, v11, :cond_ad

    add-int/lit16 v6, v6, 0x76c

    .line 361
    :cond_ad
    if-ltz v6, :cond_b5

    const/16 v11, 0x45

    if-gt v6, v11, :cond_b5

    add-int/lit16 v6, v6, 0x7d0

    .line 365
    :cond_b5
    const/16 v11, 0x641

    if-lt v6, v11, :cond_11e

    .line 366
    if-eq v5, v9, :cond_118

    .line 367
    if-lt v4, v10, :cond_112

    const/16 v9, 0x1f

    if-gt v4, v9, :cond_112

    .line 368
    if-ltz v1, :cond_10c

    const/16 v9, 0x17

    if-gt v1, v9, :cond_10c

    .line 369
    if-ltz v2, :cond_106

    const/16 v9, 0x3b

    if-gt v2, v9, :cond_106

    .line 370
    if-ltz v3, :cond_100

    if-gt v3, v9, :cond_100

    .line 372
    new-instance v9, Ljava/util/GregorianCalendar;

    sget-object v11, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v9, v11}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 373
    .local v9, "calendar":Ljava/util/Calendar;
    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 374
    invoke-virtual {v9, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 375
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 376
    const/4 v8, 0x5

    invoke-virtual {v9, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 377
    const/16 v8, 0xb

    invoke-virtual {v9, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 378
    const/16 v8, 0xc

    invoke-virtual {v9, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 379
    const/16 v8, 0xd

    invoke-virtual {v9, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 380
    const/16 v8, 0xe

    invoke-virtual {v9, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 381
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    return-wide v10

    .line 370
    .end local v9    # "calendar":Ljava/util/Calendar;
    :cond_100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 369
    :cond_106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 368
    :cond_10c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 367
    :cond_112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 366
    :cond_118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 365
    :cond_11e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 410
    const-wide/high16 v0, -0x8000000000000000L

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_f

    .line 411
    .local v2, "parsed":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_d

    goto :goto_e

    :cond_d
    move-wide v0, v2

    :goto_e
    return-wide v0

    .line 412
    .end local v2    # "parsed":J
    :catch_f
    move-exception v2

    .line 414
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "-?\\d+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 415
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_26

    :cond_21
    const-wide v0, 0x7fffffffffffffffL

    :goto_26
    return-wide v0

    .line 417
    :cond_27
    throw v2
.end method

.method private static pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z
    .registers 6
    .param p0, "url"    # Lokhttp3/HttpUrl;
    .param p1, "path"    # Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "urlPath":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 203
    return v2

    .line 206
    :cond_c
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 207
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v2

    .line 208
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_28

    return v2

    .line 211
    :cond_28
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public domain()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 586
    instance-of v0, p1, Lokhttp3/Cookie;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 587
    :cond_6
    move-object v0, p1

    check-cast v0, Lokhttp3/Cookie;

    .line 588
    .local v0, "that":Lokhttp3/Cookie;
    iget-object v2, v0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, v0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    .line 589
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, v0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    .line 590
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, v0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    iget-object v3, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    .line 591
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-wide v2, v0, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_53

    iget-boolean v2, v0, Lokhttp3/Cookie;->secure:Z

    iget-boolean v3, p0, Lokhttp3/Cookie;->secure:Z

    if-ne v2, v3, :cond_53

    iget-boolean v2, v0, Lokhttp3/Cookie;->httpOnly:Z

    iget-boolean v3, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-ne v2, v3, :cond_53

    iget-boolean v2, v0, Lokhttp3/Cookie;->persistent:Z

    iget-boolean v3, p0, Lokhttp3/Cookie;->persistent:Z

    if-ne v2, v3, :cond_53

    iget-boolean v2, v0, Lokhttp3/Cookie;->hostOnly:Z

    iget-boolean v3, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-ne v2, v3, :cond_53

    const/4 v1, 0x1

    nop

    .line 588
    :cond_53
    return v1
.end method

.method public expiresAt()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lokhttp3/Cookie;->expiresAt:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .line 600
    const/16 v0, 0x11

    .line 601
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 602
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 603
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 604
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 605
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    iget-wide v4, p0, Lokhttp3/Cookie;->expiresAt:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 606
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lokhttp3/Cookie;->secure:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 607
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lokhttp3/Cookie;->httpOnly:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 608
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lokhttp3/Cookie;->persistent:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 609
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lokhttp3/Cookie;->hostOnly:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 610
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public hostOnly()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    return v0
.end method

.method public httpOnly()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Lokhttp3/Cookie;->httpOnly:Z

    return v0
.end method

.method public matches(Lokhttp3/HttpUrl;)Z
    .registers 5
    .param p1, "url"    # Lokhttp3/HttpUrl;

    .line 173
    iget-boolean v0, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-eqz v0, :cond_f

    .line 174
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_19

    .line 175
    :cond_f
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/Cookie;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 176
    .local v0, "domainMatch":Z
    :goto_19
    const/4 v1, 0x0

    if-nez v0, :cond_1d

    return v1

    .line 178
    :cond_1d
    iget-object v2, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {p1, v2}, Lokhttp3/Cookie;->pathMatch(Lokhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 180
    :cond_26
    iget-boolean v2, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v2, :cond_31

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v2

    if-nez v2, :cond_31

    return v1

    .line 182
    :cond_31
    const/4 v1, 0x1

    return v1
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public persistent()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Lokhttp3/Cookie;->persistent:Z

    return v0
.end method

.method public secure()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lokhttp3/Cookie;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .registers 8
    .param p1, "forObsoleteRfc2965"    # Z

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    iget-object v1, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-boolean v1, p0, Lokhttp3/Cookie;->persistent:Z

    if-eqz v1, :cond_39

    .line 557
    iget-wide v1, p0, Lokhttp3/Cookie;->expiresAt:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_26

    .line 558
    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 560
    :cond_26
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lokhttp3/Cookie;->expiresAt:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lokhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_39
    :goto_39
    iget-boolean v1, p0, Lokhttp3/Cookie;->hostOnly:Z

    if-nez v1, :cond_4e

    .line 565
    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    if-eqz p1, :cond_49

    .line 567
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_49
    iget-object v1, p0, Lokhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_4e
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    iget-boolean v1, p0, Lokhttp3/Cookie;->secure:Z

    if-eqz v1, :cond_61

    .line 575
    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_61
    iget-boolean v1, p0, Lokhttp3/Cookie;->httpOnly:Z

    if-eqz v1, :cond_6a

    .line 579
    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public value()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lokhttp3/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method

###### Class okhttp3.Cookie.Builder (okhttp3.Cookie$Builder)
.class public final Lokhttp3/Cookie$Builder;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field domain:Ljava/lang/String;

.field expiresAt:J

.field hostOnly:Z

.field httpOnly:Z

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field persistent:Z

.field secure:Z

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    const-wide v0, 0xe677d21fdbffL

    iput-wide v0, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 465
    const-string v0, "/"

    iput-object v0, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-void
.end method

.method private domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;
    .registers 7
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "hostOnly"    # Z

    .line 510
    if-eqz p1, :cond_25

    .line 511
    invoke-static {p1}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "canonicalDomain":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 515
    iput-object v0, p0, Lokhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    .line 516
    iput-boolean p2, p0, Lokhttp3/Cookie$Builder;->hostOnly:Z

    .line 517
    return-object p0

    .line 513
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    .end local v0    # "canonicalDomain":Ljava/lang/String;
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lokhttp3/Cookie;
    .registers 2

    .line 537
    new-instance v0, Lokhttp3/Cookie;

    invoke-direct {v0, p0}, Lokhttp3/Cookie;-><init>(Lokhttp3/Cookie$Builder;)V

    return-object v0
.end method

.method public domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .registers 3
    .param p1, "domain"    # Ljava/lang/String;

    .line 498
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public expiresAt(J)Lokhttp3/Cookie$Builder;
    .registers 6
    .param p1, "expiresAt"    # J

    .line 486
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    const-wide/high16 p1, -0x8000000000000000L

    .line 487
    :cond_8
    const-wide v0, 0xe677d21fdbffL

    cmp-long v2, p1, v0

    if-lez v2, :cond_16

    const-wide p1, 0xe677d21fdbffL

    .line 488
    :cond_16
    iput-wide p1, p0, Lokhttp3/Cookie$Builder;->expiresAt:J

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->persistent:Z

    .line 490
    return-object p0
.end method

.method public hostOnlyDomain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .registers 3
    .param p1, "domain"    # Ljava/lang/String;

    .line 506
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lokhttp3/Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public httpOnly()Lokhttp3/Cookie$Builder;
    .registers 2

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->httpOnly:Z

    .line 533
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 472
    if-eqz p1, :cond_17

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 474
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->name:Ljava/lang/String;

    .line 475
    return-object p0

    .line 473
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is not trimmed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public path(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 521
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 522
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->path:Ljava/lang/String;

    .line 523
    return-object p0

    .line 521
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path must start with \'/\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public secure()Lokhttp3/Cookie$Builder;
    .registers 2

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/Cookie$Builder;->secure:Z

    .line 528
    return-object p0
.end method

.method public value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 479
    if-eqz p1, :cond_18

    .line 480
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 481
    iput-object p1, p0, Lokhttp3/Cookie$Builder;->value:Ljava/lang/String;

    .line 482
    return-object p0

    .line 480
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value is not trimmed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
