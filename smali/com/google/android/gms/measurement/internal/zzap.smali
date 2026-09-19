###### Class com.google.android.gms.measurement.internal.zzap (com.google.android.gms.measurement.internal.zzap)
.class public final Lcom/google/android/gms/measurement/internal/zzap;
.super Lcom/google/android/gms/common/internal/BaseGmsClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/BaseGmsClient<",
        "Lcom/google/android/gms/measurement/internal/zzah;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    .registers 12

    .line 1
    const/16 v3, 0x5d

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4

    .line 6
    nop

    .line 7
    nop

    .line 8
    if-nez p1, :cond_6

    .line 9
    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_6
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/android/gms/measurement/internal/zzah;

    if-eqz v1, :cond_13

    .line 12
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzah;

    return-object v0

    .line 13
    :cond_13
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Landroid/os/IBinder;)V

    .line 14
    return-object v0
.end method

.method public final getMinApkVersion()I
    .registers 2

    .line 5
    const v0, 0xbdfcb8

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 4
    const-string v0, "com.google.android.gms.measurement.START"

    return-object v0
.end method
