###### Class com.google.android.gms.measurement.AppMeasurementInstallReferrerReceiver (com.google.android.gms.measurement.AppMeasurementInstallReferrerReceiver)
.class public final Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzbn;


# instance fields
.field private zzadq:Lcom/google/android/gms/measurement/internal/zzbk;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final doGoAsync()Landroid/content/BroadcastReceiver$PendingResult;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public final doStartService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 8
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 2
    nop

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->zzadq:Lcom/google/android/gms/measurement/internal/zzbk;

    if-nez v0, :cond_c

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzbk;-><init>(Lcom/google/android/gms/measurement/internal/zzbn;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->zzadq:Lcom/google/android/gms/measurement/internal/zzbk;

    .line 5
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementInstallReferrerReceiver;->zzadq:Lcom/google/android/gms/measurement/internal/zzbk;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzbk;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 7
    return-void
.end method
