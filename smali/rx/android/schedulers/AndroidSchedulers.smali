###### Class rx.android.schedulers.AndroidSchedulers (rx.android.schedulers.AndroidSchedulers)
.class public final Lrx/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# static fields
.field private static final MAIN_THREAD_SCHEDULER:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Lrx/android/schedulers/HandlerThreadScheduler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lrx/android/schedulers/HandlerThreadScheduler;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lrx/android/schedulers/AndroidSchedulers;->MAIN_THREAD_SCHEDULER:Lrx/Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static handlerThread(Landroid/os/Handler;)Lrx/Scheduler;
    .registers 2
    .param p0, "handler"    # Landroid/os/Handler;

    .line 36
    new-instance v0, Lrx/android/schedulers/HandlerThreadScheduler;

    invoke-direct {v0, p0}, Lrx/android/schedulers/HandlerThreadScheduler;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public static mainThread()Lrx/Scheduler;
    .registers 2

    .line 43
    invoke-static {}, Lrx/android/plugins/RxAndroidPlugins;->getInstance()Lrx/android/plugins/RxAndroidPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/android/plugins/RxAndroidPlugins;->getSchedulersHook()Lrx/android/plugins/RxAndroidSchedulersHook;

    move-result-object v0

    invoke-virtual {v0}, Lrx/android/plugins/RxAndroidSchedulersHook;->getMainThreadScheduler()Lrx/Scheduler;

    move-result-object v0

    .line 45
    .local v0, "scheduler":Lrx/Scheduler;
    if-eqz v0, :cond_10

    move-object v1, v0

    goto :goto_12

    :cond_10
    sget-object v1, Lrx/android/schedulers/AndroidSchedulers;->MAIN_THREAD_SCHEDULER:Lrx/Scheduler;

    :goto_12
    return-object v1
.end method
