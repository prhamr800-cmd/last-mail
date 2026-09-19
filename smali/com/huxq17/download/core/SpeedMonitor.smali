###### Class com.huxq17.download.core.SpeedMonitor (com.huxq17.download.core.SpeedMonitor)
.class public Lcom/huxq17/download/core/SpeedMonitor;
.super Ljava/lang/Object;
.source "SpeedMonitor.java"


# instance fields
.field final BYTES_PER_GB:D

.field final BYTES_PER_KB:D

.field final BYTES_PER_MIB:D

.field final BYTE_SUFFIX:Ljava/lang/String;

.field final GB_SUFFIX:Ljava/lang/String;

.field final KB_SUFFIX:Ljava/lang/String;

.field final MIB_SUFFIX:Ljava/lang/String;

.field final NANOS_PER_SECOND:D

.field private lastSpeedCountTime:J

.field speed:D

.field suffix:Ljava/lang/String;

.field private totalRead:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    .line 5
    iput-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->lastSpeedCountTime:J

    .line 6
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    iput-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->NANOS_PER_SECOND:D

    .line 7
    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    iput-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->BYTES_PER_GB:D

    .line 8
    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    iput-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->BYTES_PER_MIB:D

    .line 9
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    iput-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->BYTES_PER_KB:D

    .line 10
    const-string v0, "B/s"

    iput-object v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->BYTE_SUFFIX:Ljava/lang/String;

    .line 11
    const-string v0, "KB/s"

    iput-object v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->KB_SUFFIX:Ljava/lang/String;

    .line 12
    const-string v0, "MB/s"

    iput-object v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->MIB_SUFFIX:Ljava/lang/String;

    .line 13
    const-string v0, "GB/s"

    iput-object v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->GB_SUFFIX:Ljava/lang/String;

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->speed:D

    .line 15
    const-string v0, "B/s"

    iput-object v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public currentTime()J
    .registers 3

    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public download(J)V
    .registers 8
    .param p1, "length"    # J

    .line 18
    iget-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    .line 19
    iget-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->lastSpeedCountTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    .line 20
    invoke-virtual {p0}, Lcom/huxq17/download/core/SpeedMonitor;->currentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->lastSpeedCountTime:J

    .line 22
    :cond_13
    return-void
.end method

.method public getSpeed()Ljava/lang/String;
    .registers 14

    .line 25
    invoke-virtual {p0}, Lcom/huxq17/download/core/SpeedMonitor;->currentTime()J

    move-result-wide v0

    .line 26
    .local v0, "curTime":J
    long-to-double v2, v0

    iget-wide v4, p0, Lcom/huxq17/download/core/SpeedMonitor;->lastSpeedCountTime:J

    long-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v2, v4

    if-ltz v10, :cond_ad

    .line 27
    iget-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    cmpg-double v10, v2, v4

    if-gez v10, :cond_38

    .line 28
    iget-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    iget-wide v4, p0, Lcom/huxq17/download/core/SpeedMonitor;->lastSpeedCountTime:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->speed:D

    .line 29
    const-string v2, "B/s"

    iput-object v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->suffix:Ljava/lang/String;

    goto :goto_a9

    .line 30
    :cond_38
    iget-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    long-to-double v2, v2

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    cmpl-double v12, v2, v4

    if-ltz v12, :cond_61

    iget-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    long-to-double v2, v2

    cmpg-double v12, v2, v10

    if-gez v12, :cond_61

    .line 31
    iget-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/huxq17/download/core/SpeedMonitor;->lastSpeedCountTime:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->speed:D

    .line 32
    const-string v2, "KB/s"

    iput-object v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->suffix:Ljava/lang/String;

    goto :goto_a9

    .line 33
    :cond_61
    iget-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    cmpl-double v12, v2, v10

    if-ltz v12, :cond_8a

    iget-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    long-to-double v2, v2

    cmpg-double v12, v2, v4

    if-gez v12, :cond_8a

    .line 34
    iget-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    div-double/2addr v2, v10

    iget-wide v4, p0, Lcom/huxq17/download/core/SpeedMonitor;->lastSpeedCountTime:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->speed:D

    .line 35
    const-string v2, "MB/s"

    iput-object v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->suffix:Ljava/lang/String;

    goto :goto_a9

    .line 36
    :cond_8a
    iget-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    long-to-double v2, v2

    cmpl-double v10, v2, v4

    if-ltz v10, :cond_a9

    .line 37
    iget-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/huxq17/download/core/SpeedMonitor;->lastSpeedCountTime:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->speed:D

    .line 38
    const-string v2, "GB/s"

    iput-object v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->suffix:Ljava/lang/String;

    .line 40
    :cond_a9
    :goto_a9
    iput-wide v0, p0, Lcom/huxq17/download/core/SpeedMonitor;->lastSpeedCountTime:J

    .line 41
    iput-wide v8, p0, Lcom/huxq17/download/core/SpeedMonitor;->totalRead:J

    .line 43
    :cond_ad
    iget-wide v2, p0, Lcom/huxq17/download/core/SpeedMonitor;->speed:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v6, 0x64

    rem-long/2addr v2, v6

    cmp-long v10, v2, v8

    if-nez v10, :cond_d9

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/huxq17/download/core/SpeedMonitor;->speed:D

    mul-double v8, v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    div-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huxq17/download/core/SpeedMonitor;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 46
    :cond_d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/huxq17/download/core/SpeedMonitor;->speed:D

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huxq17/download/core/SpeedMonitor;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
