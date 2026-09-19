###### Class com.google.android.gms.iid.zze (com.google.android.gms.iid.zze)
.class public abstract Lcom/google/android/gms/iid/zze;
.super Landroid/app/Service;


# instance fields
.field private final lock:Ljava/lang/Object;

.field final zzax:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private zzay:Landroid/os/Binder;

.field private zzaz:I

.field private zzba:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/zze;->zzax:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/iid/zze;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/iid/zze;->zzba:I

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/iid/zze;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/iid/zze;->zzf(Landroid/content/Intent;)V

    return-void
.end method

.method private final zzf(Landroid/content/Intent;)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/google/android/gms/stats/GCoreWakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/iid/zze;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    iget v0, p0, Lcom/google/android/gms/iid/zze;->zzba:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/iid/zze;->zzba:I

    iget v0, p0, Lcom/google/android/gms/iid/zze;->zzba:I

    if-nez v0, :cond_17

    iget v0, p0, Lcom/google/android/gms/iid/zze;->zzaz:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/iid/zze;->stopSelfResult(I)Z

    :cond_17
    monitor-exit p1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "EnhancedIntentService"

    const-string v0, "Service received bind request"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/iid/zze;->zzay:Landroid/os/Binder;

    if-nez p1, :cond_1c

    new-instance p1, Lcom/google/android/gms/iid/zzi;

    invoke-direct {p1, p0}, Lcom/google/android/gms/iid/zzi;-><init>(Lcom/google/android/gms/iid/zze;)V

    iput-object p1, p0, Lcom/google/android/gms/iid/zze;->zzay:Landroid/os/Binder;

    :cond_1c
    iget-object p1, p0, Lcom/google/android/gms/iid/zze;->zzay:Landroid/os/Binder;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    iget-object p2, p0, Lcom/google/android/gms/iid/zze;->lock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iput p3, p0, Lcom/google/android/gms/iid/zze;->zzaz:I

    iget p3, p0, Lcom/google/android/gms/iid/zze;->zzba:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/android/gms/iid/zze;->zzba:I

    monitor-exit p2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    if-nez p1, :cond_13

    invoke-direct {p0, p1}, Lcom/google/android/gms/iid/zze;->zzf(Landroid/content/Intent;)V

    const/4 p1, 0x2

    return p1

    :cond_13
    iget-object p2, p0, Lcom/google/android/gms/iid/zze;->zzax:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/iid/zzf;

    invoke-direct {p3, p0, p1, p1}, Lcom/google/android/gms/iid/zzf;-><init>(Lcom/google/android/gms/iid/zze;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x3

    return p1

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit p2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method
