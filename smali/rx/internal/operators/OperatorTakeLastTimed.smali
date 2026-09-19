###### Class rx.internal.operators.OperatorTakeLastTimed (rx.internal.operators.OperatorTakeLastTimed)
.class public final Lrx/internal/operators/OperatorTakeLastTimed;
.super Ljava/lang/Object;
.source "OperatorTakeLastTimed.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
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
.field private final ageMillis:J

.field private final count:I

.field private final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 8
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;

    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-ltz p1, :cond_10

    .line 47
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    .line 48
    iput-object p5, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    .line 49
    iput p1, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    .line 50
    return-void

    .line 45
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count could not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 7
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    .line 39
    iput-object p4, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    .line 41
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorTakeLastTimed;)I
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorTakeLastTimed;

    .line 31
    iget v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    return v0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorTakeLastTimed;)J
    .registers 3
    .param p0, "x0"    # Lrx/internal/operators/OperatorTakeLastTimed;

    .line 31
    iget-wide v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorTakeLastTimed;)Lrx/Scheduler;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorTakeLastTimed;

    .line 31
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorTakeLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 55
    .local v0, "buffer":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 56
    .local v5, "timestampBuffer":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Long;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v9

    .line 57
    .local v9, "notification":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    new-instance v1, Lrx/internal/operators/TakeLastQueueProducer;

    invoke-direct {v1, v9, v0, p1}, Lrx/internal/operators/TakeLastQueueProducer;-><init>(Lrx/internal/operators/NotificationLite;Ljava/util/Deque;Lrx/Subscriber;)V

    move-object v10, v1

    .line 58
    .local v10, "producer":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    invoke-virtual {p1, v10}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 59
    new-instance v11, Lrx/internal/operators/OperatorTakeLastTimed$1;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v6, v9

    move-object v7, p1

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/OperatorTakeLastTimed$1;-><init>(Lrx/internal/operators/OperatorTakeLastTimed;Lrx/Subscriber;Ljava/util/Deque;Ljava/util/Deque;Lrx/internal/operators/NotificationLite;Lrx/Subscriber;Lrx/internal/operators/TakeLastQueueProducer;)V

    return-object v11
.end method

###### Class rx.internal.operators.OperatorTakeLastTimed.AnonymousClass1 (rx.internal.operators.OperatorTakeLastTimed$1)
.class Lrx/internal/operators/OperatorTakeLastTimed$1;
.super Lrx/Subscriber;
.source "OperatorTakeLastTimed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeLastTimed;

.field final synthetic val$buffer:Ljava/util/Deque;

.field final synthetic val$notification:Lrx/internal/operators/NotificationLite;

.field final synthetic val$producer:Lrx/internal/operators/TakeLastQueueProducer;

.field final synthetic val$subscriber:Lrx/Subscriber;

.field final synthetic val$timestampBuffer:Ljava/util/Deque;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeLastTimed;Lrx/Subscriber;Ljava/util/Deque;Ljava/util/Deque;Lrx/internal/operators/NotificationLite;Lrx/Subscriber;Lrx/internal/operators/TakeLastQueueProducer;)V
    .registers 8

    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    iput-object p3, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    iput-object p4, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    iput-object p5, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$notification:Lrx/internal/operators/NotificationLite;

    iput-object p6, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$subscriber:Lrx/Subscriber;

    iput-object p7, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$producer:Lrx/internal/operators/TakeLastQueueProducer;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    invoke-static {v0}, Lrx/internal/operators/OperatorTakeLastTimed;->access$200(Lrx/internal/operators/OperatorTakeLastTimed;)Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorTakeLastTimed$1;->runEvictionPolicy(J)V

    .line 104
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 105
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$notification:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$producer:Lrx/internal/operators/TakeLastQueueProducer;

    invoke-virtual {v0}, Lrx/internal/operators/TakeLastQueueProducer;->startEmitting()V

    .line 107
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 96
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 97
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 98
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    invoke-static {v0}, Lrx/internal/operators/OperatorTakeLastTimed;->access$200(Lrx/internal/operators/OperatorTakeLastTimed;)Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    .line 89
    .local v0, "t":J
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    iget-object v3, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$notification:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorTakeLastTimed$1;->runEvictionPolicy(J)V

    .line 92
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorTakeLastTimed$1;->request(J)V

    .line 84
    return-void
.end method

.method protected runEvictionPolicy(J)V
    .registers 8
    .param p1, "now"    # J

    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    invoke-static {v0}, Lrx/internal/operators/OperatorTakeLastTimed;->access$000(Lrx/internal/operators/OperatorTakeLastTimed;)I

    move-result v0

    if-ltz v0, :cond_21

    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    invoke-static {v1}, Lrx/internal/operators/OperatorTakeLastTimed;->access$000(Lrx/internal/operators/OperatorTakeLastTimed;)I

    move-result v1

    if-le v0, v1, :cond_21

    .line 64
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_21
    :goto_21
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 69
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 70
    .local v0, "v":J
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    invoke-static {v2}, Lrx/internal/operators/OperatorTakeLastTimed;->access$100(Lrx/internal/operators/OperatorTakeLastTimed;)J

    move-result-wide v2

    sub-long v2, p1, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_4c

    .line 71
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$timestampBuffer:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 72
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$buffer:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 76
    .end local v0    # "v":J
    goto :goto_21

    .line 77
    :cond_4c
    return-void
.end method
