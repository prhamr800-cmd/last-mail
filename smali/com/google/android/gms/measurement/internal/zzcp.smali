###### Class com.google.android.gms.measurement.internal.zzcp (com.google.android.gms.measurement.internal.zzcp)
.class Lcom/google/android/gms/measurement/internal/zzcp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzcr;


# instance fields
.field protected final zzadp:Lcom/google/android/gms/measurement/internal/zzbu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 4
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public zzaf()V
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 16
    return-void
.end method

.method public zzbx()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public zzgf()V
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgf()V

    .line 22
    return-void
.end method

.method public zzgg()V
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgg()V

    .line 20
    return-void
.end method

.method public zzgh()V
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgh()V

    .line 18
    return-void
.end method

.method public zzgp()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public zzgq()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public zzgr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public zzgs()Lcom/google/android/gms/measurement/internal/zzbp;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    return-object v0
.end method

.method public zzgt()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public zzgu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public zzgv()Lcom/google/android/gms/measurement/internal/zzo;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public zzgw()Lcom/google/android/gms/measurement/internal/zzl;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcp;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    return-object v0
.end method
