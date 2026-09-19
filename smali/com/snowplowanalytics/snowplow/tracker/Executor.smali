###### Class com.snowplowanalytics.snowplow.tracker.Executor (com.snowplowanalytics.snowplow.tracker.Executor)
.class public Lcom/snowplowanalytics/snowplow/tracker/Executor;
.super Ljava/lang/Object;
.source "Executor.java"


# static fields
.field private static executor:Ljava/util/concurrent/ExecutorService;

.field private static threadCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/snowplowanalytics/snowplow/tracker/Executor;->threadCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 49
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/Executor;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public static futureCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 2
    .param p0, "callable"    # Ljava/util/concurrent/Callable;

    .line 60
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/Executor;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/Executor;

    monitor-enter v0

    .line 37
    :try_start_3
    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/Executor;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_f

    .line 38
    sget v1, Lcom/snowplowanalytics/snowplow/tracker/Executor;->threadCount:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/snowplowanalytics/snowplow/tracker/Executor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 40
    :cond_f
    sget-object v1, Lcom/snowplowanalytics/snowplow/tracker/Executor;->executor:Ljava/util/concurrent/ExecutorService;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v0

    return-object v1

    .line 36
    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setThreadCount(I)V
    .registers 1
    .param p0, "count"    # I

    .line 85
    sput p0, Lcom/snowplowanalytics/snowplow/tracker/Executor;->threadCount:I

    .line 86
    return-void
.end method

.method public static shutdown()V
    .registers 1

    .line 68
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Executor;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_c

    .line 69
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/Executor;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/Executor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 72
    :cond_c
    return-void
.end method
