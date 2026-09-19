###### Class com.huxq17.download.core.task.Task (com.huxq17.download.core.task.Task)
.class public abstract Lcom/huxq17/download/core/task/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected currentThread:Ljava/lang/Thread;

.field private volatile isFinished:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huxq17/download/core/task/Task;->isFinished:Z

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method protected abstract execute()V
.end method

.method protected isCanceled()Z
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/huxq17/download/core/task/Task;->currentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/huxq17/download/core/task/Task;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final run()V
    .registers 2

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/huxq17/download/core/task/Task;->currentThread:Ljava/lang/Thread;

    .line 22
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/Task;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 23
    invoke-virtual {p0}, Lcom/huxq17/download/core/task/Task;->execute()V

    .line 25
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huxq17/download/core/task/Task;->currentThread:Ljava/lang/Thread;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huxq17/download/core/task/Task;->isFinished:Z

    .line 28
    monitor-enter p0

    .line 29
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 30
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public waitUntilFinished()V
    .registers 2

    .line 9
    :goto_0
    iget-boolean v0, p0, Lcom/huxq17/download/core/task/Task;->isFinished:Z

    if-nez v0, :cond_f

    .line 11
    :try_start_4
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_5} :catch_d

    .line 12
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 13
    monitor-exit p0

    goto :goto_e

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    :try_start_c
    throw v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_d} :catch_d

    .line 14
    :catch_d
    move-exception v0

    .line 15
    :goto_e
    goto :goto_0

    .line 17
    :cond_f
    return-void
.end method
