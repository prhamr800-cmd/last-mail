###### Class com.google.maps.android.MathUtil (com.google.maps.android.MathUtil)
.class Lcom/google/maps/android/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field static final EARTH_RADIUS:D = 6371009.0


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static arcHav(D)D
    .registers 6
    .param p0, "x"    # D

    .line 87
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method static clamp(DDD)D
    .registers 8
    .param p0, "x"    # D
    .param p2, "low"    # D
    .param p4, "high"    # D

    .line 35
    cmpg-double v0, p0, p2

    if-gez v0, :cond_6

    move-wide v0, p2

    goto :goto_d

    :cond_6
    cmpl-double v0, p0, p4

    if-lez v0, :cond_c

    move-wide v0, p4

    goto :goto_d

    :cond_c
    move-wide v0, p0

    :goto_d
    return-wide v0
.end method

.method static hav(D)D
    .registers 6
    .param p0, "x"    # D

    .line 77
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 78
    .local v0, "sinHalf":D
    mul-double v2, v0, v0

    return-wide v2
.end method

.method static havDistance(DDD)D
    .registers 12
    .param p0, "lat1"    # D
    .param p2, "lat2"    # D
    .param p4, "dLng"    # D

    .line 112
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method static havFromSin(D)D
    .registers 8
    .param p0, "x"    # D

    .line 97
    mul-double v0, p0, p0

    .line 98
    .local v0, "x2":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v4, v2

    div-double v2, v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    return-wide v2
.end method

.method static inverseMercator(D)D
    .registers 6
    .param p0, "y"    # D

    .line 69
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method static mercator(D)D
    .registers 6
    .param p0, "lat"    # D

    .line 62
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, p0

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static mod(DD)D
    .registers 6
    .param p0, "x"    # D
    .param p2, "m"    # D

    .line 54
    rem-double v0, p0, p2

    add-double/2addr v0, p2

    rem-double/2addr v0, p2

    return-wide v0
.end method

.method static sinFromHav(D)D
    .registers 6
    .param p0, "h"    # D

    .line 92
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method static sinSumFromHav(DD)D
    .registers 14
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 103
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p0

    mul-double v2, v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 104
    .local v2, "a":D
    sub-double/2addr v0, p2

    mul-double v0, v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 105
    .local v0, "b":D
    add-double v4, v2, v0

    mul-double v6, v2, p2

    mul-double v8, v0, p0

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v8

    sub-double/2addr v4, v6

    mul-double v4, v4, v8

    return-wide v4
.end method

.method static wrap(DDD)D
    .registers 10
    .param p0, "n"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .line 45
    cmpl-double v0, p0, p2

    if-ltz v0, :cond_a

    cmpg-double v0, p0, p4

    if-gez v0, :cond_a

    move-wide v0, p0

    goto :goto_14

    :cond_a
    const/4 v0, 0x0

    sub-double v0, p0, p2

    sub-double v2, p4, p2

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/android/MathUtil;->mod(DD)D

    move-result-wide v0

    add-double/2addr v0, p2

    :goto_14
    return-wide v0
.end method
