###### Class com.google.android.gms.measurement.internal.zzes (com.google.android.gms.measurement.internal.zzes)
.class final Lcom/google/android/gms/measurement/internal/zzes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzate:Lcom/google/android/gms/measurement/internal/zzeo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzate:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzate:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeo;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzate:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeo;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzate:Lcom/google/android/gms/measurement/internal/zzeo;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzeo;->zzasv:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 5
    nop

    .line 6
    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zza(Lcom/google/android/gms/measurement/internal/zzdz;Landroid/content/ComponentName;)V

    .line 8
    return-void
.end method
