###### Class com.google.android.gms.maps.model.Polygon (com.google.android.gms.maps.model.Polygon)
.class public final Lcom/google/android/gms/maps/model/Polygon;
.super Ljava/lang/Object;


# instance fields
.field private final zzdw:Lcom/google/android/gms/internal/maps/zzw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzw;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/maps/zzw;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    .line 3
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 95
    instance-of v0, p1, Lcom/google/android/gms/maps/model/Polygon;

    if-nez v0, :cond_6

    .line 96
    const/4 p1, 0x0

    return p1

    .line 97
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    check-cast p1, Lcom/google/android/gms/maps/model/Polygon;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->zzb(Lcom/google/android/gms/internal/maps/zzw;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return p1

    .line 98
    :catch_11
    move-exception p1

    .line 99
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final getFillColor()I
    .registers 3

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->getFillColor()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 58
    :catch_7
    move-exception v0

    .line 59
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getHoles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->getHoles()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 23
    :catch_7
    move-exception v0

    .line 24
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getId()Ljava/lang/String;
    .registers 3

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->getId()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->getPoints()Ljava/util/List;

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

.method public final getStrokeColor()I
    .registers 3

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->getStrokeColor()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 37
    :catch_7
    move-exception v0

    .line 38
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getStrokeJointType()I
    .registers 3

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->getStrokeJointType()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 44
    :catch_7
    move-exception v0

    .line 45
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getStrokePattern()Ljava/util/List;
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

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->getStrokePattern()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/PatternItem;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 51
    :catch_b
    move-exception v0

    .line 52
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getStrokeWidth()F
    .registers 3

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->getStrokeWidth()F

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

.method public final getTag()Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->zzk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 93
    :catch_b
    move-exception v0

    .line 94
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getZIndex()F
    .registers 3

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->getZIndex()F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 65
    :catch_7
    move-exception v0

    .line 66
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .registers 3

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->zzj()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 101
    :catch_7
    move-exception v0

    .line 102
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isClickable()Z
    .registers 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->isClickable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 86
    :catch_7
    move-exception v0

    .line 87
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isGeodesic()Z
    .registers 3

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->isGeodesic()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 79
    :catch_7
    move-exception v0

    .line 80
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isVisible()Z
    .registers 3

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->isVisible()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 72
    :catch_7
    move-exception v0

    .line 73
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final remove()V
    .registers 3

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzw;->remove()V
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

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->setClickable(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 82
    return-void

    .line 83
    :catch_6
    move-exception p1

    .line 84
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setFillColor(I)V
    .registers 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->setFillColor(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 54
    return-void

    .line 55
    :catch_6
    move-exception p1

    .line 56
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setGeodesic(Z)V
    .registers 3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->setGeodesic(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 75
    return-void

    .line 76
    :catch_6
    move-exception p1

    .line 77
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setHoles(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->setHoles(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->setPoints(Ljava/util/List;)V
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

.method public final setStrokeColor(I)V
    .registers 3

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->setStrokeColor(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 33
    return-void

    .line 34
    :catch_6
    move-exception p1

    .line 35
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setStrokeJointType(I)V
    .registers 3

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->setStrokeJointType(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 40
    return-void

    .line 41
    :catch_6
    move-exception p1

    .line 42
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setStrokePattern(Ljava/util/List;)V
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

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->setStrokePattern(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 47
    return-void

    .line 48
    :catch_6
    move-exception p1

    .line 49
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setStrokeWidth(F)V
    .registers 3

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->setStrokeWidth(F)V
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

.method public final setTag(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 89
    return-void

    .line 90
    :catch_a
    move-exception p1

    .line 91
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setVisible(Z)V
    .registers 3

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->setVisible(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 68
    return-void

    .line 69
    :catch_6
    move-exception p1

    .line 70
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final setZIndex(F)V
    .registers 3

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Polygon;->zzdw:Lcom/google/android/gms/internal/maps/zzw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzw;->setZIndex(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 61
    return-void

    .line 62
    :catch_6
    move-exception p1

    .line 63
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
