###### Class com.google.android.gms.measurement.internal.zzbl (com.google.android.gms.measurement.internal.zzbl)
.class final Lcom/google/android/gms/measurement/internal/zzbl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaop:Lcom/google/android/gms/measurement/internal/zzbu;

.field private final synthetic zzaoq:Lcom/google/android/gms/measurement/internal/zzaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbk;Lcom/google/android/gms/measurement/internal/zzbu;Lcom/google/android/gms/measurement/internal/zzaq;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbl;->zzaop:Lcom/google/android/gms/measurement/internal/zzbu;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbl;->zzaoq:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbl;->zzaop:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkk()Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object v0

    if-nez v0, :cond_14

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbl;->zzaoq:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Install Referrer Reporter is null"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 4
    return-void

    .line 5
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbl;->zzaop:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzkk()Lcom/google/android/gms/measurement/internal/zzbh;

    move-result-object v0

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgg()V

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbh;->zzcg(Ljava/lang/String;)V

    .line 8
    return-void
.end method
