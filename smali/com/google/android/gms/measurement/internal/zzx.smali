###### Class com.google.android.gms.measurement.internal.zzx (com.google.android.gms.measurement.internal.zzx)
.class final Lcom/google/android/gms/measurement/internal/zzx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaia:Lcom/google/android/gms/measurement/internal/zzcr;

.field private final synthetic zzaib:Lcom/google/android/gms/measurement/internal/zzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzcr;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzaib:Lcom/google/android/gms/measurement/internal/zzw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzaia:Lcom/google/android/gms/measurement/internal/zzcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzaia:Lcom/google/android/gms/measurement/internal/zzcr;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzl;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzaia:Lcom/google/android/gms/measurement/internal/zzcr;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzcr;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzaib:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzej()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzaib:Lcom/google/android/gms/measurement/internal/zzw;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzw;->zza(Lcom/google/android/gms/measurement/internal/zzw;J)J

    .line 6
    if-eqz v0, :cond_29

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzaib:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->run()V

    .line 8
    :cond_29
    return-void
.end method
