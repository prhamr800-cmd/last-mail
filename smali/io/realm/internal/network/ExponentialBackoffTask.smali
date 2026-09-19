###### Class io.realm.internal.network.ExponentialBackoffTask (io.realm.internal.network.ExponentialBackoffTask)
.class public abstract Lio/realm/internal/network/ExponentialBackoffTask;
.super Ljava/lang/Object;
.source "ExponentialBackoffTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/internal/network/AuthServerResponse;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final maxRetries:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    .local p0, "this":Lio/realm/internal/network/ExponentialBackoffTask;, "Lio/realm/internal/network/ExponentialBackoffTask<TT;>;"
    const v0, 0x7ffffffe

    invoke-direct {p0, v0}, Lio/realm/internal/network/ExponentialBackoffTask;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "maxRetries"    # I

    .line 30
    .local p0, "this":Lio/realm/internal/network/ExponentialBackoffTask;, "Lio/realm/internal/network/ExponentialBackoffTask<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lio/realm/internal/network/ExponentialBackoffTask;->maxRetries:I

    .line 32
    return-void
.end method

.method private static calculateExponentialDelay(IJ)J
    .registers 11
    .param p0, "failedAttempts"    # I
    .param p1, "maxDelayInMs"    # J

    .line 111
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 112
    .local v0, "SCALE":D
    int-to-double v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v6

    div-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    mul-double v2, v2, v0

    .line 116
    .local v2, "delayInMs":D
    long-to-double v4, p1

    cmpg-double v6, v4, v2

    if-gez v6, :cond_1d

    move-wide v4, p1

    goto :goto_1e

    :cond_1d
    double-to-long v4, v2

    :goto_1e
    return-wide v4
.end method


# virtual methods
.method protected abstract execute()Lio/realm/internal/network/AuthServerResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected isSuccess(Lio/realm/internal/network/AuthServerResponse;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/realm/internal/network/ExponentialBackoffTask;, "Lio/realm/internal/network/ExponentialBackoffTask<TT;>;"
    .local p1, "result":Lio/realm/internal/network/AuthServerResponse;, "TT;"
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->isValid()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected abstract onError(Lio/realm/internal/network/AuthServerResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract onSuccess(Lio/realm/internal/network/AuthServerResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public run()V
    .registers 8

    .line 67
    .local p0, "this":Lio/realm/internal/network/ExponentialBackoffTask;, "Lio/realm/internal/network/ExponentialBackoffTask<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    .local v1, "attempt":I
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    add-int/lit8 v2, v1, -0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lio/realm/internal/network/ExponentialBackoffTask;->calculateExponentialDelay(IJ)J

    move-result-wide v2

    .line 71
    .local v2, "sleep":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2b

    .line 73
    :try_start_1e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_22

    .line 77
    goto :goto_2b

    .line 74
    :catch_22
    move-exception v4

    .line 75
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v5, "Incremental backoff was interrupted."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v0}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void

    .line 79
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lio/realm/internal/network/ExponentialBackoffTask;->execute()Lio/realm/internal/network/AuthServerResponse;

    move-result-object v4

    .line 81
    .local v4, "response":Lio/realm/internal/network/AuthServerResponse;, "TT;"
    invoke-virtual {p0, v4}, Lio/realm/internal/network/ExponentialBackoffTask;->isSuccess(Lio/realm/internal/network/AuthServerResponse;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 82
    invoke-virtual {p0, v4}, Lio/realm/internal/network/ExponentialBackoffTask;->onSuccess(Lio/realm/internal/network/AuthServerResponse;)V

    .line 83
    goto :goto_4b

    .line 85
    :cond_39
    invoke-virtual {p0, v4}, Lio/realm/internal/network/ExponentialBackoffTask;->shouldAbortTask(Lio/realm/internal/network/AuthServerResponse;)Z

    move-result v5

    if-nez v5, :cond_47

    iget v5, p0, Lio/realm/internal/network/ExponentialBackoffTask;->maxRetries:I

    add-int/lit8 v5, v5, 0x1

    if-ne v1, v5, :cond_46

    goto :goto_47

    .line 90
    .end local v2    # "sleep":J
    .end local v4    # "response":Lio/realm/internal/network/AuthServerResponse;, "TT;"
    :cond_46
    goto :goto_2

    .line 86
    .restart local v2    # "sleep":J
    .restart local v4    # "response":Lio/realm/internal/network/AuthServerResponse;, "TT;"
    :cond_47
    :goto_47
    invoke-virtual {p0, v4}, Lio/realm/internal/network/ExponentialBackoffTask;->onError(Lio/realm/internal/network/AuthServerResponse;)V

    .line 87
    nop

    .line 91
    .end local v2    # "sleep":J
    .end local v4    # "response":Lio/realm/internal/network/AuthServerResponse;, "TT;"
    :cond_4b
    :goto_4b
    return-void
.end method

.method protected shouldAbortTask(Lio/realm/internal/network/AuthServerResponse;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 50
    .local p0, "this":Lio/realm/internal/network/ExponentialBackoffTask;, "Lio/realm/internal/network/ExponentialBackoffTask<TT;>;"
    .local p1, "response":Lio/realm/internal/network/AuthServerResponse;, "TT;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 51
    return v1

    .line 52
    :cond_8
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->isValid()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    .line 53
    invoke-virtual {p1}, Lio/realm/internal/network/AuthServerResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v0

    sget-object v3, Lio/realm/ErrorCode;->IO_EXCEPTION:Lio/realm/ErrorCode;

    if-eq v0, v3, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1

    .line 55
    :cond_1e
    return v2
.end method
