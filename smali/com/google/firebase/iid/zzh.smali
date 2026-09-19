###### Class com.google.firebase.iid.zzh (com.google.firebase.iid.zzh)
.class public final Lcom/google/firebase/iid/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final zzaa:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/iid/zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzab:Lcom/google/firebase/iid/zzf;

.field private zzac:Z
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzx:Landroid/content/Context;

.field private final zzy:Landroid/content/Intent;

.field private final zzz:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v2, "Firebase-FirebaseInstanceIdServiceConnection"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/zzh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzh;->zzaa:Ljava/util/Queue;

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/zzh;->zzac:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzh;->zzx:Landroid/content/Context;

    .line 7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/firebase/iid/zzh;->zzx:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzh;->zzy:Landroid/content/Intent;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/iid/zzh;->zzz:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    return-void
.end method

.method private final declared-synchronized zzc()V
    .registers 6

    monitor-enter p0

    .line 15
    :try_start_1
    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 16
    const-string v0, "EnhancedIntentService"

    const-string v2, "flush queue called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/google/firebase/iid/zzh;->zzaa:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 18
    const-string v0, "EnhancedIntentService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 19
    const-string v0, "EnhancedIntentService"

    const-string v2, "found intent to be delivered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_28
    iget-object v0, p0, Lcom/google/firebase/iid/zzh;->zzab:Lcom/google/firebase/iid/zzf;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/firebase/iid/zzh;->zzab:Lcom/google/firebase/iid/zzf;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzf;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 21
    const-string v0, "EnhancedIntentService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 22
    const-string v0, "EnhancedIntentService"

    const-string v2, "binder is alive, sending the intent."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_43
    iget-object v0, p0, Lcom/google/firebase/iid/zzh;->zzaa:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzd;

    .line 24
    iget-object v2, p0, Lcom/google/firebase/iid/zzh;->zzab:Lcom/google/firebase/iid/zzf;

    invoke-virtual {v2, v0}, Lcom/google/firebase/iid/zzf;->zza(Lcom/google/firebase/iid/zzd;)V

    .line 25
    goto :goto_11

    .line 26
    :cond_51
    nop

    .line 27
    const-string v0, "EnhancedIntentService"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_76

    .line 28
    const-string v0, "EnhancedIntentService"

    iget-boolean v2, p0, Lcom/google/firebase/iid/zzh;->zzac:Z

    xor-int/2addr v2, v1

    const/16 v3, 0x27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "binder is dead. start connection? "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_76
    iget-boolean v0, p0, Lcom/google/firebase/iid/zzh;->zzac:Z

    if-nez v0, :cond_a4

    .line 30
    iput-boolean v1, p0, Lcom/google/firebase/iid/zzh;->zzac:Z
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_a8

    .line 31
    :try_start_7c
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzh;->zzx:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/iid/zzh;->zzy:Landroid/content/Intent;

    const/16 v3, 0x41

    .line 32
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_8a
    .catch Ljava/lang/SecurityException; {:try_start_7c .. :try_end_8a} :catch_96
    .catchall {:try_start_7c .. :try_end_8a} :catchall_a8

    if-eqz v0, :cond_8e

    .line 33
    monitor-exit p0

    return-void

    .line 34
    :cond_8e
    :try_start_8e
    const-string v0, "EnhancedIntentService"

    const-string v1, "binding to the service failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/SecurityException; {:try_start_8e .. :try_end_95} :catch_96
    .catchall {:try_start_8e .. :try_end_95} :catchall_a8

    .line 35
    goto :goto_9e

    .line 36
    :catch_96
    move-exception v0

    .line 37
    :try_start_97
    const-string v1, "EnhancedIntentService"

    const-string v2, "Exception while binding the service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :goto_9e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/zzh;->zzac:Z

    .line 39
    invoke-direct {p0}, Lcom/google/firebase/iid/zzh;->zzd()V
    :try_end_a4
    .catchall {:try_start_97 .. :try_end_a4} :catchall_a8

    .line 40
    :cond_a4
    monitor-exit p0

    return-void

    .line 41
    :cond_a6
    monitor-exit p0

    return-void

    .line 14
    :catchall_a8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzd()V
    .registers 2
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "this"
    .end annotation

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzh;->zzaa:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 43
    iget-object v0, p0, Lcom/google/firebase/iid/zzh;->zzaa:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzd;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzd;->finish()V

    goto :goto_0

    .line 44
    :cond_14
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 45
    monitor-enter p0

    .line 46
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/firebase/iid/zzh;->zzac:Z

    .line 47
    move-object v0, p2

    check-cast v0, Lcom/google/firebase/iid/zzf;

    iput-object v0, p0, Lcom/google/firebase/iid/zzh;->zzab:Lcom/google/firebase/iid/zzf;

    .line 48
    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 49
    const-string v0, "EnhancedIntentService"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onServiceConnected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_36
    if-nez p2, :cond_43

    .line 51
    const-string p1, "EnhancedIntentService"

    const-string p2, "Null service connection"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/google/firebase/iid/zzh;->zzd()V

    goto :goto_46

    .line 53
    :cond_43
    invoke-direct {p0}, Lcom/google/firebase/iid/zzh;->zzc()V

    .line 54
    :goto_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception p1

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_2 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 55
    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 56
    const-string v0, "EnhancedIntentService"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2d
    invoke-direct {p0}, Lcom/google/firebase/iid/zzh;->zzc()V

    .line 58
    return-void
.end method

.method public final declared-synchronized zza(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 6

    monitor-enter p0

    .line 10
    :try_start_1
    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11
    const-string v0, "EnhancedIntentService"

    const-string v1, "new intent queued in the bind-strategy delivery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_11
    iget-object v0, p0, Lcom/google/firebase/iid/zzh;->zzaa:Ljava/util/Queue;

    new-instance v1, Lcom/google/firebase/iid/zzd;

    iget-object v2, p0, Lcom/google/firebase/iid/zzh;->zzz:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/firebase/iid/zzd;-><init>(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/iid/zzh;->zzc()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 14
    monitor-exit p0

    return-void

    .line 9
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
