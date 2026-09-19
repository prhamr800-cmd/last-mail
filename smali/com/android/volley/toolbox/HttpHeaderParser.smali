###### Class com.android.volley.toolbox.HttpHeaderParser (com.android.volley.toolbox.HttpHeaderParser)
.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# static fields
.field private static final DEFAULT_CONTENT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final RFC1123_FORMAT:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatEpochAsRfc1123(J)Ljava/lang/String;
    .registers 4
    .param p0, "epoch"    # J

    .line 152
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->newRfc1123Formatter()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static newRfc1123Formatter()Ljava/text/SimpleDateFormat;
    .registers 3

    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 158
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 159
    return-object v0
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .registers 34
    .param p0, "response"    # Lcom/android/volley/NetworkResponse;

    .line 52
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 54
    .local v2, "now":J
    iget-object v4, v1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 56
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v5, 0x0

    .line 57
    .local v5, "serverDate":J
    const-wide/16 v7, 0x0

    .line 58
    .local v7, "lastModified":J
    const-wide/16 v9, 0x0

    .line 59
    .local v9, "serverExpires":J
    const-wide/16 v11, 0x0

    .line 60
    .local v11, "softExpire":J
    const-wide/16 v13, 0x0

    .line 61
    .local v13, "finalExpire":J
    const-wide/16 v15, 0x0

    .line 62
    .local v15, "maxAge":J
    const-wide/16 v17, 0x0

    .line 63
    .local v17, "staleWhileRevalidate":J
    const/4 v0, 0x0

    .line 64
    .local v0, "hasCacheControl":Z
    const/16 v19, 0x0

    .line 66
    .local v19, "mustRevalidate":Z
    const/16 v20, 0x0

    .line 69
    .local v20, "serverEtag":Ljava/lang/String;
    move/from16 v21, v0

    .end local v0    # "hasCacheControl":Z
    .local v21, "hasCacheControl":Z
    const-string v0, "Date"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "headerValue":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 71
    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v5

    .line 74
    :cond_2b
    move-object/from16 v22, v0

    .end local v0    # "headerValue":Ljava/lang/String;
    .local v22, "headerValue":Ljava/lang/String;
    const-string v0, "Cache-Control"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-wide/from16 v23, v7

    .end local v7    # "lastModified":J
    .local v23, "lastModified":J
    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 75
    .end local v22    # "headerValue":Ljava/lang/String;
    .local v7, "headerValue":Ljava/lang/String;
    if-eqz v7, :cond_b2

    .line 76
    const/4 v8, 0x1

    .line 77
    .end local v21    # "hasCacheControl":Z
    .local v8, "hasCacheControl":Z
    const-string v0, ","

    move/from16 v25, v8

    .end local v8    # "hasCacheControl":Z
    .local v25, "hasCacheControl":Z
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_44
    move/from16 v26, v0

    .end local v0    # "i":I
    .local v26, "i":I
    array-length v0, v8

    move-object/from16 v27, v7

    move/from16 v7, v26

    .end local v26    # "i":I
    .local v7, "i":I
    .local v27, "headerValue":Ljava/lang/String;
    if-ge v7, v0, :cond_af

    .line 79
    aget-object v0, v8, v7

    move-object/from16 v28, v8

    .end local v8    # "tokens":[Ljava/lang/String;
    .local v28, "tokens":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "token":Ljava/lang/String;
    const-string v0, "no-cache"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    const-string v0, "no-store"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_ad

    .line 82
    :cond_66
    const-string v0, "max-age="

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 84
    const/16 v0, 0x8

    :try_start_70
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_78} :catch_7b

    move-wide/from16 v15, v21

    .line 86
    .end local v8    # "token":Ljava/lang/String;
    :goto_7a
    goto :goto_a6

    .line 85
    .restart local v8    # "token":Ljava/lang/String;
    :catch_7b
    move-exception v0

    goto :goto_7a

    .line 87
    :cond_7d
    const-string v0, "stale-while-revalidate="

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 89
    const/16 v0, 0x17

    :try_start_87
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8f} :catch_92

    move-wide/from16 v17, v21

    .line 91
    .end local v8    # "token":Ljava/lang/String;
    :goto_91
    goto :goto_a6

    .line 90
    .restart local v8    # "token":Ljava/lang/String;
    :catch_92
    move-exception v0

    goto :goto_91

    .line 92
    :cond_94
    const-string v0, "must-revalidate"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    const-string v0, "proxy-revalidate"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 93
    :cond_a4
    const/16 v19, 0x1

    .line 78
    .end local v8    # "token":Ljava/lang/String;
    :cond_a6
    :goto_a6
    add-int/lit8 v0, v7, 0x1

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    goto :goto_44

    .line 81
    .restart local v8    # "token":Ljava/lang/String;
    :cond_ad
    :goto_ad
    const/4 v0, 0x0

    return-object v0

    .line 98
    .end local v7    # "i":I
    .end local v8    # "token":Ljava/lang/String;
    .end local v28    # "tokens":[Ljava/lang/String;
    :cond_af
    move/from16 v21, v25

    goto :goto_b4

    .end local v25    # "hasCacheControl":Z
    .end local v27    # "headerValue":Ljava/lang/String;
    .local v7, "headerValue":Ljava/lang/String;
    .restart local v21    # "hasCacheControl":Z
    :cond_b2
    move-object/from16 v27, v7

    .end local v7    # "headerValue":Ljava/lang/String;
    .restart local v27    # "headerValue":Ljava/lang/String;
    :goto_b4
    const-string v0, "Expires"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .end local v27    # "headerValue":Ljava/lang/String;
    .local v0, "headerValue":Ljava/lang/String;
    if-eqz v0, :cond_c2

    .line 100
    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v9

    .line 103
    :cond_c2
    const-string v7, "Last-Modified"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    .line 104
    if-eqz v0, :cond_d2

    .line 105
    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_d4

    .line 108
    :cond_d2
    move-wide/from16 v7, v23

    .end local v23    # "lastModified":J
    .local v7, "lastModified":J
    :goto_d4
    move-object/from16 v29, v0

    .end local v0    # "headerValue":Ljava/lang/String;
    .local v29, "headerValue":Ljava/lang/String;
    const-string v0, "ETag"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .end local v20    # "serverEtag":Ljava/lang/String;
    .local v0, "serverEtag":Ljava/lang/String;
    if-eqz v21, :cond_f4

    .line 113
    const-wide/16 v22, 0x3e8

    mul-long v24, v15, v22

    add-long v11, v2, v24

    .line 114
    if-eqz v19, :cond_eb

    move-wide/from16 v22, v11

    goto :goto_f1

    :cond_eb
    mul-long v22, v22, v17

    const/16 v20, 0x0

    add-long v22, v11, v22

    :goto_f1
    move-wide/from16 v13, v22

    goto :goto_103

    .line 117
    :cond_f4
    const-wide/16 v22, 0x0

    cmp-long v20, v5, v22

    if-lez v20, :cond_103

    cmp-long v20, v9, v5

    if-ltz v20, :cond_103

    .line 119
    sub-long v22, v9, v5

    add-long v11, v2, v22

    .line 120
    move-wide v13, v11

    .line 123
    :cond_103
    :goto_103
    new-instance v20, Lcom/android/volley/Cache$Entry;

    invoke-direct/range {v20 .. v20}, Lcom/android/volley/Cache$Entry;-><init>()V

    move-object/from16 v30, v20

    .line 124
    .local v30, "entry":Lcom/android/volley/Cache$Entry;
    move-wide/from16 v31, v2

    .end local v2    # "now":J
    .local v31, "now":J
    iget-object v2, v1, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v3, v30

    .end local v30    # "entry":Lcom/android/volley/Cache$Entry;
    .local v3, "entry":Lcom/android/volley/Cache$Entry;
    iput-object v2, v3, Lcom/android/volley/Cache$Entry;->data:[B

    .line 125
    iput-object v0, v3, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 126
    iput-wide v11, v3, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 127
    iput-wide v13, v3, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 128
    iput-wide v5, v3, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 129
    iput-wide v7, v3, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 130
    iput-object v4, v3, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 131
    iget-object v2, v1, Lcom/android/volley/NetworkResponse;->allHeaders:Ljava/util/List;

    iput-object v2, v3, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    .line 133
    return-object v3
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 192
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 171
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 173
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "params":[Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x1

    .local v3, "i":I
    :goto_12
    array-length v4, v1

    if-ge v3, v4, :cond_36

    .line 175
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "pair":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_33

    .line 177
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "charset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 178
    aget-object v2, v4, v2

    return-object v2

    .line 174
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 184
    .end local v1    # "params":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_36
    return-object p1
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .registers 5
    .param p0, "dateStr"    # Ljava/lang/String;

    .line 142
    :try_start_0
    invoke-static {}, Lcom/android/volley/toolbox/HttpHeaderParser;->newRfc1123Formatter()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 143
    :catch_d
    move-exception v0

    .line 145
    .local v0, "e":Ljava/text/ParseException;
    const-string v1, "Unable to parse dateStr: %s, falling back to 0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method static toAllHeaderList(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 210
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .local v0, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 212
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/android/volley/Header;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_11

    .line 214
    :cond_32
    return-object v0
.end method

.method static toHeaderMap(Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    .local p0, "allHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 203
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Header;

    .line 204
    .local v2, "header":Lcom/android/volley/Header;
    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v2    # "header":Lcom/android/volley/Header;
    goto :goto_b

    .line 206
    :cond_23
    return-object v0
.end method
