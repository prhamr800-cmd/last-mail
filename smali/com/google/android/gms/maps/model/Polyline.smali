###### Class com.google.android.gms.maps.model.Polyline (com.google.android.gms.maps.model.Polyline)
.class public final Lcom/google/android/gms/maps/model/Polyline;
.super Ljava/lang/Object;


# instance fields
.field private final zzeb:Lcom/google/android/gms/internal/maps/zzz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzz;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/maps/zzz;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    .line 3
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 97
    instance-of v0, p1, Lcom/google/android/gms/maps/model/Polyline;

    if-nez v0, :cond_6

    .line 98
    const/4 p1, 0x0

    return p1

    .line 99
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    check-cast p1, Lcom/google/android/gms/maps/model/Polyline;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->zzb(Lcom/google/android/gms/internal/maps/zzz;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return p1

    .line 100
    :catch_11
    move-exception p1

    .line 101
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final getColor()I
    .registers 3

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->getColor()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 30
    :catch_7
    move-exception v0

    .line 31
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getEndCap()Lcom/google/android/gms/maps/model/Cap;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->getEndCap()Lcom/google/android/gms/maps/model/Cap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Cap;->zzh()Lcom/google/android/gms/maps/model/Cap;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 46
    :catch_b
    move-exception v0

    .line 47
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getId()Ljava/lang/String;
    .registers 3

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 9
    :catch_7
    move-exception v0

    .line 10
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getJointType()I
    .registers 3

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->getJointType()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 53
    :catch_7
    move-exception v0

    .line 54
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getPattern()Ljava/util/List;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->getPattern()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/PatternItem;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 60
    :catch_b
    move-exception v0

    .line 61
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getPoints()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->getPoints()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 16
    :catch_7
    move-exception v0

    .line 17
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getStartCap()Lcom/google/android/gms/maps/model/Cap;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->getStartCap()Lcom/google/android/gms/maps/model/Cap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Cap;->zzh()Lcom/google/android/gms/maps/model/Cap;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 38
    :catch_b
    move-exception v0

    .line 39
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getTag()Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->zzk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 95
    :catch_b
    move-exception v0

    .line 96
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getWidth()F
    .registers 3

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->getWidth()F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 23
    :catch_7
    move-exception v0

    .line 24
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getZIndex()F
    .registers 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->getZIndex()F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 67
    :catch_7
    move-exception v0

    .line 68
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .registers 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->zzj()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 103
    :catch_7
    move-exception v0

    .line 104
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isClickable()Z
    .registers 3

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->isClickable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 88
    :catch_7
    move-exception v0

    .line 89
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isGeodesic()Z
    .registers 3

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->isGeodesic()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 81
    :catch_7
    move-exception v0

    .line 82
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isVisible()Z
    .registers 3

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->isVisible()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 74
    :catch_7
    move-exception v0

    .line 75
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final remove()V
    .registers 3

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzz;->remove()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 5
    return-void

    .line 6
    :catch_6
    move-exception v0

    .line 7
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setClickable(Z)V
    .registers 3

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->setClickable(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 84
    return-void

    .line 85
    :catch_6
    move-exception p1

    .line 86
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setColor(I)V
    .registers 3

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->setColor(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 26
    return-void

    .line 27
    :catch_6
    move-exception p1

    .line 28
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setEndCap(Lcom/google/android/gms/maps/model/Cap;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/maps/model/Cap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    const-string v0, "endCap must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->setEndCap(Lcom/google/android/gms/maps/model/Cap;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 42
    return-void

    .line 43
    :catch_b
    move-exception p1

    .line 44
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setGeodesic(Z)V
    .registers 3

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->setGeodesic(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 77
    return-void

    .line 78
    :catch_6
    move-exception p1

    .line 79
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setJointType(I)V
    .registers 3

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->setJointType(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 49
    return-void

    .line 50
    :catch_6
    move-exception p1

    .line 51
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setPattern(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->setPattern(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 56
    return-void

    .line 57
    :catch_6
    move-exception p1

    .line 58
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setPoints(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->setPoints(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 12
    return-void

    .line 13
    :catch_6
    move-exception p1

    .line 14
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setStartCap(Lcom/google/android/gms/maps/model/Cap;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/maps/model/Cap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    const-string v0, "startCap must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->setStartCap(Lcom/google/android/gms/maps/model/Cap;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 34
    return-void

    .line 35
    :catch_b
    move-exception p1

    .line 36
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setTag(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 91
    return-void

    .line 92
    :catch_a
    move-exception p1

    .line 93
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setVisible(Z)V
    .registers 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->setVisible(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 70
    return-void

    .line 71
    :catch_6
    move-exception p1

    .line 72
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setWidth(F)V
    .registers 3

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->setWidth(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 19
    return-void

    .line 20
    :catch_6
    move-exception p1

    .line 21
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setZIndex(F)V
    .registers 3

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polyline;->zzeb:Lcom/google/android/gms/internal/maps/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzz;->setZIndex(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 63
    return-void

    .line 64
    :catch_6
    move-exception p1

    .line 65
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
