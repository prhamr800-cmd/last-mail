###### Class com.google.android.gms.measurement.internal.zzbt (com.google.android.gms.measurement.internal.zzbt)
.class final Lcom/google/android/gms/measurement/internal/zzbt;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

.field private final zzapp:Ljava/lang/Object;

.field private final zzapq:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzbs<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzbp;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzbs<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapp:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapq:Ljava/util/concurrent/BlockingQueue;

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzbt;->setName(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method private final zza(Ljava/lang/InterruptedException;)V
    .registers 5

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 8
    nop

    .line 9
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_14

    .line 10
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zza(Lcom/google/android/gms/measurement/internal/zzbp;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_d} :catch_f

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_2

    .line 13
    :catch_f
    move-exception v1

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->zza(Ljava/lang/InterruptedException;)V

    .line 15
    goto :goto_2

    .line 16
    :cond_14
    const/4 v0, 0x0

    :try_start_15
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 17
    :goto_1d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapq:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzbs;

    if-eqz v2, :cond_36

    .line 18
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzbs;->zzapo:Z

    if-eqz v3, :cond_2d

    .line 19
    move v3, v1

    goto :goto_2f

    .line 18
    :cond_2d
    const/16 v3, 0xa

    .line 19
    :goto_2f
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbs;->run()V

    goto :goto_1d

    .line 21
    :cond_36
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapp:Ljava/lang/Object;

    monitor-enter v2
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_b8

    .line 22
    :try_start_39
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapq:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_55

    .line 23
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzbp;->zzb(Lcom/google/android/gms/measurement/internal/zzbp;)Z

    move-result v3
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_b5

    if-nez v3, :cond_55

    .line 24
    :try_start_49
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapp:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_50} :catch_51
    .catchall {:try_start_49 .. :try_end_50} :catchall_b5

    .line 25
    goto :goto_55

    .line 26
    :catch_51
    move-exception v3

    .line 27
    :try_start_52
    invoke-direct {p0, v3}, Lcom/google/android/gms/measurement/internal/zzbt;->zza(Ljava/lang/InterruptedException;)V

    .line 28
    :cond_55
    :goto_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_b5

    .line 29
    :try_start_56
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Lcom/google/android/gms/measurement/internal/zzbp;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_b8

    .line 30
    :try_start_5d
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapq:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_af

    .line 31
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_b2

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Lcom/google/android/gms/measurement/internal/zzbp;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 33
    :try_start_6d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzbp;->zza(Lcom/google/android/gms/measurement/internal/zzbp;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Lcom/google/android/gms/measurement/internal/zzbp;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzbp;->zzd(Lcom/google/android/gms/measurement/internal/zzbp;)Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v2

    if-ne p0, v2, :cond_8d

    .line 36
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzbp;->zza(Lcom/google/android/gms/measurement/internal/zzbp;Lcom/google/android/gms/measurement/internal/zzbt;)Lcom/google/android/gms/measurement/internal/zzbt;

    goto :goto_aa

    .line 37
    :cond_8d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzbp;->zze(Lcom/google/android/gms/measurement/internal/zzbp;)Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v2

    if-ne p0, v2, :cond_9b

    .line 38
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzbp;->zzb(Lcom/google/android/gms/measurement/internal/zzbp;Lcom/google/android/gms/measurement/internal/zzbt;)Lcom/google/android/gms/measurement/internal/zzbt;

    goto :goto_aa

    .line 39
    :cond_9b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 40
    :goto_aa
    monitor-exit v1

    return-void

    :catchall_ac
    move-exception v0

    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_6d .. :try_end_ae} :catchall_ac

    throw v0

    .line 41
    :cond_af
    :try_start_af
    monitor-exit v2

    goto/16 :goto_1d

    :catchall_b2
    move-exception v1

    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b8

    .line 28
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw v1
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b8

    .line 42
    :catchall_b8
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Lcom/google/android/gms/measurement/internal/zzbp;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 43
    :try_start_c0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzbp;->zza(Lcom/google/android/gms/measurement/internal/zzbp;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 44
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Lcom/google/android/gms/measurement/internal/zzbp;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 45
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzbp;->zzd(Lcom/google/android/gms/measurement/internal/zzbp;)Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v3

    if-eq p0, v3, :cond_f8

    .line 47
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzbp;->zze(Lcom/google/android/gms/measurement/internal/zzbp;)Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v3

    if-ne p0, v3, :cond_e8

    .line 48
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzbp;->zzb(Lcom/google/android/gms/measurement/internal/zzbp;Lcom/google/android/gms/measurement/internal/zzbt;)Lcom/google/android/gms/measurement/internal/zzbt;

    goto :goto_fd

    .line 49
    :cond_e8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    goto :goto_fd

    .line 46
    :cond_f8
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapm:Lcom/google/android/gms/measurement/internal/zzbp;

    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzbp;->zza(Lcom/google/android/gms/measurement/internal/zzbp;Lcom/google/android/gms/measurement/internal/zzbt;)Lcom/google/android/gms/measurement/internal/zzbt;

    .line 50
    :goto_fd
    monitor-exit v2
    :try_end_fe
    .catchall {:try_start_c0 .. :try_end_fe} :catchall_ff

    throw v1

    :catchall_ff
    move-exception v0

    :try_start_100
    monitor-exit v2
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    throw v0
.end method

.method public final zzki()V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapp:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->zzapp:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
