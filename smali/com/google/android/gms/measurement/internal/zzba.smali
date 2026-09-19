###### Class com.google.android.gms.measurement.internal.zzba (com.google.android.gms.measurement.internal.zzba)
.class final Lcom/google/android/gms/measurement/internal/zzba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzanh:Z

.field private final synthetic zzani:Lcom/google/android/gms/measurement/internal/zzaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzaz;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzani:Lcom/google/android/gms/measurement/internal/zzaz;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzani:Lcom/google/android/gms/measurement/internal/zzaz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zza(Lcom/google/android/gms/measurement/internal/zzaz;)Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzanh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzm(Z)V

    .line 3
    return-void
.end method
