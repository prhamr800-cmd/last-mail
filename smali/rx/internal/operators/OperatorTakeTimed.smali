###### Class rx.internal.operators.OperatorTakeTimed (rx.internal.operators.OperatorTakeTimed)
.class public final Lrx/internal/operators/OperatorTakeTimed;
.super Ljava/lang/Object;
.source "OperatorTakeTimed.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;
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

    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed;, "Lrx/internal/operators/OperatorTakeTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lrx/internal/operators/OperatorTakeTimed;->time:J

    .line 39
    iput-object p3, p0, Lrx/internal/operators/OperatorTakeTimed;->unit:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p4, p0, Lrx/internal/operators/OperatorTakeTimed;->scheduler:Lrx/Scheduler;

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed;, "Lrx/internal/operators/OperatorTakeTimed<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorTakeTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed;, "Lrx/internal/operators/OperatorTakeTimed<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeTimed;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 46
    .local v0, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 48
    new-instance v1, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;

    new-instance v2, Lrx/observers/SerializedSubscriber;

    invoke-direct {v2, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    invoke-direct {v1, v2}, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;-><init>(Lrx/Subscriber;)V

    .line 49
    .local v1, "ts":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    iget-wide v2, p0, Lrx/internal/operators/OperatorTakeTimed;->time:J

    iget-object v4, p0, Lrx/internal/operators/OperatorTakeTimed;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 50
    return-object v1
.end method

###### Class rx.internal.operators.OperatorTakeTimed.TakeSubscriber (rx.internal.operators.OperatorTakeTimed$TakeSubscriber)
.class final Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;
.super Lrx/Subscriber;
.source "OperatorTakeTimed.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTakeTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeSubscriber"
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


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 57
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->child:Lrx/Subscriber;

    .line 58
    return-void
.end method


# virtual methods
.method public call()V
    .registers 1

    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->onCompleted()V

    .line 80
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 74
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->unsubscribe()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->unsubscribe()V

    .line 69
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 63
    return-void
.end method
