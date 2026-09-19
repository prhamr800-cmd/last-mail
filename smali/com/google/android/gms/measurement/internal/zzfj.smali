###### Class com.google.android.gms.measurement.internal.zzfj (com.google.android.gms.measurement.internal.zzfj)
.class abstract Lcom/google/android/gms/measurement/internal/zzfj;
.super Lcom/google/android/gms/measurement/internal/zzfi;


# instance fields
.field private zzvz:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfi;-><init>(Lcom/google/android/gms/measurement/internal/zzfk;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfj;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzb(Lcom/google/android/gms/measurement/internal/zzfj;)V

    .line 3
    return-void
.end method


# virtual methods
.method final isInitialized()Z
    .registers 2

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfj;->zzvz:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzcl()V
    .registers 3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 6
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract zzgy()Z
.end method

.method public final zzq()V
    .registers 3

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfj;->zzvz:Z

    if-nez v0, :cond_10

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfj;->zzgy()Z

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfj;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmg()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfj;->zzvz:Z

    .line 13
    return-void

    .line 9
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
