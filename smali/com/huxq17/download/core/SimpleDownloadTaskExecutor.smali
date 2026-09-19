###### Class com.huxq17.download.core.SimpleDownloadTaskExecutor (com.huxq17.download.core.SimpleDownloadTaskExecutor)
.class public Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SimpleDownloadTaskExecutor.java"

# interfaces
.implements Lcom/huxq17/download/core/DownloadTaskExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadRejectedExecutionHandler;,
        Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadDisPatcherThreadFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_COUNT:I = 0x3


# instance fields
.field private countTimeMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 21
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadRejectedExecutionHandler;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadRejectedExecutionHandler;-><init>(Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$1;)V

    const/4 v1, 0x3

    const/4 v2, 0x3

    const-wide/16 v3, 0x3c

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->countTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->allowCoreThreadTimeOut(Z)V

    .line 24
    return-void
.end method

.method static synthetic access$200(Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;

    .line 16
    invoke-direct {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getSafeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkIsDownloadTask(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 57
    instance-of v0, p1, Lcom/huxq17/download/core/task/DownloadTask;

    if-eqz v0, :cond_5

    .line 60
    return-void

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only DownloadTask Can be executed.but execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSafeName()Ljava/lang/String;
    .registers 3

    .line 52
    invoke-virtual {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    move-object v1, v0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    return-object v1
.end method

.method private getSafeThreadCount()I
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getMaxDownloadNumber()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getMaxDownloadNumber()I

    move-result v0

    :goto_c
    return v0
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 71
    invoke-direct {p0, p1}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->checkIsDownloadTask(Ljava/lang/Runnable;)V

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/huxq17/download/core/task/DownloadTask;

    .line 73
    .local v0, "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    iget-object v1, p0, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->countTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadTask;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 74
    .local v1, "startTime":Ljava/lang/Long;
    if-eqz v1, :cond_3d

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadTask;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is stopped,and spend="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huxq17/download/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 77
    :cond_3d
    return-void
.end method

.method protected final beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 63
    invoke-direct {p0, p2}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->checkIsDownloadTask(Ljava/lang/Runnable;)V

    .line 64
    move-object v0, p2

    check-cast v0, Lcom/huxq17/download/core/task/DownloadTask;

    .line 65
    .local v0, "downloadTask":Lcom/huxq17/download/core/task/DownloadTask;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at thread name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huxq17/download/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->countTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/huxq17/download/core/task/DownloadTask;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public execute(Lcom/huxq17/download/core/task/DownloadTask;)V
    .registers 5
    .param p1, "downloadTask"    # Lcom/huxq17/download/core/task/DownloadTask;

    .line 34
    if-eqz p1, :cond_72

    .line 37
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huxq17/download/core/task/DownloadTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is ready."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huxq17/download/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getActiveCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getMaxDownloadNumber()I

    move-result v1

    if-le v0, v1, :cond_71

    .line 40
    invoke-direct {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getSafeName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "printName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getMaxDownloadNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tasks can be run at the same time;but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getActiveCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tasks have been run,so "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Lcom/huxq17/download/core/task/DownloadTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is waiting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/huxq17/download/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 45
    .end local v0    # "printName":Ljava/lang/String;
    :cond_71
    return-void

    .line 35
    :cond_72
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getMaxDownloadNumber()I
    .registers 2

    .line 81
    const-class v0, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-static {v0}, Lcom/huxq17/download/PumpFactory;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huxq17/download/core/service/IDownloadConfigService;

    invoke-interface {v0}, Lcom/huxq17/download/core/service/IDownloadConfigService;->getMaxRunningTaskNumber()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 86
    const-string v0, "SimpleDownloadTaskExecutor"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .registers 3

    .line 28
    invoke-direct {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getSafeThreadCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->setCorePoolSize(I)V

    .line 29
    invoke-direct {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->getSafeThreadCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->setMaximumPoolSize(I)V

    .line 30
    new-instance v0, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadDisPatcherThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadDisPatcherThreadFactory;-><init>(Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$1;)V

    invoke-virtual {p0, v0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 31
    return-void
.end method

.method public shutdown()V
    .registers 1

    .line 95
    invoke-virtual {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->shutdownNow()Ljava/util/List;

    .line 96
    return-void
.end method

###### Class com.huxq17.download.core.SimpleDownloadTaskExecutor.AnonymousClass1 (com.huxq17.download.core.SimpleDownloadTaskExecutor$1)
.class synthetic Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$1;
.super Ljava/lang/Object;
.source "SimpleDownloadTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.huxq17.download.core.SimpleDownloadTaskExecutor.DownloadDisPatcherThreadFactory (com.huxq17.download.core.SimpleDownloadTaskExecutor$DownloadDisPatcherThreadFactory)
.class Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadDisPatcherThreadFactory;
.super Ljava/lang/Object;
.source "SimpleDownloadTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadDisPatcherThreadFactory"
.end annotation


# instance fields
.field private count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;


# direct methods
.method private constructor <init>(Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;)V
    .registers 3

    .line 98
    iput-object p1, p0, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadDisPatcherThreadFactory;->this$0:Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadDisPatcherThreadFactory;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;
    .param p2, "x1"    # Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$1;

    .line 98
    invoke-direct {p0, p1}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadDisPatcherThreadFactory;-><init>(Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 103
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    .local v0, "t":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadDisPatcherThreadFactory;->this$0:Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;

    invoke-static {v2}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;->access$200(Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadDisPatcherThreadFactory;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "threadName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 106
    return-object v0
.end method

###### Class com.huxq17.download.core.SimpleDownloadTaskExecutor.DownloadRejectedExecutionHandler (com.huxq17.download.core.SimpleDownloadTaskExecutor$DownloadRejectedExecutionHandler)
.class Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadRejectedExecutionHandler;
.super Ljava/lang/Object;
.source "SimpleDownloadTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huxq17/download/core/SimpleDownloadTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadRejectedExecutionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$1;

    .line 110
    invoke-direct {p0}, Lcom/huxq17/download/core/SimpleDownloadTaskExecutor$DownloadRejectedExecutionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 113
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 114
    :cond_7
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method
