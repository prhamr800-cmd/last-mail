###### Class com.google.android.gms.measurement.internal.zzbd (com.google.android.gms.measurement.internal.zzbd)
.class public final Lcom/google/android/gms/measurement/internal/zzbd;
.super Ljava/lang/Object;


# instance fields
.field private value:Z

.field private final zzaoc:Z

.field private zzaod:Z

.field private final synthetic zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

.field private final zzoj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzbb;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzoj:Ljava/lang/String;

    .line 4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzaoc:Z

    .line 5
    return-void
.end method


# virtual methods
.method public final get()Z
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 6
    nop

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzaod:Z

    if-nez v0, :cond_18

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzaod:Z

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzoj:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzaoc:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->value:Z

    .line 10
    :cond_18
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->value:Z

    return v0
.end method

.method public final set(Z)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->zzoj:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzbd;->value:Z

    .line 15
    return-void
.end method
