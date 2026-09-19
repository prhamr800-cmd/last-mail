###### Class com.snowplowanalytics.snowplow.tracker.tracker.LifecycleHandler (com.snowplowanalytics.snowplow.tracker.tracker.LifecycleHandler)
.class public Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;
.super Ljava/lang/Object;
.source "LifecycleHandler.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static backgroundIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static foregroundIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static isInBackground:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->isInBackground:Z

    .line 41
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->foregroundIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->backgroundIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 45
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 91
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 82
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 52
    sget-boolean v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->isInBackground:Z

    if-eqz v0, :cond_5f

    .line 53
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "Application is in the foreground"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    sput-boolean v2, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->isInBackground:Z

    .line 57
    :try_start_10
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->instance()Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    move-result-object v0

    .line 58
    .local v0, "tracker":Lcom/snowplowanalytics/snowplow/tracker/Tracker;
    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->foregroundIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    .line 61
    .local v1, "index":I
    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getSession()Lcom/snowplowanalytics/snowplow/tracker/Session;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 62
    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getSession()Lcom/snowplowanalytics/snowplow/tracker/Session;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/snowplowanalytics/snowplow/tracker/Session;->setIsBackground(Z)V

    .line 66
    :cond_28
    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getLifecycleEvents()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 67
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "foregroundIndex"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 70
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->builder()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v4

    new-instance v5, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v6, "iglu:com.snowplowanalytics.snowplow/application_foreground/jsonschema/1-0-0"

    invoke-direct {v5, v6, v3}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v4, v5}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->eventData(Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;)Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->build()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;

    move-result-object v4

    .line 70
    invoke-virtual {v0, v4}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->track(Lcom/snowplowanalytics/snowplow/tracker/events/Event;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_52} :catch_53

    .line 77
    .end local v0    # "tracker":Lcom/snowplowanalytics/snowplow/tracker/Tracker;
    .end local v1    # "index":I
    .end local v3    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_52
    goto :goto_5f

    .line 75
    :catch_53
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5f
    :goto_5f
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 88
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 48
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 85
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 94
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .line 97
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 9
    .param p1, "i"    # I

    .line 101
    const/16 v0, 0x14

    if-ne p1, v0, :cond_5f

    .line 102
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "Application is in the background"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->isInBackground:Z

    .line 106
    :try_start_11
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->instance()Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    move-result-object v1

    .line 107
    .local v1, "tracker":Lcom/snowplowanalytics/snowplow/tracker/Tracker;
    sget-object v3, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->backgroundIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    .line 110
    .local v3, "index":I
    invoke-virtual {v1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getSession()Lcom/snowplowanalytics/snowplow/tracker/Session;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 111
    invoke-virtual {v1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getSession()Lcom/snowplowanalytics/snowplow/tracker/Session;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/snowplowanalytics/snowplow/tracker/Session;->setIsBackground(Z)V

    .line 115
    :cond_28
    invoke-virtual {v1}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->getLifecycleEvents()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "backgroundIndex"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 119
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->builder()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v4

    new-instance v5, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v6, "iglu:com.snowplowanalytics.snowplow/application_background/jsonschema/1-0-0"

    invoke-direct {v5, v6, v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v4, v5}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->eventData(Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;)Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->build()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;

    move-result-object v4

    .line 119
    invoke-virtual {v1, v4}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->track(Lcom/snowplowanalytics/snowplow/tracker/events/Event;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_52} :catch_53

    .line 126
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "tracker":Lcom/snowplowanalytics/snowplow/tracker/Tracker;
    .end local v3    # "index":I
    :cond_52
    goto :goto_5f

    .line 124
    :catch_53
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/tracker/LifecycleHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5f
    :goto_5f
    return-void
.end method
