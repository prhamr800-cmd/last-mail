###### Class rx.schedulers.SleepingAction (rx.schedulers.SleepingAction)
.class Lrx/schedulers/SleepingAction;
.super Ljava/lang/Object;
.source "SleepingAction.java"

# interfaces
.implements Lrx/functions/Action0;


# instance fields
.field private final execTime:J

.field private final innerScheduler:Lrx/Scheduler$Worker;

.field private final underlying:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;Lrx/Scheduler$Worker;J)V
    .registers 5
    .param p1, "underlying"    # Lrx/functions/Action0;
    .param p2, "scheduler"    # Lrx/Scheduler$Worker;
    .param p3, "execTime"    # J

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lrx/schedulers/SleepingAction;->underlying:Lrx/functions/Action0;

    .line 28
    iput-object p2, p0, Lrx/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    .line 29
    iput-wide p3, p0, Lrx/schedulers/SleepingAction;->execTime:J

    .line 30
    return-void
.end method


# virtual methods
.method public call()V
    .registers 6

    .line 34
    iget-object v0, p0, Lrx/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    return-void

    .line 37
    :cond_9
    iget-wide v0, p0, Lrx/schedulers/SleepingAction;->execTime:J

    iget-object v2, p0, Lrx/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v2}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_36

    .line 38
    iget-wide v0, p0, Lrx/schedulers/SleepingAction;->execTime:J

    iget-object v2, p0, Lrx/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v2}, Lrx/Scheduler$Worker;->now()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 39
    .local v0, "delay":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_36

    .line 41
    :try_start_24
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_28

    .line 45
    goto :goto_36

    .line 42
    :catch_28
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 44
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 50
    .end local v0    # "delay":J
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_36
    :goto_36
    iget-object v0, p0, Lrx/schedulers/SleepingAction;->innerScheduler:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 51
    return-void

    .line 53
    :cond_3f
    iget-object v0, p0, Lrx/schedulers/SleepingAction;->underlying:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 54
    return-void
.end method
