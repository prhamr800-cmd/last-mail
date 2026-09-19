###### Class com.snowplowanalytics.snowplow.tracker.Emitter (com.snowplowanalytics.snowplow.tracker.Emitter)
.class public Lcom/snowplowanalytics/snowplow/tracker/Emitter;
.super Ljava/lang/Object;
.source "Emitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    }
.end annotation


# static fields
.field private static final POST_STM_BYTES:I = 0x16

.field private static final POST_WRAPPER_BYTES:I = 0x58


# instance fields
.field private final JSON:Lokhttp3/MediaType;

.field private final TAG:Ljava/lang/String;

.field private bufferOption:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

.field private byteLimitGet:J

.field private byteLimitPost:J

.field private final client:Lokhttp3/OkHttpClient;

.field private context:Landroid/content/Context;

.field private emitterTick:I

.field private emptyCount:I

.field private emptyLimit:I

.field private eventStore:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;

.field private httpMethod:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

.field private isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private requestCallback:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;

.field private requestSecurity:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

.field private sendLimit:I

.field private timeUnit:Ljava/util/concurrent/TimeUnit;

.field private uri:Ljava/lang/String;

.field private uriBuilder:Landroid/net/Uri$Builder;


# direct methods
.method private constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;)V
    .registers 7
    .param p1, "builder"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    .line 63
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->JSON:Lokhttp3/MediaType;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 220
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->httpMethod:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->httpMethod:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    .line 221
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->requestCallback:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestCallback:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;

    .line 222
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->context:Landroid/content/Context;

    .line 223
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->bufferOption:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->bufferOption:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    .line 224
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->requestSecurity:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestSecurity:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    .line 225
    iget v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->emitterTick:I

    iput v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->emitterTick:I

    .line 226
    iget v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->emptyLimit:I

    iput v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->emptyLimit:I

    .line 227
    iget v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->sendLimit:I

    iput v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->sendLimit:I

    .line 228
    iget-wide v2, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->byteLimitGet:J

    iput-wide v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->byteLimitGet:J

    .line 229
    iget-wide v2, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->byteLimitPost:J

    iput-wide v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->byteLimitPost:J

    .line 230
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uri:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 232
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->sendLimit:I

    invoke-direct {v0, v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->eventStore:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;

    .line 234
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->buildEmitterUri()V

    .line 236
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 237
    const-wide/16 v3, 0xf

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 238
    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->client:Lokhttp3/OkHttpClient;

    .line 241
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v2, "Emitter created successfully!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    .param p2, "x1"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;

    .line 56
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/snowplowanalytics/snowplow/tracker/Emitter;)Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    .line 56
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->eventStore:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snowplowanalytics/snowplow/tracker/Emitter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    .line 56
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/snowplowanalytics/snowplow/tracker/Emitter;)V
    .registers 1
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    .line 56
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->attemptEmit()V

    return-void
.end method

.method static synthetic access$400(Lcom/snowplowanalytics/snowplow/tracker/Emitter;Lokhttp3/Request;)I
    .registers 3
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter;
    .param p1, "x1"    # Lokhttp3/Request;

    .line 56
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestSender(Lokhttp3/Request;)I

    move-result v0

    return v0
.end method

.method private addStmToEvent(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;Ljava/lang/String;)V
    .registers 5
    .param p1, "payload"    # Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    .param p2, "timestamp"    # Ljava/lang/String;

    .line 633
    const-string v0, "stm"

    const-string v1, ""

    .line 634
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 633
    :cond_f
    move-object v1, p2

    :goto_10
    invoke-interface {p1, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method private attemptEmit()V
    .registers 14

    .line 324
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_145

    .line 325
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->eventStore:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->getSize()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_e7

    .line 326
    iput v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->emptyCount:I

    .line 328
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->eventStore:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->getEmittableEvents()Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;

    move-result-object v0

    .line 329
    .local v0, "events":Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;
    invoke-virtual {p0, v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->buildRequests(Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;)Ljava/util/LinkedList;

    move-result-object v3

    .line 330
    .local v3, "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;>;"
    invoke-virtual {p0, v3}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->performAsyncEmit(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v4

    .line 332
    .local v4, "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;>;"
    const/4 v0, 0x0

    .line 333
    const/4 v3, 0x0

    .line 335
    iget-object v5, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v6, "Processing emitter results."

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    const/4 v5, 0x0

    .line 338
    .local v5, "successCount":I
    const/4 v6, 0x0

    .line 339
    .local v6, "failureCount":I
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 341
    .local v7, "removableEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_83

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;

    .line 342
    .local v9, "res":Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;
    invoke-virtual {v9}, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;->getSuccess()Z

    move-result v10

    if-eqz v10, :cond_70

    .line 343
    invoke-virtual {v9}, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;->getEventIds()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_56
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_66

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 344
    .local v11, "eventId":Ljava/lang/Long;
    invoke-virtual {v7, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v11    # "eventId":Ljava/lang/Long;
    goto :goto_56

    .line 346
    :cond_66
    invoke-virtual {v9}, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;->getEventIds()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    add-int/2addr v5, v10

    goto :goto_82

    .line 348
    :cond_70
    invoke-virtual {v9}, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;->getEventIds()Ljava/util/LinkedList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    add-int/2addr v6, v10

    .line 349
    iget-object v10, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v11, "Request sending failed but we will retry later."

    new-array v12, v2, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    .end local v9    # "res":Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;
    :goto_82
    goto :goto_3c

    .line 352
    :cond_83
    iget-object v8, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->eventStore:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;

    invoke-virtual {v8, v7}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->removeEvents(Ljava/util/List;)Z

    .line 354
    const/4 v4, 0x0

    .line 355
    const/4 v7, 0x0

    .line 357
    iget-object v8, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v9, "Success Count: %s"

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v8, v9, v10}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object v8, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v9, "Failure Count: %s"

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v8, v9, v10}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object v8, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestCallback:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;

    if-eqz v8, :cond_b9

    .line 361
    if-eqz v6, :cond_b4

    .line 362
    iget-object v8, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestCallback:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;

    invoke-interface {v8, v5, v6}, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;->onFailure(II)V

    goto :goto_b9

    .line 364
    :cond_b4
    iget-object v8, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestCallback:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;

    invoke-interface {v8, v5}, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;->onSuccess(I)V

    .line 368
    :cond_b9
    :goto_b9
    if-lez v6, :cond_e3

    if-nez v5, :cond_e3

    .line 369
    iget-object v8, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->isOnline(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d4

    .line 370
    iget-object v8, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v9, "Ensure collector path is valid: %s"

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->getEmitterUri()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v8, v9, v10}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_d4
    iget-object v8, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v9, "Emitter loop stopping: failures."

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v8, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_e6

    .line 375
    :cond_e3
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->attemptEmit()V

    .line 377
    .end local v0    # "events":Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;
    .end local v3    # "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;>;"
    .end local v4    # "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;>;"
    .end local v5    # "successCount":I
    .end local v6    # "failureCount":I
    .end local v7    # "removableEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    :goto_e6
    goto :goto_153

    .line 378
    :cond_e7
    iget v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->emptyCount:I

    iget v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->emptyLimit:I

    if-lt v0, v3, :cond_fc

    .line 379
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v3, "Emitter loop stopping: empty limit reached."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_153

    .line 382
    :cond_fc
    iget v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->emptyCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->emptyCount:I

    .line 383
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emitter database empty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->emptyCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :try_start_11b
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->emitterTick:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_123
    .catch Ljava/lang/InterruptedException; {:try_start_11b .. :try_end_123} :catch_124

    .line 388
    goto :goto_141

    .line 386
    :catch_124
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emitter thread sleep interrupted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_141
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->attemptEmit()V

    goto :goto_153

    .line 393
    :cond_145
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v3, "Emitter loop stopping: emitter offline."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 396
    :goto_153
    return-void
.end method

.method private buildEmitterUri()V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestSecurity:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;->HTTP:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    if-ne v0, v1, :cond_24

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    goto :goto_41

    .line 252
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    .line 254
    :goto_41
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->httpMethod:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;->GET:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    if-ne v0, v1, :cond_4f

    .line 255
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    const-string v1, "i"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_56

    .line 258
    :cond_4f
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    const-string v1, "com.snowplowanalytics.snowplow/tp2"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 261
    :goto_56
    return-void
.end method

.method private getRequestCallable(Lokhttp3/Request;)Ljava/util/concurrent/Callable;
    .registers 3
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 455
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$3;

    invoke-direct {v0, p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/Emitter$3;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter;Lokhttp3/Request;)V

    return-object v0
.end method

.method private isSuccessfulSend(I)Z
    .registers 3
    .param p1, "code"    # I

    .line 661
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private requestBuilderGet(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;)Lokhttp3/Request;
    .registers 7
    .param p1, "payload"    # Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    .line 579
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->addStmToEvent(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 585
    invoke-interface {p1}, Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;->getMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 587
    .local v0, "hashMap":Ljava/util/HashMap;
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 588
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 589
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v4, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 590
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_18

    .line 593
    :cond_30
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "reqUrl":Ljava/lang/String;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 595
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 596
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 597
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 594
    return-object v2
.end method

.method private requestBuilderPost(Ljava/util/ArrayList;)Lokhttp3/Request;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 608
    .local p1, "payloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v0, "finalPayloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map;>;"
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "stm":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    .line 611
    .local v3, "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    invoke-direct {p0, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->addStmToEvent(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;Ljava/lang/String;)V

    .line 612
    invoke-interface {v3}, Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;->getMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .end local v3    # "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    goto :goto_d

    .line 615
    :cond_24
    new-instance v2, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v3, "iglu:com.snowplowanalytics.snowplow/payload_data/jsonschema/1-0-4"

    invoke-direct {v2, v3, v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 617
    .local v2, "postPayload":Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    iget-object v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "reqUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->JSON:Lokhttp3/MediaType;

    invoke-virtual {v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 619
    .local v4, "reqBody":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 620
    invoke-virtual {v5, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 621
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 622
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 619
    return-object v5
.end method

.method private requestSender(Lokhttp3/Request;)I
    .registers 8
    .param p1, "request"    # Lokhttp3/Request;

    .line 474
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v3, "Sending request: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 477
    .local v2, "resp":Lokhttp3/Response;
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v3

    .line 478
    .local v3, "code":I
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_22} :catch_23

    .line 480
    return v3

    .line 481
    .end local v2    # "resp":Lokhttp3/Response;
    .end local v3    # "code":I
    :catch_23
    move-exception v2

    .line 482
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v4, "Request sending failed: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {v3, v4, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public add(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;)V
    .registers 3
    .param p1, "payload"    # Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    .line 274
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;

    invoke-direct {v0, p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter;Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;)V

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/Executor;->execute(Ljava/lang/Runnable;)V

    .line 283
    return-void
.end method

.method protected buildRequests(Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;)Ljava/util/LinkedList;
    .registers 25
    .param p1, "events"    # Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;",
            ">;"
        }
    .end annotation

    .line 499
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;->getEvents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 500
    .local v1, "payloadCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;->getEventIds()Ljava/util/LinkedList;

    move-result-object v2

    .line 501
    .local v2, "eventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 503
    .local v3, "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;>;"
    iget-object v4, v0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->httpMethod:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    sget-object v5, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;->GET:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    const-wide/16 v6, 0x16

    const/4 v8, 0x1

    if-ne v4, v5, :cond_56

    .line 504
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v1, :cond_52

    .line 507
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 508
    .local v5, "reqEventId":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual/range {p1 .. p1}, Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;->getEvents()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    .line 512
    .local v10, "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    invoke-interface {v10}, Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;->getByteSize()J

    move-result-wide v11

    add-long/2addr v11, v6

    iget-wide v13, v0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->byteLimitGet:J

    cmp-long v15, v11, v13

    if-lez v15, :cond_42

    const/4 v11, 0x1

    goto :goto_43

    :cond_42
    const/4 v11, 0x0

    .line 513
    .local v11, "oversize":Z
    :goto_43
    invoke-direct {v0, v10}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestBuilderGet(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;)Lokhttp3/Request;

    move-result-object v12

    .line 514
    .local v12, "request":Lokhttp3/Request;
    new-instance v13, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;

    invoke-direct {v13, v11, v12, v5}, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;-><init>(ZLokhttp3/Request;Ljava/util/LinkedList;)V

    invoke-virtual {v3, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 504
    .end local v5    # "reqEventId":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v10    # "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    .end local v11    # "oversize":Z
    .end local v12    # "request":Lokhttp3/Request;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 565
    .end local v4    # "i":I
    :cond_52
    move/from16 v22, v1

    goto/16 :goto_126

    .line 517
    :cond_56
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_57
    if-ge v4, v1, :cond_124

    .line 519
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 520
    .local v5, "reqEventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v10, "postPayloadMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;>;"
    const-wide/16 v11, 0x0

    .line 523
    .local v11, "totalByteSize":J
    move-wide v12, v11

    move-object v11, v5

    move v5, v4

    .local v5, "j":I
    .local v11, "reqEventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .local v12, "totalByteSize":J
    :goto_68
    iget-object v14, v0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->bufferOption:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    invoke-virtual {v14}, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->getCode()I

    move-result v14

    add-int/2addr v14, v4

    if-ge v5, v14, :cond_ff

    if-ge v5, v1, :cond_ff

    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;->getEvents()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    .line 525
    .local v14, "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    invoke-interface {v14}, Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;->getByteSize()J

    move-result-wide v15

    add-long/2addr v15, v6

    .line 527
    .local v15, "payloadByteSize":J
    const-wide/16 v17, 0x58

    add-long v19, v15, v17

    iget-wide v6, v0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->byteLimitPost:J

    cmp-long v21, v19, v6

    if-lez v21, :cond_af

    .line 528
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v6, "singlePayloadMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 532
    .local v7, "reqEventId":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-direct {v0, v6}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestBuilderPost(Ljava/util/ArrayList;)Lokhttp3/Request;

    move-result-object v9

    .line 535
    .local v9, "request":Lokhttp3/Request;
    move/from16 v22, v1

    .end local v1    # "payloadCount":I
    .local v22, "payloadCount":I
    new-instance v1, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;

    invoke-direct {v1, v8, v9, v7}, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;-><init>(ZLokhttp3/Request;Ljava/util/LinkedList;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 536
    .end local v6    # "singlePayloadMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;>;"
    .end local v7    # "reqEventId":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v9    # "request":Lokhttp3/Request;
    goto :goto_f6

    .line 537
    .end local v22    # "payloadCount":I
    .restart local v1    # "payloadCount":I
    :cond_af
    move/from16 v22, v1

    .end local v1    # "payloadCount":I
    .restart local v22    # "payloadCount":I
    const/4 v1, 0x0

    add-long v6, v12, v15

    add-long v6, v6, v17

    .line 538
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    int-to-long v8, v1

    add-long/2addr v6, v8

    iget-wide v8, v0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->byteLimitPost:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_ea

    .line 539
    invoke-direct {v0, v10}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestBuilderPost(Ljava/util/ArrayList;)Lokhttp3/Request;

    move-result-object v1

    .line 540
    .local v1, "request":Lokhttp3/Request;
    new-instance v6, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v1, v11}, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;-><init>(ZLokhttp3/Request;Ljava/util/LinkedList;)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .end local v10    # "postPayloadMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;>;"
    .local v6, "postPayloadMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 547
    .end local v11    # "reqEventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .local v7, "reqEventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 549
    move-wide v8, v15

    .line 550
    .end local v1    # "request":Lokhttp3/Request;
    .end local v12    # "totalByteSize":J
    .local v8, "totalByteSize":J
    nop

    .line 523
    move-object v10, v6

    move-object v11, v7

    move-wide v12, v8

    goto :goto_f6

    .line 552
    .end local v6    # "postPayloadMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;>;"
    .end local v7    # "reqEventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v8    # "totalByteSize":J
    .restart local v10    # "postPayloadMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;>;"
    .restart local v11    # "reqEventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .restart local v12    # "totalByteSize":J
    :cond_ea
    const/4 v1, 0x0

    add-long/2addr v12, v15

    .line 553
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 523
    .end local v14    # "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    .end local v15    # "payloadByteSize":J
    :goto_f6
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v22

    const-wide/16 v6, 0x16

    const/4 v8, 0x1

    goto/16 :goto_68

    .line 559
    .end local v5    # "j":I
    .end local v22    # "payloadCount":I
    .local v1, "payloadCount":I
    :cond_ff
    move/from16 v22, v1

    .end local v1    # "payloadCount":I
    .restart local v22    # "payloadCount":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_115

    .line 560
    invoke-direct {v0, v10}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestBuilderPost(Ljava/util/ArrayList;)Lokhttp3/Request;

    move-result-object v1

    .line 561
    .local v1, "request":Lokhttp3/Request;
    new-instance v5, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1, v11}, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;-><init>(ZLokhttp3/Request;Ljava/util/LinkedList;)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_116

    .line 517
    .end local v1    # "request":Lokhttp3/Request;
    .end local v10    # "postPayloadMaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;>;"
    .end local v11    # "reqEventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    .end local v12    # "totalByteSize":J
    :cond_115
    const/4 v6, 0x0

    :goto_116
    iget-object v1, v0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->bufferOption:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    invoke-virtual {v1}, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->getCode()I

    move-result v1

    add-int/2addr v4, v1

    move/from16 v1, v22

    const-wide/16 v6, 0x16

    const/4 v8, 0x1

    goto/16 :goto_57

    .line 565
    .end local v4    # "i":I
    .end local v22    # "payloadCount":I
    .local v1, "payloadCount":I
    :cond_124
    move/from16 v22, v1

    .end local v1    # "payloadCount":I
    .restart local v22    # "payloadCount":I
    :goto_126
    return-object v3
.end method

.method public flush()V
    .registers 2

    .line 290
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$2;

    invoke-direct {v0, p0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter$2;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter;)V

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/Executor;->execute(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method public getBufferOption()Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;
    .registers 2

    .line 737
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->bufferOption:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    return-object v0
.end method

.method public getByteLimitGet()J
    .registers 3

    .line 773
    iget-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->byteLimitGet:J

    return-wide v0
.end method

.method public getByteLimitPost()J
    .registers 3

    .line 780
    iget-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->byteLimitPost:J

    return-wide v0
.end method

.method public getEmitterStatus()Z
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getEmitterTick()I
    .registers 2

    .line 751
    iget v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->emitterTick:I

    return v0
.end method

.method public getEmitterUri()Ljava/lang/String;
    .registers 2

    .line 716
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uriBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyLimit()I
    .registers 2

    .line 759
    iget v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->emptyLimit:I

    return v0
.end method

.method public getEventStore()Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;
    .registers 2

    .line 643
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->eventStore:Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;

    return-object v0
.end method

.method public getHttpMethod()Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;
    .registers 2

    .line 730
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->httpMethod:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    return-object v0
.end method

.method public getRequestCallback()Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;
    .registers 2

    .line 723
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestCallback:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;

    return-object v0
.end method

.method public getRequestSecurity()Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;
    .registers 2

    .line 744
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestSecurity:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    return-object v0
.end method

.method public getSendLimit()I
    .registers 2

    .line 766
    iget v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->sendLimit:I

    return v0
.end method

.method protected performAsyncEmit(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;",
            ">;"
        }
    .end annotation

    .line 409
    .local p1, "requests":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 410
    .local v0, "results":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 413
    .local v1, "futures":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/concurrent/Future;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;

    .line 414
    .local v3, "request":Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;
    invoke-virtual {v3}, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;->getRequest()Lokhttp3/Request;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->getRequestCallable(Lokhttp3/Request;)Ljava/util/concurrent/Callable;

    move-result-object v4

    invoke-static {v4}, Lcom/snowplowanalytics/snowplow/tracker/Executor;->futureCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v3    # "request":Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;
    goto :goto_e

    .line 417
    :cond_2a
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v3, "Request Futures: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c9

    .line 422
    const/4 v3, -0x1

    .line 425
    .local v3, "code":I
    :try_start_47
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    const-wide/16 v8, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v8, v9, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_5b} :catch_7f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_47 .. :try_end_5b} :catch_6e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_47 .. :try_end_5b} :catch_5d

    move v3, v5

    .line 432
    :goto_5c
    goto :goto_90

    .line 430
    :catch_5d
    move-exception v5

    .line 431
    .local v5, "te":Ljava/util/concurrent/TimeoutException;
    iget-object v6, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v8, "Request Future had a timeout: %s"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v6, v8, v9}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_90

    .line 428
    .end local v5    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_6e
    move-exception v5

    .line 429
    .local v5, "ee":Ljava/util/concurrent/ExecutionException;
    iget-object v6, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v8, "Request Future failed: %s"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v6, v8, v9}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v5    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_5c

    .line 426
    :catch_7f
    move-exception v5

    .line 427
    .local v5, "ie":Ljava/lang/InterruptedException;
    iget-object v6, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v8, "Request Future was interrupted: %s"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v6, v8, v9}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v5    # "ie":Ljava/lang/InterruptedException;
    goto :goto_5c

    .line 434
    :goto_90
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;

    invoke-virtual {v5}, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;->isOversize()Z

    move-result v5

    if-eqz v5, :cond_af

    .line 435
    new-instance v5, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;

    invoke-virtual {v6}, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;->getEventIds()Ljava/util/LinkedList;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;-><init>(ZLjava/util/LinkedList;)V

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_c5

    .line 437
    :cond_af
    new-instance v5, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;

    invoke-direct {p0, v3}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isSuccessfulSend(I)Z

    move-result v6

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;

    invoke-virtual {v8}, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;->getEventIds()Ljava/util/LinkedList;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;-><init>(ZLjava/util/LinkedList;)V

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v3    # "code":I
    :goto_c5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_40

    .line 441
    .end local v2    # "i":I
    :cond_c9
    const/4 p1, 0x0

    .line 442
    const/4 v1, 0x0

    .line 444
    return-object v0
.end method

.method public setBufferOption(Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;)V
    .registers 3
    .param p1, "option"    # Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    .line 671
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    .line 672
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->bufferOption:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    .line 674
    :cond_a
    return-void
.end method

.method public setEmitterUri(Ljava/lang/String;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 707
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->uri:Ljava/lang/String;

    .line 708
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->buildEmitterUri()V

    .line 710
    :cond_d
    return-void
.end method

.method public setHttpMethod(Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;)V
    .registers 3
    .param p1, "method"    # Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    .line 682
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 683
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->httpMethod:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    .line 684
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->buildEmitterUri()V

    .line 686
    :cond_d
    return-void
.end method

.method public setRequestSecurity(Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;)V
    .registers 3
    .param p1, "security"    # Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    .line 694
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 695
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->requestSecurity:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    .line 696
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->buildEmitterUri()V

    .line 698
    :cond_d
    return-void
.end method

.method public shutdown()V
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Shutting down emitter."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 305
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/Executor;->shutdown()V

    .line 306
    return-void
.end method

###### Class com.snowplowanalytics.snowplow.tracker.Emitter.AnonymousClass1 (com.snowplowanalytics.snowplow.tracker.Emitter$1)
.class Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowplowanalytics/snowplow/tracker/Emitter;->add(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

.field final synthetic val$payload:Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;


# direct methods
.method constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter;Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;)V
    .registers 3
    .param p1, "this$0"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    .line 274
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    iput-object p2, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;->val$payload:Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->access$100(Lcom/snowplowanalytics/snowplow/tracker/Emitter;)Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;

    move-result-object v0

    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;->val$payload:Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    invoke-virtual {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->add(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;)V

    .line 278
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->access$200(Lcom/snowplowanalytics/snowplow/tracker/Emitter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 279
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->access$300(Lcom/snowplowanalytics/snowplow/tracker/Emitter;)V

    .line 281
    :cond_1e
    return-void
.end method

###### Class com.snowplowanalytics.snowplow.tracker.Emitter.AnonymousClass2 (com.snowplowanalytics.snowplow.tracker.Emitter$2)
.class Lcom/snowplowanalytics/snowplow/tracker/Emitter$2;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowplowanalytics/snowplow/tracker/Emitter;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;


# direct methods
.method constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    .line 290
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$2;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$2;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->access$200(Lcom/snowplowanalytics/snowplow/tracker/Emitter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 293
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$2;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->access$300(Lcom/snowplowanalytics/snowplow/tracker/Emitter;)V

    .line 295
    :cond_13
    return-void
.end method

###### Class com.snowplowanalytics.snowplow.tracker.Emitter.AnonymousClass3 (com.snowplowanalytics.snowplow.tracker.Emitter$3)
.class Lcom/snowplowanalytics/snowplow/tracker/Emitter$3;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowplowanalytics/snowplow/tracker/Emitter;->getRequestCallable(Lokhttp3/Request;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

.field final synthetic val$request:Lokhttp3/Request;


# direct methods
.method constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter;Lokhttp3/Request;)V
    .registers 3
    .param p1, "this$0"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    .line 455
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$3;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    iput-object p2, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$3;->val$request:Lokhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$3;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$3;->val$request:Lokhttp3/Request;

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->access$400(Lcom/snowplowanalytics/snowplow/tracker/Emitter;Lokhttp3/Request;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter$3;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class com.snowplowanalytics.snowplow.tracker.Emitter.EmitterBuilder (com.snowplowanalytics.snowplow.tracker.Emitter$EmitterBuilder)
.class public Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
.super Ljava/lang/Object;
.source "Emitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmitterBuilder"
.end annotation


# instance fields
.field bufferOption:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

.field byteLimitGet:J

.field byteLimitPost:J

.field final context:Landroid/content/Context;

.field emitterTick:I

.field emptyLimit:I

.field httpMethod:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

.field requestCallback:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;

.field requestSecurity:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

.field sendLimit:I

.field timeUnit:Ljava/util/concurrent/TimeUnit;

.field final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->requestCallback:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;

    .line 92
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;->POST:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->httpMethod:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    .line 93
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->DefaultGroup:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->bufferOption:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    .line 94
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;->HTTP:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->requestSecurity:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    .line 95
    const/4 v0, 0x5

    iput v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->emitterTick:I

    .line 96
    const/16 v1, 0xfa

    iput v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->sendLimit:I

    .line 97
    iput v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->emptyLimit:I

    .line 98
    const-wide/32 v0, 0x9c40

    iput-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->byteLimitGet:J

    .line 99
    iput-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->byteLimitPost:J

    .line 100
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 107
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->uri:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->context:Landroid/content/Context;

    .line 109
    return-void
.end method


# virtual methods
.method public build()Lcom/snowplowanalytics/snowplow/tracker/Emitter;
    .registers 3

    .line 210
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;Lcom/snowplowanalytics/snowplow/tracker/Emitter$1;)V

    return-object v0
.end method

.method public byteLimitGet(J)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    .registers 3
    .param p1, "byteLimitGet"    # J

    .line 181
    iput-wide p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->byteLimitGet:J

    .line 182
    return-object p0
.end method

.method public byteLimitPost(J)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    .registers 3
    .param p1, "byteLimitPost"    # J

    .line 191
    iput-wide p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->byteLimitPost:J

    .line 192
    return-object p0
.end method

.method public callback(Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    .registers 2
    .param p1, "requestCallback"    # Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;

    .line 143
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->requestCallback:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestCallback;

    .line 144
    return-object p0
.end method

.method public emptyLimit(I)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    .registers 2
    .param p1, "emptyLimit"    # I

    .line 171
    iput p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->emptyLimit:I

    .line 172
    return-object p0
.end method

.method public method(Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    .registers 2
    .param p1, "httpMethod"    # Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    .line 116
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->httpMethod:Lcom/snowplowanalytics/snowplow/tracker/emitter/HttpMethod;

    .line 117
    return-object p0
.end method

.method public option(Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    .registers 2
    .param p1, "option"    # Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    .line 125
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->bufferOption:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    .line 126
    return-object p0
.end method

.method public security(Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    .registers 2
    .param p1, "requestSecurity"    # Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    .line 134
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->requestSecurity:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    .line 135
    return-object p0
.end method

.method public sendLimit(I)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    .registers 2
    .param p1, "sendLimit"    # I

    .line 161
    iput p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->sendLimit:I

    .line 162
    return-object p0
.end method

.method public tick(I)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    .registers 2
    .param p1, "emitterTick"    # I

    .line 152
    iput p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->emitterTick:I

    .line 153
    return-object p0
.end method

.method public timeUnit(Ljava/util/concurrent/TimeUnit;)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;
    .registers 2
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 200
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 201
    return-object p0
.end method
