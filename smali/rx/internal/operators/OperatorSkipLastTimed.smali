###### Class rx.internal.operators.OperatorSkipLastTimed (rx.internal.operators.OperatorSkipLastTimed)
.class public Lrx/internal/operators/OperatorSkipLastTimed;
.super Ljava/lang/Object;
.source "OperatorSkipLastTimed.java"

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
.field private final scheduler:Lrx/Scheduler;

.field private final timeInMillis:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 7
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed;, "Lrx/internal/operators/OperatorSkipLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorSkipLastTimed;->timeInMillis:J

    .line 37
    iput-object p4, p0, Lrx/internal/operators/OperatorSkipLastTimed;->scheduler:Lrx/Scheduler;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorSkipLastTimed;)J
    .registers 3
    .param p0, "x0"    # Lrx/internal/operators/OperatorSkipLastTimed;

    .line 30
    iget-wide v0, p0, Lrx/internal/operators/OperatorSkipLastTimed;->timeInMillis:J

    return-wide v0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorSkipLastTimed;)Lrx/Scheduler;
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorSkipLastTimed;

    .line 30
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed;->scheduler:Lrx/Scheduler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed;, "Lrx/internal/operators/OperatorSkipLastTimed<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSkipLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed;, "Lrx/internal/operators/OperatorSkipLastTimed<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipLastTimed$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorSkipLastTimed$1;-><init>(Lrx/internal/operators/OperatorSkipLastTimed;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorSkipLastTimed.AnonymousClass1 (rx.internal.operators.OperatorSkipLastTimed$1)
.class Lrx/internal/operators/OperatorSkipLastTimed$1;
.super Lrx/Subscriber;
.source "OperatorSkipLastTimed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private buffer:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lrx/schedulers/Timestamped<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorSkipLastTimed;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipLastTimed;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 44
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    return-void
.end method

.method private emitItemsOutOfWindow(J)V
    .registers 9
    .param p1, "now"    # J

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    invoke-static {v0}, Lrx/internal/operators/OperatorSkipLastTimed;->access$000(Lrx/internal/operators/OperatorSkipLastTimed;)J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 48
    .local v0, "limit":J
    :goto_8
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 49
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/schedulers/Timestamped;

    .line 50
    .local v2, "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    invoke-virtual {v2}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_2f

    .line 51
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 52
    iget-object v3, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/schedulers/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 56
    .end local v2    # "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<TT;>;"
    goto :goto_8

    .line 57
    :cond_2f
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    invoke-static {v0}, Lrx/internal/operators/OperatorSkipLastTimed;->access$100(Lrx/internal/operators/OperatorSkipLastTimed;)Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lrx/internal/operators/OperatorSkipLastTimed$1;->emitItemsOutOfWindow(J)V

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorSkipLastTimed$1;, "Lrx/internal/operators/OperatorSkipLastTimed.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->this$0:Lrx/internal/operators/OperatorSkipLastTimed;

    invoke-static {v0}, Lrx/internal/operators/OperatorSkipLastTimed;->access$100(Lrx/internal/operators/OperatorSkipLastTimed;)Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    .line 62
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lrx/internal/operators/OperatorSkipLastTimed$1;->emitItemsOutOfWindow(J)V

    .line 63
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipLastTimed$1;->buffer:Ljava/util/Deque;

    new-instance v3, Lrx/schedulers/Timestamped;

    invoke-direct {v3, v0, v1, p1}, Lrx/schedulers/Timestamped;-><init>(JLjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
