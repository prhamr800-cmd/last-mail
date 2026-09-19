###### Class io.fabric.sdk.android.services.concurrency.PriorityRunnable (io.fabric.sdk.android.services.concurrency.PriorityRunnable)
.class public abstract Lio/fabric/sdk/android/services/concurrency/PriorityRunnable;
.super Lio/fabric/sdk/android/services/concurrency/PriorityTask;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/PriorityTask;-><init>()V

    return-void
.end method
