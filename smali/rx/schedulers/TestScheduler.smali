###### Class rx.schedulers.TestScheduler (rx.schedulers.TestScheduler)
.class public Lrx/schedulers/TestScheduler;
.super Lrx/Scheduler;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/TestScheduler$InnerTestScheduler;,
        Lrx/schedulers/TestScheduler$CompareActionsByTime;,
        Lrx/schedulers/TestScheduler$TimedAction;
    }
.end annotation


# static fields
.field private static counter:J


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lrx/schedulers/TestScheduler$TimedAction;",
            ">;"
        }
    .end annotation
.end field

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lrx/schedulers/TestScheduler;->counter:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 33
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 34
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lrx/schedulers/TestScheduler$CompareActionsByTime;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrx/schedulers/TestScheduler$CompareActionsByTime;-><init>(Lrx/schedulers/TestScheduler$1;)V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    .line 131
    return-void
.end method

.method static synthetic access$108()J
    .registers 4

    .line 33
    sget-wide v0, Lrx/schedulers/TestScheduler;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lrx/schedulers/TestScheduler;->counter:J

    return-wide v0
.end method

.method static synthetic access$700(Lrx/schedulers/TestScheduler;)J
    .registers 3
    .param p0, "x0"    # Lrx/schedulers/TestScheduler;

    .line 33
    iget-wide v0, p0, Lrx/schedulers/TestScheduler;->time:J

    return-wide v0
.end method

.method static synthetic access$900(Lrx/schedulers/TestScheduler;)Ljava/util/Queue;
    .registers 2
    .param p0, "x0"    # Lrx/schedulers/TestScheduler;

    .line 33
    iget-object v0, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method private triggerActions(J)V
    .registers 9
    .param p1, "targetTimeInNanos"    # J

    .line 109
    :goto_0
    iget-object v0, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 110
    iget-object v0, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/TestScheduler$TimedAction;

    .line 111
    .local v0, "current":Lrx/schedulers/TestScheduler$TimedAction;
    invoke-static {v0}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_19

    .line 112
    goto :goto_43

    .line 115
    :cond_19
    invoke-static {v0}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_26

    iget-wide v1, p0, Lrx/schedulers/TestScheduler;->time:J

    goto :goto_2a

    :cond_26
    invoke-static {v0}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v1

    :goto_2a
    iput-wide v1, p0, Lrx/schedulers/TestScheduler;->time:J

    .line 116
    iget-object v1, p0, Lrx/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 119
    invoke-static {v0}, Lrx/schedulers/TestScheduler$TimedAction;->access$400(Lrx/schedulers/TestScheduler$TimedAction;)Lrx/Scheduler$Worker;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_42

    .line 120
    invoke-static {v0}, Lrx/schedulers/TestScheduler$TimedAction;->access$500(Lrx/schedulers/TestScheduler$TimedAction;)Lrx/functions/Action0;

    move-result-object v1

    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    .line 122
    .end local v0    # "current":Lrx/schedulers/TestScheduler$TimedAction;
    :cond_42
    goto :goto_0

    .line 123
    :cond_43
    :goto_43
    iput-wide p1, p0, Lrx/schedulers/TestScheduler;->time:J

    .line 124
    return-void
.end method


# virtual methods
.method public advanceTimeBy(JLjava/util/concurrent/TimeUnit;)V
    .registers 8
    .param p1, "delayTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 84
    iget-wide v0, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lrx/schedulers/TestScheduler;->advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V

    .line 85
    return-void
.end method

.method public advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .param p1, "delayTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 96
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 97
    .local v0, "targetTime":J
    invoke-direct {p0, v0, v1}, Lrx/schedulers/TestScheduler;->triggerActions(J)V

    .line 98
    return-void
.end method

.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .line 128
    new-instance v0, Lrx/schedulers/TestScheduler$InnerTestScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx/schedulers/TestScheduler$InnerTestScheduler;-><init>(Lrx/schedulers/TestScheduler;Lrx/schedulers/TestScheduler$1;)V

    return-object v0
.end method

.method public now()J
    .registers 4

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public triggerActions()V
    .registers 3

    .line 105
    iget-wide v0, p0, Lrx/schedulers/TestScheduler;->time:J

    invoke-direct {p0, v0, v1}, Lrx/schedulers/TestScheduler;->triggerActions(J)V

    .line 106
    return-void
.end method

###### Class rx.schedulers.TestScheduler.AnonymousClass1 (rx.schedulers.TestScheduler$1)
.class synthetic Lrx/schedulers/TestScheduler$1;
.super Ljava/lang/Object;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class rx.schedulers.TestScheduler.CompareActionsByTime (rx.schedulers.TestScheduler$CompareActionsByTime)
.class Lrx/schedulers/TestScheduler$CompareActionsByTime;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompareActionsByTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lrx/schedulers/TestScheduler$TimedAction;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/schedulers/TestScheduler$1;)V
    .registers 2
    .param p1, "x0"    # Lrx/schedulers/TestScheduler$1;

    .line 56
    invoke-direct {p0}, Lrx/schedulers/TestScheduler$CompareActionsByTime;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 56
    move-object v0, p1

    check-cast v0, Lrx/schedulers/TestScheduler$TimedAction;

    move-object v1, p2

    check-cast v1, Lrx/schedulers/TestScheduler$TimedAction;

    invoke-virtual {p0, v0, v1}, Lrx/schedulers/TestScheduler$CompareActionsByTime;->compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I

    move-result v0

    return v0
.end method

.method public compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I
    .registers 8
    .param p1, "action1"    # Lrx/schedulers/TestScheduler$TimedAction;
    .param p2, "action2"    # Lrx/schedulers/TestScheduler$TimedAction;

    .line 59
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v0

    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_21

    .line 60
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$300(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$300(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0

    .line 62
    :cond_21
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$200(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

###### Class rx.schedulers.TestScheduler.InnerTestScheduler (rx.schedulers.TestScheduler$InnerTestScheduler)
.class final Lrx/schedulers/TestScheduler$InnerTestScheduler;
.super Lrx/Scheduler$Worker;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerTestScheduler"
.end annotation


# instance fields
.field private final s:Lrx/subscriptions/BooleanSubscription;

.field final synthetic this$0:Lrx/schedulers/TestScheduler;


# direct methods
.method private constructor <init>(Lrx/schedulers/TestScheduler;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 133
    new-instance p1, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {p1}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    iput-object p1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->s:Lrx/subscriptions/BooleanSubscription;

    return-void
.end method

.method synthetic constructor <init>(Lrx/schedulers/TestScheduler;Lrx/schedulers/TestScheduler$1;)V
    .registers 3
    .param p1, "x0"    # Lrx/schedulers/TestScheduler;
    .param p2, "x1"    # Lrx/schedulers/TestScheduler$1;

    .line 131
    invoke-direct {p0, p1}, Lrx/schedulers/TestScheduler$InnerTestScheduler;-><init>(Lrx/schedulers/TestScheduler;)V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 142
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->s:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public now()J
    .registers 3

    .line 175
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    invoke-virtual {v0}, Lrx/schedulers/TestScheduler;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 9
    .param p1, "action"    # Lrx/functions/Action0;

    .line 161
    new-instance v6, Lrx/schedulers/TestScheduler$TimedAction;

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lrx/schedulers/TestScheduler$TimedAction;-><init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;Lrx/schedulers/TestScheduler$1;)V

    .line 162
    .local v0, "timedAction":Lrx/schedulers/TestScheduler$TimedAction;
    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    invoke-static {v1}, Lrx/schedulers/TestScheduler;->access$900(Lrx/schedulers/TestScheduler;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;

    invoke-direct {v1, p0, v0}, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;-><init>(Lrx/schedulers/TestScheduler$InnerTestScheduler;Lrx/schedulers/TestScheduler$TimedAction;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    return-object v1
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 12
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 147
    new-instance v6, Lrx/schedulers/TestScheduler$TimedAction;

    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    invoke-static {v0}, Lrx/schedulers/TestScheduler;->access$700(Lrx/schedulers/TestScheduler;)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lrx/schedulers/TestScheduler$TimedAction;-><init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;Lrx/schedulers/TestScheduler$1;)V

    .line 148
    .local v0, "timedAction":Lrx/schedulers/TestScheduler$TimedAction;
    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    invoke-static {v1}, Lrx/schedulers/TestScheduler;->access$900(Lrx/schedulers/TestScheduler;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;

    invoke-direct {v1, p0, v0}, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;-><init>(Lrx/schedulers/TestScheduler$InnerTestScheduler;Lrx/schedulers/TestScheduler$TimedAction;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    return-object v1
.end method

.method public unsubscribe()V
    .registers 2

    .line 137
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->s:Lrx/subscriptions/BooleanSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->unsubscribe()V

    .line 138
    return-void
.end method

###### Class rx.schedulers.TestScheduler.InnerTestScheduler.AnonymousClass1 (rx.schedulers.TestScheduler$InnerTestScheduler$1)
.class Lrx/schedulers/TestScheduler$InnerTestScheduler$1;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/TestScheduler$InnerTestScheduler;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

.field final synthetic val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;


# direct methods
.method constructor <init>(Lrx/schedulers/TestScheduler$InnerTestScheduler;Lrx/schedulers/TestScheduler$TimedAction;)V
    .registers 3

    .line 149
    iput-object p1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;->this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

    iput-object p2, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;->val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 153
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;->this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

    iget-object v0, v0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    invoke-static {v0}, Lrx/schedulers/TestScheduler;->access$900(Lrx/schedulers/TestScheduler;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$1;->val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

###### Class rx.schedulers.TestScheduler.InnerTestScheduler.AnonymousClass2 (rx.schedulers.TestScheduler$InnerTestScheduler$2)
.class Lrx/schedulers/TestScheduler$InnerTestScheduler$2;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/TestScheduler$InnerTestScheduler;->schedule(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

.field final synthetic val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;


# direct methods
.method constructor <init>(Lrx/schedulers/TestScheduler$InnerTestScheduler;Lrx/schedulers/TestScheduler$TimedAction;)V
    .registers 3

    .line 163
    iput-object p1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

    iput-object p2, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 167
    iget-object v0, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->this$1:Lrx/schedulers/TestScheduler$InnerTestScheduler;

    iget-object v0, v0, Lrx/schedulers/TestScheduler$InnerTestScheduler;->this$0:Lrx/schedulers/TestScheduler;

    invoke-static {v0}, Lrx/schedulers/TestScheduler;->access$900(Lrx/schedulers/TestScheduler;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Lrx/schedulers/TestScheduler$InnerTestScheduler$2;->val$timedAction:Lrx/schedulers/TestScheduler$TimedAction;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

###### Class rx.schedulers.TestScheduler.TimedAction (rx.schedulers.TestScheduler$TimedAction)
.class final Lrx/schedulers/TestScheduler$TimedAction;
.super Ljava/lang/Object;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimedAction"
.end annotation


# instance fields
.field private final action:Lrx/functions/Action0;

.field private final count:J

.field private final scheduler:Lrx/Scheduler$Worker;

.field private final time:J


# direct methods
.method private constructor <init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;)V
    .registers 7
    .param p1, "scheduler"    # Lrx/Scheduler$Worker;
    .param p2, "time"    # J
    .param p4, "action"    # Lrx/functions/Action0;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lrx/schedulers/TestScheduler;->access$108()J

    move-result-wide v0

    iput-wide v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->count:J

    .line 45
    iput-wide p2, p0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    .line 46
    iput-object p4, p0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    .line 47
    iput-object p1, p0, Lrx/schedulers/TestScheduler$TimedAction;->scheduler:Lrx/Scheduler$Worker;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;Lrx/schedulers/TestScheduler$1;)V
    .registers 6
    .param p1, "x0"    # Lrx/Scheduler$Worker;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lrx/functions/Action0;
    .param p5, "x3"    # Lrx/schedulers/TestScheduler$1;

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lrx/schedulers/TestScheduler$TimedAction;-><init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;)V

    return-void
.end method

.method static synthetic access$200(Lrx/schedulers/TestScheduler$TimedAction;)J
    .registers 3
    .param p0, "x0"    # Lrx/schedulers/TestScheduler$TimedAction;

    .line 37
    iget-wide v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    return-wide v0
.end method

.method static synthetic access$300(Lrx/schedulers/TestScheduler$TimedAction;)J
    .registers 3
    .param p0, "x0"    # Lrx/schedulers/TestScheduler$TimedAction;

    .line 37
    iget-wide v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->count:J

    return-wide v0
.end method

.method static synthetic access$400(Lrx/schedulers/TestScheduler$TimedAction;)Lrx/Scheduler$Worker;
    .registers 2
    .param p0, "x0"    # Lrx/schedulers/TestScheduler$TimedAction;

    .line 37
    iget-object v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->scheduler:Lrx/Scheduler$Worker;

    return-object v0
.end method

.method static synthetic access$500(Lrx/schedulers/TestScheduler$TimedAction;)Lrx/functions/Action0;
    .registers 2
    .param p0, "x0"    # Lrx/schedulers/TestScheduler$TimedAction;

    .line 37
    iget-object v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 52
    const-string v0, "TimedAction(time = %d, action = %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
