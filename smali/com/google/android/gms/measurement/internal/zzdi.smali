###### Class com.google.android.gms.measurement.internal.zzdi (com.google.android.gms.measurement.internal.zzdi)
.class final Lcom/google/android/gms/measurement/internal/zzdi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaeh:Ljava/lang/String;

.field private final synthetic zzaeo:Ljava/lang/String;

.field private final synthetic zzaqy:Ljava/lang/String;

.field private final synthetic zzarq:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzarr:Lcom/google/android/gms/measurement/internal/zzcy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcy;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdi;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdi;->zzarq:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzdi;->zzaqy:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzdi;->zzaeh:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzdi;->zzaeo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdi;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzcy;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgl()Lcom/google/android/gms/measurement/internal/zzdz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdi;->zzarq:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdi;->zzaqy:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdi;->zzaeh:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzdi;->zzaeo:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    return-void
.end method
