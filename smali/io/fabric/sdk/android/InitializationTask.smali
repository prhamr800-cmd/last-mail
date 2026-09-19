###### Class io.fabric.sdk.android.InitializationTask (io.fabric.sdk.android.InitializationTask)
.class Lio/fabric/sdk/android/InitializationTask;
.super Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;
.source "InitializationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# static fields
.field private static final TIMING_METRIC_TAG:Ljava/lang/String; = "KitInitialization"


# instance fields
.field final kit:Lio/fabric/sdk/android/Kit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/Kit<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/Kit<",
            "TResult;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    .local p1, "kit":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;-><init>()V

    .line 34
    iput-object p1, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    .line 35
    return-void
.end method

.method private createAndStartTimingMetric(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/TimingMetric;
    .registers 5
    .param p1, "event"    # Ljava/lang/String;

    .line 91
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    new-instance v0, Lio/fabric/sdk/android/services/common/TimingMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KitInitialization"

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/common/TimingMetric;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v0, "timingMetric":Lio/fabric/sdk/android/services/common/TimingMetric;
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/TimingMetric;->startMeasuring()V

    .line 94
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .line 28
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    move-object v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/InitializationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 5
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    const-string v0, "doInBackground"

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/InitializationTask;->createAndStartTimingMetric(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/TimingMetric;

    move-result-object v0

    .line 61
    .local v0, "timingMetric":Lio/fabric/sdk/android/services/common/TimingMetric;
    const/4 v1, 0x0

    .line 62
    .local v1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/InitializationTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 63
    iget-object v2, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->doInBackground()Ljava/lang/Object;

    move-result-object v1

    .line 66
    :cond_13
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/TimingMetric;->stopMeasuring()V

    .line 67
    return-object v1
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/Priority;
    .registers 2

    .line 87
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/Priority;->HIGH:Lio/fabric/sdk/android/services/concurrency/Priority;

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Kit;->onCancelled(Ljava/lang/Object;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v1}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Initialization was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lio/fabric/sdk/android/InitializationException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/InitializationException;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "exception":Lio/fabric/sdk/android/InitializationException;
    iget-object v2, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    iget-object v2, v2, Lio/fabric/sdk/android/Kit;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    invoke-interface {v2, v1}, Lio/fabric/sdk/android/InitializationCallback;->failure(Ljava/lang/Exception;)V

    .line 83
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Kit;->onPostExecute(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    iget-object v0, v0, Lio/fabric/sdk/android/Kit;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/InitializationCallback;->success(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method protected onPreExecute()V
    .registers 8

    .line 39
    .local p0, "this":Lio/fabric/sdk/android/InitializationTask;, "Lio/fabric/sdk/android/InitializationTask<TResult;>;"
    invoke-super {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityAsyncTask;->onPreExecute()V

    .line 41
    const-string v0, "onPreExecute"

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/InitializationTask;->createAndStartTimingMetric(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/TimingMetric;

    move-result-object v0

    .line 42
    .local v0, "timingMetric":Lio/fabric/sdk/android/services/common/TimingMetric;
    const/4 v1, 0x0

    .line 44
    .local v1, "result":Z
    const/4 v2, 0x1

    :try_start_b
    iget-object v3, p0, Lio/fabric/sdk/android/InitializationTask;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v3}, Lio/fabric/sdk/android/Kit;->onPreExecute()Z

    move-result v3
    :try_end_11
    .catch Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException; {:try_start_b .. :try_end_11} :catch_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_1d
    .catchall {:try_start_b .. :try_end_11} :catchall_1b

    move v1, v3

    .line 51
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/TimingMetric;->stopMeasuring()V

    .line 52
    if-nez v1, :cond_2f

    .line 53
    :goto_17
    invoke-virtual {p0, v2}, Lio/fabric/sdk/android/InitializationTask;->cancel(Z)Z

    goto :goto_2f

    .line 51
    :catchall_1b
    move-exception v3

    goto :goto_32

    .line 48
    :catch_1d
    move-exception v3

    .line 49
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1e
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "Fabric"

    const-string v6, "Failure onPreExecute()"

    invoke-interface {v4, v5, v6, v3}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_1b

    .line 51
    .end local v3    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/TimingMetric;->stopMeasuring()V

    .line 52
    if-nez v1, :cond_2f

    goto :goto_17

    .line 56
    :cond_2f
    :goto_2f
    return-void

    .line 45
    :catch_30
    move-exception v3

    .line 47
    .local v3, "ex":Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;
    :try_start_31
    throw v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_1b

    .line 51
    .end local v3    # "ex":Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;
    :goto_32
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/TimingMetric;->stopMeasuring()V

    .line 52
    if-nez v1, :cond_3a

    .line 53
    invoke-virtual {p0, v2}, Lio/fabric/sdk/android/InitializationTask;->cancel(Z)Z

    :cond_3a
    throw v3
.end method
