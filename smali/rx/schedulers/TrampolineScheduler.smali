###### Class rx.schedulers.TrampolineScheduler (rx.schedulers.TrampolineScheduler)
.class public final Lrx/schedulers/TrampolineScheduler;
.super Lrx/Scheduler;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/TrampolineScheduler$TimedAction;,
        Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lrx/schedulers/TrampolineScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lrx/schedulers/TrampolineScheduler;

    invoke-direct {v0}, Lrx/schedulers/TrampolineScheduler;-><init>()V

    sput-object v0, Lrx/schedulers/TrampolineScheduler;->INSTANCE:Lrx/schedulers/TrampolineScheduler;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$300(II)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 33
    invoke-static {p0, p1}, Lrx/schedulers/TrampolineScheduler;->compare(II)I

    move-result v0

    return v0
.end method

.method private static compare(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 132
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    goto :goto_9

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method static instance()Lrx/schedulers/TrampolineScheduler;
    .registers 1

    .line 37
    sget-object v0, Lrx/schedulers/TrampolineScheduler;->INSTANCE:Lrx/schedulers/TrampolineScheduler;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .line 42
    new-instance v0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;-><init>(Lrx/schedulers/TrampolineScheduler$1;)V

    return-object v0
.end method

###### Class rx.schedulers.TrampolineScheduler.AnonymousClass1 (rx.schedulers.TrampolineScheduler$1)
.class synthetic Lrx/schedulers/TrampolineScheduler$1;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class rx.schedulers.TrampolineScheduler.InnerCurrentThreadScheduler (rx.schedulers.TrampolineScheduler$InnerCurrentThreadScheduler)
.class Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;
.super Lrx/Scheduler$Worker;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerCurrentThreadScheduler"
.end annotation


# static fields
.field private static final COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile counter:I

.field private final innerSubscription:Lrx/subscriptions/BooleanSubscription;

.field private final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lrx/schedulers/TrampolineScheduler$TimedAction;",
            ">;"
        }
    .end annotation
.end field

.field private final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    const-class v0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    const-string v1, "counter"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 54
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    iput-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lrx/schedulers/TrampolineScheduler$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/schedulers/TrampolineScheduler$1;

    .line 48
    invoke-direct {p0}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;)Ljava/util/concurrent/PriorityBlockingQueue;
    .registers 2
    .param p0, "x0"    # Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    .line 48
    iget-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method private enqueue(Lrx/functions/Action0;J)Lrx/Subscription;
    .registers 8
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "execTime"    # J

    .line 70
    iget-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 71
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    return-object v0

    .line 73
    :cond_d
    new-instance v0, Lrx/schedulers/TrampolineScheduler$TimedAction;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->COUNTER_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lrx/schedulers/TrampolineScheduler$TimedAction;-><init>(Lrx/functions/Action0;Ljava/lang/Long;ILrx/schedulers/TrampolineScheduler$1;)V

    .line 74
    .local v0, "timedAction":Lrx/schedulers/TrampolineScheduler$TimedAction;
    iget-object v1, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_46

    .line 78
    :cond_2a
    iget-object v1, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/schedulers/TrampolineScheduler$TimedAction;

    .line 79
    .local v1, "polled":Lrx/schedulers/TrampolineScheduler$TimedAction;
    if-eqz v1, :cond_39

    .line 80
    iget-object v2, v1, Lrx/schedulers/TrampolineScheduler$TimedAction;->action:Lrx/functions/Action0;

    invoke-interface {v2}, Lrx/functions/Action0;->call()V

    .line 82
    .end local v1    # "polled":Lrx/schedulers/TrampolineScheduler$TimedAction;
    :cond_39
    iget-object v1, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-gtz v1, :cond_2a

    .line 83
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v1

    return-object v1

    .line 86
    :cond_46
    new-instance v1, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;

    invoke-direct {v1, p0, v0}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;-><init>(Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;Lrx/schedulers/TrampolineScheduler$TimedAction;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 104
    iget-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 4
    .param p1, "action"    # Lrx/functions/Action0;

    .line 59
    invoke-virtual {p0}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->now()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->enqueue(Lrx/functions/Action0;J)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 9
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 64
    invoke-virtual {p0}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->now()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 66
    .local v0, "execTime":J
    new-instance v2, Lrx/schedulers/SleepingAction;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/schedulers/SleepingAction;-><init>(Lrx/functions/Action0;Lrx/Scheduler$Worker;J)V

    invoke-direct {p0, v2, v0, v1}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->enqueue(Lrx/functions/Action0;J)Lrx/Subscription;

    move-result-object v2

    return-object v2
.end method

.method public unsubscribe()V
    .registers 2

    .line 99
    iget-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->innerSubscription:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->unsubscribe()V

    .line 100
    return-void
.end method

###### Class rx.schedulers.TrampolineScheduler.InnerCurrentThreadScheduler.AnonymousClass1 (rx.schedulers.TrampolineScheduler$InnerCurrentThreadScheduler$1)
.class Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->enqueue(Lrx/functions/Action0;J)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

.field final synthetic val$timedAction:Lrx/schedulers/TrampolineScheduler$TimedAction;


# direct methods
.method constructor <init>(Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;Lrx/schedulers/TrampolineScheduler$TimedAction;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->this$0:Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    iput-object p2, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->val$timedAction:Lrx/schedulers/TrampolineScheduler$TimedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 90
    iget-object v0, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->this$0:Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    invoke-static {v0}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;->access$200(Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler$1;->val$timedAction:Lrx/schedulers/TrampolineScheduler$TimedAction;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

###### Class rx.schedulers.TrampolineScheduler.TimedAction (rx.schedulers.TrampolineScheduler$TimedAction)
.class final Lrx/schedulers/TrampolineScheduler$TimedAction;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lrx/schedulers/TrampolineScheduler$TimedAction;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Lrx/functions/Action0;

.field final count:I

.field final execTime:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lrx/functions/Action0;Ljava/lang/Long;I)V
    .registers 4
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "execTime"    # Ljava/lang/Long;
    .param p3, "count"    # I

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->action:Lrx/functions/Action0;

    .line 116
    iput-object p2, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    .line 117
    iput p3, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->count:I

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lrx/functions/Action0;Ljava/lang/Long;ILrx/schedulers/TrampolineScheduler$1;)V
    .registers 5
    .param p1, "x0"    # Lrx/functions/Action0;
    .param p2, "x1"    # Ljava/lang/Long;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lrx/schedulers/TrampolineScheduler$1;

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lrx/schedulers/TrampolineScheduler$TimedAction;-><init>(Lrx/functions/Action0;Ljava/lang/Long;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 109
    move-object v0, p1

    check-cast v0, Lrx/schedulers/TrampolineScheduler$TimedAction;

    invoke-virtual {p0, v0}, Lrx/schedulers/TrampolineScheduler$TimedAction;->compareTo(Lrx/schedulers/TrampolineScheduler$TimedAction;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lrx/schedulers/TrampolineScheduler$TimedAction;)I
    .registers 5
    .param p1, "that"    # Lrx/schedulers/TrampolineScheduler$TimedAction;

    .line 122
    iget-object v0, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    iget-object v1, p1, Lrx/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 123
    .local v0, "result":I
    if-nez v0, :cond_13

    .line 124
    iget v1, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->count:I

    iget v2, p1, Lrx/schedulers/TrampolineScheduler$TimedAction;->count:I

    invoke-static {v1, v2}, Lrx/schedulers/TrampolineScheduler;->access$300(II)I

    move-result v1

    return v1

    .line 126
    :cond_13
    return v0
.end method
