###### Class rx.internal.operators.OperatorOnBackpressureBlock (rx.internal.operators.OperatorOnBackpressureBlock)
.class public Lrx/internal/operators/OperatorOnBackpressureBlock;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBlock.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;
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
.field final max:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "max"    # I

    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock;, "Lrx/internal/operators/OperatorOnBackpressureBlock<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock;->max:I

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock;, "Lrx/internal/operators/OperatorOnBackpressureBlock<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorOnBackpressureBlock;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock;, "Lrx/internal/operators/OperatorOnBackpressureBlock<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock;->max:I

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;-><init>(ILrx/Subscriber;)V

    .line 37
    .local v0, "s":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->init()V

    .line 38
    return-object v0
.end method

###### Class rx.internal.operators.OperatorOnBackpressureBlock.BlockingSubscriber (rx.internal.operators.OperatorOnBackpressureBlock$BlockingSubscriber)
.class final Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;
.super Lrx/Subscriber;
.source "OperatorOnBackpressureBlock.java"

# interfaces
.implements Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockingSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;",
        "Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;"
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

.field final manager:Lrx/internal/util/BackpressureDrainManager;

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite<",
            "TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILrx/Subscriber;)V
    .registers 4
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 42
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 47
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 48
    iput-object p2, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    .line 49
    new-instance v0, Lrx/internal/util/BackpressureDrainManager;

    invoke-direct {v0, p0}, Lrx/internal/util/BackpressureDrainManager;-><init>(Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    .line 50
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public complete(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 80
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    if-eqz p1, :cond_8

    .line 81
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 83
    :cond_8
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 85
    :goto_d
    return-void
.end method

.method init()V
    .registers 3

    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 53
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 54
    return-void
.end method

.method public onCompleted()V
    .registers 2

    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain()V

    .line 73
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0, p1}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0}, Lrx/internal/util/BackpressureDrainManager;->drain()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 64
    goto :goto_1b

    .line 60
    :catch_11
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 62
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 65
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1b
    :goto_1b
    return-void
.end method

.method public peek()Ljava/lang/Object;
    .registers 2

    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2

    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;, "Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnBackpressureBlock$BlockingSubscriber;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
