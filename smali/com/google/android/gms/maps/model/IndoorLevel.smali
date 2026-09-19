###### Class com.google.android.gms.maps.model.IndoorLevel (com.google.android.gms.maps.model.IndoorLevel)
.class public final Lcom/google/android/gms/maps/model/IndoorLevel;
.super Ljava/lang/Object;


# instance fields
.field private final zzdg:Lcom/google/android/gms/internal/maps/zzq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzq;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/maps/zzq;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    .line 3
    return-void
.end method


# virtual methods
.method public final activate()V
    .registers 3

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzq;->activate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 11
    return-void

    .line 12
    :catch_6
    move-exception v0

    .line 13
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 14
    instance-of v0, p1, Lcom/google/android/gms/maps/model/IndoorLevel;

    if-nez v0, :cond_6

    .line 15
    const/4 p1, 0x0

    return p1

    .line 16
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    check-cast p1, Lcom/google/android/gms/maps/model/IndoorLevel;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzq;->zzb(Lcom/google/android/gms/internal/maps/zzq;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return p1

    .line 17
    :catch_11
    move-exception p1

    .line 18
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzq;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 5
    :catch_7
    move-exception v0

    .line 6
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getShortName()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzq;->getShortName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 8
    :catch_7
    move-exception v0

    .line 9
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .registers 3

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorLevel;->zzdg:Lcom/google/android/gms/internal/maps/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzq;->zzj()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 20
    :catch_7
    move-exception v0

    .line 21
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
