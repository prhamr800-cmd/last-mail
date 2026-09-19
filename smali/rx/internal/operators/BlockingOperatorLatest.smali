###### Class rx.internal.operators.BlockingOperatorLatest (rx.internal.operators.BlockingOperatorLatest)
.class public final Lrx/internal/operators/BlockingOperatorLatest;
.super Ljava/lang/Object;
.source "BlockingOperatorLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static latest(Lrx/Observable;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 48
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/BlockingOperatorLatest$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/BlockingOperatorLatest$1;-><init>(Lrx/Observable;)V

    return-object v0
.end method

###### Class rx.internal.operators.BlockingOperatorLatest.AnonymousClass1 (rx.internal.operators.BlockingOperatorLatest$1)
.class final Lrx/internal/operators/BlockingOperatorLatest$1;
.super Ljava/lang/Object;
.source "BlockingOperatorLatest.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorLatest;->latest(Lrx/Observable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$source:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorLatest$1;->val$source:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;

    invoke-direct {v0}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;-><init>()V

    .line 52
    .local v0, "lio":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$1;->val$source:Lrx/Observable;

    invoke-virtual {v1}, Lrx/Observable;->materialize()Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 53
    return-object v0
.end method

###### Class rx.internal.operators.BlockingOperatorLatest.LatestObserverIterator (rx.internal.operators.BlockingOperatorLatest$LatestObserverIterator)
.class final Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;
.super Lrx/Subscriber;
.source "BlockingOperatorLatest.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestObserverIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "Lrx/Notification<",
        "+TT;>;>;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;",
            "Lrx/Notification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field iNotif:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final notify:Ljava/util/concurrent/Semaphore;

.field volatile value:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 65
    const-class v0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;

    const-class v1, Lrx/Notification;

    const-string v2, "value"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 59
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 91
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_18

    .line 92
    :cond_d
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 94
    :cond_18
    :goto_18
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-nez v0, :cond_63

    .line 95
    :cond_24
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    if-nez v0, :cond_63

    .line 97
    :try_start_28
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2d} :catch_4d

    .line 103
    nop

    .line 106
    sget-object v0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    .line 107
    .local v0, "n":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    .line 108
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->isOnError()Z

    move-result v1

    if-nez v1, :cond_42

    .end local v0    # "n":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    goto :goto_63

    .line 109
    .restart local v0    # "n":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_42
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 98
    .end local v0    # "n":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :catch_4d
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->unsubscribe()V

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 101
    invoke-static {v0}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    .line 102
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 113
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_63
    :goto_63
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 119
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 120
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    invoke-virtual {v0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->iNotif:Lrx/Notification;

    .line 122
    return-object v0

    .line 125
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :cond_18
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public onCompleted()V
    .registers 1

    .line 84
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 79
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 59
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    move-object v0, p1

    check-cast v0, Lrx/Notification;

    invoke-virtual {p0, v0}, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification<",
            "+TT;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    sget-object v0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->REFERENCE_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 71
    .local v0, "wasntAvailable":Z
    :goto_b
    if-eqz v0, :cond_12

    .line 72
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;->notify:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 74
    :cond_12
    return-void
.end method

.method public remove()V
    .registers 3

    .line 130
    .local p0, "this":Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
