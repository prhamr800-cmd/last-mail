###### Class rx.internal.operators.OperatorSampleWithTime (rx.internal.operators.OperatorSampleWithTime)
.class public final Lrx/internal/operators/OperatorSampleWithTime;
.super Ljava/lang/Object;
.source "OperatorSampleWithTime.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lrx/Scheduler;

.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime;, "Lrx/internal/operators/OperatorSampleWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lrx/internal/operators/OperatorSampleWithTime;->time:J

    .line 42
    iput-object p3, p0, Lrx/internal/operators/OperatorSampleWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 43
    iput-object p4, p0, Lrx/internal/operators/OperatorSampleWithTime;->scheduler:Lrx/Scheduler;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime;, "Lrx/internal/operators/OperatorSampleWithTime<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSampleWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime;, "Lrx/internal/operators/OperatorSampleWithTime<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 49
    .local v0, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorSampleWithTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    .line 50
    .local v1, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 52
    new-instance v2, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;

    invoke-direct {v2, v0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;-><init>(Lrx/Subscriber;)V

    move-object v9, v2

    .line 53
    .local v9, "sampler":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    invoke-virtual {p1, v9}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 54
    iget-wide v4, p0, Lrx/internal/operators/OperatorSampleWithTime;->time:J

    iget-wide v6, p0, Lrx/internal/operators/OperatorSampleWithTime;->time:J

    iget-object v8, p0, Lrx/internal/operators/OperatorSampleWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v2, v1

    move-object v3, v9

    invoke-virtual/range {v2 .. v8}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 56
    return-object v9
.end method

###### Class rx.internal.operators.OperatorSampleWithTime.SamplerSubscriber (rx.internal.operators.OperatorSampleWithTime$SamplerSubscriber)
.class final Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;
.super Lrx/Subscriber;
.source "OperatorSampleWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSampleWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SamplerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# static fields
.field private static final EMPTY_TOKEN:Ljava/lang/Object;

.field static final VALUE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    .line 69
    const-class v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;

    const-class v1, Ljava/lang/Object;

    const-string v2, "value"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->VALUE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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

    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 66
    sget-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->value:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    .line 73
    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .line 99
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->VALUE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "localValue":Ljava/lang/Object;
    sget-object v1, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->EMPTY_TOKEN:Ljava/lang/Object;

    if-eq v0, v1, :cond_17

    .line 103
    move-object v1, v0

    .line 104
    .local v1, "v":Ljava/lang/Object;, "TT;"
    :try_start_d
    iget-object v2, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_13

    .line 107
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_17

    .line 105
    :catch_13
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 109
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_17
    :goto_17
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 94
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->unsubscribe()V

    .line 95
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 87
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->unsubscribe()V

    .line 89
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->value:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber;->request(J)V

    .line 78
    return-void
.end method
