###### Class com.squareup.okhttp.Call (com.squareup.okhttp.Call)
.class public Lcom/squareup/okhttp/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;,
        Lcom/squareup/okhttp/Call$AsyncCall;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lcom/squareup/okhttp/OkHttpClient;

.field engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field private executed:Z

.field originalRequest:Lcom/squareup/okhttp/Request;


# direct methods
.method protected constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V
    .registers 4
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "originalRequest"    # Lcom/squareup/okhttp/Request;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->copyWithDefaults()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 50
    iput-object p2, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/Call;Z)Lcom/squareup/okhttp/Response;
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/Call;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/squareup/okhttp/Call;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Call;

    .line 35
    invoke-direct {p0}, Lcom/squareup/okhttp/Call;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Call;

    .line 35
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method private getResponseWithInterceptorChain(Z)Lcom/squareup/okhttp/Response;
    .registers 5
    .param p1, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;

    iget-object v1, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/squareup/okhttp/Call;ILcom/squareup/okhttp/Request;Z)V

    .line 205
    .local v0, "chain":Lcom/squareup/okhttp/Interceptor$Chain;
    iget-object v1, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    return-object v1
.end method

.method private toLoggableString()Ljava/lang/String;
    .registers 5

    .line 198
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->canceled:Z

    if-eqz v0, :cond_7

    const-string v0, "canceled call"

    goto :goto_9

    :cond_7
    const-string v0, "call"

    .line 199
    .local v0, "string":Ljava/lang/String;
    :goto_9
    iget-object v1, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    const-string v2, "/..."

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    .line 200
    .local v1, "redactedUrl":Lcom/squareup/okhttp/HttpUrl;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Call;->canceled:Z

    .line 123
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->cancel()V

    .line 124
    :cond_c
    return-void
.end method

.method public enqueue(Lcom/squareup/okhttp/Callback;)V
    .registers 3
    .param p1, "responseCallback"    # Lcom/squareup/okhttp/Callback;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;Z)V

    .line 107
    return-void
.end method

.method enqueue(Lcom/squareup/okhttp/Callback;Z)V
    .registers 6
    .param p1, "responseCallback"    # Lcom/squareup/okhttp/Callback;
    .param p2, "forWebSocket"    # Z

    .line 110
    monitor-enter p0

    .line 111
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    if-nez v0, :cond_19

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    .line 113
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_21

    .line 114
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/Call$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/squareup/okhttp/Call$AsyncCall;-><init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;ZLcom/squareup/okhttp/Call$1;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Dispatcher;->enqueue(Lcom/squareup/okhttp/Call$AsyncCall;)V

    .line 115
    return-void

    .line 111
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public execute()Lcom/squareup/okhttp/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    if-nez v0, :cond_37

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z

    .line 77
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3f

    .line 79
    :try_start_9
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/Dispatcher;->executed(Lcom/squareup/okhttp/Call;)V

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/Call;->getResponseWithInterceptorChain(Z)Lcom/squareup/okhttp/Response;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_2c

    .line 81
    .local v0, "result":Lcom/squareup/okhttp/Response;
    if-eqz v0, :cond_24

    .line 82
    nop

    .line 84
    iget-object v1, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Call;)V

    return-object v0

    .line 81
    :cond_24
    :try_start_24
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    .line 84
    .end local v0    # "result":Lcom/squareup/okhttp/Response;
    :catchall_2c
    move-exception v0

    iget-object v1, p0, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Call;)V

    throw v0

    .line 75
    :cond_37
    :try_start_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method getResponse(Lcom/squareup/okhttp/Request;Z)Lcom/squareup/okhttp/Response;
    .registers 20
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .param p2, "forWebSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v2

    .line 254
    .local v2, "body":Lcom/squareup/okhttp/RequestBody;
    if-eqz v2, :cond_45

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    .line 257
    .local v0, "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    invoke-virtual {v2}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v3

    .line 258
    .local v3, "contentType":Lcom/squareup/okhttp/MediaType;
    if-eqz v3, :cond_1b

    .line 259
    const-string v4, "Content-Type"

    invoke-virtual {v3}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 262
    :cond_1b
    invoke-virtual {v2}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v4

    .line 263
    .local v4, "contentLength":J
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_34

    .line 264
    const-string v6, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 265
    const-string v6, "Transfer-Encoding"

    invoke-virtual {v0, v6}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_40

    .line 267
    :cond_34
    const-string v6, "Transfer-Encoding"

    const-string v7, "chunked"

    invoke-virtual {v0, v6, v7}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 268
    const-string v6, "Content-Length"

    invoke-virtual {v0, v6}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 271
    :goto_40
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    goto :goto_47

    .line 275
    .end local v0    # "requestBuilder":Lcom/squareup/okhttp/Request$Builder;
    .end local v3    # "contentType":Lcom/squareup/okhttp/MediaType;
    .end local v4    # "contentLength":J
    :cond_45
    move-object/from16 v0, p1

    .end local p1    # "request":Lcom/squareup/okhttp/Request;
    .local v0, "request":Lcom/squareup/okhttp/Request;
    :goto_47
    new-instance v12, Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v4, v1, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v12

    move-object v5, v0

    move/from16 v8, p2

    invoke-direct/range {v3 .. v11}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZZZLcom/squareup/okhttp/internal/http/StreamAllocation;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)V

    iput-object v12, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 277
    const/4 v3, 0x0

    move-object v4, v0

    .line 279
    .end local v0    # "request":Lcom/squareup/okhttp/Request;
    .local v3, "followUpCount":I
    .local v4, "request":Lcom/squareup/okhttp/Request;
    :cond_5b
    :goto_5b
    iget-boolean v0, v1, Lcom/squareup/okhttp/Call;->canceled:Z

    if-nez v0, :cond_11f

    .line 284
    const/4 v0, 0x1

    move v5, v0

    .line 286
    .local v5, "releaseConnection":Z
    :try_start_61
    iget-object v0, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 287
    iget-object v0, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_6b
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_61 .. :try_end_6b} :catch_10d
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_61 .. :try_end_6b} :catch_ef
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6b} :catch_de
    .catchall {:try_start_61 .. :try_end_6b} :catchall_dc

    .line 288
    const/4 v0, 0x0

    .line 315
    .end local v5    # "releaseConnection":Z
    .local v0, "releaseConnection":Z
    if-eqz v0, :cond_78

    .line 316
    iget-object v5, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/internal/http/StreamAllocation;

    move-result-object v5

    .line 317
    .local v5, "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release()V

    .line 318
    .end local v5    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    nop

    .line 321
    :cond_78
    iget-object v5, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v5

    .line 322
    .local v5, "response":Lcom/squareup/okhttp/Response;
    iget-object v6, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->followUpRequest()Lcom/squareup/okhttp/Request;

    move-result-object v15

    .line 324
    .local v15, "followUp":Lcom/squareup/okhttp/Request;
    if-nez v15, :cond_8e

    .line 325
    if-nez p2, :cond_8d

    .line 326
    iget-object v6, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 328
    :cond_8d
    return-object v5

    .line 331
    :cond_8e
    iget-object v6, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/internal/http/StreamAllocation;

    move-result-object v6

    .line 333
    .local v6, "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0x14

    if-gt v3, v7, :cond_c2

    .line 338
    iget-object v7, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v15}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sameConnection(Lcom/squareup/okhttp/HttpUrl;)Z

    move-result v7

    if-nez v7, :cond_aa

    .line 339
    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release()V

    .line 340
    const/4 v6, 0x0

    .line 343
    .end local v6    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    .local v16, "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    :cond_aa
    move-object/from16 v16, v6

    move-object v8, v15

    .line 344
    .end local v4    # "request":Lcom/squareup/okhttp/Request;
    .local v8, "request":Lcom/squareup/okhttp/Request;
    new-instance v4, Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v7, v1, Lcom/squareup/okhttp/Call;->client:Lcom/squareup/okhttp/OkHttpClient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v6, v4

    move/from16 v11, p2

    move-object/from16 v12, v16

    move-object v14, v5

    invoke-direct/range {v6 .. v14}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZZZLcom/squareup/okhttp/internal/http/StreamAllocation;Lcom/squareup/okhttp/internal/http/RetryableSink;Lcom/squareup/okhttp/Response;)V

    iput-object v4, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 346
    .end local v0    # "releaseConnection":Z
    .end local v5    # "response":Lcom/squareup/okhttp/Response;
    .end local v15    # "followUp":Lcom/squareup/okhttp/Request;
    .end local v16    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    nop

    .line 277
    move-object v4, v8

    goto :goto_5b

    .line 334
    .end local v8    # "request":Lcom/squareup/okhttp/Request;
    .restart local v0    # "releaseConnection":Z
    .restart local v4    # "request":Lcom/squareup/okhttp/Request;
    .restart local v5    # "response":Lcom/squareup/okhttp/Response;
    .restart local v6    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    .restart local v15    # "followUp":Lcom/squareup/okhttp/Request;
    :cond_c2
    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release()V

    .line 335
    new-instance v7, Ljava/net/ProtocolException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Too many follow-up requests: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 315
    .end local v0    # "releaseConnection":Z
    .end local v6    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    .end local v15    # "followUp":Lcom/squareup/okhttp/Request;
    .local v5, "releaseConnection":Z
    :catchall_dc
    move-exception v0

    goto :goto_113

    .line 302
    :catch_de
    move-exception v0

    .line 304
    .local v0, "e":Ljava/io/IOException;
    :try_start_df
    iget-object v6, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lcom/squareup/okhttp/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lokio/Sink;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v6

    .line 305
    .local v6, "retryEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    if-eqz v6, :cond_ee

    .line 306
    const/4 v5, 0x0

    .line 307
    iput-object v6, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 315
    if-eqz v5, :cond_5b

    goto :goto_fd

    .line 312
    :cond_ee
    throw v0

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "retryEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    :catch_ef
    move-exception v0

    .line 294
    .local v0, "e":Lcom/squareup/okhttp/internal/http/RouteException;
    iget-object v6, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v6, v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->recover(Lcom/squareup/okhttp/internal/http/RouteException;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v6

    .line 295
    .restart local v6    # "retryEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    if-eqz v6, :cond_108

    .line 296
    const/4 v5, 0x0

    .line 297
    iput-object v6, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;
    :try_end_fb
    .catchall {:try_start_df .. :try_end_fb} :catchall_dc

    .line 315
    if-eqz v5, :cond_5b

    .line 316
    :goto_fd
    iget-object v7, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/internal/http/StreamAllocation;

    move-result-object v7

    .line 317
    .local v7, "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v7}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release()V

    .line 318
    .end local v7    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    goto/16 :goto_5b

    .line 301
    :cond_108
    :try_start_108
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 289
    .end local v0    # "e":Lcom/squareup/okhttp/internal/http/RouteException;
    .end local v6    # "retryEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    :catch_10d
    move-exception v0

    .line 291
    .local v0, "e":Lcom/squareup/okhttp/internal/http/RequestException;
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v6

    throw v6
    :try_end_113
    .catchall {:try_start_108 .. :try_end_113} :catchall_dc

    .line 315
    .end local v0    # "e":Lcom/squareup/okhttp/internal/http/RequestException;
    :goto_113
    if-eqz v5, :cond_11e

    .line 316
    iget-object v6, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->close()Lcom/squareup/okhttp/internal/http/StreamAllocation;

    move-result-object v6

    .line 317
    .local v6, "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/StreamAllocation;->release()V

    .line 318
    .end local v6    # "streamAllocation":Lcom/squareup/okhttp/internal/http/StreamAllocation;
    :cond_11e
    throw v0

    .line 280
    .end local v5    # "releaseConnection":Z
    :cond_11f
    iget-object v0, v1, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->releaseStreamAllocation()V

    .line 281
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->canceled:Z

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .registers 2

    monitor-enter p0

    .line 131
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/Call;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tag()Ljava/lang/Object;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.squareup.okhttp.Call.AnonymousClass1 (com.squareup.okhttp.Call$1)
.class synthetic Lcom/squareup/okhttp/Call$1;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.squareup.okhttp.Call.ApplicationInterceptorChain (com.squareup.okhttp.Call$ApplicationInterceptorChain)
.class Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationInterceptorChain"
.end annotation


# instance fields
.field private final forWebSocket:Z

.field private final index:I

.field private final request:Lcom/squareup/okhttp/Request;

.field final synthetic this$0:Lcom/squareup/okhttp/Call;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Call;ILcom/squareup/okhttp/Request;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/squareup/okhttp/Call;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/squareup/okhttp/Request;
    .param p4, "forWebSocket"    # Z

    .line 213
    iput-object p1, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/squareup/okhttp/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p2, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->index:I

    .line 215
    iput-object p3, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->request:Lcom/squareup/okhttp/Request;

    .line 216
    iput-boolean p4, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    .line 217
    return-void
.end method


# virtual methods
.method public connection()Lcom/squareup/okhttp/Connection;
    .registers 2

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;
    .registers 8
    .param p1, "request"    # Lcom/squareup/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget v0, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->index:I

    iget-object v1, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/squareup/okhttp/Call;

    invoke-static {v1}, Lcom/squareup/okhttp/Call;->access$300(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 230
    new-instance v0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;

    iget-object v1, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/squareup/okhttp/Call;

    iget v2, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->index:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;-><init>(Lcom/squareup/okhttp/Call;ILcom/squareup/okhttp/Request;Z)V

    .line 231
    .local v0, "chain":Lcom/squareup/okhttp/Interceptor$Chain;
    iget-object v1, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/squareup/okhttp/Call;

    invoke-static {v1}, Lcom/squareup/okhttp/Call;->access$300(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/Interceptor;

    .line 232
    .local v1, "interceptor":Lcom/squareup/okhttp/Interceptor;
    invoke-interface {v1, v0}, Lcom/squareup/okhttp/Interceptor;->intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;

    move-result-object v2

    .line 234
    .local v2, "interceptedResponse":Lcom/squareup/okhttp/Response;
    if-eqz v2, :cond_38

    .line 239
    return-object v2

    .line 235
    :cond_38
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "application interceptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " returned null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 243
    .end local v0    # "chain":Lcom/squareup/okhttp/Interceptor$Chain;
    .end local v1    # "interceptor":Lcom/squareup/okhttp/Interceptor;
    .end local v2    # "interceptedResponse":Lcom/squareup/okhttp/Response;
    :cond_54
    iget-object v0, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->this$0:Lcom/squareup/okhttp/Call;

    iget-boolean v1, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->forWebSocket:Z

    invoke-virtual {v0, p1, v1}, Lcom/squareup/okhttp/Call;->getResponse(Lcom/squareup/okhttp/Request;Z)Lcom/squareup/okhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public request()Lcom/squareup/okhttp/Request;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/squareup/okhttp/Call$ApplicationInterceptorChain;->request:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

###### Class com.squareup.okhttp.Call.AsyncCall (com.squareup.okhttp.Call$AsyncCall)
.class final Lcom/squareup/okhttp/Call$AsyncCall;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field private final forWebSocket:Z

.field private final responseCallback:Lcom/squareup/okhttp/Callback;

.field final synthetic this$0:Lcom/squareup/okhttp/Call;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V
    .registers 8
    .param p1, "this$0"    # Lcom/squareup/okhttp/Call;
    .param p2, "responseCallback"    # Lcom/squareup/okhttp/Callback;
    .param p3, "forWebSocket"    # Z

    .line 142
    iput-object p1, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    .line 143
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iput-object p2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->responseCallback:Lcom/squareup/okhttp/Callback;

    .line 145
    iput-boolean p3, p0, Lcom/squareup/okhttp/Call$AsyncCall;->forWebSocket:Z

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;ZLcom/squareup/okhttp/Call$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/squareup/okhttp/Call;
    .param p2, "x1"    # Lcom/squareup/okhttp/Callback;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/squareup/okhttp/Call$1;

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/Call$AsyncCall;-><init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 162
    return-void
.end method

.method protected execute()V
    .registers 7

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "signalledCallback":Z
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-boolean v2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->forWebSocket:Z

    invoke-static {v1, v2}, Lcom/squareup/okhttp/Call;->access$100(Lcom/squareup/okhttp/Call;Z)Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 172
    .local v1, "response":Lcom/squareup/okhttp/Response;
    iget-object v2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-boolean v2, v2, Lcom/squareup/okhttp/Call;->canceled:Z

    if-eqz v2, :cond_21

    .line 173
    const/4 v0, 0x1

    .line 174
    iget-object v2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->responseCallback:Lcom/squareup/okhttp/Callback;

    iget-object v3, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v3, v3, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/squareup/okhttp/Callback;->onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V

    goto :goto_27

    .line 176
    :cond_21
    const/4 v0, 0x1

    .line 177
    iget-object v2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->responseCallback:Lcom/squareup/okhttp/Callback;

    invoke-interface {v2, v1}, Lcom/squareup/okhttp/Callback;->onResponse(Lcom/squareup/okhttp/Response;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_37
    .catchall {:try_start_1 .. :try_end_27} :catchall_35

    .line 188
    .end local v1    # "response":Lcom/squareup/okhttp/Response;
    :goto_27
    iget-object v1, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    invoke-static {v1}, Lcom/squareup/okhttp/Call;->access$300(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Call$AsyncCall;)V

    .line 189
    goto :goto_72

    .line 188
    :catchall_35
    move-exception v1

    goto :goto_73

    .line 179
    :catch_37
    move-exception v1

    .line 180
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_59

    .line 182
    :try_start_3a
    sget-object v2, Lcom/squareup/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    invoke-static {v5}, Lcom/squareup/okhttp/Call;->access$200(Lcom/squareup/okhttp/Call;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    .line 184
    :cond_59
    iget-object v2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v2, v2, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-nez v2, :cond_64

    iget-object v2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v2, v2, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    goto :goto_6c

    :cond_64
    iget-object v2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v2, v2, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequest()Lcom/squareup/okhttp/Request;

    move-result-object v2

    .line 185
    .local v2, "request":Lcom/squareup/okhttp/Request;
    :goto_6c
    iget-object v3, p0, Lcom/squareup/okhttp/Call$AsyncCall;->responseCallback:Lcom/squareup/okhttp/Callback;

    invoke-interface {v3, v2, v1}, Lcom/squareup/okhttp/Callback;->onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    :try_end_71
    .catchall {:try_start_3a .. :try_end_71} :catchall_35

    goto :goto_27

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "request":Lcom/squareup/okhttp/Request;
    :goto_72
    return-void

    .line 188
    :goto_73
    iget-object v2, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    invoke-static {v2}, Lcom/squareup/okhttp/Call;->access$300(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Call$AsyncCall;)V

    throw v1
.end method

.method get()Lcom/squareup/okhttp/Call;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v0, v0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lcom/squareup/okhttp/Request;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v0, v0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method tag()Ljava/lang/Object;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/squareup/okhttp/Call$AsyncCall;->this$0:Lcom/squareup/okhttp/Call;

    iget-object v0, v0, Lcom/squareup/okhttp/Call;->originalRequest:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
