###### Class com.android.volley.toolbox.BasicNetwork (com.android.volley.toolbox.BasicNetwork)
.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static final DEFAULT_POOL_SIZE:I = 0x1000

.field private static final SLOW_REQUEST_THRESHOLD_MS:I = 0xbb8


# instance fields
.field private final mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

.field protected final mHttpStack:Lcom/android/volley/toolbox/HttpStack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/BaseHttpStack;)V
    .registers 4
    .param p1, "httpStack"    # Lcom/android/volley/toolbox/BaseHttpStack;

    .line 104
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/BaseHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/BaseHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .registers 3
    .param p1, "httpStack"    # Lcom/android/volley/toolbox/BaseHttpStack;
    .param p2, "pool"    # Lcom/android/volley/toolbox/ByteArrayPool;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    .line 116
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 117
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .registers 4
    .param p1, "httpStack"    # Lcom/android/volley/toolbox/HttpStack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .registers 4
    .param p1, "httpStack"    # Lcom/android/volley/toolbox/HttpStack;
    .param p2, "pool"    # Lcom/android/volley/toolbox/ByteArrayPool;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 94
    new-instance v0, Lcom/android/volley/toolbox/AdaptedHttpStack;

    invoke-direct {v0, p1}, Lcom/android/volley/toolbox/AdaptedHttpStack;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    .line 95
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 96
    return-void
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 9
    .param p0, "logPrefix"    # Ljava/lang/String;
    .param p2, "exception"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 229
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v0

    .line 230
    .local v0, "retryPolicy":Lcom/android/volley/RetryPolicy;
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    .line 233
    .local v1, "oldTimeout":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_b
    invoke-interface {v0, p2}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_e
    .catch Lcom/android/volley/VolleyError; {:try_start_b .. :try_end_e} :catch_23

    .line 238
    nop

    .line 239
    const-string v5, "%s-retry [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 240
    return-void

    .line 234
    :catch_23
    move-exception v5

    .line 235
    .local v5, "e":Lcom/android/volley/VolleyError;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v2, "%s-timeout-giveup [timeout=%s]"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {p1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 237
    throw v5
.end method

.method private static combineHeaders(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;
    .registers 9
    .param p1, "entry"    # Lcom/android/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 328
    .local p0, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 330
    .local v0, "headerNamesFromNetworkResponse":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 331
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Header;

    .line 332
    .local v2, "header":Lcom/android/volley/Header;
    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v2    # "header":Lcom/android/volley/Header;
    goto :goto_11

    .line 338
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    .local v1, "combinedHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    if-eqz v2, :cond_56

    .line 340
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_93

    .line 341
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/Header;

    .line 342
    .local v3, "header":Lcom/android/volley/Header;
    invoke-virtual {v3}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 343
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v3    # "header":Lcom/android/volley/Header;
    :cond_55
    goto :goto_3c

    .line 349
    :cond_56
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_93

    .line 350
    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 351
    .local v3, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_92

    .line 352
    new-instance v4, Lcom/android/volley/Header;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v3    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_92
    goto :goto_68

    .line 357
    :cond_93
    return-object v1
.end method

.method protected static convertHeaders([Lcom/android/volley/Header;)Ljava/util/Map;
    .registers 5
    .param p0, "headers"    # [Lcom/android/volley/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/volley/Header;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 307
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 308
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    .line 309
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 311
    .end local v1    # "i":I
    :cond_1d
    return-object v0
.end method

.method private getCacheHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;
    .registers 8
    .param p1, "entry"    # Lcom/android/volley/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    if-nez p1, :cond_7

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 248
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 250
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 251
    const-string v1, "If-None-Match"

    iget-object v2, p1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_17
    iget-wide v1, p1, Lcom/android/volley/Cache$Entry;->lastModified:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2a

    .line 255
    const-string v1, "If-Modified-Since"

    iget-wide v2, p1, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 256
    invoke-static {v2, v3}, Lcom/android/volley/toolbox/HttpHeaderParser;->formatEpochAsRfc1123(J)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_2a
    return-object v0
.end method

.method private inputStreamToBytes(Ljava/io/InputStream;I)[B
    .registers 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/ServerError;
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-direct {v0, v1, p2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    .line 272
    .local v0, "bytes":Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
    const/4 v1, 0x0

    .line 274
    .local v1, "buffer":[B
    const/4 v2, 0x0

    if-eqz p1, :cond_3d

    .line 277
    :try_start_b
    iget-object v3, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v3

    move-object v1, v3

    .line 279
    :goto_14
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "count":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_20

    .line 280
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_14

    .line 282
    :cond_20
    invoke-virtual {v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_43

    .line 286
    if-eqz p1, :cond_33

    .line 287
    :try_start_26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_33

    .line 289
    :catch_2a
    move-exception v5

    .line 292
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Error occurred when closing InputStream"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6, v2}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34

    .line 293
    .end local v5    # "e":Ljava/io/IOException;
    :cond_33
    :goto_33
    nop

    .line 294
    :goto_34
    iget-object v2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v2, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 295
    invoke-virtual {v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 282
    return-object v3

    .line 275
    .end local v4    # "count":I
    :cond_3d
    :try_start_3d
    new-instance v3, Lcom/android/volley/ServerError;

    invoke-direct {v3}, Lcom/android/volley/ServerError;-><init>()V

    throw v3
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_43

    .line 284
    :catchall_43
    move-exception v3

    .line 286
    if-eqz p1, :cond_53

    .line 287
    :try_start_46
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_53

    .line 289
    :catch_4a
    move-exception v4

    .line 292
    .local v4, "e":Ljava/io/IOException;
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "Error occurred when closing InputStream"

    invoke-static {v5, v2}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_54

    .line 293
    .end local v4    # "e":Ljava/io/IOException;
    :cond_53
    :goto_53
    nop

    .line 294
    :goto_54
    iget-object v2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v2, v1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 295
    invoke-virtual {v0}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v3
.end method

.method private logSlowRequests(JLcom/android/volley/Request;[BI)V
    .registers 10
    .param p1, "requestLifetime"    # J
    .param p4, "responseContents"    # [B
    .param p5, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 214
    .local p3, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    sget-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_a

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-lez v2, :cond_3f

    .line 215
    :cond_a
    const-string v0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    .line 216
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    if-eqz p4, :cond_22

    array-length v3, p4

    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_24

    :cond_22
    const-string v3, "null"

    :goto_24
    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 218
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 215
    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_3f
    return-void
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "start"    # J

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 264
    .local v0, "now":J
    const-string v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    sub-long v4, v0, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 122
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, "requestStart":J
    :goto_8
    move-wide v9, v0

    .line 124
    .end local v0    # "requestStart":J
    .local v9, "requestStart":J
    const/4 v1, 0x0

    .line 125
    .local v1, "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    const/4 v2, 0x0

    .line 126
    .local v2, "responseContents":[B
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 129
    .local v3, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    nop

    .line 130
    const/4 v11, 0x0

    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/volley/toolbox/BasicNetwork;->getCacheHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;

    move-result-object v0

    .line 131
    .local v0, "additionalRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v7, Lcom/android/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/android/volley/toolbox/BaseHttpStack;

    invoke-virtual {v4, v8, v0}, Lcom/android/volley/toolbox/BaseHttpStack;->executeRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;

    move-result-object v4
    :try_end_20
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_20} :catch_19c
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_20} :catch_17f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_f4

    move-object v12, v4

    .line 132
    .end local v1    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v12, "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :try_start_21
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v1

    move v15, v1

    .line 134
    .local v15, "statusCode":I
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v1
    :try_end_2a
    .catch Ljava/net/SocketTimeoutException; {:try_start_21 .. :try_end_2a} :catch_f1
    .catch Ljava/net/MalformedURLException; {:try_start_21 .. :try_end_2a} :catch_ee
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_ec

    move-object v14, v1

    .line 136
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .local v14, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    const/16 v1, 0x130

    if-ne v15, v1, :cond_73

    .line 137
    :try_start_2f
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v1

    .line 138
    .local v1, "entry":Lcom/android/volley/Cache$Entry;
    if-nez v1, :cond_4c

    .line 139
    new-instance v3, Lcom/android/volley/NetworkResponse;

    const/16 v17, 0x130

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long v20, v4, v9

    move-object/from16 v16, v3

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v22}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 139
    return-object v3

    .line 143
    :cond_4c
    invoke-static {v14, v1}, Lcom/android/volley/toolbox/BasicNetwork;->combineHeaders(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v28

    .line 144
    .local v28, "combinedHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    new-instance v3, Lcom/android/volley/NetworkResponse;

    const/16 v23, 0x130

    iget-object v4, v1, Lcom/android/volley/Cache$Entry;->data:[B

    const/16 v25, 0x1

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v13, 0x0

    sub-long v26, v5, v9

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v22 .. v28}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V
    :try_end_66
    .catch Ljava/net/SocketTimeoutException; {:try_start_2f .. :try_end_66} :catch_6f
    .catch Ljava/net/MalformedURLException; {:try_start_2f .. :try_end_66} :catch_6b
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_66} :catch_67

    .line 144
    return-object v3

    .line 172
    .end local v0    # "additionalRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry":Lcom/android/volley/Cache$Entry;
    .end local v15    # "statusCode":I
    .end local v28    # "combinedHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :catch_67
    move-exception v0

    move-object v3, v14

    goto/16 :goto_f6

    .line 170
    :catch_6b
    move-exception v0

    move-object v3, v14

    goto/16 :goto_181

    .line 168
    :catch_6f
    move-exception v0

    move-object v3, v14

    goto/16 :goto_19e

    .line 149
    .restart local v0    # "additionalRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "statusCode":I
    :cond_73
    :try_start_73
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1
    :try_end_77
    .catch Ljava/net/SocketTimeoutException; {:try_start_73 .. :try_end_77} :catch_e8
    .catch Ljava/net/MalformedURLException; {:try_start_73 .. :try_end_77} :catch_e4
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_77} :catch_e1

    move-object v13, v1

    .line 150
    .local v13, "inputStream":Ljava/io/InputStream;
    if-eqz v13, :cond_84

    .line 151
    nop

    .line 152
    :try_start_7b
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getContentLength()I

    move-result v1

    invoke-direct {v7, v13, v1}, Lcom/android/volley/toolbox/BasicNetwork;->inputStreamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v1
    :try_end_83
    .catch Ljava/net/SocketTimeoutException; {:try_start_7b .. :try_end_83} :catch_6f
    .catch Ljava/net/MalformedURLException; {:try_start_7b .. :try_end_83} :catch_6b
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_83} :catch_67

    goto :goto_86

    .line 156
    :cond_84
    :try_start_84
    new-array v1, v11, [B
    :try_end_86
    .catch Ljava/net/SocketTimeoutException; {:try_start_84 .. :try_end_86} :catch_e8
    .catch Ljava/net/MalformedURLException; {:try_start_84 .. :try_end_86} :catch_e4
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_86} :catch_e1

    .line 160
    .end local v2    # "responseContents":[B
    .local v20, "responseContents":[B
    :goto_86
    move-object/from16 v20, v1

    :try_start_88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    sub-long v21, v1, v9

    .line 161
    .local v21, "requestLifetime":J
    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    move-object/from16 v4, p1

    move-object/from16 v5, v20

    move v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/android/volley/Request;[BI)V

    .line 163
    const/16 v1, 0xc8

    if-lt v15, v1, :cond_bb

    const/16 v1, 0x12b

    if-gt v15, v1, :cond_bb

    .line 166
    new-instance v1, Lcom/android/volley/NetworkResponse;

    const/16 v16, 0x0

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_ab
    .catch Ljava/net/SocketTimeoutException; {:try_start_88 .. :try_end_ab} :catch_dc
    .catch Ljava/net/MalformedURLException; {:try_start_88 .. :try_end_ab} :catch_d7
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_ab} :catch_d2

    const/4 v4, 0x0

    sub-long v17, v2, v9

    move-object v2, v13

    .end local v13    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    move-object v13, v1

    move-object v3, v14

    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    move v14, v15

    move v4, v15

    .end local v15    # "statusCode":I
    .local v4, "statusCode":I
    move-object/from16 v15, v20

    move-object/from16 v19, v3

    :try_start_b7
    invoke-direct/range {v13 .. v19}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 166
    return-object v1

    .line 164
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .end local v4    # "statusCode":I
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v15    # "statusCode":I
    :cond_bb
    move-object v2, v13

    move-object v3, v14

    move v4, v15

    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .end local v15    # "statusCode":I
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v4    # "statusCode":I
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_c4
    .catch Ljava/net/SocketTimeoutException; {:try_start_b7 .. :try_end_c4} :catch_cd
    .catch Ljava/net/MalformedURLException; {:try_start_b7 .. :try_end_c4} :catch_c8
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c4} :catch_c4

    .line 172
    .end local v0    # "additionalRequestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "statusCode":I
    .end local v21    # "requestLifetime":J
    :catch_c4
    move-exception v0

    move-object/from16 v2, v20

    goto :goto_f6

    .line 170
    :catch_c8
    move-exception v0

    move-object/from16 v2, v20

    goto/16 :goto_181

    .line 168
    :catch_cd
    move-exception v0

    move-object/from16 v2, v20

    goto/16 :goto_19e

    .line 172
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :catch_d2
    move-exception v0

    move-object v3, v14

    move-object/from16 v2, v20

    goto :goto_e3

    .line 170
    :catch_d7
    move-exception v0

    move-object v3, v14

    move-object/from16 v2, v20

    goto :goto_e6

    .line 168
    :catch_dc
    move-exception v0

    move-object v3, v14

    move-object/from16 v2, v20

    goto :goto_ea

    .line 172
    .end local v20    # "responseContents":[B
    .local v2, "responseContents":[B
    :catch_e1
    move-exception v0

    move-object v3, v14

    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :goto_e3
    goto :goto_f6

    .line 170
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :catch_e4
    move-exception v0

    move-object v3, v14

    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :goto_e6
    goto/16 :goto_181

    .line 168
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :catch_e8
    move-exception v0

    move-object v3, v14

    .end local v14    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .restart local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    :goto_ea
    goto/16 :goto_19e

    .line 172
    :catch_ec
    move-exception v0

    goto :goto_f6

    .line 170
    :catch_ee
    move-exception v0

    goto/16 :goto_181

    .line 168
    :catch_f1
    move-exception v0

    goto/16 :goto_19e

    .line 172
    .end local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v1, "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :catch_f4
    move-exception v0

    move-object v12, v1

    .line 174
    .end local v1    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v0, "e":Ljava/io/IOException;
    .restart local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :goto_f6
    if-eqz v12, :cond_179

    .line 175
    invoke-virtual {v12}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v1

    .line 177
    .local v1, "statusCode":I
    nop

    .line 179
    const-string v4, "Unexpected response code %d for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    invoke-static {v4, v5}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    if-eqz v2, :cond_16e

    .line 182
    new-instance v4, Lcom/android/volley/NetworkResponse;

    const/16 v16, 0x0

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v17, v5, v9

    move-object v13, v4

    move v14, v1

    move-object v15, v2

    move-object/from16 v19, v3

    invoke-direct/range {v13 .. v19}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 184
    .local v4, "networkResponse":Lcom/android/volley/NetworkResponse;
    const/16 v5, 0x191

    if-eq v1, v5, :cond_163

    const/16 v5, 0x193

    if-ne v1, v5, :cond_12f

    goto :goto_163

    .line 188
    :cond_12f
    const/16 v5, 0x190

    if-lt v1, v5, :cond_13e

    const/16 v5, 0x1f3

    if-le v1, v5, :cond_138

    goto :goto_13e

    .line 190
    :cond_138
    new-instance v5, Lcom/android/volley/ClientError;

    invoke-direct {v5, v4}, Lcom/android/volley/ClientError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v5

    .line 191
    :cond_13e
    :goto_13e
    const/16 v5, 0x1f4

    if-lt v1, v5, :cond_15d

    const/16 v5, 0x257

    if-gt v1, v5, :cond_15d

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->shouldRetryServerErrors()Z

    move-result v5

    if-eqz v5, :cond_157

    .line 193
    const-string v5, "server"

    new-instance v6, Lcom/android/volley/ServerError;

    invoke-direct {v6, v4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v5, v8, v6}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_1a9

    .line 196
    :cond_157
    new-instance v5, Lcom/android/volley/ServerError;

    invoke-direct {v5, v4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v5

    .line 200
    :cond_15d
    new-instance v5, Lcom/android/volley/ServerError;

    invoke-direct {v5, v4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v5

    .line 186
    :cond_163
    :goto_163
    const-string v5, "auth"

    new-instance v6, Lcom/android/volley/AuthFailureError;

    invoke-direct {v6, v4}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v5, v8, v6}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_1a9

    .line 203
    .end local v4    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :cond_16e
    const-string v4, "network"

    new-instance v5, Lcom/android/volley/NetworkError;

    invoke-direct {v5}, Lcom/android/volley/NetworkError;-><init>()V

    invoke-static {v4, v8, v5}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_1a9

    .line 177
    .end local v1    # "statusCode":I
    :cond_179
    new-instance v1, Lcom/android/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v1, "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :catch_17f
    move-exception v0

    move-object v12, v1

    .line 171
    .end local v1    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v0, "e":Ljava/net/MalformedURLException;
    .restart local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :goto_181
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 168
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .restart local v1    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :catch_19c
    move-exception v0

    move-object v12, v1

    .line 169
    .end local v1    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    .local v0, "e":Ljava/net/SocketTimeoutException;
    .restart local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :goto_19e
    const-string v1, "socket"

    new-instance v4, Lcom/android/volley/TimeoutError;

    invoke-direct {v4}, Lcom/android/volley/TimeoutError;-><init>()V

    invoke-static {v1, v8, v4}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 205
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    nop

    .line 206
    .end local v2    # "responseContents":[B
    .end local v3    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/volley/Header;>;"
    .end local v12    # "httpResponse":Lcom/android/volley/toolbox/HttpResponse;
    :goto_1a9
    nop

    .line 122
    move-wide v0, v9

    goto/16 :goto_8
.end method
