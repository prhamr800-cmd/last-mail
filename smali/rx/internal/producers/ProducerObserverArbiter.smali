###### Class rx.internal.producers.ProducerObserverArbiter (rx.internal.producers.ProducerObserverArbiter)
.class public final Lrx/internal/producers/ProducerObserverArbiter;
.super Ljava/lang/Object;
.source "ProducerObserverArbiter.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final NULL_PRODUCER:Lrx/Producer;


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field currentProducer:Lrx/Producer;

.field emitting:Z

.field volatile hasError:Z

.field missedProducer:Lrx/Producer;

.field missedRequested:J

.field missedTerminal:Ljava/lang/Object;

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field requested:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lrx/internal/producers/ProducerObserverArbiter$1;

    invoke-direct {v0}, Lrx/internal/producers/ProducerObserverArbiter$1;-><init>()V

    sput-object v0, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    .line 57
    return-void
.end method


# virtual methods
.method emitLoop()V
    .registers 21

    .line 190
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-wide v8, v3

    .local v0, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v5, "localProducer":Lrx/Producer;
    .local v6, "localTerminal":Ljava/lang/Object;
    .local v7, "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local v8, "localRequested":J
    :goto_b
    move-object v10, v0

    .line 198
    .end local v0    # "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v10, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    monitor-enter p0

    .line 199
    :try_start_d
    iget-wide v11, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .end local v8    # "localRequested":J
    move-wide v8, v11

    .line 200
    .restart local v8    # "localRequested":J
    iget-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .end local v5    # "localProducer":Lrx/Producer;
    move-object v5, v0

    .line 201
    .restart local v5    # "localProducer":Lrx/Producer;
    iget-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .end local v6    # "localTerminal":Ljava/lang/Object;
    move-object v6, v0

    .line 202
    .restart local v6    # "localTerminal":Ljava/lang/Object;
    iget-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .end local v7    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v7, v0

    .line 203
    .restart local v7    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    cmp-long v11, v8, v3

    if-nez v11, :cond_28

    if-nez v5, :cond_28

    if-nez v7, :cond_28

    if-nez v6, :cond_28

    .line 205
    iput-boolean v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 206
    monitor-exit p0

    return-void

    .line 208
    :cond_28
    iput-wide v3, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 209
    iput-object v2, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 210
    iput-object v2, v1, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 211
    iput-object v2, v1, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 212
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_e4

    .line 213
    if-eqz v7, :cond_3b

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3a

    goto :goto_3b

    :cond_3a
    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    :goto_3c
    move v11, v0

    .line 214
    .local v11, "empty":Z
    if-eqz v6, :cond_50

    .line 215
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v6, v0, :cond_4a

    .line 216
    move-object v0, v6

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v10, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 217
    return-void

    .line 219
    :cond_4a
    if-eqz v11, :cond_50

    .line 220
    invoke-virtual {v10}, Lrx/Subscriber;->onCompleted()V

    .line 221
    return-void

    .line 224
    :cond_50
    const-wide/16 v12, 0x0

    .line 225
    .local v12, "e":J
    if-eqz v7, :cond_8b

    .line 226
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_58
    move-object v14, v0

    .end local v0    # "i$":Ljava/util/Iterator;
    .local v14, "i$":Ljava/util/Iterator;
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 227
    .local v15, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {v10}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 228
    return-void

    .line 230
    :cond_6a
    iget-boolean v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->hasError:Z

    if-eqz v0, :cond_70

    .line 231
    goto/16 :goto_e1

    .line 234
    :cond_70
    :try_start_70
    invoke-virtual {v10, v15}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_77

    .line 240
    nop

    .line 241
    .end local v15    # "v":Ljava/lang/Object;, "TT;"
    nop

    .line 226
    move-object v0, v14

    goto :goto_58

    .line 235
    .restart local v15    # "v":Ljava/lang/Object;, "TT;"
    :catch_77
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 236
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 237
    invoke-static {v0, v15}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    .line 238
    .local v2, "ex1":Ljava/lang/Throwable;
    invoke-virtual {v10, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 239
    return-void

    .line 242
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v2    # "ex1":Ljava/lang/Throwable;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "v":Ljava/lang/Object;, "TT;"
    :cond_85
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v14, v0

    add-long/2addr v12, v14

    .line 244
    :cond_8b
    iget-wide v14, v1, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 246
    .local v14, "r":J
    const-wide v16, 0x7fffffffffffffffL

    cmp-long v0, v14, v16

    if-eqz v0, :cond_c2

    .line 248
    cmp-long v0, v8, v3

    if-eqz v0, :cond_a7

    .line 249
    add-long v18, v14, v8

    .line 250
    .local v18, "u":J
    cmp-long v0, v18, v3

    if-gez v0, :cond_a5

    .line 251
    const-wide v18, 0x7fffffffffffffffL

    .line 253
    :cond_a5
    move-wide/from16 v14, v18

    .line 256
    .end local v18    # "u":J
    :cond_a7
    cmp-long v0, v12, v3

    if-eqz v0, :cond_c0

    cmp-long v0, v14, v16

    if-eqz v0, :cond_c0

    .line 257
    sub-long v16, v14, v12

    .line 258
    .local v16, "u":J
    cmp-long v0, v16, v3

    if-ltz v0, :cond_b8

    .line 261
    move-wide/from16 v14, v16

    goto :goto_c0

    .line 259
    :cond_b8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "More produced than requested"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    .end local v16    # "u":J
    :cond_c0
    :goto_c0
    iput-wide v14, v1, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 265
    :cond_c2
    if-eqz v5, :cond_d5

    .line 266
    sget-object v0, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    if-ne v5, v0, :cond_cb

    .line 267
    iput-object v2, v1, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    goto :goto_e0

    .line 269
    :cond_cb
    iput-object v5, v1, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 270
    cmp-long v0, v14, v3

    if-eqz v0, :cond_e0

    .line 271
    invoke-interface {v5, v14, v15}, Lrx/Producer;->request(J)V

    goto :goto_e0

    .line 275
    :cond_d5
    iget-object v0, v1, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 276
    .local v0, "p":Lrx/Producer;
    if-eqz v0, :cond_e0

    cmp-long v16, v8, v3

    if-eqz v16, :cond_e0

    .line 277
    invoke-interface {v0, v8, v9}, Lrx/Producer;->request(J)V

    .line 280
    .end local v0    # "p":Lrx/Producer;
    .end local v5    # "localProducer":Lrx/Producer;
    .end local v6    # "localTerminal":Ljava/lang/Object;
    .end local v7    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v8    # "localRequested":J
    .end local v11    # "empty":Z
    .end local v12    # "e":J
    .end local v14    # "r":J
    :cond_e0
    :goto_e0
    nop

    .line 190
    :goto_e1
    move-object v0, v10

    goto/16 :goto_b

    .line 212
    .restart local v5    # "localProducer":Lrx/Producer;
    .restart local v6    # "localTerminal":Ljava/lang/Object;
    .restart local v7    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v8    # "localRequested":J
    :catchall_e4
    move-exception v0

    :try_start_e5
    monitor-exit p0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw v0
.end method

.method public onCompleted()V
    .registers 3

    .line 113
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    monitor-enter p0

    .line 114
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 115
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 116
    monitor-exit p0

    return-void

    .line 118
    :cond_e
    iput-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 119
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    .line 120
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 121
    return-void

    .line 119
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 95
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    monitor-enter p0

    .line 96
    const/4 v0, 0x0

    :try_start_2
    iget-boolean v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    .line 97
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedTerminal:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    goto :goto_e

    .line 100
    :cond_b
    iput-boolean v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 101
    const/4 v0, 0x1

    .line 103
    .local v0, "emit":Z
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_1a

    .line 104
    if-eqz v0, :cond_17

    .line 105
    iget-object v1, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 107
    :cond_17
    iput-boolean v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->hasError:Z

    .line 109
    :goto_19
    return-void

    .line 103
    .end local v0    # "emit":Z
    :catchall_1a
    move-exception v1

    .restart local v0    # "emit":Z
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 62
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v0, :cond_17

    .line 63
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 64
    .local v0, "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_12

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 66
    iput-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->queue:Ljava/util/List;

    .line 68
    :cond_12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit p0

    return-void

    .line 71
    .end local v0    # "q":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_4b

    .line 72
    const/4 v0, 0x0

    move v1, v0

    .line 74
    .local v1, "skipFinal":Z
    :try_start_1a
    iget-object v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-wide v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 77
    .local v2, "r":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_30

    .line 78
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    iput-wide v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 81
    :cond_30
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_3f

    .line 82
    const/4 v1, 0x1

    .line 84
    .end local v2    # "r":J
    if-nez v1, :cond_3e

    .line 85
    monitor-enter p0

    .line 86
    :try_start_37
    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 87
    monitor-exit p0

    goto :goto_3e

    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3b

    throw v0

    .line 90
    :cond_3e
    :goto_3e
    return-void

    .line 84
    :catchall_3f
    move-exception v2

    if-nez v1, :cond_4a

    .line 85
    monitor-enter p0

    .line 86
    :try_start_43
    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 87
    monitor-exit p0

    goto :goto_4a

    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_47

    throw v0

    :cond_4a
    :goto_4a
    throw v2

    .line 71
    .end local v1    # "skipFinal":Z
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public request(J)V
    .registers 12
    .param p1, "n"    # J

    .line 125
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_53

    .line 128
    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    .line 129
    return-void

    .line 131
    :cond_b
    monitor-enter p0

    .line 132
    :try_start_c
    iget-boolean v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v2, :cond_18

    .line 133
    iget-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    const/4 v2, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedRequested:J

    .line 134
    monitor-exit p0

    return-void

    .line 136
    :cond_18
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 137
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_50

    .line 138
    const/4 v2, 0x0

    move v3, v2

    .line 140
    .local v3, "skipFinal":Z
    :try_start_1e
    iget-wide v4, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 141
    .local v4, "r":J
    const/4 v6, 0x0

    add-long v6, v4, p1

    .line 142
    .local v6, "u":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_2c

    .line 143
    const-wide v6, 0x7fffffffffffffffL

    .line 145
    :cond_2c
    iput-wide v6, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 147
    iget-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 148
    .local v0, "p":Lrx/Producer;
    if-eqz v0, :cond_35

    .line 149
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 152
    :cond_35
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_44

    .line 153
    const/4 v0, 0x1

    .line 155
    .end local v3    # "skipFinal":Z
    .end local v4    # "r":J
    .end local v6    # "u":J
    .local v0, "skipFinal":Z
    if-nez v0, :cond_43

    .line 156
    monitor-enter p0

    .line 157
    :try_start_3c
    iput-boolean v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 158
    monitor-exit p0

    goto :goto_43

    :catchall_40
    move-exception v1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_40

    throw v1

    .line 161
    :cond_43
    :goto_43
    return-void

    .line 155
    .end local v0    # "skipFinal":Z
    .restart local v3    # "skipFinal":Z
    :catchall_44
    move-exception v0

    if-nez v3, :cond_4f

    .line 156
    monitor-enter p0

    .line 157
    :try_start_48
    iput-boolean v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 158
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

    .line 137
    .end local v3    # "skipFinal":Z
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0

    .line 126
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 9
    .param p1, "p"    # Lrx/Producer;

    .line 164
    .local p0, "this":Lrx/internal/producers/ProducerObserverArbiter;, "Lrx/internal/producers/ProducerObserverArbiter<TT;>;"
    monitor-enter p0

    .line 165
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    if-eqz v0, :cond_f

    .line 166
    if-eqz p1, :cond_9

    move-object v0, p1

    goto :goto_b

    :cond_9
    sget-object v0, Lrx/internal/producers/ProducerObserverArbiter;->NULL_PRODUCER:Lrx/Producer;

    :goto_b
    iput-object v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->missedProducer:Lrx/Producer;

    .line 167
    monitor-exit p0

    return-void

    .line 169
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 170
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3f

    .line 171
    const/4 v0, 0x0

    move v1, v0

    .line 173
    .local v1, "skipFinal":Z
    :try_start_15
    iput-object p1, p0, Lrx/internal/producers/ProducerObserverArbiter;->currentProducer:Lrx/Producer;

    .line 174
    iget-wide v2, p0, Lrx/internal/producers/ProducerObserverArbiter;->requested:J

    .line 175
    .local v2, "r":J
    if-eqz p1, :cond_24

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_24

    .line 176
    invoke-interface {p1, v2, v3}, Lrx/Producer;->request(J)V

    .line 178
    :cond_24
    invoke-virtual {p0}, Lrx/internal/producers/ProducerObserverArbiter;->emitLoop()V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_33

    .line 179
    const/4 v1, 0x1

    .line 181
    .end local v2    # "r":J
    if-nez v1, :cond_32

    .line 182
    monitor-enter p0

    .line 183
    :try_start_2b
    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 184
    monitor-exit p0

    goto :goto_32

    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_2f

    throw v0

    .line 187
    :cond_32
    :goto_32
    return-void

    .line 181
    :catchall_33
    move-exception v2

    if-nez v1, :cond_3e

    .line 182
    monitor-enter p0

    .line 183
    :try_start_37
    iput-boolean v0, p0, Lrx/internal/producers/ProducerObserverArbiter;->emitting:Z

    .line 184
    monitor-exit p0

    goto :goto_3e

    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    :goto_3e
    throw v2

    .line 170
    .end local v1    # "skipFinal":Z
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

###### Class rx.internal.producers.ProducerObserverArbiter.AnonymousClass1 (rx.internal.producers.ProducerObserverArbiter$1)
.class final Lrx/internal/producers/ProducerObserverArbiter$1;
.super Ljava/lang/Object;
.source "ProducerObserverArbiter.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/producers/ProducerObserverArbiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 3
    .param p1, "n"    # J

    .line 52
    return-void
.end method
