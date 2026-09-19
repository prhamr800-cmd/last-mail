###### Class com.google.android.gms.measurement.internal.zzde (com.google.android.gms.measurement.internal.zzde)
.class final Lcom/google/android/gms/measurement/internal/zzde;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

.field private final synthetic zzarx:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcy;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzde;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzde;->zzarx:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzde;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzde;->zzarx:J

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgg()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Resetting analytics data (FE)"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgo()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->zzln()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzak;->zzal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzo;->zzbe(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbb;->zzanq:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 10
    :cond_3c
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzcy;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->isEnabled()Z

    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzo;->zzhz()Z

    move-result v2

    if-nez v2, :cond_55

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbb;->zzi(Z)V

    .line 13
    :cond_55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgl()Lcom/google/android/gms/measurement/internal/zzdz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzdz;->resetAnalyticsData()V

    .line 14
    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzcy;->zzarp:Z

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzde;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzag;->zzaln:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzo;->zza(Lcom/google/android/gms/measurement/internal/zzag$zza;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzde;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgl()Lcom/google/android/gms/measurement/internal/zzdz;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 17
    :cond_7c
    return-void
.end method
