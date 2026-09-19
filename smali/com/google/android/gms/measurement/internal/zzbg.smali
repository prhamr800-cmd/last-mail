###### Class com.google.android.gms.measurement.internal.zzbg (com.google.android.gms.measurement.internal.zzbg)
.class public final Lcom/google/android/gms/measurement/internal/zzbg;
.super Ljava/lang/Object;


# instance fields
.field private value:Ljava/lang/String;

.field private zzaod:Z

.field private final synthetic zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

.field private final zzaoj:Ljava/lang/String;

.field private final zzoj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzbb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbg;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbg;->zzoj:Ljava/lang/String;

    .line 4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbg;->zzaoj:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public final zzcf(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbg;->value:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12
    return-void

    .line 13
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbg;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbg;->zzoj:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbg;->value:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public final zzkd()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 6
    nop

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbg;->zzaod:Z

    if-nez v0, :cond_17

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbg;->zzaod:Z

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbg;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbg;->zzoj:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbg;->value:Ljava/lang/String;

    .line 10
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbg;->value:Ljava/lang/String;

    return-object v0
.end method
