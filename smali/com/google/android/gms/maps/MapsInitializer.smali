###### Class com.google.android.gms.maps.MapsInitializer (com.google.android.gms.maps.MapsInitializer)
.class public final Lcom/google/android/gms/maps/MapsInitializer;
.super Ljava/lang/Object;


# static fields
.field private static zzbm:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "MapsInitializer.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/maps/MapsInitializer;->zzbm:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)I
    .registers 4

    const-class v0, Lcom/google/android/gms/maps/MapsInitializer;

    monitor-enter v0

    .line 1
    :try_start_3
    const-string v1, "Context is null"

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-boolean v1, Lcom/google/android/gms/maps/MapsInitializer;->zzbm:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_35

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 3
    monitor-exit v0

    return v2

    .line 4
    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/zzbz;->zza(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/zze;

    move-result-object p0
    :try_end_13
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_f .. :try_end_13} :catch_30
    .catchall {:try_start_f .. :try_end_13} :catchall_35

    .line 5
    nop

    .line 7
    nop

    .line 8
    :try_start_15
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/zze;->zze()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zza(Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;)V

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/maps/internal/zze;->zzf()Lcom/google/android/gms/internal/maps/zze;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->zza(Lcom/google/android/gms/internal/maps/zze;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_23} :catch_29
    .catchall {:try_start_15 .. :try_end_23} :catchall_35

    .line 10
    nop

    .line 13
    const/4 p0, 0x1

    :try_start_25
    sput-boolean p0, Lcom/google/android/gms/maps/MapsInitializer;->zzbm:Z
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_35

    .line 14
    monitor-exit v0

    return v2

    .line 11
    :catch_29
    move-exception p0

    .line 12
    :try_start_2a
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 6
    :catch_30
    move-exception p0

    iget p0, p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_35

    monitor-exit v0

    return p0

    .line 0
    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method
