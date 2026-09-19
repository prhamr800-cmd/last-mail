###### Class rx.internal.operators.OperatorTakeLast (rx.internal.operators.OperatorTakeLast)
.class public final Lrx/internal/operators/OperatorTakeLast;
.super Ljava/lang/Object;
.source "OperatorTakeLast.java"

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
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "count"    # I

    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-ltz p1, :cond_8

    .line 37
    iput p1, p0, Lrx/internal/operators/OperatorTakeLast;->count:I

    .line 38
    return-void

    .line 35
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count could not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorTakeLast;)I
    .registers 2
    .param p0, "x0"    # Lrx/internal/operators/OperatorTakeLast;

    .line 29
    iget v0, p0, Lrx/internal/operators/OperatorTakeLast;->count:I

    return v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorTakeLast;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 13
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
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 43
    .local v0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Object;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v8

    .line 44
    .local v8, "notification":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    new-instance v1, Lrx/internal/operators/TakeLastQueueProducer;

    invoke-direct {v1, v8, v0, p1}, Lrx/internal/operators/TakeLastQueueProducer;-><init>(Lrx/internal/operators/NotificationLite;Ljava/util/Deque;Lrx/Subscriber;)V

    move-object v9, v1

    .line 45
    .local v9, "producer":Lrx/internal/operators/TakeLastQueueProducer;, "Lrx/internal/operators/TakeLastQueueProducer<TT;>;"
    invoke-virtual {p1, v9}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 47
    new-instance v10, Lrx/internal/operators/OperatorTakeLast$1;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v8

    move-object v6, v9

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lrx/internal/operators/OperatorTakeLast$1;-><init>(Lrx/internal/operators/OperatorTakeLast;Lrx/Subscriber;Ljava/util/Deque;Lrx/internal/operators/NotificationLite;Lrx/internal/operators/TakeLastQueueProducer;Lrx/Subscriber;)V

    return-object v10
.end method

###### Class rx.internal.operators.OperatorTakeLast.AnonymousClass1 (rx.internal.operators.OperatorTakeLast$1)
.class Lrx/internal/operators/OperatorTakeLast$1;
.super Lrx/Subscriber;
.source "OperatorTakeLast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeLast;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeLast;

.field final synthetic val$deque:Ljava/util/Deque;

.field final synthetic val$notification:Lrx/internal/operators/NotificationLite;

.field final synthetic val$producer:Lrx/internal/operators/TakeLastQueueProducer;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeLast;Lrx/Subscriber;Ljava/util/Deque;Lrx/internal/operators/NotificationLite;Lrx/internal/operators/TakeLastQueueProducer;Lrx/Subscriber;)V
    .registers 7

    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$1;, "Lrx/internal/operators/OperatorTakeLast.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLast$1;->this$0:Lrx/internal/operators/OperatorTakeLast;

    iput-object p3, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$deque:Ljava/util/Deque;

    iput-object p4, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$notification:Lrx/internal/operators/NotificationLite;

    iput-object p5, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$producer:Lrx/internal/operators/TakeLastQueueProducer;

    iput-object p6, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$1;, "Lrx/internal/operators/OperatorTakeLast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$deque:Ljava/util/Deque;

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$notification:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$producer:Lrx/internal/operators/TakeLastQueueProducer;

    invoke-virtual {v0}, Lrx/internal/operators/TakeLastQueueProducer;->startEmitting()V

    .line 60
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$1;, "Lrx/internal/operators/OperatorTakeLast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 65
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$1;, "Lrx/internal/operators/OperatorTakeLast.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$1;->this$0:Lrx/internal/operators/OperatorTakeLast;

    invoke-static {v0}, Lrx/internal/operators/OperatorTakeLast;->access$000(Lrx/internal/operators/OperatorTakeLast;)I

    move-result v0

    if-nez v0, :cond_9

    .line 73
    return-void

    .line 75
    :cond_9
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLast$1;->this$0:Lrx/internal/operators/OperatorTakeLast;

    invoke-static {v1}, Lrx/internal/operators/OperatorTakeLast;->access$000(Lrx/internal/operators/OperatorTakeLast;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 76
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 78
    :cond_1c
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$deque:Ljava/util/Deque;

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$notification:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$1;, "Lrx/internal/operators/OperatorTakeLast.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorTakeLast$1;->request(J)V

    .line 54
    return-void
.end method
