###### Class com.snowplowanalytics.snowplow.tracker.Tracker (com.snowplowanalytics.snowplow.tracker.Tracker)
.class public Lcom/snowplowanalytics/snowplow/tracker/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sessionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;


# instance fields
.field private appId:Ljava/lang/String;

.field private applicationCrash:Z

.field private base64Encoded:Z

.field private final context:Landroid/content/Context;

.field private dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private devicePlatform:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

.field private emitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

.field private geoLocationContext:Z

.field private level:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

.field private lifecycleEvents:Z

.field private mobileContext:Z

.field private namespace:Ljava/lang/String;

.field private sessionCheckInterval:J

.field private sessionContext:Z

.field private subject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

.field private threadCount:I

.field private timeUnit:Ljava/util/concurrent/TimeUnit;

.field private trackerSession:Lcom/snowplowanalytics/snowplow/tracker/Session;

.field private final trackerVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    .line 60
    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;)V
    .registers 10
    .param p1, "builder"    # Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "andr-0.6.2"

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->trackerVersion:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 300
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->context:Landroid/content/Context;

    .line 301
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->emitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->emitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    .line 302
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->appId:Ljava/lang/String;

    .line 303
    iget-boolean v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->base64Encoded:Z

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->base64Encoded:Z

    .line 304
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->namespace:Ljava/lang/String;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->namespace:Ljava/lang/String;

    .line 305
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->subject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->subject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

    .line 306
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->devicePlatform:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->devicePlatform:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 307
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->logLevel:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->level:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    .line 308
    iget-boolean v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->sessionContext:Z

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionContext:Z

    .line 309
    iget-wide v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->sessionCheckInterval:J

    iput-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionCheckInterval:J

    .line 310
    iget v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->threadCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3d

    goto :goto_3f

    :cond_3d
    iget v1, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->threadCount:I

    :goto_3f
    iput v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->threadCount:I

    .line 311
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 312
    iget-boolean v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->geoLocationContext:Z

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->geoLocationContext:Z

    .line 313
    iget-boolean v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->mobileContext:Z

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->mobileContext:Z

    .line 314
    iget-boolean v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->applicationCrash:Z

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->applicationCrash:Z

    .line 315
    iget-boolean v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->lifecycleEvents:Z

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->lifecycleEvents:Z

    .line 318
    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionContext:Z

    if-eqz v0, :cond_69

    .line 319
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/Session;

    iget-wide v2, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->foregroundTimeout:J

    iget-wide v4, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->backgroundTimeout:J

    iget-object v6, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->context:Landroid/content/Context;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/snowplowanalytics/snowplow/tracker/Session;-><init>(JJLjava/util/concurrent/TimeUnit;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->trackerSession:Lcom/snowplowanalytics/snowplow/tracker/Session;

    .line 327
    :cond_69
    iget v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->threadCount:I

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/Executor;->setThreadCount(I)V

    .line 329
    iget-object v0, p1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->logLevel:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->updateLogLevel(Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;)V

    .line 330
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->TAG:Ljava/lang/String;

    const-string v1, "Tracker created successfully."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method synthetic constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .param p2, "x1"    # Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;

    .line 52
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/snowplowanalytics/snowplow/tracker/Tracker;Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/Tracker;
    .param p1, "x1"    # Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->addEventPayload(Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/snowplowanalytics/snowplow/tracker/Tracker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    .line 52
    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->base64Encoded:Z

    return v0
.end method

.method private addEventPayload(Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .param p1, "payload"    # Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    .param p3, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;",
            "Ljava/util/List<",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 405
    .local p2, "context":Ljava/util/List;, "Ljava/util/List<Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;>;"
    const-string v0, "p"

    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->devicePlatform:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    invoke-virtual {v1}, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "aid"

    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string/jumbo v0, "tna"

    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->namespace:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string/jumbo v0, "tv"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "andr-0.6.2"

    invoke-virtual {p1, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->subject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

    if-eqz v0, :cond_37

    .line 412
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->subject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

    invoke-virtual {v1}, Lcom/snowplowanalytics/snowplow/tracker/Subject;->getSubject()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->addMap(Ljava/util/Map;)V

    .line 416
    :cond_37
    invoke-direct {p0, p2, p3}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getFinalContext(Ljava/util/List;Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    move-result-object v0

    .line 417
    .local v0, "envelope":Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    if-eqz v0, :cond_4e

    .line 418
    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-boolean v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->base64Encoded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "cx"

    const-string v4, "co"

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->addMap(Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_4e
    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->TAG:Ljava/lang/String;

    const-string v2, "Adding new payload to event storage: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->emitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-virtual {v1, p1}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->add(Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;)V

    .line 425
    return-void
.end method

.method public static close()V
    .registers 1

    .line 83
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    if-eqz v0, :cond_15

    .line 84
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->pauseSessionChecking()V

    .line 85
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getEmitter()Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->shutdown()V

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    .line 88
    :cond_15
    return-void
.end method

.method private getFinalContext(Ljava/util/List;Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .registers 7
    .param p2, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;"
        }
    .end annotation

    .line 438
    .local p1, "contexts":Ljava/util/List;, "Ljava/util/List<Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;>;"
    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionContext:Z

    if-eqz v0, :cond_d

    .line 439
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->trackerSession:Lcom/snowplowanalytics/snowplow/tracker/Session;

    invoke-virtual {v0, p2}, Lcom/snowplowanalytics/snowplow/tracker/Session;->getSessionContext(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_d
    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->geoLocationContext:Z

    if-eqz v0, :cond_1a

    .line 444
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getGeoLocationContext(Landroid/content/Context;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_1a
    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->mobileContext:Z

    if-eqz v0, :cond_27

    .line 449
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getMobileContext(Landroid/content/Context;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2f

    .line 454
    const/4 v0, 0x0

    return-object v0

    .line 456
    :cond_2f
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 457
    .local v0, "contextMaps":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 458
    .local v2, "selfDescribingJson":Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    if-eqz v2, :cond_4d

    .line 459
    invoke-virtual {v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->getMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v2    # "selfDescribingJson":Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    :cond_4d
    goto :goto_38

    .line 462
    :cond_4e
    new-instance v1, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v2, "iglu:com.snowplowanalytics.snowplow/contexts/jsonschema/1-0-1"

    invoke-direct {v1, v2, v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static init(Lcom/snowplowanalytics/snowplow/tracker/Tracker;)Lcom/snowplowanalytics/snowplow/tracker/Tracker;
    .registers 2
    .param p0, "newTracker"    # Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    .line 63
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    if-nez v0, :cond_14

    .line 64
    sput-object p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    .line 65
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->resumeSessionChecking()V

    .line 66
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getEmitter()Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->flush()V

    .line 68
    :cond_14
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->instance()Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Lcom/snowplowanalytics/snowplow/tracker/Tracker;
    .registers 2

    .line 72
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    if-eqz v0, :cond_1f

    .line 76
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getApplicationCrash()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;

    if-nez v0, :cond_1c

    .line 77
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;

    invoke-direct {v0}, Lcom/snowplowanalytics/snowplow/tracker/tracker/ExceptionHandler;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 79
    :cond_1c
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->spTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    return-object v0

    .line 73
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FATAL: Tracker must be initialized first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 594
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationCrash()Z
    .registers 2

    .line 641
    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->applicationCrash:Z

    return v0
.end method

.method public getBase64Encoded()Z
    .registers 2

    .line 601
    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->base64Encoded:Z

    return v0
.end method

.method public getDataCollection()Z
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getEmitter()Lcom/snowplowanalytics/snowplow/tracker/Emitter;
    .registers 2

    .line 580
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->emitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    return-object v0
.end method

.method public getLifecycleEvents()Z
    .registers 2

    .line 648
    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->lifecycleEvents:Z

    return v0
.end method

.method public getLogLevel()Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;
    .registers 2

    .line 615
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->level:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .line 587
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;
    .registers 2

    .line 608
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->devicePlatform:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    return-object v0
.end method

.method public getSession()Lcom/snowplowanalytics/snowplow/tracker/Session;
    .registers 2

    .line 622
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->trackerSession:Lcom/snowplowanalytics/snowplow/tracker/Session;

    return-object v0
.end method

.method public getSubject()Lcom/snowplowanalytics/snowplow/tracker/Subject;
    .registers 2

    .line 573
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->subject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

    return-object v0
.end method

.method public getThreadCount()I
    .registers 2

    .line 635
    iget v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->threadCount:I

    return v0
.end method

.method public getTrackerVersion()Ljava/lang/String;
    .registers 2

    .line 566
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "andr-0.6.2"

    return-object v0
.end method

.method public pauseEventTracking()V
    .registers 4

    .line 484
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 485
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->pauseSessionChecking()V

    .line 486
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getEmitter()Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->shutdown()V

    .line 488
    :cond_14
    return-void
.end method

.method public pauseSessionChecking()V
    .registers 4

    .line 512
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_16

    .line 513
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->TAG:Ljava/lang/String;

    const-string v1, "Session checking has been paused."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 515
    const/4 v0, 0x0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 517
    :cond_16
    return-void
.end method

.method public resumeEventTracking()V
    .registers 4

    .line 473
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 474
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->resumeSessionChecking()V

    .line 475
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getEmitter()Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->flush()V

    .line 477
    :cond_14
    return-void
.end method

.method public resumeSessionChecking()V
    .registers 10

    .line 495
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionContext:Z

    if-eqz v0, :cond_2a

    .line 496
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->TAG:Ljava/lang/String;

    const-string v1, "Session checking has been resumed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->trackerSession:Lcom/snowplowanalytics/snowplow/tracker/Session;

    .line 498
    .local v0, "session":Lcom/snowplowanalytics/snowplow/tracker/Session;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 499
    sget-object v2, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/snowplowanalytics/snowplow/tracker/Tracker$2;

    invoke-direct {v3, p0, v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$2;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Tracker;Lcom/snowplowanalytics/snowplow/tracker/Session;)V

    iget-wide v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionCheckInterval:J

    iget-wide v6, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionCheckInterval:J

    iget-object v8, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 506
    .end local v0    # "session":Lcom/snowplowanalytics/snowplow/tracker/Session;
    :cond_2a
    return-void
.end method

.method public setEmitter(Lcom/snowplowanalytics/snowplow/tracker/Emitter;)V
    .registers 3
    .param p1, "emitter"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    .line 547
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getEmitter()Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->shutdown()V

    .line 550
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->emitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    .line 551
    return-void
.end method

.method public setLifecycleHandler(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 527
    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->lifecycleEvents:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->sessionContext:Z

    if-eqz v0, :cond_1d

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1d

    .line 529
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;

    invoke-direct {v0}, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;-><init>()V

    .line 530
    .local v0, "handler":Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 531
    invoke-virtual {p1, v0}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 533
    .end local v0    # "handler":Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;
    :cond_1d
    return-void
.end method

.method public setPlatform(Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;)V
    .registers 2
    .param p1, "platform"    # Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 557
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->devicePlatform:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 558
    return-void
.end method

.method public setSubject(Lcom/snowplowanalytics/snowplow/tracker/Subject;)V
    .registers 2
    .param p1, "subject"    # Lcom/snowplowanalytics/snowplow/tracker/Subject;

    .line 539
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->subject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

    .line 540
    return-void
.end method

.method public track(Lcom/snowplowanalytics/snowplow/tracker/events/Event;)V
    .registers 3
    .param p1, "event"    # Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    .line 342
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 343
    return-void

    .line 346
    :cond_9
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;

    invoke-direct {v0, p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Tracker;Lcom/snowplowanalytics/snowplow/tracker/events/Event;)V

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/Executor;->execute(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

###### Class com.snowplowanalytics.snowplow.tracker.Tracker.AnonymousClass1 (com.snowplowanalytics.snowplow.tracker.Tracker$1)
.class Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowplowanalytics/snowplow/tracker/Tracker;->track(Lcom/snowplowanalytics/snowplow/tracker/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

.field final synthetic val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;


# direct methods
.method constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Tracker;Lcom/snowplowanalytics/snowplow/tracker/events/Event;)V
    .registers 3
    .param p1, "this$0"    # Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    .line 346
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    iput-object p2, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 349
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    invoke-interface {v0}, Lcom/snowplowanalytics/snowplow/tracker/events/Event;->getContext()Ljava/util/List;

    move-result-object v0

    .line 350
    .local v0, "context":Ljava/util/List;, "Ljava/util/List<Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;>;"
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    invoke-interface {v1}, Lcom/snowplowanalytics/snowplow/tracker/events/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "eventId":Ljava/lang/String;
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 354
    .local v2, "eClass":Ljava/lang/Class;
    const-class v3, Lcom/snowplowanalytics/snowplow/tracker/events/PageView;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e0

    const-class v3, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto/16 :goto_e0

    .line 356
    :cond_24
    const-class v3, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 357
    iget-object v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    invoke-interface {v4}, Lcom/snowplowanalytics/snowplow/tracker/events/Event;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    move-result-object v4

    check-cast v4, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    invoke-static {v3, v4, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->access$100(Lcom/snowplowanalytics/snowplow/tracker/Tracker;Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;Ljava/util/List;Ljava/lang/String;)V

    .line 360
    iget-object v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    check-cast v3, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;

    .line 361
    .local v3, "ecommerceTransaction":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;
    invoke-virtual {v3}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;

    .line 362
    .local v5, "item":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;
    invoke-virtual {v3}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->getDeviceCreatedTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->setDeviceCreatedTimestamp(J)V

    .line 363
    iget-object v6, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v5}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v7

    invoke-virtual {v5}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->getContext()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->getEventId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->access$100(Lcom/snowplowanalytics/snowplow/tracker/Tracker;Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;Ljava/util/List;Ljava/lang/String;)V

    .line 364
    .end local v5    # "item":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;
    goto :goto_45

    .line 365
    .end local v3    # "ecommerceTransaction":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;
    :cond_6a
    goto/16 :goto_ed

    :cond_6c
    const-class v3, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 368
    iget-object v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    check-cast v3, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;

    .line 369
    .local v3, "selfDescribing":Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;
    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-static {v4}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->access$200(Lcom/snowplowanalytics/snowplow/tracker/Tracker;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->setBase64Encode(Z)V

    .line 370
    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v3}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v5

    invoke-static {v4, v5, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->access$100(Lcom/snowplowanalytics/snowplow/tracker/Tracker;Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;Ljava/util/List;Ljava/lang/String;)V

    .line 371
    .end local v3    # "selfDescribing":Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;
    goto :goto_ed

    :cond_8b
    const-class v3, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-class v3, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 372
    :cond_9b
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->builder()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    .line 373
    invoke-interface {v4}, Lcom/snowplowanalytics/snowplow/tracker/events/Event;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    move-result-object v4

    check-cast v4, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    invoke-virtual {v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->eventData(Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;)Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v3

    .line 374
    invoke-virtual {v3, v0}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->customContext(Ljava/util/List;)Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v3

    check-cast v3, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    .line 375
    invoke-interface {v4}, Lcom/snowplowanalytics/snowplow/tracker/events/Event;->getDeviceCreatedTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->deviceCreatedTimestamp(J)Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v3

    check-cast v3, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    .line 376
    invoke-interface {v4}, Lcom/snowplowanalytics/snowplow/tracker/events/Event;->getEventId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->eventId(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v3

    check-cast v3, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    .line 377
    invoke-virtual {v3}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->build()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;

    move-result-object v3

    .line 380
    .restart local v3    # "selfDescribing":Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;
    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-static {v4}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->access$200(Lcom/snowplowanalytics/snowplow/tracker/Tracker;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->setBase64Encode(Z)V

    .line 381
    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v3}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v5

    invoke-static {v4, v5, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->access$100(Lcom/snowplowanalytics/snowplow/tracker/Tracker;Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_ed

    .line 355
    .end local v3    # "selfDescribing":Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;
    :cond_e0
    :goto_e0
    iget-object v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    iget-object v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;->val$event:Lcom/snowplowanalytics/snowplow/tracker/events/Event;

    invoke-interface {v4}, Lcom/snowplowanalytics/snowplow/tracker/events/Event;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;

    move-result-object v4

    check-cast v4, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    invoke-static {v3, v4, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->access$100(Lcom/snowplowanalytics/snowplow/tracker/Tracker;Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;Ljava/util/List;Ljava/lang/String;)V

    .line 383
    :cond_ed
    :goto_ed
    return-void
.end method

###### Class com.snowplowanalytics.snowplow.tracker.Tracker.AnonymousClass2 (com.snowplowanalytics.snowplow.tracker.Tracker$2)
.class Lcom/snowplowanalytics/snowplow/tracker/Tracker$2;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snowplowanalytics/snowplow/tracker/Tracker;->resumeSessionChecking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

.field final synthetic val$session:Lcom/snowplowanalytics/snowplow/tracker/Session;


# direct methods
.method constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Tracker;Lcom/snowplowanalytics/snowplow/tracker/Session;)V
    .registers 3
    .param p1, "this$0"    # Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    .line 499
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$2;->this$0:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    iput-object p2, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$2;->val$session:Lcom/snowplowanalytics/snowplow/tracker/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$2;->val$session:Lcom/snowplowanalytics/snowplow/tracker/Session;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Session;->checkAndUpdateSession()V

    .line 503
    return-void
.end method

###### Class com.snowplowanalytics.snowplow.tracker.Tracker.TrackerBuilder (com.snowplowanalytics.snowplow.tracker.Tracker$TrackerBuilder)
.class public Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackerBuilder"
.end annotation


# instance fields
.field final appId:Ljava/lang/String;

.field applicationCrash:Z

.field backgroundTimeout:J

.field base64Encoded:Z

.field final context:Landroid/content/Context;

.field devicePlatform:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

.field final emitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

.field foregroundTimeout:J

.field geoLocationContext:Z

.field lifecycleEvents:Z

.field logLevel:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

.field mobileContext:Z

.field final namespace:Ljava/lang/String;

.field sessionCheckInterval:J

.field sessionContext:Z

.field subject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

.field threadCount:I

.field timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 9
    .param p1, "emitter"    # Lcom/snowplowanalytics/snowplow/tracker/Emitter;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->subject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->base64Encoded:Z

    .line 123
    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->Mobile:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    iput-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->devicePlatform:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 124
    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->OFF:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    iput-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->logLevel:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->sessionContext:Z

    .line 126
    const-wide/16 v2, 0x258

    iput-wide v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->foregroundTimeout:J

    .line 127
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->backgroundTimeout:J

    .line 128
    const-wide/16 v2, 0xf

    iput-wide v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->sessionCheckInterval:J

    .line 129
    const/16 v2, 0xa

    iput v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->threadCount:I

    .line 130
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 131
    iput-boolean v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->geoLocationContext:Z

    .line 132
    iput-boolean v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->mobileContext:Z

    .line 133
    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->applicationCrash:Z

    .line 134
    iput-boolean v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->lifecycleEvents:Z

    .line 143
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->emitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    .line 144
    iput-object p2, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->namespace:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->appId:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->context:Landroid/content/Context;

    .line 147
    return-void
.end method


# virtual methods
.method public applicationCrash(Ljava/lang/Boolean;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 3
    .param p1, "applicationCrash"    # Ljava/lang/Boolean;

    .line 263
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->applicationCrash:Z

    .line 264
    return-object p0
.end method

.method public backgroundTimeout(J)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 3
    .param p1, "timeout"    # J

    .line 208
    iput-wide p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->backgroundTimeout:J

    .line 209
    return-object p0
.end method

.method public base64(Ljava/lang/Boolean;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 3
    .param p1, "base64"    # Ljava/lang/Boolean;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->base64Encoded:Z

    .line 164
    return-object p0
.end method

.method public build()Lcom/snowplowanalytics/snowplow/tracker/Tracker;
    .registers 3

    .line 289
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;Lcom/snowplowanalytics/snowplow/tracker/Tracker$1;)V

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->init(Lcom/snowplowanalytics/snowplow/tracker/Tracker;)Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    move-result-object v0

    return-object v0
.end method

.method public foregroundTimeout(J)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 3
    .param p1, "timeout"    # J

    .line 199
    iput-wide p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->foregroundTimeout:J

    .line 200
    return-object p0
.end method

.method public geoLocationContext(Ljava/lang/Boolean;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 3
    .param p1, "geoLocationContext"    # Ljava/lang/Boolean;

    .line 244
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->geoLocationContext:Z

    .line 245
    return-object p0
.end method

.method public level(Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 2
    .param p1, "log"    # Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    .line 181
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->logLevel:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    .line 182
    return-object p0
.end method

.method public lifecycleEvents(Ljava/lang/Boolean;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 3
    .param p1, "lifecycleEvents"    # Ljava/lang/Boolean;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 277
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->lifecycleEvents:Z

    .line 278
    return-object p0
.end method

.method public mobileContext(Ljava/lang/Boolean;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 3
    .param p1, "mobileContext"    # Ljava/lang/Boolean;

    .line 253
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->mobileContext:Z

    .line 254
    return-object p0
.end method

.method public platform(Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 2
    .param p1, "platform"    # Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 172
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->devicePlatform:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 173
    return-object p0
.end method

.method public sessionCheckInterval(J)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 3
    .param p1, "sessionCheckInterval"    # J

    .line 217
    iput-wide p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->sessionCheckInterval:J

    .line 218
    return-object p0
.end method

.method public sessionContext(Z)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 2
    .param p1, "sessionContext"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->sessionContext:Z

    .line 191
    return-object p0
.end method

.method public subject(Lcom/snowplowanalytics/snowplow/tracker/Subject;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 2
    .param p1, "subject"    # Lcom/snowplowanalytics/snowplow/tracker/Subject;

    .line 154
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->subject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

    .line 155
    return-object p0
.end method

.method public threadCount(I)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 2
    .param p1, "threadCount"    # I

    .line 226
    iput p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->threadCount:I

    .line 227
    return-object p0
.end method

.method public timeUnit(Ljava/util/concurrent/TimeUnit;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;
    .registers 2
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 235
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 236
    return-object p0
.end method
