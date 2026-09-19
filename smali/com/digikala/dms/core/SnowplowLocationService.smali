###### Class com.digikala.dms.core.SnowplowLocationService (com.digikala.dms.core.SnowplowLocationService)
.class public final Lcom/digikala/dms/core/SnowplowLocationService;
.super Lcom/google/android/gms/gcm/GcmTaskService;
.source "SnowplowLocationService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/core/SnowplowLocationService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/digikala/dms/core/SnowplowLocationService;",
        "Lcom/google/android/gms/gcm/GcmTaskService;",
        "()V",
        "doFunction",
        "",
        "onInitializeTasks",
        "onRunTask",
        "",
        "taskParams",
        "Lcom/google/android/gms/gcm/TaskParams;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# static fields
.field public static final Companion:Lcom/digikala/dms/core/SnowplowLocationService$Companion;

# The value of this static final field might be set in the static constructor
.field private static final GCM_REPEAT_TAG:Ljava/lang/String; = "repeat send tracker location"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG_REQUEST:Ljava/lang/String;

.field private static mCurrentTime:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mDcId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mDeliverId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mPackId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mTimeInterval:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/digikala/dms/core/SnowplowLocationService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/digikala/dms/core/SnowplowLocationService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->Companion:Lcom/digikala/dms/core/SnowplowLocationService$Companion;

    .line 72
    const-string v0, "setupTracker"

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->TAG:Ljava/lang/String;

    .line 73
    const-class v0, Lcom/digikala/dms/helper/UserTracking;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->TAG_REQUEST:Ljava/lang/String;

    .line 75
    const-string v0, "repeat send tracker location"

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->GCM_REPEAT_TAG:Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mPackId:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mDeliverId:Ljava/lang/String;

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mDcId:Ljava/lang/String;

    .line 79
    const-string v0, ""

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mCurrentTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService;-><init>()V

    return-void
.end method

.method public static final synthetic access$getGCM_REPEAT_TAG$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    sget-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->GCM_REPEAT_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMCurrentTime$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    sget-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mCurrentTime:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMDcId$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    sget-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mDcId:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMDeliverId$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    sget-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mDeliverId:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMPackId$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    sget-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mPackId:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMTimeInterval$cp()J
    .registers 2

    .line 26
    sget-wide v0, Lcom/digikala/dms/core/SnowplowLocationService;->mTimeInterval:J

    return-wide v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    sget-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG_REQUEST$cp()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->TAG_REQUEST:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setMCurrentTime$cp(Ljava/lang/String;)V
    .registers 1
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 26
    sput-object p0, Lcom/digikala/dms/core/SnowplowLocationService;->mCurrentTime:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMDcId$cp(Ljava/lang/String;)V
    .registers 1
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 26
    sput-object p0, Lcom/digikala/dms/core/SnowplowLocationService;->mDcId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMDeliverId$cp(Ljava/lang/String;)V
    .registers 1
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 26
    sput-object p0, Lcom/digikala/dms/core/SnowplowLocationService;->mDeliverId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMPackId$cp(Ljava/lang/String;)V
    .registers 1
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 26
    sput-object p0, Lcom/digikala/dms/core/SnowplowLocationService;->mPackId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMTimeInterval$cp(J)V
    .registers 2
    .param p0, "<set-?>"    # J

    .line 26
    sput-wide p0, Lcom/digikala/dms/core/SnowplowLocationService;->mTimeInterval:J

    return-void
.end method

.method public static final synthetic access$setTAG$cp(Ljava/lang/String;)V
    .registers 1
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 26
    sput-object p0, Lcom/digikala/dms/core/SnowplowLocationService;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doFunction()V
    .registers 6

    .line 39
    invoke-static {}, Lcom/digikala/dms/util/Util;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util.getCurrentDateTime()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mCurrentTime:Ljava/lang/String;

    .line 41
    sget-boolean v0, Lcom/digikala/dms/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_45

    .line 42
    sget-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFunction() with param dcId is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/digikala/dms/core/SnowplowLocationService;->mDcId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " packId is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/digikala/dms/core/SnowplowLocationService;->mPackId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deliveryId is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/digikala/dms/core/SnowplowLocationService;->mDeliverId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "current time is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/digikala/dms/core/SnowplowLocationService;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_45
    invoke-static {}, Lcom/digikala/dms/core/SnowplowHelper;->getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;

    move-result-object v0

    const-string v1, "SnowplowHelper.getSnowplowHelperInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/digikala/dms/core/SnowplowHelper;->getEmitterSize()J

    move-result-wide v0

    const/16 v2, 0x1e

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_74

    .line 46
    invoke-static {}, Lcom/digikala/dms/core/SnowplowHelper;->getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/digikala/dms/core/SnowplowHelper;->mEmitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->shutdown()V

    .line 47
    invoke-static {}, Lcom/digikala/dms/core/SnowplowHelper;->getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/digikala/dms/core/SnowplowHelper;->mEmitter:Lcom/snowplowanalytics/snowplow/tracker/Emitter;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Emitter;->flush()V

    .line 48
    invoke-static {}, Lcom/digikala/dms/core/SnowplowHelper;->getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/digikala/dms/core/SnowplowHelper;->mTracker:Lcom/snowplowanalytics/snowplow/tracker/Tracker;

    invoke-virtual {v0}, Lcom/snowplowanalytics/snowplow/tracker/Tracker;->resumeEventTracking()V

    .line 51
    :cond_74
    sget-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mDeliverId:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    sget-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mDcId:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    goto :goto_99

    .line 59
    :cond_89
    invoke-static {}, Lcom/digikala/dms/core/SnowplowHelper;->getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;

    move-result-object v0

    sget-object v1, Lcom/digikala/dms/core/SnowplowLocationService;->mDeliverId:Ljava/lang/String;

    sget-object v2, Lcom/digikala/dms/core/SnowplowLocationService;->mDcId:Ljava/lang/String;

    sget-object v3, Lcom/digikala/dms/core/SnowplowLocationService;->mPackId:Ljava/lang/String;

    sget-object v4, Lcom/digikala/dms/core/SnowplowLocationService;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/digikala/dms/core/SnowplowHelper;->startTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f2

    .line 53
    :cond_99
    :goto_99
    invoke-virtual {p0}, Lcom/digikala/dms/core/SnowplowLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDistributionPointId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util.getDistributionPointId(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mDcId:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/digikala/dms/core/SnowplowLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getDeliveryId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util.getDeliveryId(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mDeliverId:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/digikala/dms/core/SnowplowLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getCourierTrackingType(Landroid/content/Context;)Lcom/digikala/dms/model/design/TrackingType;

    move-result-object v0

    const-string v1, "Util.getCourierTrackingType(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/digikala/dms/model/design/TrackingType;->getTimeInterval()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_cd

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_cd
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/digikala/dms/core/SnowplowLocationService;->mTimeInterval:J

    .line 56
    invoke-virtual {p0}, Lcom/digikala/dms/core/SnowplowLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Util.getBatchId(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->mPackId:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/digikala/dms/core/SnowplowHelper;->getSnowplowHelperInstance()Lcom/digikala/dms/core/SnowplowHelper;

    move-result-object v0

    sget-object v1, Lcom/digikala/dms/core/SnowplowLocationService;->mDeliverId:Ljava/lang/String;

    sget-object v2, Lcom/digikala/dms/core/SnowplowLocationService;->mDcId:Ljava/lang/String;

    sget-object v3, Lcom/digikala/dms/core/SnowplowLocationService;->mPackId:Ljava/lang/String;

    sget-object v4, Lcom/digikala/dms/core/SnowplowLocationService;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/digikala/dms/core/SnowplowHelper;->startTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_f2
    nop

    .line 62
    return-void
.end method

.method public onInitializeTasks()V
    .registers 6

    .line 65
    invoke-super {p0}, Lcom/google/android/gms/gcm/GcmTaskService;->onInitializeTasks()V

    .line 66
    invoke-virtual {p0}, Lcom/digikala/dms/core/SnowplowLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/digikala/dms/util/Util;->getCourierTrackingType(Landroid/content/Context;)Lcom/digikala/dms/model/design/TrackingType;

    move-result-object v0

    const-string v1, "Util.getCourierTrackingType(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/digikala/dms/model/design/TrackingType;->getHasTrack()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-wide v0, Lcom/digikala/dms/core/SnowplowLocationService;->mTimeInterval:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    .line 69
    :cond_25
    return-void
.end method

.method public onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
    .registers 4
    .param p1, "taskParams"    # Lcom/google/android/gms/gcm/TaskParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "taskParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/digikala/dms/core/SnowplowLocationService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/digikala/dms/core/SnowplowLocationService$onRunTask$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/core/SnowplowLocationService$onRunTask$1;-><init>(Lcom/digikala/dms/core/SnowplowLocationService;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    const/4 v1, 0x0

    return v1
.end method

###### Class com.digikala.dms.core.SnowplowLocationService.Companion (com.digikala.dms.core.SnowplowLocationService$Companion)
.class public final Lcom/digikala/dms/core/SnowplowLocationService$Companion;
.super Ljava/lang/Object;
.source "SnowplowLocationService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/core/SnowplowLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J6\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u001bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\"\u0004\u0008\t\u0010\nR\u0019\u0010\u000b\u001a\n \u000c*\u0004\u0018\u00010\u00040\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0006R\u001a\u0010\u000e\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0006\"\u0004\u0008\u0010\u0010\nR\u001a\u0010\u0011\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\"\u0004\u0008\u0013\u0010\nR\u001a\u0010\u0014\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\nR\u001a\u0010\u0017\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006\"\u0004\u0008\u0019\u0010\nR\u001a\u0010\u001a\u001a\u00020\u001bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006*"
    }
    d2 = {
        "Lcom/digikala/dms/core/SnowplowLocationService$Companion;",
        "",
        "()V",
        "GCM_REPEAT_TAG",
        "",
        "getGCM_REPEAT_TAG",
        "()Ljava/lang/String;",
        "TAG",
        "getTAG",
        "setTAG",
        "(Ljava/lang/String;)V",
        "TAG_REQUEST",
        "kotlin.jvm.PlatformType",
        "getTAG_REQUEST",
        "mCurrentTime",
        "getMCurrentTime$app_release",
        "setMCurrentTime$app_release",
        "mDcId",
        "getMDcId$app_release",
        "setMDcId$app_release",
        "mDeliverId",
        "getMDeliverId$app_release",
        "setMDeliverId$app_release",
        "mPackId",
        "getMPackId$app_release",
        "setMPackId$app_release",
        "mTimeInterval",
        "",
        "getMTimeInterval$app_release",
        "()J",
        "setMTimeInterval$app_release",
        "(J)V",
        "cancelRepeat",
        "",
        "context",
        "Landroid/content/Context;",
        "scheduleRepeat",
        "dcId",
        "deliveryId",
        "packId",
        "currentTime",
        "timeInterval",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 71
    invoke-direct {p0}, Lcom/digikala/dms/core/SnowplowLocationService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelRepeat(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    nop

    .line 120
    nop

    .line 118
    nop

    .line 119
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v0

    .line 120
    move-object v1, p0

    check-cast v1, Lcom/digikala/dms/core/SnowplowLocationService$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/core/SnowplowLocationService$Companion;->getGCM_REPEAT_TAG()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/digikala/dms/core/SnowplowLocationService;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->cancelTask(Ljava/lang/String;Ljava/lang/Class;)V

    .line 121
    return-void
.end method

.method public final getGCM_REPEAT_TAG()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 75
    invoke-static {}, Lcom/digikala/dms/core/SnowplowLocationService;->access$getGCM_REPEAT_TAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMCurrentTime$app_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 79
    invoke-static {}, Lcom/digikala/dms/core/SnowplowLocationService;->access$getMCurrentTime$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMDcId$app_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 78
    invoke-static {}, Lcom/digikala/dms/core/SnowplowLocationService;->access$getMDcId$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMDeliverId$app_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    invoke-static {}, Lcom/digikala/dms/core/SnowplowLocationService;->access$getMDeliverId$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMPackId$app_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 76
    invoke-static {}, Lcom/digikala/dms/core/SnowplowLocationService;->access$getMPackId$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMTimeInterval$app_release()J
    .registers 3

    .line 80
    invoke-static {}, Lcom/digikala/dms/core/SnowplowLocationService;->access$getMTimeInterval$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTAG()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 72
    invoke-static {}, Lcom/digikala/dms/core/SnowplowLocationService;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTAG_REQUEST()Ljava/lang/String;
    .registers 2

    .line 73
    invoke-static {}, Lcom/digikala/dms/core/SnowplowLocationService;->access$getTAG_REQUEST$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final scheduleRepeat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "dcId"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "deliveryId"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "packId"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "currentTime"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6, "timeInterval"    # J

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dcId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deliveryId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTime"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    move-object v0, p0

    check-cast v0, Lcom/digikala/dms/core/SnowplowLocationService$Companion;

    invoke-virtual {v0}, Lcom/digikala/dms/core/SnowplowLocationService$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleRepeat() with param dcId is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " packId is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deliveryId is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timeInterval is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    move-object v0, p0

    check-cast v0, Lcom/digikala/dms/core/SnowplowLocationService$Companion;

    invoke-virtual {v0, p4}, Lcom/digikala/dms/core/SnowplowLocationService$Companion;->setMPackId$app_release(Ljava/lang/String;)V

    .line 90
    move-object v0, p0

    check-cast v0, Lcom/digikala/dms/core/SnowplowLocationService$Companion;

    invoke-virtual {v0, p2}, Lcom/digikala/dms/core/SnowplowLocationService$Companion;->setMDcId$app_release(Ljava/lang/String;)V

    .line 91
    move-object v0, p0

    check-cast v0, Lcom/digikala/dms/core/SnowplowLocationService$Companion;

    invoke-virtual {v0, p5}, Lcom/digikala/dms/core/SnowplowLocationService$Companion;->setMCurrentTime$app_release(Ljava/lang/String;)V

    .line 92
    move-object v0, p0

    check-cast v0, Lcom/digikala/dms/core/SnowplowLocationService$Companion;

    invoke-virtual {v0, p3}, Lcom/digikala/dms/core/SnowplowLocationService$Companion;->setMDeliverId$app_release(Ljava/lang/String;)V

    .line 93
    move-object v0, p0

    check-cast v0, Lcom/digikala/dms/core/SnowplowLocationService$Companion;

    invoke-virtual {v0, p6, p7}, Lcom/digikala/dms/core/SnowplowLocationService$Companion;->setMTimeInterval$app_release(J)V

    .line 95
    nop

    .line 112
    nop

    .line 95
    nop

    .line 111
    nop

    .line 95
    nop

    .line 109
    nop

    .line 95
    nop

    .line 107
    nop

    .line 95
    nop

    .line 105
    nop

    .line 95
    nop

    .line 103
    nop

    .line 95
    nop

    .line 101
    nop

    .line 95
    nop

    .line 99
    nop

    .line 95
    nop

    .line 97
    nop

    .line 95
    new-instance v0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;-><init>()V

    .line 97
    const-class v1, Lcom/digikala/dms/core/SnowplowLocationService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p6, p7}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPeriod(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 101
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setFlex(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 103
    move-object v1, p0

    check-cast v1, Lcom/digikala/dms/core/SnowplowLocationService$Companion;

    invoke-virtual {v1}, Lcom/digikala/dms/core/SnowplowLocationService$Companion;->getGCM_REPEAT_TAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 105
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 109
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setRequiredNetwork(I)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setRequiresCharging(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->build()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    .line 95
    nop

    .line 114
    .local v0, "periodic":Lcom/google/android/gms/gcm/PeriodicTask;
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/gcm/Task;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    .line 115
    return-void
.end method

.method public final setMCurrentTime$app_release(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lcom/digikala/dms/core/SnowplowLocationService;->access$setMCurrentTime$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setMDcId$app_release(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Lcom/digikala/dms/core/SnowplowLocationService;->access$setMDcId$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setMDeliverId$app_release(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lcom/digikala/dms/core/SnowplowLocationService;->access$setMDeliverId$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setMPackId$app_release(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lcom/digikala/dms/core/SnowplowLocationService;->access$setMPackId$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setMTimeInterval$app_release(J)V
    .registers 3
    .param p1, "<set-?>"    # J

    .line 80
    invoke-static {p1, p2}, Lcom/digikala/dms/core/SnowplowLocationService;->access$setMTimeInterval$cp(J)V

    return-void
.end method

.method public final setTAG(Ljava/lang/String;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Lcom/digikala/dms/core/SnowplowLocationService;->access$setTAG$cp(Ljava/lang/String;)V

    return-void
.end method

###### Class com.digikala.dms.core.SnowplowLocationService.AnonymousClass1 (com.digikala.dms.core.SnowplowLocationService$onRunTask$1)
.class final Lcom/digikala/dms/core/SnowplowLocationService$onRunTask$1;
.super Ljava/lang/Object;
.source "SnowplowLocationService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/core/SnowplowLocationService;->onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/core/SnowplowLocationService;


# direct methods
.method constructor <init>(Lcom/digikala/dms/core/SnowplowLocationService;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/core/SnowplowLocationService$onRunTask$1;->this$0:Lcom/digikala/dms/core/SnowplowLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 31
    sget-object v0, Lcom/digikala/dms/core/SnowplowLocationService;->Companion:Lcom/digikala/dms/core/SnowplowLocationService$Companion;

    invoke-virtual {v0}, Lcom/digikala/dms/core/SnowplowLocationService$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRunTask()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/digikala/dms/core/SnowplowLocationService$onRunTask$1;->this$0:Lcom/digikala/dms/core/SnowplowLocationService;

    invoke-virtual {v0}, Lcom/digikala/dms/core/SnowplowLocationService;->doFunction()V

    .line 33
    return-void
.end method
