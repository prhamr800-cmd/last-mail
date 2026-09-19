###### Class rx.internal.operators.BlockingOperatorToIterator (rx.internal.operators.BlockingOperatorToIterator)
.class public final Lrx/internal/operators/BlockingOperatorToIterator;
.super Ljava/lang/Object;
.source "BlockingOperatorToIterator.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIterator(Lrx/Observable;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 50
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 53
    .local v0, "notifications":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lrx/Notification<+TT;>;>;"
    invoke-virtual {p0}, Lrx/Observable;->materialize()Lrx/Observable;

    move-result-object v1

    new-instance v2, Lrx/internal/operators/BlockingOperatorToIterator$1;

    invoke-direct {v2, v0}, Lrx/internal/operators/BlockingOperatorToIterator$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v1

    .line 70
    .local v1, "subscription":Lrx/Subscription;
    new-instance v2, Lrx/internal/operators/BlockingOperatorToIterator$2;

    invoke-direct {v2, v0, v1}, Lrx/internal/operators/BlockingOperatorToIterator$2;-><init>(Ljava/util/concurrent/BlockingQueue;Lrx/Subscription;)V

    return-object v2
.end method

###### Class rx.internal.operators.BlockingOperatorToIterator.AnonymousClass1 (rx.internal.operators.BlockingOperatorToIterator$1)
.class final Lrx/internal/operators/BlockingOperatorToIterator$1;
.super Lrx/Subscriber;
.source "BlockingOperatorToIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorToIterator;->toIterator(Lrx/Observable;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lrx/Notification<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$notifications:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorToIterator$1;->val$notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .line 57
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 61
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$1;->val$notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 53
    move-object v0, p1

    check-cast v0, Lrx/Notification;

    invoke-virtual {p0, v0}, Lrx/internal/operators/BlockingOperatorToIterator$1;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification<",
            "+TT;>;)V"
        }
    .end annotation

    .line 66
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$1;->val$notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

###### Class rx.internal.operators.BlockingOperatorToIterator.AnonymousClass2 (rx.internal.operators.BlockingOperatorToIterator$2)
.class final Lrx/internal/operators/BlockingOperatorToIterator$2;
.super Ljava/lang/Object;
.source "BlockingOperatorToIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorToIterator;->toIterator(Lrx/Observable;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private buf:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final synthetic val$notifications:Ljava/util/concurrent/BlockingQueue;

.field final synthetic val$subscription:Lrx/Subscription;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Lrx/Subscription;)V
    .registers 3

    .line 70
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->val$notifications:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->val$subscription:Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private take()Lrx/Notification;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Notification<",
            "+TT;>;"
        }
    .end annotation

    .line 96
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->val$notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 97
    :catch_9
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->val$subscription:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 99
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 75
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    if-nez v0, :cond_a

    .line 76
    invoke-direct {p0}, Lrx/internal/operators/BlockingOperatorToIterator$2;->take()Lrx/Notification;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    .line 78
    :cond_a
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 81
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 79
    :cond_1b
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorToIterator$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 87
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorToIterator$2;->buf:Lrx/Notification;

    .line 89
    return-object v0

    .line 91
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
