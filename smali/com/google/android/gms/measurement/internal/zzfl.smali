###### Class com.google.android.gms.measurement.internal.zzfl (com.google.android.gms.measurement.internal.zzfl)
.class final Lcom/google/android/gms/measurement/internal/zzfl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzauq:Lcom/google/android/gms/measurement/internal/zzfp;

.field private final synthetic zzaur:Lcom/google/android/gms/measurement/internal/zzfk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzfp;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfl;->zzaur:Lcom/google/android/gms/measurement/internal/zzfk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfl;->zzauq:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfl;->zzaur:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfl;->zzauq:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzfk;Lcom/google/android/gms/measurement/internal/zzfp;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfl;->zzaur:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->start()V

    .line 4
    return-void
.end method
