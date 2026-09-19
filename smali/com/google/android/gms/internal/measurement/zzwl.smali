###### Class com.google.android.gms.internal.measurement.zzwl (com.google.android.gms.internal.measurement.zzwl)
.class public Lcom/google/android/gms/internal/measurement/zzwl;
.super Ljava/lang/Object;


# static fields
.field private static final zzbuo:Lcom/google/android/gms/internal/measurement/zzvk;


# instance fields
.field private zzcay:Lcom/google/android/gms/internal/measurement/zzun;

.field private volatile zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

.field private volatile zzcba:Lcom/google/android/gms/internal/measurement/zzun;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvk;->zzvy()Lcom/google/android/gms/internal/measurement/zzvk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzwl;->zzbuo:Lcom/google/android/gms/internal/measurement/zzvk;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/measurement/zzxe;)Lcom/google/android/gms/internal/measurement/zzxe;
    .registers 3

    .line 17
    nop

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    if-nez v0, :cond_1f

    .line 19
    monitor-enter p0

    .line 20
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    if-eqz v0, :cond_c

    .line 21
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1c

    goto :goto_1f

    .line 22
    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzun;->zzbuu:Lcom/google/android/gms/internal/measurement/zzun;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;
    :try_end_12
    .catch Lcom/google/android/gms/internal/measurement/zzwe; {:try_start_c .. :try_end_12} :catch_13
    .catchall {:try_start_c .. :try_end_12} :catchall_1c

    .line 24
    goto :goto_1a

    .line 25
    :catch_13
    move-exception v0

    .line 26
    :try_start_14
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    .line 27
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzun;->zzbuu:Lcom/google/android/gms/internal/measurement/zzun;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;

    .line 28
    :goto_1a
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw p1

    .line 29
    :cond_1f
    :goto_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzwl;

    if-nez v0, :cond_a

    .line 5
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzwl;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    .line 8
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    .line 9
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzwl;->zzud()Lcom/google/android/gms/internal/measurement/zzun;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzwl;->zzud()Lcom/google/android/gms/internal/measurement/zzun;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzun;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 11
    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 13
    :cond_2a
    if-eqz v0, :cond_39

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzxe;->zzwq()Lcom/google/android/gms/internal/measurement/zzxe;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/zzwl;->zzh(Lcom/google/android/gms/internal/measurement/zzxe;)Lcom/google/android/gms/internal/measurement/zzxe;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15
    :cond_39
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzxe;->zzwq()Lcom/google/android/gms/internal/measurement/zzxe;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzwl;->zzh(Lcom/google/android/gms/internal/measurement/zzxe;)Lcom/google/android/gms/internal/measurement/zzxe;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/measurement/zzxe;)Lcom/google/android/gms/internal/measurement/zzxe;
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcay:Lcom/google/android/gms/internal/measurement/zzun;

    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    .line 34
    return-object v0
.end method

.method public final zzud()Lcom/google/android/gms/internal/measurement/zzun;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;

    if-eqz v0, :cond_7

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;

    return-object v0

    .line 42
    :cond_7
    monitor-enter p0

    .line 43
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;

    if-eqz v0, :cond_10

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;

    monitor-exit p0

    return-object v0

    .line 45
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    if-nez v0, :cond_19

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzun;->zzbuu:Lcom/google/android/gms/internal/measurement/zzun;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;

    goto :goto_21

    .line 47
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzxe;->zzud()Lcom/google/android/gms/internal/measurement/zzun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;

    .line 48
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;

    monitor-exit p0

    return-object v0

    .line 49
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public final zzwe()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;

    if-eqz v0, :cond_b

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcba:Lcom/google/android/gms/internal/measurement/zzun;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzun;->size()I

    move-result v0

    return v0

    .line 37
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    if-eqz v0, :cond_16

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwl;->zzcaz:Lcom/google/android/gms/internal/measurement/zzxe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzxe;->zzwe()I

    move-result v0

    return v0

    .line 39
    :cond_16
    const/4 v0, 0x0

    return v0
.end method
