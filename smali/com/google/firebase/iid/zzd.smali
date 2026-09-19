###### Class com.google.firebase.iid.zzd (com.google.firebase.iid.zzd)
.class final Lcom/google/firebase/iid/zzd;
.super Ljava/lang/Object;


# instance fields
.field final intent:Landroid/content/Intent;

.field private final zzp:Landroid/content/BroadcastReceiver$PendingResult;

.field private zzq:Z

.field private final zzr:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/zzd;->zzq:Z

    .line 3
    iput-object p1, p0, Lcom/google/firebase/iid/zzd;->intent:Landroid/content/Intent;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/iid/zzd;->zzp:Landroid/content/BroadcastReceiver$PendingResult;

    .line 5
    new-instance p2, Lcom/google/firebase/iid/zze;

    invoke-direct {p2, p0, p1}, Lcom/google/firebase/iid/zze;-><init>(Lcom/google/firebase/iid/zzd;Landroid/content/Intent;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    const-wide/16 v0, 0x2328

    invoke-interface {p3, p2, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzd;->zzr:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    return-void
.end method


# virtual methods
.method final declared-synchronized finish()V
    .registers 3

    monitor-enter p0

    .line 8
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/zzd;->zzq:Z

    if-nez v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/google/firebase/iid/zzd;->zzp:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 10
    iget-object v0, p0, Lcom/google/firebase/iid/zzd;->zzr:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/iid/zzd;->zzq:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 12
    :cond_13
    monitor-exit p0

    return-void

    .line 7
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.firebase.iid.zze (com.google.firebase.iid.zze)
.class final synthetic Lcom/google/firebase/iid/zze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzs:Lcom/google/firebase/iid/zzd;

.field private final zzt:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzd;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zze;->zzs:Lcom/google/firebase/iid/zzd;

    iput-object p2, p0, Lcom/google/firebase/iid/zze;->zzt:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/zze;->zzs:Lcom/google/firebase/iid/zzd;

    iget-object v1, p0, Lcom/google/firebase/iid/zze;->zzt:Landroid/content/Intent;

    .line 2
    const-string v2, "EnhancedIntentService"

    .line 3
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Service took too long to process intent: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " App may get closed."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzd;->finish()V

    .line 6
    return-void
.end method
