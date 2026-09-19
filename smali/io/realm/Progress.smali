###### Class io.realm.Progress (io.realm.Progress)
.class public Lio/realm/Progress;
.super Ljava/lang/Object;
.source "Progress.java"


# instance fields
.field private final transferableBytes:J

.field private final transferredBytes:J


# direct methods
.method constructor <init>(JJ)V
    .registers 5
    .param p1, "transferredBytes"    # J
    .param p3, "transferableBytes"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lio/realm/Progress;->transferredBytes:J

    .line 50
    iput-wide p3, p0, Lio/realm/Progress;->transferableBytes:J

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 116
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 118
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/Progress;

    .line 120
    .local v2, "progress":Lio/realm/Progress;
    iget-wide v3, p0, Lio/realm/Progress;->transferredBytes:J

    iget-wide v5, v2, Lio/realm/Progress;->transferredBytes:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1e

    return v1

    .line 121
    :cond_1e
    iget-wide v3, p0, Lio/realm/Progress;->transferableBytes:J

    iget-wide v5, v2, Lio/realm/Progress;->transferableBytes:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0

    .line 116
    .end local v2    # "progress":Lio/realm/Progress;
    :cond_29
    :goto_29
    return v1
.end method

.method public getFractionTransferred()D
    .registers 8

    .line 85
    iget-wide v0, p0, Lio/realm/Progress;->transferableBytes:J

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_b

    .line 86
    return-wide v2

    .line 88
    :cond_b
    iget-wide v0, p0, Lio/realm/Progress;->transferredBytes:J

    long-to-double v0, v0

    iget-wide v4, p0, Lio/realm/Progress;->transferableBytes:J

    long-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    .line 89
    .local v0, "percentage":D
    cmpl-double v4, v0, v2

    if-lez v4, :cond_28

    .line 90
    const-string v4, "Invalid progress state: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-wide v2

    .line 93
    :cond_28
    return-wide v0
.end method

.method public getTransferableBytes()J
    .registers 3

    .line 74
    iget-wide v0, p0, Lio/realm/Progress;->transferableBytes:J

    return-wide v0
.end method

.method public getTransferredBytes()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lio/realm/Progress;->transferredBytes:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .line 127
    iget-wide v0, p0, Lio/realm/Progress;->transferredBytes:J

    iget-wide v2, p0, Lio/realm/Progress;->transferredBytes:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 128
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/realm/Progress;->transferableBytes:J

    iget-wide v5, p0, Lio/realm/Progress;->transferableBytes:J

    ushr-long v4, v5, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 129
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isTransferComplete()Z
    .registers 6

    .line 110
    iget-wide v0, p0, Lio/realm/Progress;->transferredBytes:J

    iget-wide v2, p0, Lio/realm/Progress;->transferableBytes:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Progress{transferredBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/realm/Progress;->transferredBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transferableBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/realm/Progress;->transferableBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
