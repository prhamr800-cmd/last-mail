###### Class com.google.android.gms.measurement.internal.zzdc (com.google.android.gms.measurement.internal.zzdc)
.class final Lcom/google/android/gms/measurement/internal/zzdc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaev:Z

.field private final synthetic zzarq:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzarr:Lcom/google/android/gms/measurement/internal/zzcy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcy;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzarq:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzaev:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgl()Lcom/google/android/gms/measurement/internal/zzdz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzarq:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzdc;->zzaev:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzdz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    .line 3
    return-void
.end method
