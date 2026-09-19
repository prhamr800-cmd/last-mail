###### Class com.google.android.gms.measurement.internal.zzw (com.google.android.gms.measurement.internal.zzw)
.class abstract Lcom/google/android/gms/measurement/internal/zzw;
.super Ljava/lang/Object;


# static fields
.field private static volatile handler:Landroid/os/Handler;


# instance fields
.field private final zzahz:Lcom/google/android/gms/measurement/internal/zzcr;

.field private final zzyo:Ljava/lang/Runnable;

.field private volatile zzyp:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcr;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzahz:Lcom/google/android/gms/measurement/internal/zzcr;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzcr;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzyo:Ljava/lang/Runnable;

    .line 5
    return-void
.end method

.method private final getHandler()Landroid/os/Handler;
    .registers 4

    .line 20
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzw;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 21
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzw;->handler:Landroid/os/Handler;

    return-object v0

    .line 22
    :cond_7
    const-class v0, Lcom/google/android/gms/measurement/internal/zzw;

    monitor-enter v0

    .line 23
    :try_start_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzw;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1f

    .line 24
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzea;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzahz:Lcom/google/android/gms/measurement/internal/zzcr;

    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/zzcr;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzea;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzw;->handler:Landroid/os/Handler;

    .line 25
    :cond_1f
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzw;->handler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_23

    throw v1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzw;J)J
    .registers 3

    .line 27
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzyp:J

    return-wide p1
.end method


# virtual methods
.method final cancel()V
    .registers 3

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzyp:J

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzw;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzyo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method public abstract run()V
.end method

.method public final zzej()Z
    .registers 6

    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzyp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(J)V
    .registers 6

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzw;->cancel()V

    .line 7
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_34

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzahz:Lcom/google/android/gms/measurement/internal/zzcr;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzyp:J

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzw;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzyo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 10
    if-nez v0, :cond_34

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzahz:Lcom/google/android/gms/measurement/internal/zzcr;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Failed to schedule delayed post. time"

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :cond_34
    return-void
.end method
