###### Class rx.internal.operators.OperatorSkipTimed (rx.internal.operators.OperatorSkipTimed)
.class public final Lrx/internal/operators/OperatorSkipTimed;
.super Ljava/lang/Object;
.source "OperatorSkipTimed.java"

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
.field final scheduler:Lrx/Scheduler;

.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed;, "Lrx/internal/operators/OperatorSkipTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lrx/internal/operators/OperatorSkipTimed;->time:J

    .line 37
    iput-object p3, p0, Lrx/internal/operators/OperatorSkipTimed;->unit:Ljava/util/concurrent/TimeUnit;

    .line 38
    iput-object p4, p0, Lrx/internal/operators/OperatorSkipTimed;->scheduler:Lrx/Scheduler;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed;, "Lrx/internal/operators/OperatorSkipTimed<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSkipTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed;, "Lrx/internal/operators/OperatorSkipTimed<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipTimed;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 44
    .local v0, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 46
    .local v1, "gate":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lrx/internal/operators/OperatorSkipTimed$1;

    invoke-direct {v2, p0, v1}, Lrx/internal/operators/OperatorSkipTimed$1;-><init>(Lrx/internal/operators/OperatorSkipTimed;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-wide v3, p0, Lrx/internal/operators/OperatorSkipTimed;->time:J

    iget-object v5, p0, Lrx/internal/operators/OperatorSkipTimed;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4, v5}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 52
    new-instance v2, Lrx/internal/operators/OperatorSkipTimed$2;

    invoke-direct {v2, p0, p1, v1, p1}, Lrx/internal/operators/OperatorSkipTimed$2;-><init>(Lrx/internal/operators/OperatorSkipTimed;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Subscriber;)V

    return-object v2
.end method

###### Class rx.internal.operators.OperatorSkipTimed.AnonymousClass1 (rx.internal.operators.OperatorSkipTimed$1)
.class Lrx/internal/operators/OperatorSkipTimed$1;
.super Ljava/lang/Object;
.source "OperatorSkipTimed.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSkipTimed;

.field final synthetic val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipTimed;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$1;, "Lrx/internal/operators/OperatorSkipTimed.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipTimed$1;->this$0:Lrx/internal/operators/OperatorSkipTimed;

    iput-object p2, p0, Lrx/internal/operators/OperatorSkipTimed$1;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$1;, "Lrx/internal/operators/OperatorSkipTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipTimed$1;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    return-void
.end method

###### Class rx.internal.operators.OperatorSkipTimed.AnonymousClass2 (rx.internal.operators.OperatorSkipTimed$2)
.class Lrx/internal/operators/OperatorSkipTimed$2;
.super Lrx/Subscriber;
.source "OperatorSkipTimed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorSkipTimed;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipTimed;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Subscriber;)V
    .registers 5

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$2;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipTimed$2;->this$0:Lrx/internal/operators/OperatorSkipTimed;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$2;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 75
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipTimed$2;->unsubscribe()V

    .line 76
    nop

    .line 77
    return-void

    .line 75
    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipTimed$2;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$2;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 66
    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipTimed$2;->unsubscribe()V

    .line 67
    nop

    .line 68
    return-void

    .line 66
    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorSkipTimed$2;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorSkipTimed$2;, "Lrx/internal/operators/OperatorSkipTimed.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 57
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipTimed$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 59
    :cond_d
    return-void
.end method
