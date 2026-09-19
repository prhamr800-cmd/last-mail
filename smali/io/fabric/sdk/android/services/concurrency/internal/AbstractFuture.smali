###### Class io.fabric.sdk.android.services.concurrency.internal.AbstractFuture (io.fabric.sdk.android.services.concurrency.internal.AbstractFuture)
.class public abstract Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final sync:Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 72
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;->sync:Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;

    .line 73
    return-void
.end method

.method static final cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 82
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 84
    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .param p1, "mayInterruptIfRunning"    # Z

    .line 135
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;->sync:Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->cancel(Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_a
    if-eqz p1, :cond_f

    .line 139
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;->interruptTask()V

    .line 141
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 120
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;->sync:Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 105
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;->sync:Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected interruptTask()V
    .registers 1

    .line 153
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture<TV;>;"
    return-void
.end method

.method public isCancelled()Z
    .registers 2

    .line 130
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;->sync:Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .line 125
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;->sync:Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->isDone()Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 175
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;->sync:Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 188
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture<TV;>;"
    if-eqz p1, :cond_9

    .line 191
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;->sync:Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0

    .line 189
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected final wasInterrupted()Z
    .registers 2

    .line 162
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture<TV;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;->sync:Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->wasInterrupted()Z

    move-result v0

    return v0
.end method

###### Class io.fabric.sdk.android.services.concurrency.internal.AbstractFuture.Sync (io.fabric.sdk.android.services.concurrency.internal.AbstractFuture$Sync)
.class final Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = 0x4

.field static final COMPLETED:I = 0x2

.field static final COMPLETING:I = 0x1

.field static final INTERRUPTED:I = 0x8

.field static final RUNNING:I

.field private static final serialVersionUID:J


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 209
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .registers 7
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "finalState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            "I)Z"
        }
    .end annotation

    .line 355
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->compareAndSetState(II)Z

    move-result v1

    .line 356
    .local v1, "doCompletion":Z
    if-eqz v1, :cond_1d

    .line 359
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->value:Ljava/lang/Object;

    .line 361
    and-int/lit8 v0, p3, 0xc

    if-eqz v0, :cond_16

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v2, "Future.cancel() was called."

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :cond_16
    move-object v0, p2

    :goto_17
    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    .line 363
    invoke-virtual {p0, p3}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->releaseShared(I)Z

    goto :goto_27

    .line 364
    :cond_1d
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->getState()I

    move-result v2

    if-ne v2, v0, :cond_27

    .line 367
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->acquireShared(I)V

    .line 369
    :cond_27
    :goto_27
    return v1
.end method

.method private getValue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 278
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->getState()I

    move-result v0

    .line 279
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    const/16 v1, 0x8

    if-eq v0, v1, :cond_25

    .line 293
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error, synchronizer in invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_25
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    const-string v2, "Task was cancelled."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    throw v1

    .line 281
    :cond_2e
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_35

    .line 284
    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->value:Ljava/lang/Object;

    return-object v1

    .line 282
    :cond_35
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget-object v2, p0, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method cancel(Z)Z
    .registers 4
    .param p1, "interrupt"    # Z

    .line 338
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    if-eqz p1, :cond_5

    const/16 v0, 0x8

    goto :goto_6

    :cond_5
    const/4 v0, 0x4

    :goto_6
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 268
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->acquireSharedInterruptibly(I)V

    .line 269
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method get(J)Ljava/lang/Object;
    .registers 5
    .param p1, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 251
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 255
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 252
    :cond_c
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for task."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isCancelled()Z
    .registers 2

    .line 310
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isDone()Z
    .registers 2

    .line 303
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method set(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 324
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method setException(Ljava/lang/Throwable;)Z
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 331
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->complete(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method protected tryAcquireShared(I)I
    .registers 3
    .param p1, "ignored"    # I

    .line 226
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->isDone()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 227
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method protected tryReleaseShared(I)Z
    .registers 3
    .param p1, "finalState"    # I

    .line 238
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->setState(I)V

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method wasInterrupted()Z
    .registers 3

    .line 317
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;, "Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync<TV;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/internal/AbstractFuture$Sync;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
