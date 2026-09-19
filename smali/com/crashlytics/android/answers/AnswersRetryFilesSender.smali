###### Class com.crashlytics.android.answers.AnswersRetryFilesSender (com.crashlytics.android.answers.AnswersRetryFilesSender)
.class Lcom/crashlytics/android/answers/AnswersRetryFilesSender;
.super Ljava/lang/Object;
.source "AnswersRetryFilesSender.java"

# interfaces
.implements Lio/fabric/sdk/android/services/events/FilesSender;


# static fields
.field private static final BACKOFF_MS:I = 0x3e8

.field private static final BACKOFF_POWER:I = 0x8

.field private static final JITTER_PERCENT:D = 0.1

.field private static final MAX_RETRIES:I = 0x5


# instance fields
.field private final filesSender:Lcom/crashlytics/android/answers/SessionAnalyticsFilesSender;

.field private final retryManager:Lcom/crashlytics/android/answers/RetryManager;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/SessionAnalyticsFilesSender;Lcom/crashlytics/android/answers/RetryManager;)V
    .registers 3
    .param p1, "filesSender"    # Lcom/crashlytics/android/answers/SessionAnalyticsFilesSender;
    .param p2, "retryManager"    # Lcom/crashlytics/android/answers/RetryManager;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/crashlytics/android/answers/AnswersRetryFilesSender;->filesSender:Lcom/crashlytics/android/answers/SessionAnalyticsFilesSender;

    .line 42
    iput-object p2, p0, Lcom/crashlytics/android/answers/AnswersRetryFilesSender;->retryManager:Lcom/crashlytics/android/answers/RetryManager;

    .line 43
    return-void
.end method

.method public static build(Lcom/crashlytics/android/answers/SessionAnalyticsFilesSender;)Lcom/crashlytics/android/answers/AnswersRetryFilesSender;
    .registers 6
    .param p0, "filesSender"    # Lcom/crashlytics/android/answers/SessionAnalyticsFilesSender;

    .line 31
    new-instance v0, Lcom/crashlytics/android/answers/RandomBackoff;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/internal/ExponentialBackoff;

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lio/fabric/sdk/android/services/concurrency/internal/ExponentialBackoff;-><init>(JI)V

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/answers/RandomBackoff;-><init>(Lio/fabric/sdk/android/services/concurrency/internal/Backoff;D)V

    .line 33
    .local v0, "backoff":Lio/fabric/sdk/android/services/concurrency/internal/Backoff;
    new-instance v1, Lio/fabric/sdk/android/services/concurrency/internal/DefaultRetryPolicy;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/concurrency/internal/DefaultRetryPolicy;-><init>(I)V

    .line 34
    .local v1, "retryPolicy":Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;
    new-instance v2, Lio/fabric/sdk/android/services/concurrency/internal/RetryState;

    invoke-direct {v2, v0, v1}, Lio/fabric/sdk/android/services/concurrency/internal/RetryState;-><init>(Lio/fabric/sdk/android/services/concurrency/internal/Backoff;Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;)V

    .line 35
    .local v2, "retryState":Lio/fabric/sdk/android/services/concurrency/internal/RetryState;
    new-instance v3, Lcom/crashlytics/android/answers/RetryManager;

    invoke-direct {v3, v2}, Lcom/crashlytics/android/answers/RetryManager;-><init>(Lio/fabric/sdk/android/services/concurrency/internal/RetryState;)V

    .line 36
    .local v3, "retryManager":Lcom/crashlytics/android/answers/RetryManager;
    new-instance v4, Lcom/crashlytics/android/answers/AnswersRetryFilesSender;

    invoke-direct {v4, p0, v3}, Lcom/crashlytics/android/answers/AnswersRetryFilesSender;-><init>(Lcom/crashlytics/android/answers/SessionAnalyticsFilesSender;Lcom/crashlytics/android/answers/RetryManager;)V

    return-object v4
.end method


# virtual methods
.method public send(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 47
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 48
    .local v0, "currentNanoTime":J
    iget-object v2, p0, Lcom/crashlytics/android/answers/AnswersRetryFilesSender;->retryManager:Lcom/crashlytics/android/answers/RetryManager;

    invoke-virtual {v2, v0, v1}, Lcom/crashlytics/android/answers/RetryManager;->canRetry(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    .line 49
    iget-object v2, p0, Lcom/crashlytics/android/answers/AnswersRetryFilesSender;->filesSender:Lcom/crashlytics/android/answers/SessionAnalyticsFilesSender;

    invoke-virtual {v2, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsFilesSender;->send(Ljava/util/List;)Z

    move-result v2

    .line 50
    .local v2, "cleanup":Z
    if-eqz v2, :cond_1c

    .line 51
    iget-object v3, p0, Lcom/crashlytics/android/answers/AnswersRetryFilesSender;->retryManager:Lcom/crashlytics/android/answers/RetryManager;

    invoke-virtual {v3}, Lcom/crashlytics/android/answers/RetryManager;->reset()V

    .line 52
    const/4 v3, 0x1

    return v3

    .line 54
    :cond_1c
    iget-object v4, p0, Lcom/crashlytics/android/answers/AnswersRetryFilesSender;->retryManager:Lcom/crashlytics/android/answers/RetryManager;

    invoke-virtual {v4, v0, v1}, Lcom/crashlytics/android/answers/RetryManager;->recordRetry(J)V

    .line 55
    return v3

    .line 58
    .end local v2    # "cleanup":Z
    :cond_22
    return v3
.end method
