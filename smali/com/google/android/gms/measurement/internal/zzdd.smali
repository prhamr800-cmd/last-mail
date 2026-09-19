###### Class com.google.android.gms.measurement.internal.zzdd (com.google.android.gms.measurement.internal.zzdd)
.class final Lcom/google/android/gms/measurement/internal/zzdd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzarq:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzarr:Lcom/google/android/gms/measurement/internal/zzcy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcy;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdd;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdd;->zzarq:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdd;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgl()Lcom/google/android/gms/measurement/internal/zzdz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdd;->zzarq:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3
    return-void
.end method
