###### Class com.google.maps.android.PolyUtil (com.google.maps.android.PolyUtil)
.class public Lcom/google/maps/android/PolyUtil;
.super Ljava/lang/Object;
.source "PolyUtil.java"


# static fields
.field private static final DEFAULT_TOLERANCE:D = 0.1


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsLocation(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;Z)Z
    .registers 35
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "geodesic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    .line 99
    .local p1, "polygon":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 100
    .local v1, "size":I
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 101
    return v2

    .line 103
    :cond_a
    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 104
    .local v3, "lat3":D
    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 105
    .local v16, "lng3":D
    add-int/lit8 v5, v1, -0x1

    move-object/from16 v15, p1

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/google/android/gms/maps/model/LatLng;

    .line 106
    .local v13, "prev":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v5, v13, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 107
    .local v5, "lat1":D
    iget-wide v7, v13, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 108
    .local v7, "lng1":D
    const/4 v9, 0x0

    .line 109
    .local v9, "nIntersect":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-wide/from16 v21, v5

    move-wide/from16 v19, v7

    move/from16 v23, v9

    .end local v5    # "lat1":D
    .end local v7    # "lng1":D
    .end local v9    # "nIntersect":I
    .local v19, "lng1":D
    .local v21, "lat1":D
    .local v23, "nIntersect":I
    :goto_38
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_9c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/google/android/gms/maps/model/LatLng;

    .line 110
    .local v14, "point2":Lcom/google/android/gms/maps/model/LatLng;
    sub-double v7, v16, v19

    const-wide v9, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    invoke-static/range {v7 .. v12}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v24

    .line 112
    .local v24, "dLng3":D
    cmpl-double v5, v3, v21

    if-nez v5, :cond_61

    const-wide/16 v7, 0x0

    cmpl-double v5, v24, v7

    if-nez v5, :cond_61

    .line 113
    return v6

    .line 115
    :cond_61
    iget-wide v5, v14, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v26

    .line 116
    .local v26, "lat2":D
    iget-wide v5, v14, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    .line 118
    .local v28, "lng2":D
    sub-double v5, v28, v19

    const-wide v7, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    invoke-static/range {v5 .. v10}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v9

    move-wide/from16 v5, v21

    move-wide/from16 v7, v26

    move-wide v11, v3

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    .end local v13    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    .end local v14    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    .local v30, "prev":Lcom/google/android/gms/maps/model/LatLng;
    .local v31, "point2":Lcom/google/android/gms/maps/model/LatLng;
    move-wide/from16 v13, v24

    move/from16 v15, p2

    invoke-static/range {v5 .. v15}, Lcom/google/maps/android/PolyUtil;->intersects(DDDDDZ)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 119
    add-int/lit8 v23, v23, 0x1

    .line 121
    :cond_92
    move-wide/from16 v21, v26

    .line 122
    move-wide/from16 v19, v28

    .line 123
    .end local v24    # "dLng3":D
    .end local v26    # "lat2":D
    .end local v28    # "lng2":D
    .end local v31    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    nop

    .line 109
    move-object/from16 v15, p1

    move-object/from16 v13, v30

    goto :goto_38

    .line 124
    .end local v30    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v13    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    :cond_9c
    move-object/from16 v30, v13

    .end local v13    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v30    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    and-int/lit8 v5, v23, 0x1

    if-eqz v5, :cond_a4

    const/4 v2, 0x1

    nop

    :cond_a4
    return v2
.end method

.method public static decode(Ljava/lang/String;)Ljava/util/List;
    .registers 18
    .param p0, "encodedPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 437
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 441
    .local v1, "len":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v2, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v3, 0x0

    .line 443
    .local v3, "index":I
    const/4 v4, 0x0

    .line 444
    .local v4, "lat":I
    move v6, v4

    move v4, v3

    const/4 v3, 0x0

    .line 446
    .local v3, "lng":I
    .local v4, "index":I
    .local v6, "lat":I
    :goto_10
    if-ge v4, v1, :cond_79

    .line 447
    const/4 v7, 0x1

    .line 448
    .local v7, "result":I
    move v8, v7

    move v7, v4

    const/4 v4, 0x0

    .line 451
    .local v4, "shift":I
    .local v7, "index":I
    .local v8, "result":I
    :goto_16
    add-int/lit8 v9, v7, 0x1

    .local v9, "index":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .end local v7    # "index":I
    add-int/lit8 v7, v7, -0x3f

    add-int/lit8 v7, v7, -0x1

    .line 452
    .local v7, "b":I
    shl-int v10, v7, v4

    add-int/2addr v8, v10

    .line 453
    add-int/lit8 v4, v4, 0x5

    .line 454
    const/16 v10, 0x1f

    if-ge v7, v10, :cond_77

    .line 455
    and-int/lit8 v11, v8, 0x1

    if-eqz v11, :cond_32

    shr-int/lit8 v11, v8, 0x1

    xor-int/lit8 v11, v11, -0x1

    goto :goto_34

    :cond_32
    shr-int/lit8 v11, v8, 0x1

    :goto_34
    add-int/2addr v11, v6

    .line 457
    .end local v6    # "lat":I
    .local v11, "lat":I
    const/4 v6, 0x1

    .line 458
    .end local v8    # "result":I
    .local v6, "result":I
    const/4 v4, 0x0

    .line 460
    :goto_37
    add-int/lit8 v8, v9, 0x1

    .local v8, "index":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .end local v9    # "index":I
    add-int/lit8 v9, v9, -0x3f

    add-int/lit8 v7, v9, -0x1

    .line 461
    shl-int v9, v7, v4

    add-int/2addr v6, v9

    .line 462
    add-int/lit8 v4, v4, 0x5

    .line 463
    if-ge v7, v10, :cond_73

    .line 464
    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_51

    shr-int/lit8 v9, v6, 0x1

    xor-int/lit8 v9, v9, -0x1

    goto :goto_53

    :cond_51
    shr-int/lit8 v9, v6, 0x1

    :goto_53
    add-int/2addr v3, v9

    .line 466
    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    move/from16 v16, v6

    .end local v6    # "result":I
    .local v16, "result":I
    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v14

    invoke-direct {v9, v12, v13, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v4    # "shift":I
    .end local v7    # "b":I
    .end local v16    # "result":I
    nop

    .line 444
    move v4, v8

    move v6, v11

    goto :goto_10

    .line 460
    .restart local v4    # "shift":I
    .restart local v6    # "result":I
    .restart local v7    # "b":I
    :cond_73
    move/from16 v16, v6

    move v9, v8

    .end local v6    # "result":I
    .restart local v16    # "result":I
    goto :goto_37

    .line 448
    .end local v7    # "b":I
    .end local v11    # "lat":I
    .end local v16    # "result":I
    .local v6, "lat":I
    .local v8, "result":I
    .restart local v9    # "index":I
    :cond_77
    move v7, v9

    goto :goto_16

    .line 469
    .end local v8    # "result":I
    .end local v9    # "index":I
    .local v4, "index":I
    :cond_79
    return-object v2
.end method

.method public static distanceToLine(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .registers 36
    .param p0, "p"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "start"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "end"    # Lcom/google/android/gms/maps/model/LatLng;

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 408
    invoke-static {v2, v0}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    .line 411
    :cond_f
    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 412
    .local v3, "s0lat":D
    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 413
    .local v5, "s0lng":D
    iget-wide v7, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 414
    .local v7, "s1lat":D
    iget-wide v9, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 415
    .local v9, "s1lng":D
    iget-wide v11, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 416
    .local v11, "s2lat":D
    iget-wide v13, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 418
    .local v13, "s2lng":D
    sub-double v15, v11, v7

    .line 419
    .local v15, "s2s1lat":D
    sub-double v17, v13, v9

    .line 420
    .local v17, "s2s1lng":D
    sub-double v19, v3, v7

    mul-double v19, v19, v15

    sub-double v21, v5, v9

    mul-double v21, v21, v17

    add-double v19, v19, v21

    mul-double v21, v15, v15

    mul-double v23, v17, v17

    add-double v21, v21, v23

    div-double v19, v19, v21

    .line 422
    .local v19, "u":D
    const-wide/16 v21, 0x0

    cmpg-double v23, v19, v21

    if-gtz v23, :cond_54

    .line 423
    invoke-static/range {p0 .. p1}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v21

    return-wide v21

    .line 425
    :cond_54
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    cmpl-double v23, v19, v21

    if-ltz v23, :cond_5f

    .line 426
    invoke-static {v0, v2}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v21

    return-wide v21

    .line 428
    :cond_5f
    move-wide/from16 v25, v3

    .end local v3    # "s0lat":D
    .local v25, "s0lat":D
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    move-wide/from16 v27, v5

    .end local v5    # "s0lng":D
    .local v27, "s0lng":D
    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v29, v7

    .end local v7    # "s1lat":D
    .local v29, "s1lat":D
    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v31, v9

    .end local v9    # "s1lng":D
    .local v31, "s1lng":D
    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 429
    .local v3, "sa":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v5, v7

    mul-double v5, v5, v19

    iget-wide v7, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v9, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v7, v9

    mul-double v7, v7, v19

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 430
    .local v4, "sb":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v3, v4}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v5

    return-wide v5
.end method

.method public static encode(Ljava/util/List;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 476
    .local p0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-wide/16 v0, 0x0

    .line 477
    .local v0, "lastLat":J
    const-wide/16 v2, 0x0

    .line 479
    .local v2, "lastLng":J
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 481
    .local v4, "result":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/LatLng;

    .line 482
    .local v6, "point":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v7, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide v9, 0x40f86a0000000000L    # 100000.0

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    .line 483
    .local v7, "lat":J
    iget-wide v11, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double v11, v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 485
    .local v9, "lng":J
    sub-long v11, v7, v0

    .line 486
    .local v11, "dLat":J
    sub-long v13, v9, v2

    .line 488
    .local v13, "dLng":J
    invoke-static {v11, v12, v4}, Lcom/google/maps/android/PolyUtil;->encode(JLjava/lang/StringBuffer;)V

    .line 489
    invoke-static {v13, v14, v4}, Lcom/google/maps/android/PolyUtil;->encode(JLjava/lang/StringBuffer;)V

    .line 491
    move-wide v0, v7

    .line 492
    move-wide v2, v9

    .line 493
    .end local v6    # "point":Lcom/google/android/gms/maps/model/LatLng;
    .end local v7    # "lat":J
    .end local v9    # "lng":J
    .end local v11    # "dLat":J
    .end local v13    # "dLng":J
    goto :goto_d

    .line 494
    :cond_3b
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static encode(JLjava/lang/StringBuffer;)V
    .registers 9
    .param p0, "v"    # J
    .param p2, "result"    # Ljava/lang/StringBuffer;

    .line 498
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gez v3, :cond_d

    shl-long v0, p0, v0

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    goto :goto_f

    :cond_d
    shl-long v0, p0, v0

    :goto_f
    move-wide p0, v0

    .line 499
    :goto_10
    const-wide/16 v0, 0x3f

    const-wide/16 v2, 0x20

    cmp-long v4, p0, v2

    if-ltz v4, :cond_28

    .line 500
    const-wide/16 v4, 0x1f

    and-long/2addr v4, p0

    or-long/2addr v2, v4

    add-long/2addr v2, v0

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 501
    const/4 v0, 0x5

    shr-long/2addr p0, v0

    goto :goto_10

    .line 503
    :cond_28
    const/4 v2, 0x0

    add-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 504
    return-void
.end method

.method private static intersects(DDDDDZ)Z
    .registers 25
    .param p0, "lat1"    # D
    .param p2, "lat2"    # D
    .param p4, "lng2"    # D
    .param p6, "lat3"    # D
    .param p8, "lng3"    # D
    .param p10, "geodesic"    # Z

    .line 56
    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    cmpl-double v2, p8, v0

    if-ltz v2, :cond_b

    cmpl-double v2, p8, p4

    if-gez v2, :cond_13

    :cond_b
    cmpg-double v2, p8, v0

    if-gez v2, :cond_14

    cmpg-double v2, p8, p4

    if-gez v2, :cond_14

    .line 57
    :cond_13
    return v8

    .line 60
    :cond_14
    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v4, p6, v2

    if-gtz v4, :cond_1e

    .line 61
    return v8

    .line 64
    :cond_1e
    cmpg-double v4, p0, v2

    if-lez v4, :cond_97

    cmpg-double v4, p2, v2

    if-lez v4, :cond_97

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v4, p0, v2

    if-gez v4, :cond_97

    cmpl-double v4, p2, v2

    if-ltz v4, :cond_35

    goto/16 :goto_97

    .line 67
    :cond_35
    const-wide v4, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v6, p4, v4

    if-gtz v6, :cond_3f

    .line 68
    return v8

    .line 70
    :cond_3f
    const/4 v4, 0x0

    sub-double v4, p4, p8

    mul-double v4, v4, p0

    mul-double v6, p2, p8

    add-double/2addr v4, v6

    div-double v9, v4, p4

    .line 72
    .local v9, "linearLat":D
    cmpl-double v4, p0, v0

    if-ltz v4, :cond_56

    cmpl-double v4, p2, v0

    if-ltz v4, :cond_56

    cmpg-double v4, p6, v9

    if-gez v4, :cond_56

    .line 73
    return v8

    .line 76
    :cond_56
    const/4 v11, 0x1

    cmpg-double v4, p0, v0

    if-gtz v4, :cond_64

    cmpg-double v4, p2, v0

    if-gtz v4, :cond_64

    cmpl-double v0, p6, v9

    if-ltz v0, :cond_64

    .line 77
    return v11

    .line 80
    :cond_64
    cmpl-double v0, p6, v2

    if-ltz v0, :cond_69

    .line 81
    return v11

    .line 85
    :cond_69
    if-eqz p10, :cond_81

    .line 86
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v7}, Lcom/google/maps/android/PolyUtil;->tanLatGC(DDDD)D

    move-result-wide v0

    cmpl-double v2, v12, v0

    if-ltz v2, :cond_7f

    goto :goto_96

    .line 87
    :cond_7f
    :goto_7f
    const/4 v11, 0x0

    goto :goto_96

    :cond_81
    invoke-static/range {p6 .. p7}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v12

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p8

    invoke-static/range {v0 .. v7}, Lcom/google/maps/android/PolyUtil;->mercatorLatRhumb(DDDD)D

    move-result-wide v0

    cmpl-double v2, v12, v0

    if-ltz v2, :cond_95

    goto :goto_96

    :cond_95
    goto :goto_7f

    :goto_96
    return v11

    .line 65
    .end local v9    # "linearLat":D
    :cond_97
    :goto_97
    return v8
.end method

.method public static isClosedPolygon(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)Z"
        }
    .end annotation

    .line 389
    .local p0, "poly":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 390
    .local v1, "firstPoint":Lcom/google/android/gms/maps/model/LatLng;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 391
    .local v2, "lastPoint":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 392
    return v3

    .line 394
    :cond_1a
    return v0
.end method

.method public static isLocationOnEdge(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;Z)Z
    .registers 5
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "geodesic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    .line 145
    .local p1, "polygon":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdge(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z

    move-result v0

    return v0
.end method

.method public static isLocationOnEdge(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z
    .registers 11
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "geodesic"    # Z
    .param p3, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;ZD)Z"
        }
    .end annotation

    .line 137
    .local p1, "polygon":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdgeOrPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZZD)Z

    move-result v0

    return v0
.end method

.method private static isLocationOnEdgeOrPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZZD)Z
    .registers 68
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "closed"    # Z
    .param p3, "geodesic"    # Z
    .param p4, "toleranceEarth"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;ZZD)Z"
        }
    .end annotation

    .line 171
    .local p1, "poly":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 172
    .local v1, "size":I
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 173
    return v2

    .line 175
    :cond_a
    const-wide v3, 0x41584db040000000L    # 6371009.0

    div-double v3, p4, v3

    .line 176
    .local v3, "tolerance":D
    invoke-static {v3, v4}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v19

    .line 177
    .local v19, "havTolerance":D
    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    .line 178
    .local v21, "lat3":D
    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v23

    .line 179
    .local v23, "lng3":D
    if-eqz p2, :cond_26

    add-int/lit8 v5, v1, -0x1

    goto :goto_27

    :cond_26
    const/4 v5, 0x0

    :goto_27
    move-object/from16 v13, p1

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/google/android/gms/maps/model/LatLng;

    .line 180
    .local v11, "prev":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v5, v11, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 181
    .local v5, "lat1":D
    iget-wide v7, v11, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 182
    .local v7, "lng1":D
    const/16 v25, 0x1

    if-eqz p3, :cond_8c

    .line 183
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move-wide/from16 v27, v5

    move-wide/from16 v29, v7

    .end local v5    # "lat1":D
    .end local v7    # "lng1":D
    .local v27, "lat1":D
    .local v29, "lng1":D
    :goto_48
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/google/android/gms/maps/model/LatLng;

    .line 184
    .local v12, "point2":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v5, v12, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v31

    .line 185
    .local v31, "lat2":D
    iget-wide v5, v12, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v33

    .line 186
    .local v33, "lng2":D
    move-wide/from16 v5, v27

    move-wide/from16 v7, v29

    move-wide/from16 v9, v31

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    .end local v11    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    .end local v12    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    .local v35, "prev":Lcom/google/android/gms/maps/model/LatLng;
    .local v36, "point2":Lcom/google/android/gms/maps/model/LatLng;
    move-wide/from16 v11, v33

    move-wide/from16 v13, v21

    move-wide/from16 v15, v23

    move-wide/from16 v17, v19

    invoke-static/range {v5 .. v18}, Lcom/google/maps/android/PolyUtil;->isOnSegmentGC(DDDDDDD)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 187
    return v25

    .line 189
    :cond_7a
    move-wide/from16 v27, v31

    .line 190
    move-wide/from16 v29, v33

    .line 191
    .end local v31    # "lat2":D
    .end local v33    # "lng2":D
    .end local v36    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    nop

    .line 183
    move-object/from16 v13, p1

    move-object/from16 v11, v35

    goto :goto_48

    .line 233
    .end local v35    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v11    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    :cond_84
    move-object/from16 v35, v11

    move-wide/from16 v37, v3

    move-wide/from16 v57, v27

    .end local v11    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v35    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    goto/16 :goto_174

    .line 198
    .end local v27    # "lat1":D
    .end local v29    # "lng1":D
    .end local v35    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v5    # "lat1":D
    .restart local v7    # "lng1":D
    .restart local v11    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    :cond_8c
    move-object/from16 v35, v11

    .end local v11    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v35    # "prev":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v9, 0x0

    sub-double v13, v21, v3

    .line 199
    .local v13, "minAcceptable":D
    add-double v15, v21, v3

    .line 200
    .local v15, "maxAcceptable":D
    invoke-static {v5, v6}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v9

    .line 201
    .local v9, "y1":D
    invoke-static/range {v21 .. v22}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v17

    .line 202
    .local v17, "y3":D
    const/4 v11, 0x3

    new-array v11, v11, [D

    .line 203
    .local v11, "xTry":[D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move-wide/from16 v29, v7

    move-wide/from16 v60, v5

    move-wide v5, v9

    move-wide/from16 v9, v60

    .end local v7    # "lng1":D
    .local v5, "y1":D
    .local v9, "lat1":D
    .restart local v29    # "lng1":D
    :goto_a9
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_170

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/google/android/gms/maps/model/LatLng;

    .line 204
    .restart local v12    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v7, v12, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 205
    .local v7, "lat2":D
    invoke-static {v7, v8}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v27

    .line 206
    .local v27, "y2":D
    move-wide/from16 v37, v3

    .end local v3    # "tolerance":D
    .local v37, "tolerance":D
    iget-wide v2, v12, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 207
    .local v2, "lng2":D
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v31

    cmpl-double v4, v31, v13

    if-ltz v4, :cond_158

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v31

    cmpg-double v4, v31, v15

    if-gtz v4, :cond_158

    .line 209
    sub-double v39, v2, v29

    const-wide v41, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v43, 0x400921fb54442d18L    # Math.PI

    invoke-static/range {v39 .. v44}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v31

    .line 210
    .local v31, "x2":D
    sub-double v39, v23, v29

    invoke-static/range {v39 .. v44}, Lcom/google/maps/android/MathUtil;->wrap(DDD)D

    move-result-wide v33

    .line 211
    .local v33, "x3Base":D
    const/4 v4, 0x0

    aput-wide v33, v11, v4

    .line 213
    const-wide v39, 0x401921fb54442d18L    # 6.283185307179586

    add-double v41, v33, v39

    aput-wide v41, v11, v25

    .line 214
    const/4 v4, 0x2

    sub-double v39, v33, v39

    aput-wide v39, v11, v4

    .line 215
    array-length v4, v11

    const/4 v0, 0x0

    :goto_101
    if-ge v0, v4, :cond_158

    aget-wide v39, v11, v0

    .line 216
    .local v39, "x3":D
    sub-double v41, v27, v5

    .line 217
    .local v41, "dy":D
    mul-double v43, v31, v31

    mul-double v45, v41, v41

    add-double v43, v43, v45

    .line 218
    .local v43, "len2":D
    const-wide/16 v45, 0x0

    cmpg-double v36, v43, v45

    if-gtz v36, :cond_114

    goto :goto_128

    :cond_114
    mul-double v45, v39, v31

    const/16 v36, 0x0

    sub-double v47, v17, v5

    mul-double v47, v47, v41

    add-double v45, v45, v47

    div-double v47, v45, v43

    const-wide/16 v49, 0x0

    const-wide/high16 v51, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v47 .. v52}, Lcom/google/maps/android/MathUtil;->clamp(DDD)D

    move-result-wide v45

    .line 219
    .local v45, "t":D
    :goto_128
    mul-double v47, v45, v31

    .line 220
    .local v47, "xClosest":D
    mul-double v49, v45, v41

    const/16 v36, 0x0

    add-double v49, v5, v49

    .line 221
    .local v49, "yClosest":D
    invoke-static/range {v49 .. v50}, Lcom/google/maps/android/MathUtil;->inverseMercator(D)D

    move-result-wide v51

    .line 222
    .local v51, "latClosest":D
    sub-double v53, v39, v47

    move-wide/from16 v55, v7

    .end local v7    # "lat2":D
    .local v55, "lat2":D
    move-wide/from16 v7, v21

    move-wide/from16 v57, v9

    .end local v9    # "lat1":D
    .local v57, "lat1":D
    move-wide/from16 v9, v51

    move-object/from16 v36, v11

    move-object/from16 v59, v12

    .end local v11    # "xTry":[D
    .end local v12    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    .local v36, "xTry":[D
    .local v59, "point2":Lcom/google/android/gms/maps/model/LatLng;
    move-wide/from16 v11, v53

    invoke-static/range {v7 .. v12}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v7

    .line 223
    .local v7, "havDist":D
    cmpg-double v9, v7, v19

    if-gez v9, :cond_14d

    .line 224
    return v25

    .line 215
    .end local v7    # "havDist":D
    .end local v39    # "x3":D
    .end local v41    # "dy":D
    .end local v43    # "len2":D
    .end local v45    # "t":D
    .end local v47    # "xClosest":D
    .end local v49    # "yClosest":D
    .end local v51    # "latClosest":D
    :cond_14d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, v36

    move-wide/from16 v7, v55

    move-wide/from16 v9, v57

    move-object/from16 v12, v59

    goto :goto_101

    .line 228
    .end local v31    # "x2":D
    .end local v33    # "x3Base":D
    .end local v36    # "xTry":[D
    .end local v55    # "lat2":D
    .end local v57    # "lat1":D
    .end local v59    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    .local v7, "lat2":D
    .restart local v9    # "lat1":D
    .restart local v11    # "xTry":[D
    .restart local v12    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    :cond_158
    move-wide/from16 v55, v7

    move-wide/from16 v57, v9

    move-object/from16 v36, v11

    move-object/from16 v59, v12

    .end local v7    # "lat2":D
    .end local v9    # "lat1":D
    .end local v11    # "xTry":[D
    .end local v12    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v36    # "xTry":[D
    .restart local v55    # "lat2":D
    .restart local v57    # "lat1":D
    .restart local v59    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    move-wide/from16 v9, v55

    .line 229
    .end local v57    # "lat1":D
    .restart local v9    # "lat1":D
    move-wide/from16 v29, v2

    .line 230
    move-wide/from16 v5, v27

    .line 231
    .end local v2    # "lng2":D
    .end local v27    # "y2":D
    .end local v55    # "lat2":D
    .end local v59    # "point2":Lcom/google/android/gms/maps/model/LatLng;
    nop

    .line 203
    move-object/from16 v11, v36

    move-wide/from16 v3, v37

    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_a9

    .line 233
    .end local v5    # "y1":D
    .end local v13    # "minAcceptable":D
    .end local v15    # "maxAcceptable":D
    .end local v17    # "y3":D
    .end local v36    # "xTry":[D
    .end local v37    # "tolerance":D
    .restart local v3    # "tolerance":D
    :cond_170
    move-wide/from16 v37, v3

    move-wide/from16 v57, v9

    .end local v3    # "tolerance":D
    .end local v9    # "lat1":D
    .restart local v37    # "tolerance":D
    .restart local v57    # "lat1":D
    :goto_174
    const/4 v0, 0x0

    return v0
.end method

.method public static isLocationOnPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;Z)Z
    .registers 5
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "geodesic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;Z)Z"
        }
    .end annotation

    .line 166
    .local p1, "polyline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/maps/android/PolyUtil;->isLocationOnPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z

    move-result v0

    return v0
.end method

.method public static isLocationOnPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZD)Z
    .registers 11
    .param p0, "point"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "geodesic"    # Z
    .param p3, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;ZD)Z"
        }
    .end annotation

    .line 156
    .local p1, "polyline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/maps/android/PolyUtil;->isLocationOnEdgeOrPath(Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;ZZD)Z

    move-result v0

    return v0
.end method

.method private static isOnSegmentGC(DDDDDDD)Z
    .registers 41
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D
    .param p8, "lat3"    # D
    .param p10, "lng3"    # D
    .param p12, "havTolerance"    # D

    .line 259
    sub-double v6, p2, p10

    move-wide/from16 v2, p0

    move-wide/from16 v4, p8

    invoke-static/range {v2 .. v7}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v2

    .line 260
    .local v2, "havDist13":D
    const/4 v4, 0x1

    cmpg-double v5, v2, p12

    if-gtz v5, :cond_10

    .line 261
    return v4

    .line 263
    :cond_10
    const/4 v5, 0x0

    sub-double v10, p6, p10

    move-wide/from16 v6, p4

    move-wide/from16 v8, p8

    invoke-static/range {v6 .. v11}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v5

    .line 264
    .local v5, "havDist23":D
    cmpg-double v7, v5, p12

    if-gtz v7, :cond_20

    .line 265
    return v4

    .line 267
    :cond_20
    invoke-static/range {p0 .. p11}, Lcom/google/maps/android/PolyUtil;->sinDeltaBearing(DDDDDD)D

    move-result-wide v7

    .line 268
    .local v7, "sinBearing":D
    invoke-static {v2, v3}, Lcom/google/maps/android/MathUtil;->sinFromHav(D)D

    move-result-wide v9

    .line 269
    .local v9, "sinDist13":D
    mul-double v11, v9, v7

    invoke-static {v11, v12}, Lcom/google/maps/android/MathUtil;->havFromSin(D)D

    move-result-wide v11

    .line 270
    .local v11, "havCrossTrack":D
    const/4 v13, 0x0

    cmpl-double v14, v11, p12

    if-lez v14, :cond_34

    .line 271
    return v13

    .line 273
    :cond_34
    const/4 v14, 0x0

    sub-double v19, p2, p6

    move-wide/from16 v15, p0

    move-wide/from16 v17, p4

    invoke-static/range {v15 .. v20}, Lcom/google/maps/android/MathUtil;->havDistance(DDD)D

    move-result-wide v14

    .line 274
    .local v14, "havDist12":D
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v18, v14, v16

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v18, v20, v18

    mul-double v18, v18, v11

    add-double v18, v14, v18

    .line 275
    .local v18, "term":D
    cmpl-double v22, v2, v18

    if-gtz v22, :cond_7d

    cmpl-double v22, v5, v18

    if-lez v22, :cond_56

    .line 276
    move-wide/from16 v25, v5

    goto :goto_7f

    .line 278
    :cond_56
    const-wide v22, 0x3fe7ae147ae147aeL    # 0.74

    cmpg-double v24, v14, v22

    if-gez v24, :cond_60

    .line 279
    return v4

    .line 281
    :cond_60
    mul-double v16, v16, v11

    const/16 v22, 0x0

    sub-double v20, v20, v16

    .line 282
    .local v20, "cosCrossTrack":D
    sub-double v16, v2, v11

    div-double v0, v16, v20

    .line 283
    .local v0, "havAlongTrack13":D
    sub-double v16, v5, v11

    move-wide/from16 v25, v5

    .end local v5    # "havDist23":D
    .local v25, "havDist23":D
    div-double v4, v16, v20

    .line 284
    .local v4, "havAlongTrack23":D
    invoke-static {v0, v1, v4, v5}, Lcom/google/maps/android/MathUtil;->sinSumFromHav(DD)D

    move-result-wide v16

    .line 285
    .local v16, "sinSumAlongTrack":D
    const-wide/16 v22, 0x0

    cmpl-double v6, v16, v22

    if-lez v6, :cond_7c

    const/4 v13, 0x1

    nop

    :cond_7c
    return v13

    .line 276
    .end local v0    # "havAlongTrack13":D
    .end local v4    # "havAlongTrack23":D
    .end local v16    # "sinSumAlongTrack":D
    .end local v20    # "cosCrossTrack":D
    .end local v25    # "havDist23":D
    .restart local v5    # "havDist23":D
    :cond_7d
    move-wide/from16 v25, v5

    .end local v5    # "havDist23":D
    .restart local v25    # "havDist23":D
    :goto_7f
    return v13
.end method

.method private static mercatorLatRhumb(DDDD)D
    .registers 12
    .param p0, "lat1"    # D
    .param p2, "lat2"    # D
    .param p4, "lng2"    # D
    .param p6, "lng3"    # D

    .line 45
    invoke-static {p0, p1}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v0

    sub-double v2, p4, p6

    mul-double v0, v0, v2

    invoke-static {p2, p3}, Lcom/google/maps/android/MathUtil;->mercator(D)D

    move-result-wide v2

    mul-double v2, v2, p6

    add-double/2addr v0, v2

    div-double/2addr v0, p4

    return-wide v0
.end method

.method public static simplify(Ljava/util/List;D)Ljava/util/List;
    .registers 25
    .param p1, "tolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 307
    .local p0, "poly":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    .line 308
    .local v3, "n":I
    const/4 v4, 0x1

    if-lt v3, v4, :cond_116

    .line 311
    const-wide/16 v5, 0x0

    cmpg-double v7, p1, v5

    if-lez v7, :cond_10c

    .line 315
    invoke-static/range {p0 .. p0}, Lcom/google/maps/android/PolyUtil;->isClosedPolygon(Ljava/util/List;)Z

    move-result v7

    .line 316
    .local v7, "closedPolygon":Z
    const/4 v8, 0x0

    .line 319
    .local v8, "lastPoint":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v7, :cond_42

    .line 321
    const-wide v9, 0x3da5fd7fe1796495L    # 1.0E-11

    .line 322
    .local v9, "OFFSET":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    check-cast v8, Lcom/google/android/gms/maps/model/LatLng;

    .line 324
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 325
    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v12, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide v14, 0x3da5fd7fe1796495L    # 1.0E-11

    add-double/2addr v12, v14

    iget-wide v5, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    add-double/2addr v5, v14

    invoke-direct {v11, v12, v13, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v9    # "OFFSET":D
    :cond_42
    const/4 v5, 0x0

    .line 330
    .local v5, "maxIdx":I
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 331
    .local v6, "stack":Ljava/util/Stack;, "Ljava/util/Stack<[I>;"
    new-array v9, v3, [D

    .line 332
    .local v9, "dists":[D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x0

    aput-wide v10, v9, v12

    .line 333
    add-int/lit8 v13, v3, -0x1

    aput-wide v10, v9, v13

    .line 335
    const-wide/16 v10, 0x0

    .line 338
    .local v10, "dist":D
    const/4 v13, 0x2

    if-le v3, v13, :cond_d7

    .line 339
    new-array v14, v13, [I

    aput v12, v14, v12

    add-int/lit8 v15, v3, -0x1

    aput v15, v14, v4

    .line 340
    .local v14, "stackVal":[I
    invoke-virtual {v6, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :goto_63
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v15

    if-lez v15, :cond_d7

    .line 342
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 343
    .local v15, "current":[I
    const-wide/16 v17, 0x0

    .line 344
    .local v17, "maxDist":D
    aget v19, v15, v12

    add-int/lit8 v19, v19, 0x1

    .local v19, "idx":I
    :goto_75
    move/from16 v20, v19

    .end local v19    # "idx":I
    .local v20, "idx":I
    aget v13, v15, v4

    move/from16 v4, v20

    .end local v20    # "idx":I
    .local v4, "idx":I
    if-ge v4, v13, :cond_ac

    .line 345
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/maps/model/LatLng;

    move/from16 v21, v3

    .end local v3    # "n":I
    .local v21, "n":I
    aget v3, v15, v12

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    const/16 v19, 0x1

    aget v12, v15, v19

    .line 346
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/maps/model/LatLng;

    .line 345
    invoke-static {v13, v3, v12}, Lcom/google/maps/android/PolyUtil;->distanceToLine(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v10

    .line 347
    cmpl-double v3, v10, v17

    if-lez v3, :cond_a4

    .line 348
    move-wide v12, v10

    .line 349
    .end local v17    # "maxDist":D
    .local v12, "maxDist":D
    move v3, v4

    .line 344
    move v5, v3

    move-wide/from16 v17, v12

    .end local v12    # "maxDist":D
    .restart local v17    # "maxDist":D
    :cond_a4
    add-int/lit8 v19, v4, 0x1

    move/from16 v3, v21

    const/4 v4, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    goto :goto_75

    .line 352
    .end local v21    # "n":I
    .restart local v3    # "n":I
    :cond_ac
    move/from16 v21, v3

    .end local v3    # "n":I
    .restart local v21    # "n":I
    cmpl-double v3, v17, p1

    if-lez v3, :cond_cf

    .line 353
    aput-wide v17, v9, v5

    .line 354
    const/4 v3, 0x2

    new-array v12, v3, [I

    const/4 v13, 0x0

    aget v19, v15, v13

    aput v19, v12, v13

    const/16 v19, 0x1

    aput v5, v12, v19

    .line 355
    .local v12, "stackValCurMax":[I
    invoke-virtual {v6, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-array v1, v3, [I

    aput v5, v1, v13

    aget v2, v15, v19

    aput v2, v1, v19

    .line 357
    .local v1, "stackValMaxCur":[I
    invoke-virtual {v6, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v1    # "stackValMaxCur":[I
    .end local v12    # "stackValCurMax":[I
    goto :goto_d1

    .line 341
    .end local v4    # "idx":I
    .end local v15    # "current":[I
    .end local v17    # "maxDist":D
    :cond_cf
    const/4 v3, 0x2

    const/4 v13, 0x0

    :goto_d1
    move/from16 v3, v21

    const/4 v4, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    goto :goto_63

    .line 362
    .end local v14    # "stackVal":[I
    .end local v21    # "n":I
    .restart local v3    # "n":I
    :cond_d7
    move/from16 v21, v3

    .end local v3    # "n":I
    .restart local v21    # "n":I
    if-eqz v7, :cond_e7

    .line 364
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 365
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_e7
    const/4 v1, 0x0

    .line 370
    .local v1, "idx":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v2, "simplifiedLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 372
    .local v4, "l":Lcom/google/android/gms/maps/model/LatLng;
    aget-wide v12, v9, v1

    const-wide/16 v14, 0x0

    cmpl-double v16, v12, v14

    if-eqz v16, :cond_108

    .line 373
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_108
    add-int/lit8 v1, v1, 0x1

    .line 376
    .end local v4    # "l":Lcom/google/android/gms/maps/model/LatLng;
    goto :goto_f1

    .line 378
    :cond_10b
    return-object v2

    .line 312
    .end local v1    # "idx":I
    .end local v2    # "simplifiedLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    .end local v5    # "maxIdx":I
    .end local v6    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<[I>;"
    .end local v7    # "closedPolygon":Z
    .end local v8    # "lastPoint":Lcom/google/android/gms/maps/model/LatLng;
    .end local v9    # "dists":[D
    .end local v10    # "dist":D
    .end local v21    # "n":I
    .restart local v3    # "n":I
    :cond_10c
    move/from16 v21, v3

    .end local v3    # "n":I
    .restart local v21    # "n":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tolerance must be greater than zero"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    .end local v21    # "n":I
    .restart local v3    # "n":I
    :cond_116
    move/from16 v21, v3

    .end local v3    # "n":I
    .restart local v21    # "n":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Polyline must have at least 1 point"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static sinDeltaBearing(DDDDDD)D
    .registers 41
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D
    .param p8, "lat3"    # D
    .param p10, "lng3"    # D

    .line 242
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 243
    .local v0, "sinLat1":D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 244
    .local v2, "cosLat2":D
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 245
    .local v4, "cosLat3":D
    sub-double v6, p8, p0

    .line 246
    .local v6, "lat31":D
    sub-double v8, p10, p2

    .line 247
    .local v8, "lng31":D
    sub-double v10, p4, p0

    .line 248
    .local v10, "lat21":D
    sub-double v12, p6, p2

    .line 249
    .local v12, "lng21":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v14, v14, v4

    .line 250
    .local v14, "a":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v2

    .line 251
    .local v16, "c":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v22, v0, v20

    mul-double v22, v22, v4

    invoke-static {v8, v9}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v18, v18, v22

    .line 252
    .local v18, "b":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v0

    mul-double v20, v20, v2

    invoke-static {v12, v13}, Lcom/google/maps/android/MathUtil;->hav(D)D

    move-result-wide v24

    mul-double v20, v20, v24

    add-double v22, v22, v20

    .line 253
    .local v22, "d":D
    mul-double v20, v14, v14

    mul-double v24, v18, v18

    add-double v20, v20, v24

    mul-double v24, v16, v16

    mul-double v26, v22, v22

    add-double v24, v24, v26

    mul-double v20, v20, v24

    .line 254
    .local v20, "denom":D
    const-wide/16 v24, 0x0

    cmpg-double v26, v20, v24

    if-gtz v26, :cond_59

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    goto :goto_67

    :cond_59
    mul-double v24, v14, v22

    mul-double v26, v18, v16

    const/16 v28, 0x0

    sub-double v24, v24, v26

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    div-double v24, v24, v26

    :goto_67
    return-wide v24
.end method

.method private static tanLatGC(DDDD)D
    .registers 14
    .param p0, "lat1"    # D
    .param p2, "lat2"    # D
    .param p4, "lng2"    # D
    .param p6, "lng3"    # D

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sub-double v2, p4, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method
