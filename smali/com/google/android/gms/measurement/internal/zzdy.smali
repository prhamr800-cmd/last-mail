###### Class com.google.android.gms.measurement.internal.zzdy (com.google.android.gms.measurement.internal.zzdy)
.class final Lcom/google/android/gms/measurement/internal/zzdy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzasm:Lcom/google/android/gms/measurement/internal/zzdw;

.field private final synthetic zzasn:Lcom/google/android/gms/measurement/internal/zzdv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzdw;Lcom/google/android/gms/measurement/internal/zzdv;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzasm:Lcom/google/android/gms/measurement/internal/zzdw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzasn:Lcom/google/android/gms/measurement/internal/zzdv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzasm:Lcom/google/android/gms/measurement/internal/zzdw;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzasn:Lcom/google/android/gms/measurement/internal/zzdv;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzdw;->zza(Lcom/google/android/gms/measurement/internal/zzdw;Lcom/google/android/gms/measurement/internal/zzdv;Z)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzasm:Lcom/google/android/gms/measurement/internal/zzdw;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzdw;->zzasd:Lcom/google/android/gms/measurement/internal/zzdv;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdy;->zzasm:Lcom/google/android/gms/measurement/internal/zzdw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgl()Lcom/google/android/gms/measurement/internal/zzdz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zza(Lcom/google/android/gms/measurement/internal/zzdv;)V

    .line 5
    return-void
.end method
