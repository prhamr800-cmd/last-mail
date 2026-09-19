###### Class io.fabric.sdk.android.services.concurrency.PriorityAsyncTask (io.fabric.sdk.android.services.concurrency.PriorityAsyncTask)
.class public abstract Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;
.super Lio/fabric/sdk/android/services/concurrency/AsyncTask;
.source "PriorityAsyncTask.java"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/Dependency;
.implements Lio/fabric/sdk/android/services/concurrency/PriorityProvider;
.implements Lio/fabric/sdk/android/services/concurrency/Task;
.implements Lio/fabric/sdk/android/services/concurrency/DelegateProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/AsyncTask<",
        "TParams;TProgress;TResult;>;",
        "Lio/fabric/sdk/android/services/concurrency/Dependency<",
        "Lio/fabric/sdk/android/services/concurrency/Task;",
        ">;",
        "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
        "Lio/fabric/sdk/android/services/concurrency/Task;",
        "Lio/fabric/sdk/android/services/concurrency/DelegateProvider;"
    }
.end annotation


# instance fields
.field private final priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;-><init>()V

    .line 37
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/PriorityTask;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    .line 38
    return-void
.end method


# virtual methods
.method public addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V
    .registers 4
    .param p1, "task"    # Lio/fabric/sdk/android/services/concurrency/Task;

    .line 58
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getStatus()Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;->PENDING:Lio/fabric/sdk/android/services/concurrency/AsyncTask$Status;

    if-ne v0, v1, :cond_14

    .line 61
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/Dependency;->addDependency(Ljava/lang/Object;)V

    .line 62
    return-void

    .line 59
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addDependency(Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .line 27
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    move-object v0, p1

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->addDependency(Lio/fabric/sdk/android/services/concurrency/Task;)V

    return-void
.end method

.method public areDependenciesMet()Z
    .registers 2

    .line 71
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/Dependency;->areDependenciesMet()Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "another"    # Ljava/lang/Object;

    .line 48
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/concurrency/Priority;->compareTo(Lio/fabric/sdk/android/services/concurrency/PriorityProvider;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "exec"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "[TParams;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;

    invoke-direct {v0, p1, p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;-><init>(Ljava/util/concurrent/Executor;Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;)V

    .line 43
    .local v0, "executor":Ljava/util/concurrent/Executor;
    invoke-super {p0, v0, p2}, Lio/fabric/sdk/android/services/concurrency/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/AsyncTask;

    .line 44
    return-void
.end method

.method public getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/Dependency<",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">()TT;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->priorityTask:Lio/fabric/sdk/android/services/concurrency/PriorityTask;

    return-object v0
.end method

.method public getDependencies()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Dependency;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/Dependency;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .registers 2

    .line 96
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/Task;->getError()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .registers 2

    .line 76
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;->getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .line 86
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/Task;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 91
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/Task;->setError(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public setFinished(Z)V
    .registers 3
    .param p1, "finished"    # Z

    .line 81
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/PriorityProvider;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/Task;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/Task;->setFinished(Z)V

    .line 82
    return-void
.end method

###### Class io.fabric.sdk.android.services.concurrency.PriorityAsyncTask.ProxyExecutor (io.fabric.sdk.android.services.concurrency.PriorityAsyncTask$ProxyExecutor)
.class Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final task:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;)V
    .registers 3
    .param p1, "ex"    # Ljava/util/concurrent/Executor;
    .param p2, "task"    # Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;

    .line 107
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 109
    iput-object p2, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->task:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;)Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;
    .registers 2
    .param p0, "x0"    # Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;

    .line 104
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->task:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 114
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;-><init>(Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

###### Class io.fabric.sdk.android.services.concurrency.PriorityAsyncTask.ProxyExecutor.AnonymousClass1 (io.fabric.sdk.android.services.concurrency.PriorityAsyncTask$ProxyExecutor$1)
.class Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;
.super Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .param p2, "x0"    # Ljava/lang/Runnable;

    .line 114
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor.1;"
    .local p3, "x1":Ljava/lang/Object;, "TResult;"
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;->this$0:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;

    invoke-direct {p0, p2, p3}, Lio/fabric/sdk/android/services/concurrency/PriorityFutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDelegate()Lio/fabric/sdk/android/services/concurrency/Dependency;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/Dependency<",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/PriorityProvider;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">()TT;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;, "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor.1;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor$1;->this$0:Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;

    invoke-static {v0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;->access$000(Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask$ProxyExecutor;)Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;

    move-result-object v0

    return-object v0
.end method
