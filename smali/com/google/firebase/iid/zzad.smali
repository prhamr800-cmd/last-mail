###### Class com.google.firebase.iid.zzad (com.google.firebase.iid.zzad)
.class final Lcom/google/firebase/iid/zzad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field state:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final zzbx:Landroid/os/Messenger;

.field zzby:Lcom/google/firebase/iid/zzai;

.field final zzbz:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/iid/zzak<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final zzca:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/iid/zzak<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final synthetic zzcb:Lcom/google/firebase/iid/zzab;


# direct methods
.method private constructor <init>(Lcom/google/firebase/iid/zzab;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/zzad;->zzcb:Lcom/google/firebase/iid/zzab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/firebase/iid/zzad;->state:I

    .line 3
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zza;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/zzae;

    invoke-direct {v2, p0}, Lcom/google/firebase/iid/zzae;-><init>(Lcom/google/firebase/iid/zzad;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_messaging/zza;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/firebase/iid/zzad;->zzbx:Landroid/os/Messenger;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzad;->zzbz:Ljava/util/Queue;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzad;->zzca:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/iid/zzab;Lcom/google/firebase/iid/zzac;)V
    .registers 3

    .line 106
    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzad;-><init>(Lcom/google/firebase/iid/zzab;)V

    return-void
.end method

.method private final zzy()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/google/firebase/iid/zzad;->zzcb:Lcom/google/firebase/iid/zzab;

    invoke-static {v0}, Lcom/google/firebase/iid/zzab;->zzb(Lcom/google/firebase/iid/zzab;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/zzag;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/zzag;-><init>(Lcom/google/firebase/iid/zzad;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    monitor-enter p0

    .line 47
    :try_start_1
    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 48
    const-string p1, "MessengerIpcClient"

    const-string v1, "Service connected"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_11
    const/4 p1, 0x0

    if-nez p2, :cond_1b

    .line 50
    const-string p2, "Null service connection"

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/zzad;->zza(ILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_34

    .line 51
    monitor-exit p0

    return-void

    .line 52
    :cond_1b
    :try_start_1b
    new-instance v1, Lcom/google/firebase/iid/zzai;

    invoke-direct {v1, p2}, Lcom/google/firebase/iid/zzai;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/google/firebase/iid/zzad;->zzby:Lcom/google/firebase/iid/zzai;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_2a
    .catchall {:try_start_1b .. :try_end_22} :catchall_34

    .line 53
    nop

    .line 57
    :try_start_23
    iput v0, p0, Lcom/google/firebase/iid/zzad;->state:I

    .line 58
    invoke-direct {p0}, Lcom/google/firebase/iid/zzad;->zzy()V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_34

    .line 59
    monitor-exit p0

    return-void

    .line 54
    :catch_2a
    move-exception p2

    .line 55
    :try_start_2b
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/iid/zzad;->zza(ILjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_34

    .line 56
    monitor-exit p0

    return-void

    .line 46
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    monitor-enter p0

    .line 62
    :try_start_1
    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 63
    const-string p1, "MessengerIpcClient"

    const-string v1, "Service disconnected"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_11
    const-string p1, "Service disconnected"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/iid/zzad;->zza(ILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 65
    monitor-exit p0

    return-void

    .line 61
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zza(I)V
    .registers 6

    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzad;->zzca:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzak;

    .line 100
    if-eqz v0, :cond_36

    .line 101
    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timing out request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/google/firebase/iid/zzad;->zzca:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 103
    new-instance p1, Lcom/google/firebase/iid/zzal;

    const/4 v1, 0x3

    const-string v2, "Timed out waiting for response"

    invoke-direct {p1, v1, v2}, Lcom/google/firebase/iid/zzal;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzak;->zza(Lcom/google/firebase/iid/zzal;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzad;->zzz()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 105
    :cond_36
    monitor-exit p0

    return-void

    .line 98
    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zza(ILjava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 66
    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 67
    const-string v0, "MessengerIpcClient"

    const-string v1, "Disconnected: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_1d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_26
    iget v0, p0, Lcom/google/firebase/iid/zzad;->state:I

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_b4

    .line 87
    new-instance p1, Ljava/lang/IllegalStateException;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_b1

    goto :goto_98

    .line 86
    :pswitch_2f
    monitor-exit p0

    return-void

    .line 84
    :pswitch_31
    :try_start_31
    iput v1, p0, Lcom/google/firebase/iid/zzad;->state:I
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_b1

    .line 85
    monitor-exit p0

    return-void

    .line 70
    :pswitch_35
    :try_start_35
    const-string v0, "MessengerIpcClient"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 71
    const-string v0, "MessengerIpcClient"

    const-string v2, "Unbinding service"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_45
    iput v1, p0, Lcom/google/firebase/iid/zzad;->state:I

    .line 73
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzad;->zzcb:Lcom/google/firebase/iid/zzab;

    invoke-static {v1}, Lcom/google/firebase/iid/zzab;->zza(Lcom/google/firebase/iid/zzab;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 74
    new-instance v0, Lcom/google/firebase/iid/zzal;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/zzal;-><init>(ILjava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/google/firebase/iid/zzad;->zzbz:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/iid/zzak;

    .line 76
    invoke-virtual {p2, v0}, Lcom/google/firebase/iid/zzak;->zza(Lcom/google/firebase/iid/zzal;)V

    .line 77
    goto :goto_5f

    .line 78
    :cond_6f
    iget-object p1, p0, Lcom/google/firebase/iid/zzad;->zzbz:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 79
    const/4 p1, 0x0

    :goto_75
    iget-object p2, p0, Lcom/google/firebase/iid/zzad;->zzca:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_8b

    .line 80
    iget-object p2, p0, Lcom/google/firebase/iid/zzad;->zzca:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/iid/zzak;

    invoke-virtual {p2, v0}, Lcom/google/firebase/iid/zzak;->zza(Lcom/google/firebase/iid/zzal;)V

    .line 81
    add-int/lit8 p1, p1, 0x1

    goto :goto_75

    .line 82
    :cond_8b
    iget-object p1, p0, Lcom/google/firebase/iid/zzad;->zzca:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_90
    .catchall {:try_start_35 .. :try_end_90} :catchall_b1

    .line 83
    monitor-exit p0

    return-void

    .line 69
    :pswitch_92
    :try_start_92
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 87
    :goto_98
    iget p2, p0, Lcom/google/firebase/iid/zzad;->state:I

    const/16 v0, 0x1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown state: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b1
    .catchall {:try_start_92 .. :try_end_b1} :catchall_b1

    .line 65
    :catchall_b1
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_92
        :pswitch_35
        :pswitch_35
        :pswitch_31
        :pswitch_2f
    .end packed-switch
.end method

.method final zza(Landroid/os/Message;)Z
    .registers 6

    .line 30
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 31
    const-string v1, "MessengerIpcClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 32
    const-string v1, "MessengerIpcClient"

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Received response to request: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_23
    monitor-enter p0

    .line 34
    :try_start_24
    iget-object v1, p0, Lcom/google/firebase/iid/zzad;->zzca:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/zzak;

    .line 35
    const/4 v2, 0x1

    if-nez v1, :cond_49

    .line 36
    const-string p1, "MessengerIpcClient"

    const/16 v1, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received response for unknown request: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-exit p0

    return v2

    .line 38
    :cond_49
    iget-object v3, p0, Lcom/google/firebase/iid/zzad;->zzca:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 39
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzad;->zzz()V

    .line 40
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_24 .. :try_end_52} :catchall_70

    .line 41
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 42
    const-string/jumbo v0, "unsupported"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 43
    new-instance p1, Lcom/google/firebase/iid/zzal;

    const/4 v0, 0x4

    const-string v3, "Not supported by GmsCore"

    invoke-direct {p1, v0, v3}, Lcom/google/firebase/iid/zzal;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/zzak;->zza(Lcom/google/firebase/iid/zzal;)V

    .line 44
    goto :goto_6f

    .line 45
    :cond_6c
    invoke-virtual {v1, p1}, Lcom/google/firebase/iid/zzak;->zzb(Landroid/os/Bundle;)V

    .line 46
    :goto_6f
    return v2

    .line 40
    :catchall_70
    move-exception p1

    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p1
.end method

.method final declared-synchronized zzaa()V
    .registers 3

    monitor-enter p0

    .line 96
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzad;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 97
    const-string v0, "Timed out while binding"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/iid/zzad;->zza(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 98
    :cond_b
    monitor-exit p0

    return-void

    .line 95
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzb(Lcom/google/firebase/iid/zzak;)Z
    .registers 7

    monitor-enter p0

    .line 7
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzad;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_92

    .line 29
    new-instance p1, Ljava/lang/IllegalStateException;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8f

    goto :goto_76

    .line 28
    :pswitch_b
    monitor-exit p0

    return v1

    .line 25
    :pswitch_d
    :try_start_d
    iget-object v0, p0, Lcom/google/firebase/iid/zzad;->zzbz:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-direct {p0}, Lcom/google/firebase/iid/zzad;->zzy()V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_8f

    .line 27
    monitor-exit p0

    return v2

    .line 23
    :pswitch_17
    :try_start_17
    iget-object v0, p0, Lcom/google/firebase/iid/zzad;->zzbz:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_8f

    .line 24
    monitor-exit p0

    return v2

    .line 8
    :pswitch_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/firebase/iid/zzad;->zzbz:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    nop

    .line 10
    iget p1, p0, Lcom/google/firebase/iid/zzad;->state:I

    if-nez p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 11
    const-string p1, "MessengerIpcClient"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 12
    const-string p1, "MessengerIpcClient"

    const-string v0, "Starting bind to GmsCore"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_3e
    iput v2, p0, Lcom/google/firebase/iid/zzad;->state:I

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/iid/zzad;->zzcb:Lcom/google/firebase/iid/zzab;

    .line 17
    invoke-static {v3}, Lcom/google/firebase/iid/zzab;->zza(Lcom/google/firebase/iid/zzab;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, p1, p0, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_62

    .line 18
    const-string p1, "Unable to bind to service"

    invoke-virtual {p0, v1, p1}, Lcom/google/firebase/iid/zzad;->zza(ILjava/lang/String;)V

    .line 19
    goto :goto_74

    .line 20
    :cond_62
    iget-object p1, p0, Lcom/google/firebase/iid/zzad;->zzcb:Lcom/google/firebase/iid/zzab;

    .line 21
    invoke-static {p1}, Lcom/google/firebase/iid/zzab;->zzb(Lcom/google/firebase/iid/zzab;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/iid/zzaf;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzaf;-><init>(Lcom/google/firebase/iid/zzad;)V

    const-wide/16 v3, 0x1e

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_74
    .catchall {:try_start_1e .. :try_end_74} :catchall_8f

    .line 22
    :goto_74
    monitor-exit p0

    return v2

    .line 29
    :goto_76
    :try_start_76
    iget v0, p0, Lcom/google/firebase/iid/zzad;->state:I

    const/16 v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8f
    .catchall {:try_start_76 .. :try_end_8f} :catchall_8f

    .line 6
    :catchall_8f
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_17
        :pswitch_d
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method final declared-synchronized zzz()V
    .registers 3

    monitor-enter p0

    .line 88
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/zzad;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/zzad;->zzbz:Ljava/util/Queue;

    .line 89
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/firebase/iid/zzad;->zzca:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_35

    .line 91
    const-string v0, "MessengerIpcClient"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 92
    const-string v0, "MessengerIpcClient"

    const-string v1, "Finished handling requests, unbinding"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_25
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firebase/iid/zzad;->state:I

    .line 94
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzad;->zzcb:Lcom/google/firebase/iid/zzab;

    invoke-static {v1}, Lcom/google/firebase/iid/zzab;->zza(Lcom/google/firebase/iid/zzab;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 95
    :cond_35
    monitor-exit p0

    return-void

    .line 87
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.firebase.iid.zzae (com.google.firebase.iid.zzae)
.class final synthetic Lcom/google/firebase/iid/zzae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final zzcc:Lcom/google/firebase/iid/zzad;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzad;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzae;->zzcc:Lcom/google/firebase/iid/zzad;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/zzae;->zzcc:Lcom/google/firebase/iid/zzad;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/zzad;->zza(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

###### Class com.google.firebase.iid.zzaf (com.google.firebase.iid.zzaf)
.class final synthetic Lcom/google/firebase/iid/zzaf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcc:Lcom/google/firebase/iid/zzad;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzad;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzaf;->zzcc:Lcom/google/firebase/iid/zzad;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzaf;->zzcc:Lcom/google/firebase/iid/zzad;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzad;->zzaa()V

    return-void
.end method

###### Class com.google.firebase.iid.zzag (com.google.firebase.iid.zzag)
.class final synthetic Lcom/google/firebase/iid/zzag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcc:Lcom/google/firebase/iid/zzad;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzad;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzag;->zzcc:Lcom/google/firebase/iid/zzad;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/zzag;->zzcc:Lcom/google/firebase/iid/zzad;

    .line 2
    :goto_2
    monitor-enter v0

    .line 3
    :try_start_3
    iget v1, v0, Lcom/google/firebase/iid/zzad;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_a
    iget-object v1, v0, Lcom/google/firebase/iid/zzad;->zzbz:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzad;->zzz()V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_17
    iget-object v1, v0, Lcom/google/firebase/iid/zzad;->zzbz:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/zzak;

    .line 9
    iget-object v3, v0, Lcom/google/firebase/iid/zzad;->zzca:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/firebase/iid/zzak;->zzcf:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v3, v0, Lcom/google/firebase/iid/zzad;->zzcb:Lcom/google/firebase/iid/zzab;

    .line 11
    invoke-static {v3}, Lcom/google/firebase/iid/zzab;->zzb(Lcom/google/firebase/iid/zzab;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/iid/zzah;

    invoke-direct {v4, v0, v1}, Lcom/google/firebase/iid/zzah;-><init>(Lcom/google/firebase/iid/zzad;Lcom/google/firebase/iid/zzak;)V

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 12
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_b1

    .line 13
    nop

    .line 14
    const-string v3, "MessengerIpcClient"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 15
    const-string v3, "MessengerIpcClient"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_67
    iget-object v3, v0, Lcom/google/firebase/iid/zzad;->zzcb:Lcom/google/firebase/iid/zzab;

    invoke-static {v3}, Lcom/google/firebase/iid/zzab;->zza(Lcom/google/firebase/iid/zzab;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/google/firebase/iid/zzad;->zzbx:Landroid/os/Messenger;

    .line 17
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 18
    iget v6, v1, Lcom/google/firebase/iid/zzak;->what:I

    iput v6, v5, Landroid/os/Message;->what:I

    .line 19
    iget v6, v1, Lcom/google/firebase/iid/zzak;->zzcf:I

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 20
    iput-object v4, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 21
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 22
    const-string v6, "oneWay"

    invoke-virtual {v1}, Lcom/google/firebase/iid/zzak;->zzab()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    const-string v6, "pkg"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v3, "data"

    iget-object v1, v1, Lcom/google/firebase/iid/zzak;->zzch:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 26
    nop

    .line 27
    nop

    .line 28
    :try_start_a0
    iget-object v1, v0, Lcom/google/firebase/iid/zzad;->zzby:Lcom/google/firebase/iid/zzai;

    invoke-virtual {v1, v5}, Lcom/google/firebase/iid/zzai;->send(Landroid/os/Message;)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a5} :catch_a7

    .line 29
    goto/16 :goto_2

    .line 30
    :catch_a7
    move-exception v1

    .line 31
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/iid/zzad;->zza(ILjava/lang/String;)V

    .line 32
    goto/16 :goto_2

    .line 12
    :catchall_b1
    move-exception v1

    :try_start_b2
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v1
.end method

###### Class com.google.firebase.iid.zzah (com.google.firebase.iid.zzah)
.class final synthetic Lcom/google/firebase/iid/zzah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcc:Lcom/google/firebase/iid/zzad;

.field private final zzcd:Lcom/google/firebase/iid/zzak;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzad;Lcom/google/firebase/iid/zzak;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzah;->zzcc:Lcom/google/firebase/iid/zzad;

    iput-object p2, p0, Lcom/google/firebase/iid/zzah;->zzcd:Lcom/google/firebase/iid/zzak;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/zzah;->zzcc:Lcom/google/firebase/iid/zzad;

    iget-object v1, p0, Lcom/google/firebase/iid/zzah;->zzcd:Lcom/google/firebase/iid/zzak;

    .line 2
    iget v1, v1, Lcom/google/firebase/iid/zzak;->zzcf:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzad;->zza(I)V

    .line 3
    return-void
.end method
