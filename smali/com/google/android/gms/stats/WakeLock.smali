###### Class com.google.android.gms.stats.WakeLock (com.google.android.gms.stats.WakeLock)
.class public Lcom/google/android/gms/stats/WakeLock;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/stats/WakeLock$zza;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static zzn:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile zzo:Lcom/google/android/gms/stats/WakeLock$zza;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Landroid/os/PowerManager$WakeLock;

.field private zzc:Landroid/os/WorkSource;

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Landroid/content/Context;

.field private zzi:Z

.field private final zzj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zzl:I

.field private zzm:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 118
    new-instance v0, Lcom/google/android/gms/stats/zza;

    invoke-direct {v0}, Lcom/google/android/gms/stats/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/stats/WakeLock;->zzo:Lcom/google/android/gms/stats/WakeLock$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    nop

    .line 2
    if-nez p1, :cond_6

    const/4 v0, 0x0

    .line 3
    :goto_4
    move-object v6, v0

    goto :goto_b

    .line 2
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3
    :goto_b
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/stats/WakeLock;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/stats/WakeLock;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnwrappedWakeLock"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p0, p0, Lcom/google/android/gms/stats/WakeLock;->zza:Ljava/lang/Object;

    .line 9
    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/google/android/gms/stats/WakeLock;->zzi:Z

    .line 10
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/stats/WakeLock;->zzj:Ljava/util/Map;

    .line 11
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    invoke-static {p4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/stats/WakeLock;->zzk:Ljava/util/Set;

    .line 12
    new-instance p4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p6, 0x0

    invoke-direct {p4, p6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p4, p0, Lcom/google/android/gms/stats/WakeLock;->zzm:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    const-string p4, "WakeLock: context must not be null"

    invoke-static {p1, p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p4, "WakeLock: wakeLockName must not be empty"

    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/google/android/gms/stats/WakeLock;->zzd:I

    .line 16
    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/stats/WakeLock;->zzf:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/google/android/gms/stats/WakeLock;->zzg:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/stats/WakeLock;->zzh:Landroid/content/Context;

    .line 19
    const-string p4, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_63

    .line 20
    const-string p4, "*gcore*:"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p4, p6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_60

    :cond_5a
    new-instance p6, Ljava/lang/String;

    invoke-direct {p6, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p4, p6

    :goto_60
    iput-object p4, p0, Lcom/google/android/gms/stats/WakeLock;->zze:Ljava/lang/String;

    goto :goto_65

    .line 21
    :cond_63
    iput-object p3, p0, Lcom/google/android/gms/stats/WakeLock;->zze:Ljava/lang/String;

    .line 22
    :goto_65
    const-string p4, "power"

    .line 23
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/PowerManager;

    .line 24
    invoke-virtual {p4, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/stats/WakeLock;->zzb:Landroid/os/PowerManager$WakeLock;

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/common/util/WorkSourceUtil;->hasWorkSourcePermission(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_b6

    .line 26
    invoke-static {p5}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    goto :goto_85

    .line 28
    :cond_84
    nop

    .line 29
    :goto_85
    nop

    .line 30
    invoke-static {p1, p5}, Lcom/google/android/gms/common/util/WorkSourceUtil;->fromPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/stats/WakeLock;->zzc:Landroid/os/WorkSource;

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/stats/WakeLock;->zzc:Landroid/os/WorkSource;

    .line 32
    if-eqz p1, :cond_b6

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/stats/WakeLock;->zzh:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/util/WorkSourceUtil;->hasWorkSourcePermission(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_b6

    .line 34
    iget-object p2, p0, Lcom/google/android/gms/stats/WakeLock;->zzc:Landroid/os/WorkSource;

    if-eqz p2, :cond_a2

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/stats/WakeLock;->zzc:Landroid/os/WorkSource;

    invoke-virtual {p2, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_a4

    .line 36
    :cond_a2
    iput-object p1, p0, Lcom/google/android/gms/stats/WakeLock;->zzc:Landroid/os/WorkSource;

    .line 37
    :goto_a4
    iget-object p1, p0, Lcom/google/android/gms/stats/WakeLock;->zzc:Landroid/os/WorkSource;

    .line 38
    :try_start_a6
    iget-object p2, p0, Lcom/google/android/gms/stats/WakeLock;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a6 .. :try_end_ab} :catch_ac
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a6 .. :try_end_ab} :catch_ac

    .line 39
    goto :goto_b6

    .line 40
    :catch_ac
    move-exception p1

    .line 41
    const-string p2, "WakeLock"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_b6
    :goto_b6
    sget-object p1, Lcom/google/android/gms/stats/WakeLock;->zzn:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_c4

    .line 43
    invoke-static {}, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;->getInstance()Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    sput-object p1, Lcom/google/android/gms/stats/WakeLock;->zzn:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    :cond_c4
    return-void
.end method

.method private final zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 112
    iget-boolean v0, p0, Lcom/google/android/gms/stats/WakeLock;->zzi:Z

    if-eqz v0, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    return-object p1

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/stats/WakeLock;->zzf:Ljava/lang/String;

    return-object p1
.end method

.method private final zza()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock;->zzc:Landroid/os/WorkSource;

    invoke-static {v0}, Lcom/google/android/gms/common/util/WorkSourceUtil;->getNames(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method private final zza(I)V
    .registers 5

    .line 102
    nop

    .line 103
    iget-object p1, p0, Lcom/google/android/gms/stats/WakeLock;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 104
    :try_start_9
    iget-object p1, p0, Lcom/google/android/gms/stats/WakeLock;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_e} :catch_f

    .line 105
    goto :goto_2d

    .line 106
    :catch_f
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 108
    const-string v0, "WakeLock"

    iget-object v1, p0, Lcom/google/android/gms/stats/WakeLock;->zze:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was already released!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :goto_2d
    iget-object p1, p0, Lcom/google/android/gms/stats/WakeLock;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    goto :goto_34

    .line 109
    :cond_33
    throw p1

    .line 111
    :cond_34
    :goto_34
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/stats/WakeLock;I)V
    .registers 2

    .line 117
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/stats/WakeLock;->zza(I)V

    return-void
.end method


# virtual methods
.method public acquire(J)V
    .registers 16
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock;->zzm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 48
    nop

    .line 49
    nop

    .line 50
    nop

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/stats/WakeLock;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_10
    iget-object v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzj:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    iget v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzl:I

    if-lez v1, :cond_2c

    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzj:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 55
    iput v2, p0, Lcom/google/android/gms/stats/WakeLock;->zzl:I

    .line 56
    :cond_2c
    iget-boolean v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzi:Z

    const/4 v12, 0x1

    if-eqz v1, :cond_5b

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzj:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 58
    if-nez v1, :cond_4b

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzj:Ljava/util/Map;

    new-array v3, v12, [Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    nop

    .line 63
    const/4 v2, 0x1

    goto :goto_59

    .line 61
    :cond_4b
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 62
    nop

    .line 63
    :goto_59
    if-nez v2, :cond_63

    :cond_5b
    iget-boolean v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzi:Z

    if-nez v1, :cond_82

    iget v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzl:I

    if-nez v1, :cond_82

    .line 64
    :cond_63
    invoke-static {}, Lcom/google/android/gms/common/stats/WakeLockTracker;->getInstance()Lcom/google/android/gms/common/stats/WakeLockTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/stats/WakeLock;->zzh:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/stats/WakeLock;->zzb:Landroid/os/PowerManager$WakeLock;

    .line 65
    invoke-static {v3, v6}, Lcom/google/android/gms/common/stats/StatsUtils;->getEventKey(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/android/gms/stats/WakeLock;->zze:Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, Lcom/google/android/gms/stats/WakeLock;->zzd:I

    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/stats/WakeLock;->zza()Ljava/util/List;

    move-result-object v9

    .line 67
    move-wide v10, p1

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/common/stats/WakeLockTracker;->registerEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    .line 68
    iget v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzl:I

    add-int/2addr v1, v12

    iput v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzl:I

    .line 69
    :cond_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_10 .. :try_end_83} :catchall_9c

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 71
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_9b

    .line 72
    nop

    .line 73
    sget-object v0, Lcom/google/android/gms/stats/WakeLock;->zzn:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/stats/zzb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/stats/zzb;-><init>(Lcom/google/android/gms/stats/WakeLock;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 75
    :cond_9b
    return-void

    .line 69
    :catchall_9c
    move-exception p1

    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw p1
.end method

.method public isHeld()Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 13
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 76
    nop

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock;->zzm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 78
    if-gez v0, :cond_1a

    .line 79
    const-string v0, "WakeLock"

    iget-object v1, p0, Lcom/google/android/gms/stats/WakeLock;->zze:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " release without a matched acquire!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1a
    nop

    .line 81
    nop

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/stats/WakeLock;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_24
    iget-boolean v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzi:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_57

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzj:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 86
    if-nez v1, :cond_37

    .line 87
    nop

    .line 93
    :goto_35
    const/4 v1, 0x0

    goto :goto_55

    .line 88
    :cond_37
    aget-object v2, v1, v11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v10, :cond_47

    .line 89
    iget-object v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzj:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    nop

    .line 93
    const/4 v1, 0x1

    goto :goto_55

    .line 91
    :cond_47
    aget-object v2, v1, v11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    .line 92
    goto :goto_35

    .line 93
    :goto_55
    if-nez v1, :cond_5f

    :cond_57
    iget-boolean v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzi:Z

    if-nez v1, :cond_7e

    iget v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzl:I

    if-ne v1, v10, :cond_7e

    .line 94
    :cond_5f
    invoke-static {}, Lcom/google/android/gms/common/stats/WakeLockTracker;->getInstance()Lcom/google/android/gms/common/stats/WakeLockTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/stats/WakeLock;->zzh:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/stats/WakeLock;->zzb:Landroid/os/PowerManager$WakeLock;

    .line 95
    invoke-static {v3, v6}, Lcom/google/android/gms/common/stats/StatsUtils;->getEventKey(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/android/gms/stats/WakeLock;->zze:Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, Lcom/google/android/gms/stats/WakeLock;->zzd:I

    .line 96
    invoke-direct {p0}, Lcom/google/android/gms/stats/WakeLock;->zza()Ljava/util/List;

    move-result-object v9

    .line 97
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/common/stats/WakeLockTracker;->registerEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 98
    iget v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzl:I

    sub-int/2addr v1, v10

    iput v1, p0, Lcom/google/android/gms/stats/WakeLock;->zzl:I

    .line 99
    :cond_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_24 .. :try_end_7f} :catchall_83

    .line 100
    invoke-direct {p0, v11}, Lcom/google/android/gms/stats/WakeLock;->zza(I)V

    .line 101
    return-void

    .line 99
    :catchall_83
    move-exception v1

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v1
.end method

.method public setReferenceCounted(Z)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/stats/WakeLock;->zzb:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 114
    iput-boolean p1, p0, Lcom/google/android/gms/stats/WakeLock;->zzi:Z

    .line 115
    return-void
.end method

###### Class com.google.android.gms.stats.WakeLock.zza (com.google.android.gms.stats.WakeLock$zza)
.class public interface abstract Lcom/google/android/gms/stats/WakeLock$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/stats/WakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation
