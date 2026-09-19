###### Class io.fabric.sdk.android.services.concurrency.PriorityTask (io.fabric.sdk.android.services.concurrency.PriorityTask)
.class public Lio/fabric/sdk/android/services/concurrency/PriorityTask;
.super Ljava/lang/Object;
.source "PriorityTask.java"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/Dependency;
.implements Lio/fabric/sdk/android/services/concurrency/PriorityProvider;
.implements Lio/fabric/sdk/android/services/concurrency/Task;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/concurrency/Dependency<",
        "Lio/fabric/sdk/android/services/concurrency/Task;",
        ">;",
        "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
        "Lio/fabric/sdk/android/services/concurrency/Task;"
    }
.end annotation


# instance fields
.field private final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final hasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final throwable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->dependencies:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->hasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->throwable:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static isProperDelegate(Ljava/lang/Object;)Z
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    :try_start_1
    move-object v1, p0

    check-cast v1, Lio/fabric/sdk/android/services/concurrency/Dependency;

    .line 92
    .local v1, "dep":Lio/fabric/sdk/android/services/concurrency/Dependency;, "Lio/fabric/sdk/android/services/concurrency/Dependency<Lio/fabric/sdk/android/services/concurrency/Task;>;"
    move-object v2, p0

    check-cast v2, Lio/fabric/sdk/android/services/concurrency/Task;

    .line 93
    .local v2, "task":Lio/fabric/sdk/android/services/concurrency/Task;
    move-object v3, p0

    check-cast v3, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_a} :catch_13

    .line 96
    .local v3, "provider":Lio/fabric/sdk/android/services/concurrency/PriorityProvider;
    if-eqz v1, :cond_12

    if-eqz v2, :cond_12

    if-eqz v3, :cond_12

    const/4 v0, 0x1

    nop

    :cond_12
    return v0

    .line 97
    .end local v1    # "dep":Lio/fabric/sdk/android/services/concurrency/Dependency;, "Lio/fabric/sdk/android/services/concurrency/Dependency<Lio/fabric/sdk/android/services/concurrency/Task;>;"
    .end local v2    # "task":Lio/fabric/sdk/android/services/concurrency/Task;
    .end local v3    # "provider":Lio/fabric/sdk/android/services/concurrency/PriorityProvider;
    :catch_13
    move-exception v1

    .line 98
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method


# virtual methods
.method public declared-synchronized addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V
    .registers 3
    .param p1, "task"    # Lio/fabric/sdk/android/services/concurrency/Task;

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 44
    monitor-exit p0

    return-void

    .line 42
    .end local p1    # "task":Lio/fabric/sdk/android/services/concurrency/Task;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic addDependency(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 31
    move-object v0, p1

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    return-void
.end method

.method public areDependenciesMet()Z
    .registers 4

    .line 48
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/fabric/sdk/android/services/concurrency/Task;

    .line 49
    .local v1, "task":Lio/fabric/sdk/android/services/concurrency/Task;
    invoke-interface {v1}, Lio/fabric/sdk/android/services/concurrency/Task;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 50
    const/4 v2, 0x0

    return v2

    .line 52
    .end local v1    # "task":Lio/fabric/sdk/android/services/concurrency/Task;
    :cond_1c
    goto :goto_8

    .line 53
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 83
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/concurrency/Priority;->compareTo(Lio/fabric/sdk/android/services/concurrency/PriorityProvider;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getDependencies()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->dependencies:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getError()Ljava/lang/Throwable;
    .registers 2

    .line 78
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->throwable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .registers 2

    .line 68
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/Priority;->NORMAL:Lio/fabric/sdk/android/services/concurrency/Priority;

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->hasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 73
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->throwable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public declared-synchronized setFinished(Z)V
    .registers 3
    .param p1, "finished"    # Z

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;->hasRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 59
    monitor-exit p0

    return-void

    .line 57
    .end local p1    # "finished":Z
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
