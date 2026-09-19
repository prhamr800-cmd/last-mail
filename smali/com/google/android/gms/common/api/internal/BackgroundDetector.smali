###### Class com.google.android.gms.common.api.internal.BackgroundDetector (com.google.android.gms.common.api.internal.BackgroundDetector)
.class public final Lcom/google/android/gms/common/api/internal/BackgroundDetector;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;
    }
.end annotation


# static fields
.field private static final zzas:Lcom/google/android/gms/common/api/internal/BackgroundDetector;


# instance fields
.field private final zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzav:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sInstance"
    .end annotation
.end field

.field private zzaw:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sInstance"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    return-void
.end method

.method private constructor <init>()V
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzav:Ljava/util/ArrayList;

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzaw:Z

    .line 6
    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    return-object v0
.end method

.method public static initialize(Landroid/app/Application;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    monitor-enter v0

    .line 9
    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzaw:Z

    if-nez v1, :cond_18

    .line 10
    sget-object v1, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 11
    sget-object v1, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 12
    sget-object p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzaw:Z

    .line 13
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private final onBackgroundStateChanged(Z)V
    .registers 7

    .line 43
    sget-object v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    monitor-enter v0

    .line 44
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzav:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;

    .line 45
    invoke-interface {v4, p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;->onBackgroundStateChanged(Z)V

    .line 46
    goto :goto_c

    .line 47
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method


# virtual methods
.method public final addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 24
    sget-object v0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzas:Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    monitor-enter v0

    .line 25
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzav:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final isInBackground()Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    if-eqz p1, :cond_12

    .line 30
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->onBackgroundStateChanged(Z)V

    .line 31
    :cond_12
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 52
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 49
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    .line 33
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    if-eqz p1, :cond_12

    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->onBackgroundStateChanged(Z)V

    .line 36
    :cond_12
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 51
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 48
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 50
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 53
    return-void
.end method

.method public final onLowMemory()V
    .registers 1

    .line 54
    return-void
.end method

.method public final onTrimMemory(I)V
    .registers 4

    .line 37
    const/16 v0, 0x14

    if-ne p1, v0, :cond_16

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    .line 39
    if-eqz p1, :cond_16

    .line 40
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->onBackgroundStateChanged(Z)V

    .line 42
    :cond_16
    return-void
.end method

.method public final readCurrentStateIfPossible(Z)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 15
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 16
    new-instance p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 17
    invoke-static {p1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzau:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2a

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_2a

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->zzat:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    :cond_2a
    goto :goto_2c

    .line 21
    :cond_2b
    return p1

    .line 22
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->isInBackground()Z

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener (com.google.android.gms.common.api.internal.BackgroundDetector$BackgroundStateChangeListener)
.class public interface abstract Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/BackgroundDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackgroundStateChangeListener"
.end annotation


# virtual methods
.method public abstract onBackgroundStateChanged(Z)V
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method
