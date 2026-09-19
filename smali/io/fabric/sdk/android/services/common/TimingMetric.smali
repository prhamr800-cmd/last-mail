###### Class io.fabric.sdk.android.services.common.TimingMetric (io.fabric.sdk.android.services.common.TimingMetric)
.class public Lio/fabric/sdk/android/services/common/TimingMetric;
.super Ljava/lang/Object;
.source "TimingMetric.java"


# instance fields
.field private final disabled:Z

.field private duration:J

.field private final eventName:Ljava/lang/String;

.field private start:J

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->eventName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->tag:Ljava/lang/String;

    .line 33
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->disabled:Z

    .line 34
    return-void
.end method

.method private reportToLog()V
    .registers 5

    .line 63
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->eventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->duration:J

    return-wide v0
.end method

.method public declared-synchronized startMeasuring()V
    .registers 3

    monitor-enter p0

    .line 40
    :try_start_1
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->disabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 41
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->start:J

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->duration:J
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    .line 43
    monitor-exit p0

    return-void

    .line 39
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopMeasuring()V
    .registers 6

    monitor-enter p0

    .line 49
    :try_start_1
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->disabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 50
    :cond_7
    :try_start_7
    iget-wide v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->duration:J
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_20

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    monitor-exit p0

    return-void

    .line 51
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->start:J

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/fabric/sdk/android/services/common/TimingMetric;->duration:J

    .line 52
    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/TimingMetric;->reportToLog()V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_20

    .line 53
    monitor-exit p0

    return-void

    .line 48
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
