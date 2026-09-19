###### Class rx.internal.util.BackpressureDrainManager (rx.internal.util.BackpressureDrainManager)
.class public final Lrx/internal/util/BackpressureDrainManager;
.super Ljava/lang/Object;
.source "BackpressureDrainManager.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field protected static final REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/util/BackpressureDrainManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

.field protected emitting:Z

.field protected exception:Ljava/lang/Throwable;

.field protected volatile requestedCount:J

.field protected volatile terminated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    const-class v0, Lrx/internal/util/BackpressureDrainManager;

    const-string v1, "requestedCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/util/BackpressureDrainManager;->REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;)V
    .registers 2
    .param p1, "actual"    # Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;

    .line 84
    return-void
.end method


# virtual methods
.method public final drain()V
    .registers 18

    .line 170
    move-object/from16 v1, p0

    monitor-enter p0

    .line 171
    const/4 v2, 0x0

    :try_start_4
    iget-boolean v0, v1, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    if-eqz v0, :cond_a

    .line 172
    monitor-exit p0

    return-void

    .line 174
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, v1, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 175
    iget-boolean v3, v1, Lrx/internal/util/BackpressureDrainManager;->terminated:Z
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_cb

    .line 176
    .local v3, "term":Z
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_c8

    .line 177
    iget-wide v4, v1, Lrx/internal/util/BackpressureDrainManager;->requestedCount:J

    .line 178
    .local v4, "n":J
    move v6, v2

    .line 180
    .local v6, "skipFinal":Z
    :try_start_13
    iget-object v7, v1, Lrx/internal/util/BackpressureDrainManager;->actual:Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_bb

    .line 182
    .local v7, "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    :goto_15
    move-wide v8, v4

    const/4 v4, 0x0

    .line 183
    .local v4, "emitted":I
    .local v8, "n":J
    :goto_17
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_1f

    if-eqz v3, :cond_45

    .line 185
    :cond_1f
    if-eqz v3, :cond_3e

    .line 186
    :try_start_21
    invoke-interface {v7}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->peek()Ljava/lang/Object;

    move-result-object v5

    .line 187
    .local v5, "o":Ljava/lang/Object;
    if-nez v5, :cond_39

    .line 188
    const/4 v6, 0x1

    .line 189
    iget-object v0, v1, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    move-object v10, v0

    .line 190
    .local v10, "e":Ljava/lang/Throwable;
    invoke-interface {v7, v10}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->complete(Ljava/lang/Throwable;)V
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_a0

    .line 232
    if-nez v6, :cond_38

    .line 233
    monitor-enter p0

    .line 234
    :try_start_31
    iput-boolean v2, v1, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 235
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
    return-void

    .line 193
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_39
    cmp-long v12, v8, v10

    if-nez v12, :cond_3e

    .line 194
    goto :goto_45

    .line 197
    .end local v5    # "o":Ljava/lang/Object;
    :cond_3e
    :try_start_3e
    invoke-interface {v7}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->poll()Ljava/lang/Object;

    move-result-object v5

    .line 198
    .restart local v5    # "o":Ljava/lang/Object;
    if-nez v5, :cond_a2

    .line 199
    nop

    .line 209
    .end local v5    # "o":Ljava/lang/Object;
    :cond_45
    :goto_45
    monitor-enter p0
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_a0

    .line 210
    :try_start_46
    iget-boolean v5, v1, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    move v3, v5

    .line 211
    invoke-interface {v7}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->peek()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_51

    const/4 v5, 0x1

    goto :goto_52

    :cond_51
    const/4 v5, 0x0

    .line 213
    .local v5, "more":Z
    :goto_52
    iget-wide v12, v1, Lrx/internal/util/BackpressureDrainManager;->requestedCount:J

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v16, v12, v14

    if-nez v16, :cond_76

    .line 215
    if-nez v5, :cond_70

    if-nez v3, :cond_70

    .line 216
    const/4 v6, 0x1

    .line 217
    iput-boolean v2, v1, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 218
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_46 .. :try_end_65} :catchall_9d

    .line 232
    if-nez v6, :cond_6f

    .line 233
    monitor-enter p0

    .line 234
    :try_start_68
    iput-boolean v2, v1, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 235
    monitor-exit p0

    goto :goto_6f

    :catchall_6c
    move-exception v0

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_6c

    throw v0

    :cond_6f
    :goto_6f
    return-void

    .line 220
    :cond_70
    const-wide v8, 0x7fffffffffffffffL

    goto :goto_8a

    .line 222
    :cond_76
    :try_start_76
    sget-object v12, Lrx/internal/util/BackpressureDrainManager;->REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-int v13, v4

    int-to-long v13, v13

    invoke-virtual {v12, v1, v13, v14}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v12

    move-wide v8, v12

    .line 223
    cmp-long v12, v8, v10

    if-eqz v12, :cond_85

    if-nez v5, :cond_8a

    :cond_85
    if-eqz v3, :cond_8e

    if-eqz v5, :cond_8a

    goto :goto_8e

    .line 229
    .end local v5    # "more":Z
    :cond_8a
    :goto_8a
    monitor-exit p0

    .line 230
    .end local v4    # "emitted":I
    nop

    .line 180
    move-wide v4, v8

    goto :goto_15

    .line 224
    .restart local v4    # "emitted":I
    .restart local v5    # "more":Z
    :cond_8e
    :goto_8e
    const/4 v6, 0x1

    .line 225
    iput-boolean v2, v1, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 226
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_76 .. :try_end_92} :catchall_9d

    .line 232
    if-nez v6, :cond_9c

    .line 233
    monitor-enter p0

    .line 234
    :try_start_95
    iput-boolean v2, v1, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 235
    monitor-exit p0

    goto :goto_9c

    :catchall_99
    move-exception v0

    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_99

    throw v0

    :cond_9c
    :goto_9c
    return-void

    .line 229
    .end local v5    # "more":Z
    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw v0

    .line 232
    .end local v4    # "emitted":I
    .end local v7    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    :catchall_a0
    move-exception v0

    goto :goto_bd

    .line 201
    .restart local v4    # "emitted":I
    .local v5, "o":Ljava/lang/Object;
    .restart local v7    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    :cond_a2
    invoke-interface {v7, v5}, Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;->accept(Ljava/lang/Object;)Z

    move-result v10
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_a0

    if-eqz v10, :cond_b4

    .line 202
    const/4 v6, 0x1

    .line 232
    if-nez v6, :cond_b3

    .line 233
    monitor-enter p0

    .line 234
    :try_start_ac
    iput-boolean v2, v1, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 235
    monitor-exit p0

    goto :goto_b3

    :catchall_b0
    move-exception v0

    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_ac .. :try_end_b2} :catchall_b0

    throw v0

    :cond_b3
    :goto_b3
    return-void

    .line 205
    :cond_b4
    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    .line 206
    add-int/lit8 v4, v4, 0x1

    .line 208
    .end local v5    # "o":Ljava/lang/Object;
    goto/16 :goto_17

    .line 232
    .end local v7    # "a":Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
    .end local v8    # "n":J
    .local v4, "n":J
    :catchall_bb
    move-exception v0

    move-wide v8, v4

    .end local v4    # "n":J
    .restart local v8    # "n":J
    :goto_bd
    if-nez v6, :cond_c7

    .line 233
    monitor-enter p0

    .line 234
    :try_start_c0
    iput-boolean v2, v1, Lrx/internal/util/BackpressureDrainManager;->emitting:Z

    .line 235
    monitor-exit p0

    goto :goto_c7

    :catchall_c4
    move-exception v0

    monitor-exit p0
    :try_end_c6
    .catchall {:try_start_c0 .. :try_end_c6} :catchall_c4

    throw v0

    :cond_c7
    :goto_c7
    throw v0

    .line 176
    .end local v6    # "skipFinal":Z
    .end local v8    # "n":J
    :catchall_c8
    move-exception v0

    move v2, v3

    goto :goto_cc

    .end local v3    # "term":Z
    :catchall_cb
    move-exception v0

    .local v2, "term":Z
    :goto_cc
    :try_start_cc
    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v0
.end method

.method public final isTerminated()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    return v0
.end method

.method public final request(J)V
    .registers 14
    .param p1, "n"    # J

    .line 134
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    .line 135
    return-void

    .line 141
    :cond_7
    iget-wide v9, p0, Lrx/internal/util/BackpressureDrainManager;->requestedCount:J

    .line 142
    .local v9, "r":J
    cmp-long v2, v9, v0

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 143
    .local v2, "mayDrain":Z
    :goto_10
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v9, v3

    if-nez v5, :cond_1a

    .line 144
    goto :goto_3c

    .line 146
    :cond_1a
    cmp-long v5, p1, v3

    if-nez v5, :cond_22

    .line 147
    move-wide v3, p1

    .line 148
    .local v3, "u":J
    const/4 v2, 0x1

    .line 153
    .end local v3    # "u":J
    .local v7, "u":J
    :goto_20
    move-wide v7, v3

    goto :goto_32

    .line 150
    .end local v7    # "u":J
    :cond_22
    const/4 v5, 0x0

    sub-long/2addr v3, p1

    cmp-long v5, v9, v3

    if-lez v5, :cond_2e

    .line 151
    const-wide v3, 0x7fffffffffffffffL

    goto :goto_20

    .line 153
    :cond_2e
    const/4 v3, 0x0

    add-long v3, v9, p1

    goto :goto_20

    .line 156
    .restart local v7    # "u":J
    :goto_32
    sget-object v3, Lrx/internal/util/BackpressureDrainManager;->REQUESTED_COUNT:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v4, p0

    move-wide v5, v9

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 159
    .end local v7    # "u":J
    :goto_3c
    if-eqz v2, :cond_41

    .line 160
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    .line 162
    :cond_41
    return-void
.end method

.method public final terminate()V
    .registers 2

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 98
    return-void
.end method

.method public final terminate(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 107
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_9

    .line 108
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 111
    :cond_9
    return-void
.end method

.method public final terminateAndDrain()V
    .registers 2

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 117
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    .line 118
    return-void
.end method

.method public final terminateAndDrain(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 126
    iget-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    if-nez v0, :cond_c

    .line 127
    iput-object p1, p0, Lrx/internal/util/BackpressureDrainManager;->exception:Ljava/lang/Throwable;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/util/BackpressureDrainManager;->terminated:Z

    .line 129
    invoke-virtual {p0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    .line 131
    :cond_c
    return-void
.end method

###### Class rx.internal.util.BackpressureDrainManager.BackpressureQueueCallback (rx.internal.util.BackpressureDrainManager$BackpressureQueueCallback)
.class public interface abstract Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
.super Ljava/lang/Object;
.source "BackpressureDrainManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/BackpressureDrainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackpressureQueueCallback"
.end annotation


# virtual methods
.method public abstract accept(Ljava/lang/Object;)Z
.end method

.method public abstract complete(Ljava/lang/Throwable;)V
.end method

.method public abstract peek()Ljava/lang/Object;
.end method

.method public abstract poll()Ljava/lang/Object;
.end method
