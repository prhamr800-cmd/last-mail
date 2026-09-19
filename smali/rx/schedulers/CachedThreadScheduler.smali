###### Class rx.schedulers.CachedThreadScheduler (rx.schedulers.CachedThreadScheduler)
.class final Lrx/schedulers/CachedThreadScheduler;
.super Lrx/Scheduler;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/CachedThreadScheduler$ThreadWorker;,
        Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;,
        Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;
    }
.end annotation


# static fields
.field private static final EVICTOR_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field private static final EVICTOR_THREAD_NAME_PREFIX:Ljava/lang/String; = "RxCachedWorkerPoolEvictor-"

.field private static final WORKER_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

.field private static final WORKER_THREAD_NAME_PREFIX:Ljava/lang/String; = "RxCachedThreadScheduler-"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxCachedThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/schedulers/CachedThreadScheduler;->WORKER_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    .line 36
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxCachedWorkerPoolEvictor-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/schedulers/CachedThreadScheduler;->EVICTOR_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 155
    return-void
.end method

.method static synthetic access$000()Lrx/internal/util/RxThreadFactory;
    .registers 1

    .line 30
    sget-object v0, Lrx/schedulers/CachedThreadScheduler;->EVICTOR_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method

.method static synthetic access$100()Lrx/internal/util/RxThreadFactory;
    .registers 1

    .line 30
    sget-object v0, Lrx/schedulers/CachedThreadScheduler;->WORKER_THREAD_FACTORY:Lrx/internal/util/RxThreadFactory;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .line 107
    new-instance v0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;

    invoke-static {}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->access$200()Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    move-result-object v1

    invoke-virtual {v1}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->get()Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;-><init>(Lrx/schedulers/CachedThreadScheduler$ThreadWorker;)V

    return-object v0
.end method

###### Class rx.schedulers.CachedThreadScheduler.CachedWorkerPool (rx.schedulers.CachedThreadScheduler$CachedWorkerPool)
.class final Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CachedWorkerPool"
.end annotation


# static fields
.field private static INSTANCE:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;


# instance fields
.field private final evictExpiredWorkerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lrx/schedulers/CachedThreadScheduler$ThreadWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 59
    new-instance v0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-direct {v0, v2, v3, v1}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->INSTANCE:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    return-void
.end method

.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .registers 12
    .param p1, "keepAliveTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 48
    invoke-static {}, Lrx/schedulers/CachedThreadScheduler;->access$000()Lrx/internal/util/RxThreadFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictExpiredWorkerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictExpiredWorkerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;

    invoke-direct {v2, p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;-><init>(Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;)V

    iget-wide v3, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    iget-wide v5, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 57
    return-void
.end method

.method static synthetic access$200()Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;
    .registers 1

    .line 39
    sget-object v0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->INSTANCE:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    return-object v0
.end method


# virtual methods
.method evictExpiredWorkers()V
    .registers 8

    .line 83
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 84
    invoke-virtual {p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    .line 86
    .local v0, "currentTimestamp":J
    iget-object v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 87
    .local v3, "threadWorker":Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    invoke-virtual {v3}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->getExpirationTime()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_32

    .line 88
    iget-object v4, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 89
    invoke-virtual {v3}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->unsubscribe()V

    .line 96
    .end local v3    # "threadWorker":Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    :cond_31
    goto :goto_12

    .line 98
    .end local v0    # "currentTimestamp":J
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_32
    return-void
.end method

.method get()Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    .registers 3

    .line 64
    :goto_0
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 65
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 66
    .local v0, "threadWorker":Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    if-eqz v0, :cond_13

    .line 67
    return-object v0

    .line 69
    .end local v0    # "threadWorker":Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
    :cond_13
    goto :goto_0

    .line 72
    :cond_14
    new-instance v0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-static {}, Lrx/schedulers/CachedThreadScheduler;->access$100()Lrx/internal/util/RxThreadFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method now()J
    .registers 3

    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method release(Lrx/schedulers/CachedThreadScheduler$ThreadWorker;)V
    .registers 6
    .param p1, "threadWorker"    # Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 77
    invoke-virtual {p0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->setExpirationTime(J)V

    .line 79
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

###### Class rx.schedulers.CachedThreadScheduler.CachedWorkerPool.AnonymousClass1 (rx.schedulers.CachedThreadScheduler$CachedWorkerPool$1)
.class Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;


# direct methods
.method constructor <init>(Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;->this$0:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 53
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;->this$0:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictExpiredWorkers()V

    .line 54
    return-void
.end method

###### Class rx.schedulers.CachedThreadScheduler.EventLoopWorker (rx.schedulers.CachedThreadScheduler$EventLoopWorker)
.class final Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;
.super Lrx/Scheduler$Worker;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventLoopWorker"
.end annotation


# static fields
.field static final ONCE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final innerSubscription:Lrx/subscriptions/CompositeSubscription;

.field volatile once:I

.field private final threadWorker:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 115
    const-class v0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;

    const-string v1, "once"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->ONCE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Lrx/schedulers/CachedThreadScheduler$ThreadWorker;)V
    .registers 3
    .param p1, "threadWorker"    # Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 118
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 111
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 119
    iput-object p1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 120
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 133
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 5
    .param p1, "action"    # Lrx/functions/Action0;

    .line 138
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 7
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 143
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 145
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    return-object v0

    .line 148
    :cond_d
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    .line 149
    .local v0, "s":Lrx/internal/schedulers/ScheduledAction;
    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 150
    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Lrx/subscriptions/CompositeSubscription;)V

    .line 151
    return-object v0
.end method

.method public unsubscribe()V
    .registers 4

    .line 124
    sget-object v0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->ONCE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 126
    invoke-static {}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->access$200()Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    move-result-object v0

    iget-object v1, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lrx/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0, v1}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->release(Lrx/schedulers/CachedThreadScheduler$ThreadWorker;)V

    .line 128
    :cond_13
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 129
    return-void
.end method

###### Class rx.schedulers.CachedThreadScheduler.ThreadWorker (rx.schedulers.CachedThreadScheduler$ThreadWorker)
.class final Lrx/schedulers/CachedThreadScheduler$ThreadWorker;
.super Lrx/internal/schedulers/NewThreadWorker;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadWorker"
.end annotation


# instance fields
.field private expirationTime:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 159
    invoke-direct {p0, p1}, Lrx/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    .line 161
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .registers 3

    .line 164
    iget-wide v0, p0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    return-wide v0
.end method

.method public setExpirationTime(J)V
    .registers 3
    .param p1, "expirationTime"    # J

    .line 168
    iput-wide p1, p0, Lrx/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    .line 169
    return-void
.end method
