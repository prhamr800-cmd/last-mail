###### Class com.huxq17.download.TaskManager (com.huxq17.download.TaskManager)
.class public Lcom/huxq17/download/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field private static customThreadPool:Ljava/util/concurrent/ExecutorService;

.field private static final defaultThreadPool:Ljava/util/concurrent/ExecutorService;

.field private static final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/huxq17/download/TaskManager;->defaultThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/huxq17/download/TaskManager;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Lcom/huxq17/download/core/task/Task;)V
    .registers 2
    .param p0, "runnable"    # Lcom/huxq17/download/core/task/Task;

    .line 22
    invoke-static {}, Lcom/huxq17/download/TaskManager;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 23
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 26
    invoke-static {}, Lcom/huxq17/download/TaskManager;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method public static executeOnMainThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 30
    sget-object v0, Lcom/huxq17/download/TaskManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    return-void
.end method

.method public static executeOnMainThread(Ljava/lang/Runnable;J)V
    .registers 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .line 34
    sget-object v0, Lcom/huxq17/download/TaskManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method

.method static getExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 54
    sget-object v0, Lcom/huxq17/download/TaskManager;->customThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_7

    .line 55
    sget-object v0, Lcom/huxq17/download/TaskManager;->defaultThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0

    .line 57
    :cond_7
    sget-object v0, Lcom/huxq17/download/TaskManager;->customThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static setThreadPool(Ljava/util/concurrent/ExecutorService;)V
    .registers 1
    .param p0, "customThreadPool"    # Ljava/util/concurrent/ExecutorService;

    .line 46
    sput-object p0, Lcom/huxq17/download/TaskManager;->customThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 47
    return-void
.end method

.method public static submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 2
    .param p0, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/huxq17/download/TaskManager;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 2
    .param p0, "task"    # Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/huxq17/download/TaskManager;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static useDefaultThreadPool()V
    .registers 1

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/huxq17/download/TaskManager;->customThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 51
    return-void
.end method
