###### Class com.snowplowanalytics.snowplow.tracker.Session (com.snowplowanalytics.snowplow.tracker.Session)
.class public Lcom/snowplowanalytics/snowplow/tracker/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private accessedLast:J

.field private backgroundTimeout:J

.field private context:Landroid/content/Context;

.field private currentSessionId:Ljava/lang/String;

.field private firstId:Ljava/lang/String;

.field private foregroundTimeout:J

.field private isBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private previousSessionId:Ljava/lang/String;

.field private sessionIndex:I

.field private sessionStorage:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/Session;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Landroid/content/Context;)V
    .registers 14
    .param p1, "foregroundTimeout"    # J
    .param p3, "backgroundTimeout"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->currentSessionId:Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->sessionIndex:I

    .line 52
    const-string v2, "SQLITE"

    iput-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->sessionStorage:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->firstId:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->isBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->foregroundTimeout:J

    .line 77
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->backgroundTimeout:J

    .line 78
    iput-object p6, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->context:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Session;->getSessionFromFile()Ljava/util/Map;

    move-result-object v0

    .line 80
    .local v0, "sessionInfo":Ljava/util/Map;
    if-nez v0, :cond_31

    .line 81
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getEventId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->userId:Ljava/lang/String;

    goto :goto_70

    .line 84
    :cond_31
    :try_start_31
    const-string/jumbo v2, "userId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "uid":Ljava/lang/String;
    const-string v3, "sessionId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "sid":Ljava/lang/String;
    const-string v4, "sessionIndex"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 88
    .local v4, "si":I
    iput-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->userId:Ljava/lang/String;

    .line 89
    iput v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->sessionIndex:I

    .line 90
    iput-object v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->currentSessionId:Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_58} :catch_59

    .line 94
    .end local v2    # "uid":Ljava/lang/String;
    .end local v3    # "sid":Ljava/lang/String;
    .end local v4    # "si":I
    goto :goto_70

    .line 91
    :catch_59
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v4, "Exception occurred retrieving session info from file: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getEventId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->userId:Ljava/lang/String;

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_70
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Session;->updateSessionInfo()V

    .line 98
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Session;->updateAccessedTime()V

    .line 100
    sget-object v2, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v3, "Tracker Session Object created."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method private getSessionFromFile()Ljava/util/Map;
    .registers 3

    .line 225
    const-string v0, "snowplow_session_vars"

    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;->getMapFromFile(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private saveSessionToFile()Z
    .registers 4

    .line 213
    const-string v0, "snowplow_session_vars"

    .line 215
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/Session;->getSessionValues()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->context:Landroid/content/Context;

    .line 213
    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/FileStore;->saveMapToFile(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private updateAccessedTime()V
    .registers 3

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->accessedLast:J

    .line 236
    return-void
.end method

.method private updateSessionInfo()V
    .registers 7

    .line 195
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->currentSessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->previousSessionId:Ljava/lang/String;

    .line 196
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->currentSessionId:Ljava/lang/String;

    .line 197
    iget v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->sessionIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->sessionIndex:I

    .line 199
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v2, "Session information is updated:"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v2, " + Session ID: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->currentSessionId:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v0, v2, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v2, " + Previous Session ID: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->previousSessionId:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v0, v2, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v2, " + Session Index: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->sessionIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v2, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Session;->saveSessionToFile()Z

    .line 205
    return-void
.end method


# virtual methods
.method public checkAndUpdateSession()V
    .registers 11

    .line 123
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v1, "Checking and updating session information."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    .local v0, "checkTime":J
    iget-object v3, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->isBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 129
    .local v3, "isBackground":Z
    if-eqz v3, :cond_1a

    .line 130
    iget-wide v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->backgroundTimeout:J

    .line 132
    .local v8, "range":J
    :goto_18
    move-wide v8, v4

    goto :goto_1d

    .end local v8    # "range":J
    :cond_1a
    iget-wide v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->foregroundTimeout:J

    goto :goto_18

    .line 135
    .restart local v8    # "range":J
    :goto_1d
    iget-wide v4, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->accessedLast:J

    move-wide v6, v0

    invoke-static/range {v4 .. v9}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->isTimeInRange(JJJ)Z

    move-result v4

    if-nez v4, :cond_49

    .line 136
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Session;->updateSessionInfo()V

    .line 137
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Session;->updateAccessedTime()V

    .line 140
    if-eqz v3, :cond_49

    .line 141
    sget-object v4, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v5, "Timeout in background, pausing session checking..."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :try_start_37
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->instance()Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->pauseSessionChecking()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3e} :catch_3f

    .line 146
    goto :goto_49

    .line 144
    :catch_3f
    move-exception v4

    .line 145
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v6, "Could not pause checking as tracker not setup"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_49
    :goto_49
    return-void
.end method

.method public getBackgroundTimeout()J
    .registers 3

    .line 292
    iget-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->backgroundTimeout:J

    return-wide v0
.end method

.method public getCurrentSessionId()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->currentSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstId()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->firstId:Ljava/lang/String;

    return-object v0
.end method

.method public getForegroundTimeout()J
    .registers 3

    .line 285
    iget-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->foregroundTimeout:J

    return-wide v0
.end method

.method public getPreviousSessionId()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->previousSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSessionContext(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .registers 5
    .param p1, "firstId"    # Ljava/lang/String;

    monitor-enter p0

    .line 109
    :try_start_1
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v1, "Getting session context..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/Session;->updateAccessedTime()V

    .line 111
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->firstId:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 112
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->firstId:Ljava/lang/String;

    .line 114
    :cond_14
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v1, "iglu:com.snowplowanalytics.snowplow/client_session/jsonschema/1-0-1"

    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/Session;->getSessionValues()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    .line 108
    .end local p1    # "firstId":Ljava/lang/String;
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSessionIndex()I
    .registers 2

    .line 242
    iget v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->sessionIndex:I

    return v0
.end method

.method public getSessionStorage()Ljava/lang/String;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->sessionStorage:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionValues()Ljava/util/Map;
    .registers 4

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v0, "sessionValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "userId"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->currentSessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "previousSessionId"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->previousSessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "sessionIndex"

    iget v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->sessionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "storageMechanism"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->sessionStorage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "firstEventId"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->firstId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setIsBackground(Z)V
    .registers 7
    .param p1, "isBackground"    # Z

    .line 158
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v1, "Application is in the background: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->isBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 163
    .local v0, "currentState":Z
    if-eqz v0, :cond_36

    if-nez p1, :cond_36

    .line 164
    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v2, "Application moved to foreground, starting session checking..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :try_start_24
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->instance()Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->resumeSessionChecking()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_2c

    .line 169
    goto :goto_36

    .line 167
    :catch_2c
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/snowplowanalytics/snowplow/tracker/Session;->TAG:Ljava/lang/String;

    const-string v3, "Could not resume checking as tracker not setup"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_36
    :goto_36
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/Session;->isBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    return-void
.end method
