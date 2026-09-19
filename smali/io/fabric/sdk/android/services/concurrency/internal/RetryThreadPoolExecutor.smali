###### Class io.fabric.sdk.android.services.concurrency.internal.RetryThreadPoolExecutor (io.fabric.sdk.android.services.concurrency.internal.RetryThreadPoolExecutor)
.class public Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "RetryThreadPoolExecutor.java"


# instance fields
.field private final backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

.field private final retryPolicy:Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;


# direct methods
.method public constructor <init>(ILio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;Lio/fabric/sdk/android/services/concurrency/internal/Backoff;)V
    .registers 5
    .param p1, "corePoolSize"    # I
    .param p2, "retryPolicy"    # Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;
    .param p3, "backoff"    # Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;Lio/fabric/sdk/android/services/concurrency/internal/Backoff;)V

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;Lio/fabric/sdk/android/services/concurrency/internal/Backoff;)V
    .registers 7
    .param p1, "corePoolSize"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "retryPolicy"    # Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;
    .param p4, "backoff"    # Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 66
    if-eqz p3, :cond_14

    .line 70
    if-eqz p4, :cond_c

    .line 74
    iput-object p3, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->retryPolicy:Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;

    .line 75
    iput-object p4, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    .line 76
    return-void

    .line 71
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "backoff must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "retry policy must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scheduleWithRetryInternal(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 119
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-eqz p1, :cond_14

    .line 123
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/internal/RetryState;

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    iget-object v2, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->retryPolicy:Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/concurrency/internal/RetryState;-><init>(Lio/fabric/sdk/android/services/concurrency/internal/Backoff;Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;)V

    .line 124
    .local v0, "retryState":Lio/fabric/sdk/android/services/concurrency/internal/RetryState;
    new-instance v1, Lio/fabric/sdk/android/services/concurrency/internal/RetryFuture;

    invoke-direct {v1, p1, v0, p0}, Lio/fabric/sdk/android/services/concurrency/internal/RetryFuture;-><init>(Ljava/util/concurrent/Callable;Lio/fabric/sdk/android/services/concurrency/internal/RetryState;Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;)V

    .line 126
    .local v1, "retryFuture":Lio/fabric/sdk/android/services/concurrency/internal/RetryFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/RetryFuture<TT;>;"
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-object v1

    .line 120
    .end local v0    # "retryState":Lio/fabric/sdk/android/services/concurrency/internal/RetryState;
    .end local v1    # "retryFuture":Lio/fabric/sdk/android/services/concurrency/internal/RetryFuture;, "Lio/fabric/sdk/android/services/concurrency/internal/RetryFuture<TT;>;"
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getBackoff()Lio/fabric/sdk/android/services/concurrency/internal/Backoff;
    .registers 2

    .line 142
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->backoff:Lio/fabric/sdk/android/services/concurrency/internal/Backoff;

    return-object v0
.end method

.method public getRetryPolicy()Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;
    .registers 2

    .line 135
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->retryPolicy:Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;

    return-object v0
.end method

.method public scheduleWithRetry(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 88
    invoke-static {p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->scheduleWithRetryInternal(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithRetry(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 102
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->scheduleWithRetryInternal(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithRetry(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 115
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/internal/RetryThreadPoolExecutor;->scheduleWithRetryInternal(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
