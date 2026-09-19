###### Class com.google.android.gms.measurement.internal.zzdf (com.google.android.gms.measurement.internal.zzdf)
.class final Lcom/google/android/gms/measurement/internal/zzdf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaeu:Lcom/google/android/gms/measurement/internal/zzcv;

.field private final synthetic zzarr:Lcom/google/android/gms/measurement/internal/zzcy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcy;Lcom/google/android/gms/measurement/internal/zzcv;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdf;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdf;->zzaeu:Lcom/google/android/gms/measurement/internal/zzcv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdf;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdf;->zzaeu:Lcom/google/android/gms/measurement/internal/zzcv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzcy;->zza(Lcom/google/android/gms/measurement/internal/zzcv;)V

    .line 3
    return-void
.end method
