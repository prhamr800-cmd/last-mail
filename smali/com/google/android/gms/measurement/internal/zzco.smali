###### Class com.google.android.gms.measurement.internal.zzco (com.google.android.gms.measurement.internal.zzco)
.class final Lcom/google/android/gms/measurement/internal/zzco;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaeq:Ljava/lang/String;

.field private final synthetic zzaqw:Lcom/google/android/gms/measurement/internal/zzbw;

.field private final synthetic zzaqy:Ljava/lang/String;

.field private final synthetic zzarb:Ljava/lang/String;

.field private final synthetic zzarc:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzaqw:Lcom/google/android/gms/measurement/internal/zzbw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzarb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzaqy:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzaeq:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzarc:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzarb:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzaqw:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzbw;)Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmh()Lcom/google/android/gms/measurement/internal/zzbu;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzaqy:Ljava/lang/String;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzdw;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)V

    .line 7
    return-void

    .line 8
    :cond_19
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzaeq:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzarb:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzarc:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdv;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzaqw:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Lcom/google/android/gms/measurement/internal/zzbw;)Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzmh()Lcom/google/android/gms/measurement/internal/zzbu;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzco;->zzaqy:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzdw;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdv;)V

    .line 13
    return-void
.end method
