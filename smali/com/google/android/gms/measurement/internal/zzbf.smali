###### Class com.google.android.gms.measurement.internal.zzbf (com.google.android.gms.measurement.internal.zzbf)
.class public final Lcom/google/android/gms/measurement/internal/zzbf;
.super Ljava/lang/Object;


# instance fields
.field private final zzabv:J

.field private final synthetic zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

.field private final zzaog:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzaoh:Ljava/lang/String;

.field private final zzaoi:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzbb;Ljava/lang/String;J)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaog:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoh:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ":value"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoi:Ljava/lang/String;

    .line 7
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzabv:J

    .line 8
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzbb;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzbc;)V
    .registers 6

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbb;Ljava/lang/String;J)V

    return-void
.end method

.method private final zzfl()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoh:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoi:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaog:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    return-void
.end method

.method private final zzfn()J
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaog:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;J)V
    .registers 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbf;->zzfn()J

    move-result-wide p2

    .line 19
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_12

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbf;->zzfl()V

    .line 21
    :cond_12
    if-nez p1, :cond_16

    .line 22
    const-string p1, ""

    .line 23
    :cond_16
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoh:Ljava/lang/String;

    invoke-interface {p2, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 24
    const-wide/16 v2, 0x1

    cmp-long v4, p2, v0

    if-gtz v4, :cond_40

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 26
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoi:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoh:Ljava/lang/String;

    invoke-interface {p2, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    return-void

    .line 30
    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzmk()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v0, v4

    .line 31
    add-long/2addr p2, v2

    div-long/2addr v4, p2

    cmp-long v2, v0, v4

    if-gez v2, :cond_5c

    const/4 v0, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    .line 32
    :goto_5d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 33
    if-eqz v0, :cond_6e

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoi:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    :cond_6e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoh:Ljava/lang/String;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    return-void
.end method

.method public final zzfm()Landroid/util/Pair;
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 39
    nop

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbf;->zzfn()J

    move-result-wide v0

    .line 42
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbf;->zzfl()V

    .line 44
    nop

    .line 46
    move-wide v0, v2

    goto :goto_2a

    .line 45
    :cond_1b
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 46
    :goto_2a
    nop

    .line 47
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzabv:J

    const/4 v6, 0x0

    cmp-long v7, v0, v4

    if-gez v7, :cond_33

    .line 48
    return-object v6

    .line 49
    :cond_33
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzabv:J

    const/4 v7, 0x1

    shl-long/2addr v4, v7

    cmp-long v7, v0, v4

    if-lez v7, :cond_3f

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbf;->zzfl()V

    .line 51
    return-object v6

    .line 52
    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoi:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzbf;->zzaoh:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbf;->zzfl()V

    .line 55
    if-eqz v0, :cond_6b

    cmp-long v1, v4, v2

    if-gtz v1, :cond_61

    goto :goto_6b

    .line 57
    :cond_61
    new-instance v1, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 56
    :cond_6b
    :goto_6b
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbb;->zzanj:Landroid/util/Pair;

    return-object v0
.end method
