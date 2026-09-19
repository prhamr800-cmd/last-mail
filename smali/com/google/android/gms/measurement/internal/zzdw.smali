###### Class com.google.android.gms.measurement.internal.zzdw (com.google.android.gms.measurement.internal.zzdw)
.class public final Lcom/google/android/gms/measurement/internal/zzdw;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field protected zzasd:Lcom/google/android/gms/measurement/internal/zzdv;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private volatile zzase:Lcom/google/android/gms/measurement/internal/zzdv;

.field private zzasf:Lcom/google/android/gms/measurement/internal/zzdv;

.field private final zzasg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/measurement/internal/zzdv;",
            ">;"
        }
    .end annotation
.end field

.field private zzash:Lcom/google/android/gms/measurement/internal/zzdv;

.field private zzasi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;)V

    .line 2
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasg:Ljava/util/Map;

    .line 3
    return-void
.end method

.method private final zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzdv;Z)V
    .registers 9
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzase:Lcom/google/android/gms/measurement/internal/zzdv;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasf:Lcom/google/android/gms/measurement/internal/zzdv;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzase:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 50
    :goto_9
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzdv;->zzasa:Ljava/lang/String;

    if-nez v1, :cond_23

    .line 51
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdv;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzdv;->zzuw:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzdw;->zzcs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-wide v3, p2, Lcom/google/android/gms/measurement/internal/zzdv;->zzasb:J

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdv;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 53
    move-object p2, v1

    .line 54
    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzase:Lcom/google/android/gms/measurement/internal/zzdv;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasf:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 55
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzase:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-direct {v1, p0, p3, v0, p2}, Lcom/google/android/gms/measurement/internal/zzdx;-><init>(Lcom/google/android/gms/measurement/internal/zzdw;ZLcom/google/android/gms/measurement/internal/zzdv;Lcom/google/android/gms/measurement/internal/zzdv;)V

    .line 57
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzdv;Landroid/os/Bundle;Z)V
    .registers 5

    .line 63
    if-eqz p1, :cond_2e

    if-eqz p0, :cond_2e

    const-string v0, "_sc"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p2, :cond_2e

    .line 65
    :cond_e
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzuw:Ljava/lang/String;

    if-eqz p2, :cond_1a

    .line 66
    const-string p2, "_sn"

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzuw:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 67
    :cond_1a
    const-string p2, "_sn"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 68
    :goto_1f
    const-string p2, "_sc"

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzasa:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string p2, "_si"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzdv;->zzasb:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    .line 70
    :cond_2e
    if-eqz p1, :cond_43

    if-nez p0, :cond_43

    if-eqz p2, :cond_43

    .line 71
    const-string p0, "_sn"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 72
    const-string p0, "_sc"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 73
    const-string p0, "_si"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 74
    :cond_43
    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzdv;Z)V
    .registers 6
    .param p1    # Lcom/google/android/gms/measurement/internal/zzdv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->zzq(J)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgo()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzdv;->zzasc:Z

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzez;->zza(ZZ)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 61
    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/google/android/gms/measurement/internal/zzdv;->zzasc:Z

    .line 62
    :cond_1e
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzdw;Lcom/google/android/gms/measurement/internal/zzdv;Z)V
    .registers 3

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdw;->zza(Lcom/google/android/gms/measurement/internal/zzdv;Z)V

    return-void
.end method

.method private static zzcs(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 81
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 82
    array-length v0, p0

    if-lez v0, :cond_f

    .line 83
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    goto :goto_11

    .line 84
    :cond_f
    const-string p0, ""

    .line 85
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1f

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_1f
    return-object p0
.end method

.method private final zze(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzdv;
    .registers 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 88
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzdv;

    .line 90
    if-nez v0, :cond_2d

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdw;->zzcs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzmj()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdv;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasg:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-object v0, v1

    :cond_2d
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .line 145
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 8
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 95
    if-nez p2, :cond_3

    .line 96
    return-void

    .line 97
    :cond_3
    const-string v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 98
    if-nez p2, :cond_c

    .line 99
    return-void

    .line 100
    :cond_c
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdv;

    const-string v1, "name"

    .line 101
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    .line 102
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 103
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdv;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 104
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasg:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdw;->zze(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzdv;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzase:Lcom/google/android/gms/measurement/internal/zzdv;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasf:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzase:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzdy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzdy;-><init>(Lcom/google/android/gms/measurement/internal/zzdw;Lcom/google/android/gms/measurement/internal/zzdv;)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdw;->zze(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzdv;

    move-result-object v0

    .line 107
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzdw;->zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzdv;Z)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 110
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzd;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzd;-><init>(Lcom/google/android/gms/measurement/internal/zza;J)V

    .line 111
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 119
    if-nez p2, :cond_3

    .line 120
    return-void

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzdv;

    .line 122
    if-nez p1, :cond_e

    .line 123
    return-void

    .line 124
    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    const-string v1, "id"

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzdv;->zzasb:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 126
    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzdv;->zzuw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "referrer_name"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzdv;->zzasa:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string p1, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzase:Lcom/google/android/gms/measurement/internal/zzdv;

    if-nez v0, :cond_12

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 15
    return-void

    .line 16
    :cond_28
    if-nez p3, :cond_36

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzdw;->zzcs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 18
    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzase:Lcom/google/android/gms/measurement/internal/zzdv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzdv;->zzasa:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzase:Lcom/google/android/gms/measurement/internal/zzdv;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzdv;->zzuw:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 20
    if-eqz v0, :cond_58

    if-eqz v1, :cond_58

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjl()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 24
    return-void

    .line 25
    :cond_58
    const/16 v0, 0x64

    if-eqz p2, :cond_7e

    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_68

    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_7e

    .line 28
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    return-void

    .line 32
    :cond_7e
    if-eqz p3, :cond_a2

    .line 33
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8c

    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_a2

    .line 35
    :cond_8c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Invalid class name length in setCurrentScreen. Length"

    .line 37
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    return-void

    .line 39
    :cond_a2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Setting current screen to name, class"

    .line 41
    if-nez p2, :cond_b1

    const-string v2, "null"

    goto :goto_b2

    .line 42
    :cond_b1
    move-object v2, p2

    :goto_b2
    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/gms/measurement/internal/zzas;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzmj()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzdv;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 44
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasg:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzdw;->zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzdv;Z)V

    .line 46
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 76
    monitor-enter p0

    .line 77
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasi:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasi:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz p2, :cond_16

    .line 78
    :cond_12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasi:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzash:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 80
    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    .line 135
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()V

    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 144
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    .line 132
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    .line 133
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    .line 134
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgi()Lcom/google/android/gms/measurement/internal/zza;
    .registers 2

    .line 136
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgj()Lcom/google/android/gms/measurement/internal/zzcy;
    .registers 2

    .line 137
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgj()Lcom/google/android/gms/measurement/internal/zzcy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgk()Lcom/google/android/gms/measurement/internal/zzak;
    .registers 2

    .line 138
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgl()Lcom/google/android/gms/measurement/internal/zzdz;
    .registers 2

    .line 139
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgl()Lcom/google/android/gms/measurement/internal/zzdz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgm()Lcom/google/android/gms/measurement/internal/zzdw;
    .registers 2

    .line 140
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgn()Lcom/google/android/gms/measurement/internal/zzam;
    .registers 2

    .line 141
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgn()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgo()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 142
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgo()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 143
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    .line 146
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 147
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbp;
    .registers 2

    .line 148
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    .line 149
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2

    .line 150
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzo;
    .registers 2

    .line 151
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzl;
    .registers 2

    .line 152
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 4
    const/4 v0, 0x0

    return v0
.end method

.method public final zzle()Lcom/google/android/gms/measurement/internal/zzdv;
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasd:Lcom/google/android/gms/measurement/internal/zzdv;

    return-object v0
.end method

.method public final zzlf()Lcom/google/android/gms/measurement/internal/zzdv;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgg()V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdw;->zzase:Lcom/google/android/gms/measurement/internal/zzdv;

    return-object v0
.end method
