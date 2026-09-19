###### Class com.digikala.dms.core.SnowplowHelper (com.digikala.dms.core.SnowplowHelper)
.class public Lcom/digikala/dms/core/SnowplowHelper;
.super Ljava/lang/Object;
.source "SnowplowHelper.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "DMS Android App"

.field private static final ENDPOINT:Ljava/lang/String; = "dmst.digikala.com"

.field private static final NAMESPACE:Ljava/lang/String; = "DMS Android App"

.field private static sInitialized:Z

.field private static sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;


# instance fields
.field mEmitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

.field mSubject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

.field mTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static declared-synchronized getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;
    .registers 2

    const-class v0, Lcom/digikala/dms/core/SnowplowHelper;

    monitor-enter v0

    .line 71
    :try_start_3
    sget-boolean v1, Lcom/digikala/dms/core/SnowplowHelper;->sInitialized:Z

    if-eqz v1, :cond_b

    .line 72
    sget-object v1, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    monitor-exit v0

    return-object v1

    .line 74
    :cond_b
    :try_start_b
    new-instance v1, Lcom/digikala/dms/core/SnowplowHelper;

    invoke-direct {v1}, Lcom/digikala/dms/core/SnowplowHelper;-><init>()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 70
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static init(Landroid/app/Application;)V
    .registers 7
    .param p0, "app"    # Landroid/app/Application;

    .line 44
    new-instance v0, Lcom/digikala/dms/core/SnowplowHelper;

    invoke-direct {v0}, Lcom/digikala/dms/core/SnowplowHelper;-><init>()V

    sput-object v0, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    .line 45
    sget-object v0, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    new-instance v1, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;

    const-string v2, "dmst.digikala.com"

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sget-object v2, Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;->HeavyGroup:Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;

    .line 46
    invoke-virtual {v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->option(Lcom/snowplowanalytics/snowplow/tracker/emitter/BufferOption;)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;

    move-result-object v1

    const-string v2, "release"

    const-string v3, "release"

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v2, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;->HTTPS:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    goto :goto_29

    :cond_27
    sget-object v2, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;->HTTP:Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;

    :goto_29
    invoke-virtual {v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->security(Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestSecurity;)Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/snowplowanalytics/snowplow/tracker/Emitter$EmitterBuilder;->build()Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    move-result-object v1

    iput-object v1, v0, Lcom/digikala/dms/core/SnowplowHelper;->mEmitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    .line 49
    sget-object v0, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    new-instance v1, Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;

    invoke-direct {v1}, Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;-><init>()V

    .line 51
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;->context(Landroid/content/Context;)Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/snowplowanalytics/snowplow/tracker/Subject$SubjectBuilder;->build()Lcom/snowplowanalytics/snowplow/tracker/Subject;

    move-result-object v1

    iput-object v1, v0, Lcom/digikala/dms/core/SnowplowHelper;->mSubject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

    .line 53
    sget-object v0, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    new-instance v1, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    sget-object v2, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    iget-object v2, v2, Lcom/digikala/dms/core/SnowplowHelper;->mEmitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    const-string v3, "DMS Android App"

    const-string v4, "DMS Android App"

    .line 54
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;-><init>(Lcom/snowplowanalytics/snowplow/tracker/Emitter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sget-object v2, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    iget-object v2, v2, Lcom/digikala/dms/core/SnowplowHelper;->mSubject:Lcom/snowplowanalytics/snowplow/tracker/Subject;

    .line 55
    invoke-virtual {v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->subject(Lcom/snowplowanalytics/snowplow/tracker/Subject;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    move-result-object v1

    .line 56
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->geoLocationContext(Ljava/lang/Boolean;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    move-result-object v1

    sget-object v3, Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;->Mobile:Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;

    .line 57
    invoke-virtual {v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->platform(Lcom/snowplowanalytics/snowplow/tracker/DevicePlatforms;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    move-result-object v1

    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->applicationCrash(Ljava/lang/Boolean;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->sessionContext(Z)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    move-result-object v1

    .line 60
    const-wide/16 v3, 0xe10

    invoke-virtual {v1, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->backgroundTimeout(J)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->foregroundTimeout(J)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    move-result-object v1

    .line 62
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->mobileContext(Ljava/lang/Boolean;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    move-result-object v1

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->lifecycleEvents(Ljava/lang/Boolean;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    move-result-object v1

    const-string v3, "release"

    const-string v4, "release"

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a5

    sget-object v3, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->OFF:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    goto :goto_a7

    :cond_a5
    sget-object v3, Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;->VERBOSE:Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;

    :goto_a7
    invoke-virtual {v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->level(Lcom/snowplowanalytics/snowplow/tracker/utils/LogLevel;)Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker$TrackerBuilder;->build()Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->init(Lcom/snowplowanalytics/snowplow/tracker/Tracker;)Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    move-result-object v1

    iput-object v1, v0, Lcom/digikala/dms/core/SnowplowHelper;->mTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    .line 67
    sput-boolean v2, Lcom/digikala/dms/core/SnowplowHelper;->sInitialized:Z

    .line 68
    return-void
.end method


# virtual methods
.method public getEmitterSize()J
    .registers 3

    .line 113
    sget-object v0, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    iget-object v0, v0, Lcom/digikala/dms/core/SnowplowHelper;->mEmitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->getEventStore()Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/storage/EventStore;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public meldDeliverLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "statusId"    # Ljava/lang/String;
    .param p2, "driverId"    # Ljava/lang/String;
    .param p3, "dcId"    # Ljava/lang/String;
    .param p4, "packId"    # Ljava/lang/String;
    .param p5, "shipmentId"    # Ljava/lang/String;
    .param p6, "currentTime"    # Ljava/lang/String;
    .param p7, "gpsStatus"    # Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "userId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "distributionPointId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "packId"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "shipmentId"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "statusId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "currentTime"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "gpsStatus"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v1, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v2, "iglu:com.digikala.research/DmsIsDeliveredData/jsonschema/1-0-0"

    invoke-direct {v1, v2, v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .local v1, "DescribingJson":Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    sget-object v2, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    iget-object v2, v2, Lcom/digikala/dms/core/SnowplowHelper;->mTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->builder()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->eventData(Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;)Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->build()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->track(Lcom/snowplowanalytics/snowplow/tracker/events/Event;)V

    .line 102
    return-void
.end method

.method public sendEventToServer()V
    .registers 2

    .line 117
    sget-object v0, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    iget-object v0, v0, Lcom/digikala/dms/core/SnowplowHelper;->mEmitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->flush()V

    .line 118
    return-void
.end method

.method public startTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "driverId"    # Ljava/lang/String;
    .param p2, "dcId"    # Ljava/lang/String;
    .param p3, "packId"    # Ljava/lang/String;
    .param p4, "currentTimeSystem"    # Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "userId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "distributionPointId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "packId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "currentTime"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v2, "iglu:com.digikala.research/DMSPayloadData/jsonschema/1-0-0"

    invoke-direct {v1, v2, v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .local v1, "DescribingJson":Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    sget-object v2, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    iget-object v2, v2, Lcom/digikala/dms/core/SnowplowHelper;->mTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->builder()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->eventData(Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;)Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->build()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->track(Lcom/snowplowanalytics/snowplow/tracker/events/Event;)V

    .line 87
    invoke-static {}, Lcom/digikala/dms/core/SnowplowHelper;->getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;

    move-result-object v2

    iget-object v2, v2, Lcom/digikala/dms/core/SnowplowHelper;->mTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v2}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getSession()Lcom/snowplowanalytics/snowplow/tracker/Session;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/Session;->setIsBackground(Z)V

    .line 88
    return-void
.end method

.method public trackerPauseTraking()V
    .registers 2

    .line 109
    sget-object v0, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    iget-object v0, v0, Lcom/digikala/dms/core/SnowplowHelper;->mTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->pauseEventTracking()V

    .line 110
    return-void
.end method

.method public trakerResumeTraking()V
    .registers 2

    .line 105
    sget-object v0, Lcom/digikala/dms/core/SnowplowHelper;->sSnowplowHelperInstance:Lcom/digikala/dms/core/SnowplowHelper;

    iget-object v0, v0, Lcom/digikala/dms/core/SnowplowHelper;->mTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->resumeEventTracking()V

    .line 106
    return-void
.end method
