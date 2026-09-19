###### Class com.google.android.gms.measurement.internal.zzfa (com.google.android.gms.measurement.internal.zzfa)
.class final Lcom/google/android/gms/measurement/internal/zzfa;
.super Lcom/google/android/gms/measurement/internal/zzw;


# instance fields
.field private final synthetic zzatq:Lcom/google/android/gms/measurement/internal/zzez;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzez;Lcom/google/android/gms/measurement/internal/zzcr;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatq:Lcom/google/android/gms/measurement/internal/zzez;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzcr;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfa;->zzatq:Lcom/google/android/gms/measurement/internal/zzez;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzez;->zzlo()V

    .line 3
    return-void
.end method
