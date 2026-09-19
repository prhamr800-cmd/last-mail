###### Class com.google.android.gms.measurement.internal.zzel (com.google.android.gms.measurement.internal.zzel)
.class final Lcom/google/android/gms/measurement/internal/zzel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaeh:Ljava/lang/String;

.field private final synthetic zzaeo:Ljava/lang/String;

.field private final synthetic zzaev:Z

.field private final synthetic zzaqv:Lcom/google/android/gms/measurement/internal/zzi;

.field private final synthetic zzaqy:Ljava/lang/String;

.field private final synthetic zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

.field private final synthetic zzasw:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzdz;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzi;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasw:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaqy:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaeh:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaeo:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaev:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaqv:Lcom/google/android/gms/measurement/internal/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasw:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zzd(Lcom/google/android/gms/measurement/internal/zzdz;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v1

    .line 4
    if-nez v1, :cond_34

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to get user properties"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaqy:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaeh:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaeo:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2d} :catch_6c
    .catchall {:try_start_3 .. :try_end_2d} :catchall_6a

    .line 10
    :try_start_2d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_9b

    .line 11
    return-void

    .line 12
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaqy:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasw:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaeh:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaeo:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaev:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaqv:Lcom/google/android/gms/measurement/internal/zzi;

    .line 14
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzi;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_5f

    .line 16
    :cond_4e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasw:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaqy:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaeh:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaeo:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaev:Z

    .line 17
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 19
    :goto_5f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zze(Lcom/google/android/gms/measurement/internal/zzdz;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_64} :catch_6c
    .catchall {:try_start_34 .. :try_end_64} :catchall_6a

    .line 20
    :try_start_64
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_9b

    .line 21
    goto :goto_93

    .line 30
    :catchall_6a
    move-exception v1

    goto :goto_95

    .line 22
    :catch_6c
    move-exception v1

    .line 23
    :try_start_6d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Failed to get user properties"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaqy:Ljava/lang/String;

    .line 25
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzby(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzaeh:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_8d
    .catchall {:try_start_6d .. :try_end_8d} :catchall_6a

    .line 28
    :try_start_8d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 29
    nop

    .line 31
    :goto_93
    monitor-exit v0

    return-void

    .line 30
    :goto_95
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzel;->zzasw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    .line 31
    :catchall_9b
    move-exception v1

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_8d .. :try_end_9d} :catchall_9b

    throw v1
.end method
