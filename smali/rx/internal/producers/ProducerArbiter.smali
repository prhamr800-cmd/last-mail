###### Class rx.internal.producers.ProducerArbiter (rx.internal.producers.ProducerArbiter)
.class public final Lrx/internal/producers/ProducerArbiter;
.super Ljava/lang/Object;
.source "ProducerArbiter.java"

# interfaces
.implements Lrx/Producer;


# static fields
.field static final NULL_PRODUCER:Lrx/Producer;


# instance fields
.field currentProducer:Lrx/Producer;

.field emitting:Z

.field missedProduced:J

.field missedProducer:Lrx/Producer;

.field missedRequested:J

.field requested:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lrx/internal/producers/ProducerArbiter$1;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter$1;-><init>()V

    sput-object v0, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emitLoop()V
    .registers 16

    .line 145
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v3, v0

    move-wide v4, v1

    move-wide v6, v4

    .local v3, "localProducer":Lrx/Producer;
    .local v4, "localRequested":J
    .local v6, "localProduced":J
    :goto_6
    monitor-enter p0

    .line 146
    :try_start_7
    iget-wide v8, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    .end local v4    # "localRequested":J
    move-wide v4, v8

    .line 147
    .restart local v4    # "localRequested":J
    iget-wide v8, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    .end local v6    # "localProduced":J
    move-wide v6, v8

    .line 148
    .restart local v6    # "localProduced":J
    iget-object v8, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .end local v3    # "localProducer":Lrx/Producer;
    move-object v3, v8

    .line 149
    .restart local v3    # "localProducer":Lrx/Producer;
    cmp-long v8, v4, v1

    if-nez v8, :cond_1f

    cmp-long v8, v6, v1

    if-nez v8, :cond_1f

    if-nez v3, :cond_1f

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 153
    monitor-exit p0

    return-void

    .line 155
    :cond_1f
    iput-wide v1, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    .line 156
    iput-wide v1, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    .line 157
    iput-object v0, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .line 158
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_71

    .line 160
    iget-wide v8, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 162
    .local v8, "r":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v12, v8, v10

    if-eqz v12, :cond_56

    .line 163
    add-long v12, v8, v4

    .line 164
    .local v12, "u":J
    cmp-long v14, v12, v1

    if-ltz v14, :cond_4f

    cmp-long v14, v12, v10

    if-nez v14, :cond_3c

    goto :goto_4f

    .line 168
    :cond_3c
    const/4 v10, 0x0

    sub-long v10, v12, v6

    .line 169
    .local v10, "v":J
    cmp-long v14, v10, v1

    if-ltz v14, :cond_47

    .line 172
    move-wide v8, v10

    .line 173
    iput-wide v10, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    goto :goto_56

    .line 170
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "more produced than requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    .end local v10    # "v":J
    :cond_4f
    :goto_4f
    const-wide v8, 0x7fffffffffffffffL

    .line 166
    iput-wide v8, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 176
    .end local v12    # "u":J
    :cond_56
    :goto_56
    if-eqz v3, :cond_65

    .line 177
    sget-object v10, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

    if-ne v3, v10, :cond_5f

    .line 178
    iput-object v0, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    goto :goto_70

    .line 180
    :cond_5f
    iput-object v3, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 181
    invoke-interface {v3, v8, v9}, Lrx/Producer;->request(J)V

    goto :goto_70

    .line 184
    :cond_65
    iget-object v10, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 185
    .local v10, "p":Lrx/Producer;
    if-eqz v10, :cond_70

    cmp-long v11, v4, v1

    if-eqz v11, :cond_70

    .line 186
    invoke-interface {v10, v4, v5}, Lrx/Producer;->request(J)V

    .line 189
    .end local v3    # "localProducer":Lrx/Producer;
    .end local v4    # "localRequested":J
    .end local v6    # "localProduced":J
    .end local v8    # "r":J
    .end local v10    # "p":Lrx/Producer;
    :cond_70
    :goto_70
    goto :goto_6

    .line 158
    .restart local v3    # "localProducer":Lrx/Producer;
    .restart local v4    # "localRequested":J
    .restart local v6    # "localProduced":J
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0
.end method

.method public produced(J)V
    .registers 12
    .param p1, "n"    # J

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_53

    .line 84
    monitor-enter p0

    .line 85
    :try_start_7
    iget-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v2, :cond_13

    .line 86
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    const/4 v2, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    .line 87
    monitor-exit p0

    return-void

    .line 89
    :cond_13
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 90
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_50

    .line 92
    const/4 v2, 0x0

    move v3, v2

    .line 94
    .local v3, "skipFinal":Z
    :try_start_19
    iget-wide v4, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 95
    .local v4, "r":J
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-eqz v8, :cond_35

    .line 96
    sub-long v6, v4, p1

    .line 97
    .local v6, "u":J
    cmp-long v8, v6, v0

    if-ltz v8, :cond_2d

    .line 100
    iput-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    goto :goto_35

    .line 98
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "more items arrived than were requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    .end local v6    # "u":J
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_44

    .line 104
    const/4 v0, 0x1

    .line 106
    .end local v3    # "skipFinal":Z
    .end local v4    # "r":J
    .local v0, "skipFinal":Z
    if-nez v0, :cond_43

    .line 107
    monitor-enter p0

    .line 108
    :try_start_3c
    iput-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 109
    monitor-exit p0

    goto :goto_43

    :catchall_40
    move-exception v1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_40

    throw v1

    .line 112
    :cond_43
    :goto_43
    return-void

    .line 106
    .end local v0    # "skipFinal":Z
    .restart local v3    # "skipFinal":Z
    :catchall_44
    move-exception v0

    if-nez v3, :cond_4f

    .line 107
    monitor-enter p0

    .line 108
    :try_start_48
    iput-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 109
    monitor-exit p0

    goto :goto_4f

    :catchall_4c
    move-exception v0

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    throw v0

    :cond_4f
    :goto_4f
    throw v0

    .line 90
    .end local v3    # "skipFinal":Z
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0

    .line 82
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n > 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)V
    .registers 12
    .param p1, "n"    # J

    .line 42
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_53

    .line 45
    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    .line 46
    return-void

    .line 48
    :cond_b
    monitor-enter p0

    .line 49
    :try_start_c
    iget-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v2, :cond_18

    .line 50
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    const/4 v2, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    .line 51
    monitor-exit p0

    return-void

    .line 53
    :cond_18
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 54
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_50

    .line 55
    const/4 v2, 0x0

    move v3, v2

    .line 57
    .local v3, "skipFinal":Z
    :try_start_1e
    iget-wide v4, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 58
    .local v4, "r":J
    const/4 v6, 0x0

    add-long v6, v4, p1

    .line 59
    .local v6, "u":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_2c

    .line 60
    const-wide v6, 0x7fffffffffffffffL

    .line 62
    :cond_2c
    iput-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 64
    iget-object v0, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 65
    .local v0, "p":Lrx/Producer;
    if-eqz v0, :cond_35

    .line 66
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 69
    :cond_35
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_44

    .line 70
    const/4 v0, 0x1

    .line 72
    .end local v3    # "skipFinal":Z
    .end local v4    # "r":J
    .end local v6    # "u":J
    .local v0, "skipFinal":Z
    if-nez v0, :cond_43

    .line 73
    monitor-enter p0

    .line 74
    :try_start_3c
    iput-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 75
    monitor-exit p0

    goto :goto_43

    :catchall_40
    move-exception v1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_40

    throw v1

    .line 78
    :cond_43
    :goto_43
    return-void

    .line 72
    .end local v0    # "skipFinal":Z
    .restart local v3    # "skipFinal":Z
    :catchall_44
    move-exception v0

    if-nez v3, :cond_4f

    .line 73
    monitor-enter p0

    .line 74
    :try_start_48
    iput-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 75
    monitor-exit p0

    goto :goto_4f

    :catchall_4c
    move-exception v0

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    throw v0

    :cond_4f
    :goto_4f
    throw v0

    .line 54
    .end local v3    # "skipFinal":Z
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0

    .line 43
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 6
    .param p1, "newProducer"    # Lrx/Producer;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v0, :cond_f

    .line 117
    if-nez p1, :cond_a

    sget-object v0, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

    goto :goto_b

    :cond_a
    move-object v0, p1

    :goto_b
    iput-object v0, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .line 118
    monitor-exit p0

    return-void

    .line 120
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 121
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_39

    .line 122
    const/4 v0, 0x0

    move v1, v0

    .line 124
    .local v1, "skipFinal":Z
    :try_start_15
    iput-object p1, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 125
    if-eqz p1, :cond_1e

    .line 126
    iget-wide v2, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    invoke-interface {p1, v2, v3}, Lrx/Producer;->request(J)V

    .line 129
    :cond_1e
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_2d

    .line 130
    const/4 v1, 0x1

    .line 132
    if-nez v1, :cond_2c

    .line 133
    monitor-enter p0

    .line 134
    :try_start_25
    iput-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 135
    monitor-exit p0

    goto :goto_2c

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    throw v0

    .line 138
    :cond_2c
    :goto_2c
    return-void

    .line 132
    :catchall_2d
    move-exception v2

    if-nez v1, :cond_38

    .line 133
    monitor-enter p0

    .line 134
    :try_start_31
    iput-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 135
    monitor-exit p0

    goto :goto_38

    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    :goto_38
    throw v2

    .line 121
    .end local v1    # "skipFinal":Z
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

###### Class rx.internal.producers.ProducerArbiter.AnonymousClass1 (rx.internal.producers.ProducerArbiter$1)
.class final Lrx/internal/producers/ProducerArbiter$1;
.super Ljava/lang/Object;
.source "ProducerArbiter.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/producers/ProducerArbiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 3
    .param p1, "n"    # J

    .line 37
    return-void
.end method
