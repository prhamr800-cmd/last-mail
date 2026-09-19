###### Class com.google.maps.android.projection.SphericalMercatorProjection (com.google.maps.android.projection.SphericalMercatorProjection)
.class public Lcom/google/maps/android/projection/SphericalMercatorProjection;
.super Ljava/lang/Object;
.source "SphericalMercatorProjection.java"


# instance fields
.field final mWorldWidth:D


# direct methods
.method public constructor <init>(D)V
    .registers 3
    .param p1, "worldWidth"    # D

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/google/maps/android/projection/SphericalMercatorProjection;->mWorldWidth:D

    .line 26
    return-void
.end method


# virtual methods
.method public toLatLng(Lcom/google/maps/android/geometry/Point;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 14
    .param p1, "point"    # Lcom/google/maps/android/geometry/Point;

    .line 38
    iget-wide v0, p1, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v2, p0, Lcom/google/maps/android/projection/SphericalMercatorProjection;->mWorldWidth:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    .line 39
    .local v0, "x":D
    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double v4, v4, v0

    .line 41
    .local v4, "lng":D
    iget-wide v6, p1, Lcom/google/maps/android/geometry/Point;->y:D

    iget-wide v8, p0, Lcom/google/maps/android/projection/SphericalMercatorProjection;->mWorldWidth:D

    div-double/2addr v6, v8

    sub-double/2addr v2, v6

    .line 42
    .local v2, "y":D
    neg-double v6, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    const-wide v8, 0x4056800000000000L    # 90.0

    sub-double/2addr v8, v6

    .line 44
    .local v8, "lat":D
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v6, v8, v9, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v6
.end method

.method public toPoint(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/android/projection/Point;
    .registers 14
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .line 30
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    .line 31
    .local v0, "x":D
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 32
    .local v4, "siny":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v8, v4, v6

    sub-double/2addr v6, v4

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    const-wide v8, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    div-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 34
    .local v6, "y":D
    new-instance v2, Lcom/google/maps/android/projection/Point;

    iget-wide v8, p0, Lcom/google/maps/android/projection/SphericalMercatorProjection;->mWorldWidth:D

    mul-double v8, v8, v0

    iget-wide v10, p0, Lcom/google/maps/android/projection/SphericalMercatorProjection;->mWorldWidth:D

    mul-double v10, v10, v6

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/google/maps/android/projection/Point;-><init>(DD)V

    return-object v2
.end method
