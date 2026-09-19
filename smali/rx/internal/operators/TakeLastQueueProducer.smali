###### Class rx.internal.operators.TakeLastQueueProducer (rx.internal.operators.TakeLastQueueProducer)
.class final Lrx/internal/operators/TakeLastQueueProducer;
.super Ljava/lang/Object;
.source "TakeLastQueueProducer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lrx/internal/operators/TakeLastQueueProducer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final deque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile emittingStarted:Z

.field private final notification:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile requested:J

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    const-class v0, Lrx/internal/operators/TakeLastQueueProducer;

    const-string v1, "requested"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/NotificationLite;Ljava/util/Deque;Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;",
            "Ljava/util/Deque<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    .local p1, "n":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .local p2, "q":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Object;>;"
    .local p3, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    .line 33
    iput-object p1, p0, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    .line 34
    iput-object p2, p0, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    .line 35
    iput-object p3, p0, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    .line 36
    return-void
.end method


# virtual methods
.method emit(J)V
    .registers 22
    .param p1, "previousRequested"    # J

    .line 68
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    move-object/from16 v7, p0

    iget-wide v0, v7, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    const-wide v8, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    cmp-long v2, v0, v8

    if-nez v2, :cond_4d

    .line 70
    cmp-long v0, p1, v10

    if-nez v0, :cond_9e

    .line 72
    :try_start_13
    iget-object v0, v7, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, v7, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_29} :catch_3b
    .catchall {:try_start_13 .. :try_end_29} :catchall_39

    if-eqz v2, :cond_31

    .line 80
    iget-object v2, v7, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->clear()V

    return-void

    .line 75
    :cond_31
    :try_start_31
    iget-object v2, v7, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    iget-object v3, v7, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2, v3, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_38} :catch_3b
    .catchall {:try_start_31 .. :try_end_38} :catchall_39

    .line 76
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_19

    .line 80
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_39
    move-exception v0

    goto :goto_47

    .line 77
    :catch_3b
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3c
    iget-object v1, v7, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_39

    .line 80
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_41
    iget-object v0, v7, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 81
    goto :goto_9e

    .line 80
    :goto_47
    iget-object v1, v7, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    throw v0

    .line 87
    :cond_4d
    cmp-long v0, p1, v10

    if-nez v0, :cond_9e

    .line 93
    :goto_51
    iget-wide v0, v7, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    .line 94
    .local v0, "numToEmit":J
    const/4 v2, 0x0

    .local v2, "emitted":I
    :goto_54
    move v12, v2

    .line 96
    .end local v2    # "emitted":I
    .local v12, "emitted":I
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    move-wide v13, v2

    .end local v0    # "numToEmit":J
    .local v13, "numToEmit":J
    cmp-long v0, v2, v10

    if-ltz v0, :cond_7f

    iget-object v0, v7, Lrx/internal/operators/TakeLastQueueProducer;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "o":Ljava/lang/Object;
    if-eqz v0, :cond_7f

    .line 97
    iget-object v0, v7, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 98
    return-void

    .line 100
    :cond_70
    iget-object v0, v7, Lrx/internal/operators/TakeLastQueueProducer;->notification:Lrx/internal/operators/NotificationLite;

    iget-object v2, v7, Lrx/internal/operators/TakeLastQueueProducer;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, v2, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 102
    return-void

    .line 104
    :cond_7b
    add-int/lit8 v2, v12, 0x1

    .line 94
    move-wide v0, v13

    goto :goto_54

    .line 108
    .end local v1    # "o":Ljava/lang/Object;
    :cond_7f
    :goto_7f
    iget-wide v5, v7, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    .line 109
    .local v5, "oldRequested":J
    int-to-long v0, v12

    sub-long v15, v5, v0

    .line 110
    .local v15, "newRequested":J
    cmp-long v0, v5, v8

    if-nez v0, :cond_89

    .line 113
    goto :goto_9c

    .line 115
    :cond_89
    sget-object v1, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object/from16 v2, p0

    move-wide v3, v5

    move-wide/from16 v17, v5

    .end local v5    # "oldRequested":J
    .local v17, "oldRequested":J
    move-wide v5, v15

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 116
    cmp-long v0, v15, v10

    if-nez v0, :cond_9c

    .line 118
    return-void

    .line 123
    .end local v12    # "emitted":I
    .end local v13    # "numToEmit":J
    .end local v15    # "newRequested":J
    .end local v17    # "oldRequested":J
    :cond_9c
    :goto_9c
    goto :goto_51

    .line 122
    .restart local v12    # "emitted":I
    .restart local v13    # "numToEmit":J
    :cond_9d
    goto :goto_7f

    .line 126
    .end local v12    # "emitted":I
    .end local v13    # "numToEmit":J
    :cond_9e
    :goto_9e
    return-void
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .line 51
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    iget-wide v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->requested:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 52
    return-void

    .line 55
    :cond_c
    cmp-long v0, p1, v2

    if-nez v0, :cond_17

    .line 56
    sget-object v0, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v0

    goto :goto_1d

    .line 58
    :cond_17
    sget-object v0, Lrx/internal/operators/TakeLastQueueProducer;->REQUESTED_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {v0, p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Ljava/lang/Object;J)J

    move-result-wide v0

    .line 60
    .local v0, "_c":J
    :goto_1d
    iget-boolean v2, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    if-nez v2, :cond_22

    .line 62
    return-void

    .line 64
    :cond_22
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/TakeLastQueueProducer;->emit(J)V

    .line 65
    return-void
.end method

.method startEmitting()V
    .registers 3

    .line 43
    .local p0, "this":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    if-nez v0, :cond_c

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/TakeLastQueueProducer;->emittingStarted:Z

    .line 45
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/TakeLastQueueProducer;->emit(J)V

    .line 47
    :cond_c
    return-void
.end method
