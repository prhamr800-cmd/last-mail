###### Class com.digikala.dms.logic.MapUtil (com.digikala.dms.logic.MapUtil)
.class public Lcom/digikala/dms/logic/MapUtil;
.super Ljava/lang/Object;
.source "MapUtil.java"


# instance fields
.field private regression:Lcom/digikala/dms/logic/LinearRegression;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/digikala/dms/logic/LinearRegression;

    invoke-direct {v0}, Lcom/digikala/dms/logic/LinearRegression;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/logic/MapUtil;->regression:Lcom/digikala/dms/logic/LinearRegression;

    return-void
.end method


# virtual methods
.method public calculationByDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .registers 35
    .param p1, "StartP"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "EndP"    # Lcom/google/android/gms/maps/model/LatLng;

    .line 31
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x18e3

    .line 32
    .local v2, "Radius":I
    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 33
    .local v3, "lat1":D
    iget-wide v5, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 35
    .local v5, "lat2":D
    iget-wide v7, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 36
    .local v7, "lon1":D
    iget-wide v9, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 38
    .local v9, "lon2":D
    sub-double v11, v5, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 39
    .local v11, "dLat":D
    sub-double v13, v9, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 41
    .local v13, "dLon":D
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v17, v11, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    div-double v19, v11, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    .line 42
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    .line 43
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    div-double v21, v13, v15

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    div-double v21, v13, v15

    .line 44
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v17, v17, v19

    .line 46
    .local v17, "a":D
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->asin(D)D

    move-result-wide v19

    mul-double v19, v19, v15

    .line 48
    .local v19, "c":D
    int-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v19

    .line 50
    .local v0, "valueResult":D
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v23, v3

    .end local v3    # "lat1":D
    .local v23, "lat1":D
    div-double v3, v0, v15

    .line 52
    .local v3, "km":D
    new-instance v15, Ljava/text/DecimalFormat;

    move-wide/from16 v25, v5

    .end local v5    # "lat2":D
    .local v25, "lat2":D
    const-string v5, "####"

    invoke-direct {v15, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v5, v15

    .line 54
    .local v5, "newFormat":Ljava/text/DecimalFormat;
    invoke-virtual {v5, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 56
    .local v6, "kmInDec":I
    const-wide v15, 0x408f400000000000L    # 1000.0

    move-wide/from16 v27, v3

    .end local v3    # "km":D
    .local v27, "km":D
    rem-double v3, v0, v15

    .line 58
    .local v3, "meter":D
    invoke-virtual {v5, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 60
    .local v15, "meterInDec":I
    move-wide/from16 v29, v3

    .end local v3    # "meter":D
    .local v29, "meter":D
    const-string v3, "Radius Value"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v5

    .end local v5    # "newFormat":Ljava/text/DecimalFormat;
    .local v31, "newFormat":Ljava/text/DecimalFormat;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "   KM  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Meter   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v19

    return-wide v3
.end method

.method public getProjectLocation(Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 15
    .param p2, "gps"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ")",
            "Lcom/google/android/gms/maps/model/LatLng;"
        }
    .end annotation

    .line 113
    .local p1, "latLngs":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/logic/MapUtil;->minDistanceBetweenListAndGPSMember(Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;)I

    move-result v0

    .line 116
    .local v0, "nearMember":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 117
    return-object p2

    .line 120
    :cond_8
    if-nez v0, :cond_19

    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 122
    .local v1, "firstLocation":Lcom/google/android/gms/maps/model/LatLng;
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_27

    .line 124
    .end local v1    # "firstLocation":Lcom/google/android/gms/maps/model/LatLng;
    :cond_19
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 125
    .restart local v1    # "firstLocation":Lcom/google/android/gms/maps/model/LatLng;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 128
    .local v2, "secondLocation":Lcom/google/android/gms/maps/model/LatLng;
    :goto_27
    new-instance v3, Lcom/digikala/dms/logic/Point;

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/digikala/dms/logic/Point;-><init>(DD)V

    .line 129
    .local v3, "startPoint":Lcom/digikala/dms/logic/Point;
    new-instance v4, Lcom/digikala/dms/logic/Point;

    iget-wide v5, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/digikala/dms/logic/Point;-><init>(DD)V

    .line 130
    .local v4, "endPoint":Lcom/digikala/dms/logic/Point;
    new-instance v5, Lcom/digikala/dms/logic/Point;

    iget-wide v6, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v8, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/digikala/dms/logic/Point;-><init>(DD)V

    .line 132
    .local v5, "gpsPoint":Lcom/digikala/dms/logic/Point;
    iget-object v6, p0, Lcom/digikala/dms/logic/MapUtil;->regression:Lcom/digikala/dms/logic/LinearRegression;

    invoke-virtual {v6, v3, v4, v5}, Lcom/digikala/dms/logic/LinearRegression;->getProjectedPointOnLine(Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;)Lcom/digikala/dms/logic/Point;

    move-result-object v6

    .line 134
    .local v6, "pointInsideLine":Lcom/digikala/dms/logic/Point;
    if-eqz v0, :cond_a3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v0, v7, :cond_53

    goto :goto_a3

    .line 137
    :cond_53
    iget-object v7, p0, Lcom/digikala/dms/logic/MapUtil;->regression:Lcom/digikala/dms/logic/LinearRegression;

    invoke-virtual {v7, v3, v4, v6}, Lcom/digikala/dms/logic/LinearRegression;->checkPointInsideLine(Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 138
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v6, Lcom/digikala/dms/logic/Point;->x:D

    iget-wide v10, v6, Lcom/digikala/dms/logic/Point;->y:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v7

    .line 140
    :cond_65
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 141
    add-int/lit8 v7, v0, 0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 143
    new-instance v7, Lcom/digikala/dms/logic/Point;

    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v10, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/digikala/dms/logic/Point;-><init>(DD)V

    move-object v3, v7

    .line 144
    new-instance v7, Lcom/digikala/dms/logic/Point;

    iget-wide v8, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v10, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/digikala/dms/logic/Point;-><init>(DD)V

    move-object v4, v7

    .line 145
    new-instance v7, Lcom/digikala/dms/logic/Point;

    iget-wide v8, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v10, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/digikala/dms/logic/Point;-><init>(DD)V

    move-object v5, v7

    .line 147
    iget-object v7, p0, Lcom/digikala/dms/logic/MapUtil;->regression:Lcom/digikala/dms/logic/LinearRegression;

    invoke-virtual {v7, v3, v4, v5}, Lcom/digikala/dms/logic/LinearRegression;->getProjectedPointOnLine(Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;)Lcom/digikala/dms/logic/Point;

    move-result-object v6

    .line 149
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v6, Lcom/digikala/dms/logic/Point;->x:D

    iget-wide v10, v6, Lcom/digikala/dms/logic/Point;->y:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v7

    .line 135
    :cond_a3
    :goto_a3
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v6, Lcom/digikala/dms/logic/Point;->x:D

    iget-wide v10, v6, Lcom/digikala/dms/logic/Point;->y:D

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v7
.end method

.method public minDistanceBetweenListAndGPSMember(Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;)I
    .registers 13
    .param p2, "gps"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ")I"
        }
    .end annotation

    .line 73
    .local p1, "latLngs":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 74
    .local v0, "distanceThreshold":D
    const/4 v2, 0x0

    .line 75
    .local v2, "minMember":I
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 78
    .local v3, "minDistance":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_43

    .line 79
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p2, v6}, Lcom/digikala/dms/logic/MapUtil;->calculationByDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 81
    .local v6, "distance":Ljava/lang/Double;
    const-string v7, "distance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dis = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpg-double v9, v7, v3

    if-gez v9, :cond_40

    .line 84
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 85
    move v2, v5

    .line 78
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 89
    .end local v5    # "i":I
    .end local v6    # "distance":Ljava/lang/Double;
    :cond_43
    cmpl-double v5, v3, v0

    if-lez v5, :cond_49

    .line 90
    const/4 v5, -0x1

    return v5

    .line 92
    :cond_49
    return v2
.end method
