###### Class com.google.android.gms.measurement.internal.zzej (com.google.android.gms.measurement.internal.zzej)
.class final Lcom/google/android/gms/measurement/internal/zzej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaqv:Lcom/google/android/gms/measurement/internal/zzi;

.field private final synthetic zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

.field private final synthetic zzasx:Z

.field private final synthetic zzasy:Z

.field private final synthetic zzasz:Lcom/google/android/gms/measurement/internal/zzm;

.field private final synthetic zzata:Lcom/google/android/gms/measurement/internal/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzdz;ZZLcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzi;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasx:Z

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasy:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasz:Lcom/google/android/gms/measurement/internal/zzm;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzaqv:Lcom/google/android/gms/measurement/internal/zzi;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzata:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzd(Lcom/google/android/gms/measurement/internal/zzdz;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    .line 3
    if-nez v0, :cond_18

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 7
    return-void

    .line 8
    :cond_18
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasx:Z

    if-eqz v1, :cond_2c

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasy:Z

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    goto :goto_26

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasz:Lcom/google/android/gms/measurement/internal/zzm;

    :goto_26
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzaqv:Lcom/google/android/gms/measurement/internal/zzi;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzdz;->zza(Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzi;)V

    goto :goto_54

    .line 10
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzata:Lcom/google/android/gms/measurement/internal/zzm;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzm;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasz:Lcom/google/android/gms/measurement/internal/zzm;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzaqv:Lcom/google/android/gms/measurement/internal/zzi;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzi;)V

    goto :goto_54

    .line 12
    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasz:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zzb(Lcom/google/android/gms/measurement/internal/zzm;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_43} :catch_44

    .line 13
    goto :goto_54

    .line 14
    :catch_44
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :goto_54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zze(Lcom/google/android/gms/measurement/internal/zzdz;)V

    .line 19
    return-void
.end method
