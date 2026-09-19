###### Class com.google.android.gms.measurement.internal.zzbp (com.google.android.gms.measurement.internal.zzbp)
.class public final Lcom/google/android/gms/measurement/internal/zzbp;
.super Lcom/google/android/gms/measurement/internal/zzcq;


# static fields
.field private static final zzapk:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private zzaea:Ljava/util/concurrent/ExecutorService;

.field private zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

.field private zzapc:Lcom/google/android/gms/measurement/internal/zzbt;

.field private final zzapd:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzbs<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzape:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/measurement/internal/zzbs<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzapf:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzapg:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final zzaph:Ljava/lang/Object;

.field private final zzapi:Ljava/util/concurrent/Semaphore;

.field private volatile zzapj:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapk:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcq;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzaph:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapi:Ljava/util/concurrent/Semaphore;

    .line 4
    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapd:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzape:Ljava/util/concurrent/BlockingQueue;

    .line 6
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbr;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzbr;-><init>(Lcom/google/android/gms/measurement/internal/zzbp;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapf:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 7
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbr;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzbr;-><init>(Lcom/google/android/gms/measurement/internal/zzbp;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapg:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 8
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbp;Lcom/google/android/gms/measurement/internal/zzbt;)Lcom/google/android/gms/measurement/internal/zzbt;
    .registers 2

    .line 89
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbp;)Ljava/util/concurrent/Semaphore;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapi:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzbs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzbs<",
            "*>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzaph:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapd:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

    if-nez p1, :cond_24

    .line 52
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbt;

    const-string v1, "Measurement Worker"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapd:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbt;-><init>(Lcom/google/android/gms/measurement/internal/zzbp;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 53
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapf:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 54
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->start()V

    goto :goto_29

    .line 55
    :cond_24
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbt;->zzki()V

    .line 56
    :goto_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzbp;Lcom/google/android/gms/measurement/internal/zzbt;)Lcom/google/android/gms/measurement/internal/zzbt;
    .registers 2

    .line 91
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapc:Lcom/google/android/gms/measurement/internal/zzbt;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzbp;)Z
    .registers 1

    .line 86
    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapj:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/measurement/internal/zzbp;)Ljava/lang/Object;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzaph:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/measurement/internal/zzbp;)Lcom/google/android/gms/measurement/internal/zzbt;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/measurement/internal/zzbp;)Lcom/google/android/gms/measurement/internal/zzbt;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapc:Lcom/google/android/gms/measurement/internal/zzbt;

    return-object p0
.end method

.method static synthetic zzkh()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 92
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapk:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;J",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .line 37
    monitor-enter p1

    .line 38
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_5e

    .line 39
    const-wide/16 p2, 0x3a98

    :try_start_a
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_38
    .catchall {:try_start_a .. :try_end_d} :catchall_5e

    .line 40
    nop

    .line 44
    :try_start_e
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_5e

    .line 45
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    .line 46
    if-nez p1, :cond_37

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Timed out waiting for "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-eqz p5, :cond_2e

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_34

    :cond_2e
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, p4

    :goto_34
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 48
    :cond_37
    return-object p1

    .line 41
    :catch_38
    move-exception p2

    .line 42
    :try_start_39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string p3, "Interrupted waiting for "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-eqz p5, :cond_52

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_58

    :cond_52
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, p4

    :goto_58
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 43
    const/4 p2, 0x0

    monitor-exit p1

    return-object p2

    .line 44
    :catchall_5e
    move-exception p2

    monitor-exit p1
    :try_end_60
    .catchall {:try_start_39 .. :try_end_60} :catchall_5e

    throw p2
.end method

.method public final zzaf()V
    .registers 3

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

    if-ne v0, v1, :cond_9

    .line 12
    return-void

    .line 11
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzcl()V

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbs;

    const-string v1, "Task exception on worker thread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzbs;-><init>(Lcom/google/android/gms/measurement/internal/zzbp;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

    if-ne p1, v1, :cond_2f

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapd:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v1, "Callable skipped the worker queue."

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 23
    :cond_2b
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbs;->run()V

    goto :goto_32

    .line 24
    :cond_2f
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbp;->zza(Lcom/google/android/gms/measurement/internal/zzbs;)V

    .line 25
    :goto_32
    return-object v0
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 76
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzcl()V

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbs;

    const-string v1, "Task exception on worker thread"

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzbs;-><init>(Lcom/google/android/gms/measurement/internal/zzbp;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

    if-ne p1, v1, :cond_1a

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbs;->run()V

    goto :goto_1d

    .line 31
    :cond_1a
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbp;->zza(Lcom/google/android/gms/measurement/internal/zzbs;)V

    .line 32
    :goto_1d
    return-object v0
.end method

.method public final zzc(Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzcl()V

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbs;

    const-string v1, "Task exception on worker thread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzbs;-><init>(Lcom/google/android/gms/measurement/internal/zzbp;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzbp;->zza(Lcom/google/android/gms/measurement/internal/zzbs;)V

    .line 36
    return-void
.end method

.method public final zzd(Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzcl()V

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbs;

    const-string v1, "Task exception on network thread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzbs;-><init>(Lcom/google/android/gms/measurement/internal/zzbp;Ljava/lang/Runnable;ZLjava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzaph:Ljava/lang/Object;

    monitor-enter p1

    .line 61
    :try_start_11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzape:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapc:Lcom/google/android/gms/measurement/internal/zzbt;

    if-nez v0, :cond_32

    .line 63
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbt;

    const-string v1, "Measurement Network"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzape:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbt;-><init>(Lcom/google/android/gms/measurement/internal/zzbp;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapc:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapc:Lcom/google/android/gms/measurement/internal/zzbt;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapg:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapc:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->start()V

    goto :goto_37

    .line 66
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapc:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->zzki()V

    .line 67
    :goto_37
    monitor-exit p1

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    .line 73
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    .line 74
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgg()V

    return-void
.end method

.method public final zzgh()V
    .registers 3

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapc:Lcom/google/android/gms/measurement/internal/zzbt;

    if-ne v0, v1, :cond_9

    .line 15
    return-void

    .line 14
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 75
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    .line 78
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 79
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbp;
    .registers 2

    .line 80
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    .line 81
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2

    .line 82
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzo;
    .registers 2

    .line 83
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzl;
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcq;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 9
    const/4 v0, 0x0

    return v0
.end method

.method public final zzkf()Z
    .registers 3

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzapb:Lcom/google/android/gms/measurement/internal/zzbt;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final zzkg()Ljava/util/concurrent/ExecutorService;
    .registers 10

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzaph:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzaea:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1c

    .line 70
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzaea:Ljava/util/concurrent/ExecutorService;

    .line 71
    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbp;->zzaea:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-object v1

    .line 72
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method
