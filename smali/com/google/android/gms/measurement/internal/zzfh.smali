###### Class com.google.android.gms.measurement.internal.zzfh (com.google.android.gms.measurement.internal.zzfh)
.class final Lcom/google/android/gms/measurement/internal/zzfh;
.super Lcom/google/android/gms/measurement/internal/zzw;


# instance fields
.field private final synthetic zzatk:Lcom/google/android/gms/measurement/internal/zzfk;

.field private final synthetic zzats:Lcom/google/android/gms/measurement/internal/zzfg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfg;Lcom/google/android/gms/measurement/internal/zzcr;Lcom/google/android/gms/measurement/internal/zzfk;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->zzats:Lcom/google/android/gms/measurement/internal/zzfg;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfh;->zzatk:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzcr;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->zzats:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfg;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->zzats:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->zzatk:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlz()V

    .line 5
    return-void
.end method
