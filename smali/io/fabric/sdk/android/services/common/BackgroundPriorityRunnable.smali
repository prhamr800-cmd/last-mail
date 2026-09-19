###### Class io.fabric.sdk.android.services.common.BackgroundPriorityRunnable (io.fabric.sdk.android.services.common.BackgroundPriorityRunnable)
.class public abstract Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;
.super Ljava/lang/Object;
.source "BackgroundPriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onRun()V
.end method

.method public final run()V
    .registers 2

    .line 29
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 30
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;->onRun()V

    .line 31
    return-void
.end method
