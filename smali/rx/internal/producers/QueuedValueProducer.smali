###### Class rx.internal.producers.QueuedValueProducer (rx.internal.producers.QueuedValueProducer)
.class public final Lrx/internal/producers/QueuedValueProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "QueuedValueProducer.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field static final NULL_SENTINEL:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x64fd87a3da19de97L


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/producers/QueuedValueProducer;->NULL_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lrx/internal/producers/QueuedValueProducer;, "Lrx/internal/producers/QueuedValueProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    goto :goto_11

    :cond_c
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;

    invoke-direct {v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;-><init>()V

    :goto_11
    invoke-direct {p0, p1, v0}, Lrx/internal/producers/QueuedValueProducer;-><init>(Lrx/Subscriber;Ljava/util/Queue;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Ljava/util/Queue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lrx/internal/producers/QueuedValueProducer;, "Lrx/internal/producers/QueuedValueProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/producers/QueuedValueProducer;->child:Lrx/Subscriber;

    .line 60
    iput-object p2, p0, Lrx/internal/producers/QueuedValueProducer;->queue:Ljava/util/Queue;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/producers/QueuedValueProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    return-void
.end method

.method private drain()V
    .registers 13

    .line 96
    .local p0, "this":Lrx/internal/producers/QueuedValueProducer;, "Lrx/internal/producers/QueuedValueProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/producers/QueuedValueProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_75

    .line 97
    iget-object v0, p0, Lrx/internal/producers/QueuedValueProducer;->child:Lrx/Subscriber;

    .line 98
    .local v0, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/producers/QueuedValueProducer;->queue:Ljava/util/Queue;

    .line 100
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_c
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 101
    return-void

    .line 104
    :cond_13
    iget-object v2, p0, Lrx/internal/producers/QueuedValueProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 106
    invoke-virtual {p0}, Lrx/internal/producers/QueuedValueProducer;->get()J

    move-result-wide v2

    .line 107
    .local v2, "r":J
    const-wide/16 v4, 0x0

    move-wide v6, v2

    move-wide v2, v4

    .line 110
    .local v2, "e":J
    .local v6, "r":J
    :goto_21
    cmp-long v8, v6, v4

    if-eqz v8, :cond_58

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    .local v9, "v":Ljava/lang/Object;
    if-eqz v8, :cond_58

    .line 112
    const/4 v8, 0x0

    :try_start_2d
    sget-object v10, Lrx/internal/producers/QueuedValueProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-ne v9, v10, :cond_35

    .line 113
    invoke-virtual {v0, v8}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_39

    .line 116
    :cond_35
    move-object v10, v9

    .line 117
    .local v10, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v10}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_39} :catch_46

    .line 124
    .end local v10    # "t":Ljava/lang/Object;, "TT;"
    :goto_39
    nop

    .line 125
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 126
    return-void

    .line 128
    :cond_41
    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    .line 129
    add-long/2addr v2, v10

    goto :goto_21

    .line 119
    :catch_46
    move-exception v4

    .line 120
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-static {v4}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 121
    sget-object v5, Lrx/internal/producers/QueuedValueProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-eq v9, v5, :cond_50

    move-object v8, v9

    nop

    :cond_50
    invoke-static {v4, v8}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    .line 122
    .local v5, "ex1":Ljava/lang/Throwable;
    invoke-virtual {v0, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 123
    return-void

    .line 132
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v5    # "ex1":Ljava/lang/Throwable;
    .end local v9    # "v":Ljava/lang/Object;
    :cond_58
    cmp-long v8, v2, v4

    if-eqz v8, :cond_6d

    invoke-virtual {p0}, Lrx/internal/producers/QueuedValueProducer;->get()J

    move-result-wide v4

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v4, v8

    if-eqz v10, :cond_6d

    .line 133
    neg-long v4, v2

    invoke-virtual {p0, v4, v5}, Lrx/internal/producers/QueuedValueProducer;->addAndGet(J)J

    .line 135
    .end local v2    # "e":J
    .end local v6    # "r":J
    :cond_6d
    iget-object v2, p0, Lrx/internal/producers/QueuedValueProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_c

    .line 137
    .end local v0    # "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_75
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 82
    .local p0, "this":Lrx/internal/producers/QueuedValueProducer;, "Lrx/internal/producers/QueuedValueProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 83
    iget-object v1, p0, Lrx/internal/producers/QueuedValueProducer;->queue:Ljava/util/Queue;

    sget-object v2, Lrx/internal/producers/QueuedValueProducer;->NULL_SENTINEL:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 84
    return v0

    .line 87
    :cond_e
    iget-object v1, p0, Lrx/internal/producers/QueuedValueProducer;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 88
    return v0

    .line 91
    :cond_17
    invoke-direct {p0}, Lrx/internal/producers/QueuedValueProducer;->drain()V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .line 66
    .local p0, "this":Lrx/internal/producers/QueuedValueProducer;, "Lrx/internal/producers/QueuedValueProducer<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_11

    .line 69
    cmp-long v2, p1, v0

    if-lez v2, :cond_10

    .line 70
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 71
    invoke-direct {p0}, Lrx/internal/producers/QueuedValueProducer;->drain()V

    .line 73
    :cond_10
    return-void

    .line 67
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
