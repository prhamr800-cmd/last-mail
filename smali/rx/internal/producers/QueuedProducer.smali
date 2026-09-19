###### Class rx.internal.producers.QueuedProducer (rx.internal.producers.QueuedProducer)
.class public final Lrx/internal/producers/QueuedProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "QueuedProducer.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Observer<",
        "TT;>;"
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

.field volatile done:Z

.field error:Ljava/lang/Throwable;

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

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

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

    .line 53
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
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
    invoke-direct {p0, p1, v0}, Lrx/internal/producers/QueuedProducer;-><init>(Lrx/Subscriber;Ljava/util/Queue;)V

    .line 55
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

    .line 61
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 62
    iput-object p1, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    .line 63
    iput-object p2, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    return-void
.end method

.method private checkTerminated(ZZ)Z
    .registers 6
    .param p1, "isDone"    # Z
    .param p2, "isEmpty"    # Z

    .line 120
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 121
    return v1

    .line 123
    :cond_a
    if-eqz p1, :cond_23

    .line 124
    iget-object v0, p0, Lrx/internal/producers/QueuedProducer;->error:Ljava/lang/Throwable;

    .line 125
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1b

    .line 126
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 127
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 128
    return v1

    .line 130
    :cond_1b
    if-eqz p2, :cond_23

    .line 131
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 132
    return v1

    .line 135
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method private drain()V
    .registers 14

    .line 139
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_82

    .line 140
    iget-object v0, p0, Lrx/internal/producers/QueuedProducer;->child:Lrx/Subscriber;

    .line 141
    .local v0, "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    .line 144
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_c
    iget-boolean v2, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lrx/internal/producers/QueuedProducer;->checkTerminated(ZZ)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 145
    return-void

    .line 148
    :cond_19
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 150
    invoke-virtual {p0}, Lrx/internal/producers/QueuedProducer;->get()J

    move-result-wide v4

    .line 151
    .local v4, "r":J
    const-wide/16 v6, 0x0

    move-wide v8, v4

    move-wide v4, v6

    .line 153
    .local v4, "e":J
    .local v8, "r":J
    :goto_27
    cmp-long v2, v8, v6

    if-eqz v2, :cond_65

    .line 154
    iget-boolean v2, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 155
    .local v2, "d":Z
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 156
    .local v10, "v":Ljava/lang/Object;
    if-nez v10, :cond_35

    const/4 v11, 0x1

    goto :goto_36

    :cond_35
    const/4 v11, 0x0

    :goto_36
    invoke-direct {p0, v2, v11}, Lrx/internal/producers/QueuedProducer;->checkTerminated(ZZ)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 157
    return-void

    .line 159
    :cond_3d
    if-nez v10, :cond_40

    .line 160
    goto :goto_65

    .line 164
    :cond_40
    const/4 v11, 0x0

    :try_start_41
    sget-object v12, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-ne v10, v12, :cond_49

    .line 165
    invoke-virtual {v0, v11}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_4d

    .line 168
    :cond_49
    move-object v12, v10

    .line 169
    .local v12, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v12}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4d} :catch_53

    .line 176
    .end local v12    # "t":Ljava/lang/Object;, "TT;"
    :goto_4d
    nop

    .line 177
    const-wide/16 v11, 0x1

    sub-long/2addr v8, v11

    .line 178
    add-long/2addr v4, v11

    .line 179
    .end local v2    # "d":Z
    .end local v10    # "v":Ljava/lang/Object;
    goto :goto_27

    .line 171
    .restart local v2    # "d":Z
    .restart local v10    # "v":Ljava/lang/Object;
    :catch_53
    move-exception v3

    .line 172
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {v3}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 173
    sget-object v6, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    if-eq v10, v6, :cond_5d

    move-object v11, v10

    nop

    :cond_5d
    invoke-static {v3, v11}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    .line 174
    .local v6, "ex1":Ljava/lang/Throwable;
    invoke-virtual {v0, v6}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 175
    return-void

    .line 181
    .end local v2    # "d":Z
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v6    # "ex1":Ljava/lang/Throwable;
    .end local v10    # "v":Ljava/lang/Object;
    :cond_65
    :goto_65
    cmp-long v2, v4, v6

    if-eqz v2, :cond_7a

    invoke-virtual {p0}, Lrx/internal/producers/QueuedProducer;->get()J

    move-result-wide v2

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v2, v6

    if-eqz v10, :cond_7a

    .line 182
    neg-long v2, v4

    invoke-virtual {p0, v2, v3}, Lrx/internal/producers/QueuedProducer;->addAndGet(J)J

    .line 184
    .end local v4    # "e":J
    .end local v8    # "r":J
    :cond_7a
    iget-object v2, p0, Lrx/internal/producers/QueuedProducer;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_c

    .line 186
    .end local v0    # "c":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_82
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

    .line 85
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 86
    iget-object v1, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    sget-object v2, Lrx/internal/producers/QueuedProducer;->NULL_SENTINEL:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 87
    return v0

    .line 90
    :cond_e
    iget-object v1, p0, Lrx/internal/producers/QueuedProducer;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 91
    return v0

    .line 94
    :cond_17
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public onCompleted()V
    .registers 2

    .line 114
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 115
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 116
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 107
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    iput-object p1, p0, Lrx/internal/producers/QueuedProducer;->error:Ljava/lang/Throwable;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/QueuedProducer;->done:Z

    .line 109
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 110
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lrx/internal/producers/QueuedProducer;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 101
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/producers/QueuedProducer;->onError(Ljava/lang/Throwable;)V

    .line 103
    :cond_e
    return-void
.end method

.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .line 69
    .local p0, "this":Lrx/internal/producers/QueuedProducer;, "Lrx/internal/producers/QueuedProducer<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_11

    .line 72
    cmp-long v2, p1, v0

    if-lez v2, :cond_10

    .line 73
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 74
    invoke-direct {p0}, Lrx/internal/producers/QueuedProducer;->drain()V

    .line 76
    :cond_10
    return-void

    .line 70
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
