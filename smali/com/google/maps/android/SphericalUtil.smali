###### Class com.google.maps.android.SphericalUtil (com.google.maps.android.SphericalUtil)
.class public Lcom/google/maps/android/SphericalUtil;
.super Ljava/lang/Object;
.source "SphericalUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeAngleBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .registers 12
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "to"    # Lcom/google/android/gms/maps/model/LatLng;

    .line 165
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 165
    invoke-static/range {v2 .. v9}, Lcom/google/maps/android/SphericalUtil;->distanceRadians(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static computeArea(Ljava/util/List;)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)D"
        }
    .end annotation

    .line 203
    .local p0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-static {p0}, Lcom/google/maps/android/SphericalUtil;->computeSignedArea(Ljava/util/List;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .registers 6
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "to"    # Lcom/google/android/gms/maps/model/LatLng;

    .line 173
    invoke-static {p0, p1}, Lcom/google/maps/android/SphericalUtil;->computeAngleBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v0

    const-wide v2, 0x41584db040000000L    # 6371009.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static computeHeading(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .registers 22
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "to"    # Lcom/google/android/gms/maps/model/LatLng;

    .line 37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 38
    .local v2, "fromLat":D
    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 39
    .local v4, "fromLng":D
    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 40
    .local v6, "toLat":D
    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 41
    .local v8, "toLng":D
    sub-double v10, v8, v4

    .line 42
    .local v10, "dLng":D
    nop

    .line 43
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v12, v12, v14

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    .line 42
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    .line 45
    .local v12, "heading":D
    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    const-wide v16, -0x3f99800000000000L    # -180.0

    const-wide v18, 0x4066800000000000L    # 180.0

    invoke-static/range {v14 .. v19}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v14

    return-wide v14
.end method

.method public static computeLength(Ljava/util/List;)D
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)D"
        }
    .end annotation

    .line 180
    .local p0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    .line 181
    const-wide/16 v0, 0x0

    return-wide v0

    .line 183
    :cond_a
    const-wide/16 v0, 0x0

    .line 184
    .local v0, "length":D
    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 185
    .local v2, "prev":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 186
    .local v4, "prevLat":D
    iget-wide v6, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 187
    .local v6, "prevLng":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_25
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/google/android/gms/maps/model/LatLng;

    .line 188
    .local v15, "point":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v9, v15, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v17

    .line 189
    .local v17, "lat":D
    iget-wide v9, v15, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    .line 190
    .local v19, "lng":D
    move-wide v9, v4

    move-wide v11, v6

    move-wide/from16 v13, v17

    move-object/from16 v21, v15

    .end local v15    # "point":Lcom/google/android/gms/maps/model/LatLng;
    .local v21, "point":Lcom/google/android/gms/maps/model/LatLng;
    move-wide/from16 v15, v19

    invoke-static/range {v9 .. v16}, Lcom/google/maps/android/SphericalUtil;->distanceRadians(DDDD)D

    move-result-wide v9

    add-double/2addr v0, v9

    .line 191
    move-wide/from16 v4, v17

    .line 192
    move-wide/from16 v6, v19

    .line 193
    .end local v17    # "lat":D
    .end local v19    # "lng":D
    .end local v21    # "point":Lcom/google/android/gms/maps/model/LatLng;
    goto :goto_25

    .line 194
    :cond_50
    const-wide v8, 0x41584db040000000L    # 6371009.0

    mul-double v8, v8, v0

    return-wide v8
.end method

.method public static computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;
    .registers 34
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "distance"    # D
    .param p3, "heading"    # D

    .line 56
    move-object/from16 v0, p0

    const-wide v1, 0x41584db040000000L    # 6371009.0

    div-double v1, p1, v1

    .line 57
    .end local p1    # "distance":D
    .local v1, "distance":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 59
    .end local p3    # "heading":D
    .local v3, "heading":D
    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 60
    .local v5, "fromLat":D
    iget-wide v7, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 61
    .local v7, "fromLng":D
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 62
    .local v9, "cosDistance":D
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 63
    .local v11, "sinDistance":D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 64
    .local v13, "sinFromLat":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    .line 65
    .local v15, "cosFromLat":D
    mul-double v17, v9, v13

    mul-double v19, v11, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v17, v17, v19

    .line 66
    .local v17, "sinLat":D
    mul-double v19, v11, v15

    .line 67
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-wide/from16 v23, v1

    .end local v1    # "distance":D
    .local v23, "distance":D
    mul-double v0, v19, v21

    mul-double v19, v13, v17

    move-wide/from16 v25, v3

    .end local v3    # "heading":D
    .local v25, "heading":D
    sub-double v2, v9, v19

    .line 66
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 69
    .local v0, "dLng":D
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    add-double v19, v7, v0

    move-wide/from16 v27, v0

    .end local v0    # "dLng":D
    .local v27, "dLng":D
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v2
.end method

.method public static computeOffsetOrigin(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;
    .registers 45
    .param p0, "to"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "distance"    # D
    .param p3, "heading"    # D

    .line 82
    move-object/from16 v0, p0

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 83
    .end local p3    # "heading":D
    .local v1, "heading":D
    const-wide v3, 0x41584db040000000L    # 6371009.0

    div-double v3, p1, v3

    .line 85
    .end local p1    # "distance":D
    .local v3, "distance":D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 86
    .local v5, "n1":D
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    .line 87
    .local v7, "n2":D
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v9, v9, v11

    .line 88
    .local v9, "n3":D
    iget-wide v11, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 92
    .local v11, "n4":D
    mul-double v13, v5, v5

    .line 93
    .local v13, "n12":D
    mul-double v15, v7, v7

    mul-double v15, v15, v13

    mul-double v17, v13, v13

    add-double v15, v15, v17

    mul-double v17, v13, v11

    mul-double v17, v17, v11

    sub-double v15, v15, v17

    .line 94
    .local v15, "discriminant":D
    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    cmpg-double v20, v15, v18

    if-gez v20, :cond_48

    .line 96
    return-object v17

    .line 98
    :cond_48
    mul-double v18, v7, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    add-double v18, v18, v20

    .line 99
    .local v18, "b":D
    mul-double v20, v5, v5

    mul-double v22, v7, v7

    add-double v20, v20, v22

    move-wide/from16 v24, v1

    .end local v1    # "heading":D
    .local v24, "heading":D
    div-double v1, v18, v20

    .line 100
    .end local v18    # "b":D
    .local v1, "b":D
    mul-double v18, v7, v1

    sub-double v18, v11, v18

    move-wide/from16 v26, v3

    .end local v3    # "distance":D
    .local v26, "distance":D
    div-double v3, v18, v5

    .line 101
    .local v3, "a":D
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .line 102
    .local v18, "fromLatRadians":D
    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide v22, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v28, v18, v22

    if-ltz v28, :cond_78

    cmpl-double v28, v18, v20

    if-lez v28, :cond_8c

    .line 103
    :cond_78
    mul-double v28, v7, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    sub-double v28, v28, v30

    .line 104
    .end local v1    # "b":D
    .local v28, "b":D
    mul-double v1, v5, v5

    mul-double v30, v7, v7

    add-double v1, v1, v30

    div-double v1, v28, v1

    .line 105
    .end local v28    # "b":D
    .restart local v1    # "b":D
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .line 107
    :cond_8c
    cmpg-double v28, v18, v22

    if-ltz v28, :cond_cc

    cmpl-double v22, v18, v20

    if-lez v22, :cond_9d

    .line 109
    move-wide/from16 v32, v1

    move-wide/from16 v34, v3

    move-wide/from16 v36, v5

    move-wide/from16 v38, v7

    goto :goto_d4

    .line 111
    :cond_9d
    move-wide/from16 v32, v1

    .end local v1    # "b":D
    .local v32, "b":D
    iget-wide v1, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 112
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v22, v22, v7

    move-wide/from16 v34, v3

    .end local v3    # "a":D
    .local v34, "a":D
    sub-double v3, v20, v22

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 113
    .local v1, "fromLngRadians":D
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    move-wide/from16 v36, v5

    .end local v5    # "n1":D
    .local v36, "n1":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    move-wide/from16 v38, v7

    .end local v7    # "n2":D
    .local v38, "n2":D
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v3

    .line 109
    .end local v32    # "b":D
    .end local v34    # "a":D
    .end local v36    # "n1":D
    .end local v38    # "n2":D
    .local v1, "b":D
    .restart local v3    # "a":D
    .restart local v5    # "n1":D
    .restart local v7    # "n2":D
    :cond_cc
    move-wide/from16 v32, v1

    move-wide/from16 v34, v3

    move-wide/from16 v36, v5

    move-wide/from16 v38, v7

    .end local v1    # "b":D
    .end local v3    # "a":D
    .end local v5    # "n1":D
    .end local v7    # "n2":D
    .restart local v32    # "b":D
    .restart local v34    # "a":D
    .restart local v36    # "n1":D
    .restart local v38    # "n2":D
    :goto_d4
    return-object v17
.end method

.method public static computeSignedArea(Ljava/util/List;)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)D"
        }
    .end annotation

    .line 214
    .local p0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-wide v0, 0x41584db040000000L    # 6371009.0

    invoke-static {p0, v0, v1}, Lcom/google/maps/android/SphericalUtil;->computeSignedArea(Ljava/util/List;D)D

    move-result-wide v0

    return-wide v0
.end method

.method static computeSignedArea(Ljava/util/List;D)D
    .registers 28
    .param p1, "radius"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;D)D"
        }
    .end annotation

    .line 223
    .local p0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    .line 224
    .local v0, "size":I
    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    const-wide/16 v1, 0x0

    return-wide v1

    .line 225
    :cond_a
    const-wide/16 v1, 0x0

    .line 226
    .local v1, "total":D
    add-int/lit8 v3, v0, -0x1

    move-object/from16 v4, p0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    .line 227
    .local v3, "prev":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v5, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v5, v7, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    .line 228
    .local v5, "prevTanLat":D
    iget-wide v11, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 231
    .local v11, "prevLng":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_34
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/maps/model/LatLng;

    .line 232
    .local v14, "point":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v9, v14, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    sub-double v9, v7, v9

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v9, v9, v22

    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    .line 233
    .local v9, "tanLat":D
    iget-wide v7, v14, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 234
    .local v7, "lng":D
    move-object/from16 v24, v14

    .end local v14    # "point":Lcom/google/android/gms/maps/model/LatLng;
    .local v24, "point":Lcom/google/android/gms/maps/model/LatLng;
    move-wide v14, v9

    move-wide/from16 v16, v7

    move-wide/from16 v18, v5

    move-wide/from16 v20, v11

    invoke-static/range {v14 .. v21}, Lcom/google/maps/android/SphericalUtil;->polarTriangleArea(DDDD)D

    move-result-wide v14

    add-double/2addr v1, v14

    .line 235
    move-wide v5, v9

    .line 236
    move-wide v11, v7

    .line 237
    .end local v7    # "lng":D
    .end local v9    # "tanLat":D
    .end local v24    # "point":Lcom/google/android/gms/maps/model/LatLng;
    nop

    .line 231
    move-wide/from16 v9, v22

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_34

    .line 238
    :cond_6f
    mul-double v9, p1, p1

    mul-double v9, v9, v1

    return-wide v9
.end method

.method private static distanceRadians(DDDD)D
    .registers 14
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D

    .line 157
    sub-double v4, p2, p6

    move-wide v0, p0

    move-wide v2, p4

    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/maps/android/MathUtil;->arcHav(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static interpolate(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .registers 44
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "to"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "fraction"    # D

    .line 126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 127
    .local v4, "fromLat":D
    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 128
    .local v6, "fromLng":D
    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 129
    .local v8, "toLat":D
    iget-wide v10, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 130
    .local v10, "toLng":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 131
    .local v12, "cosFromLat":D
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 134
    .local v14, "cosToLat":D
    invoke-static/range {p0 .. p1}, Lcom/google/maps/android/SphericalUtil;->computeAngleBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v16

    .line 135
    .local v16, "angle":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 136
    .local v18, "sinAngle":D
    const-wide v20, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v22, v18, v20

    if-gez v22, :cond_36

    .line 137
    return-object v0

    .line 139
    :cond_36
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v20, v20, p2

    mul-double v20, v20, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    div-double v20, v20, v18

    .line 140
    .local v20, "a":D
    mul-double v22, p2, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    div-double v22, v22, v18

    .line 143
    .local v22, "b":D
    mul-double v24, v20, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    mul-double v26, v22, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v0, v24, v26

    .line 144
    .local v0, "x":D
    mul-double v24, v20, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    mul-double v26, v22, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v2, v24, v26

    .line 145
    .local v2, "y":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v24, v24, v20

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v26, v26, v22

    move-wide/from16 v30, v4

    .end local v4    # "fromLat":D
    .local v30, "fromLat":D
    add-double v4, v24, v26

    .line 148
    .local v4, "z":D
    mul-double v24, v0, v0

    mul-double v26, v2, v2

    add-double v24, v24, v26

    move-wide/from16 v32, v6

    .end local v6    # "fromLng":D
    .local v32, "fromLng":D
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 149
    .local v6, "lat":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v24

    .line 150
    .local v24, "lng":D
    move-wide/from16 v34, v0

    .end local v0    # "x":D
    .local v34, "x":D
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    move-wide/from16 v36, v2

    .end local v2    # "y":D
    .local v36, "y":D
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    move-wide/from16 v38, v4

    .end local v4    # "z":D
    .local v38, "z":D
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private static polarTriangleArea(DDDD)D
    .registers 18
    .param p0, "tan1"    # D
    .param p2, "lng1"    # D
    .param p4, "tan2"    # D
    .param p6, "lng2"    # D

    .line 249
    sub-double v0, p2, p6

    .line 250
    .local v0, "deltaLng":D
    mul-double v2, p0, p4

    .line 251
    .local v2, "t":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v6

    return-wide v4
.end method
