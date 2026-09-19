###### Class com.digikala.dms.logic.LinearRegression (com.digikala.dms.logic.LinearRegression)
.class public Lcom/digikala/dms/logic/LinearRegression;
.super Ljava/lang/Object;
.source "LinearRegression.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dotProduct(Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;)D
    .registers 9
    .param p1, "p1"    # Lcom/digikala/dms/logic/Point;
    .param p2, "p2"    # Lcom/digikala/dms/logic/Point;

    .line 34
    iget-wide v0, p1, Lcom/digikala/dms/logic/Point;->x:D

    iget-wide v2, p2, Lcom/digikala/dms/logic/Point;->x:D

    mul-double v0, v0, v2

    iget-wide v2, p1, Lcom/digikala/dms/logic/Point;->y:D

    iget-wide v4, p2, Lcom/digikala/dms/logic/Point;->y:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public checkPointInsideLine(Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;)Z
    .registers 15
    .param p1, "startPoint"    # Lcom/digikala/dms/logic/Point;
    .param p2, "endPoint"    # Lcom/digikala/dms/logic/Point;
    .param p3, "pointInsideLine"    # Lcom/digikala/dms/logic/Point;

    .line 43
    iget-wide v0, p1, Lcom/digikala/dms/logic/Point;->x:D

    iget-wide v2, p2, Lcom/digikala/dms/logic/Point;->x:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_d

    .line 44
    iget-wide v0, p1, Lcom/digikala/dms/logic/Point;->x:D

    .line 45
    .local v0, "maxX":D
    iget-wide v2, p2, Lcom/digikala/dms/logic/Point;->x:D

    goto :goto_11

    .line 47
    .end local v0    # "maxX":D
    :cond_d
    iget-wide v0, p2, Lcom/digikala/dms/logic/Point;->x:D

    .line 48
    .restart local v0    # "maxX":D
    iget-wide v2, p1, Lcom/digikala/dms/logic/Point;->x:D

    .line 51
    .local v2, "minX":D
    :goto_11
    iget-wide v4, p1, Lcom/digikala/dms/logic/Point;->y:D

    iget-wide v6, p2, Lcom/digikala/dms/logic/Point;->y:D

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_1e

    .line 52
    iget-wide v4, p1, Lcom/digikala/dms/logic/Point;->y:D

    .line 53
    .local v4, "maxY":D
    iget-wide v6, p2, Lcom/digikala/dms/logic/Point;->y:D

    goto :goto_22

    .line 55
    .end local v4    # "maxY":D
    :cond_1e
    iget-wide v4, p2, Lcom/digikala/dms/logic/Point;->y:D

    .line 56
    .restart local v4    # "maxY":D
    iget-wide v6, p1, Lcom/digikala/dms/logic/Point;->y:D

    .line 59
    .local v6, "minY":D
    :goto_22
    iget-wide v8, p3, Lcom/digikala/dms/logic/Point;->x:D

    cmpl-double v10, v8, v2

    if-lez v10, :cond_3c

    iget-wide v8, p3, Lcom/digikala/dms/logic/Point;->x:D

    cmpg-double v10, v8, v0

    if-gez v10, :cond_3c

    iget-wide v8, p3, Lcom/digikala/dms/logic/Point;->y:D

    cmpl-double v10, v8, v6

    if-lez v10, :cond_3c

    iget-wide v8, p3, Lcom/digikala/dms/logic/Point;->y:D

    cmpg-double v10, v8, v4

    if-gez v10, :cond_3c

    .line 60
    const/4 v8, 0x1

    return v8

    .line 63
    :cond_3c
    const/4 v8, 0x0

    return v8
.end method

.method public getProjectedPointOnLine(Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;)Lcom/digikala/dms/logic/Point;
    .registers 25
    .param p1, "v1"    # Lcom/digikala/dms/logic/Point;
    .param p2, "v2"    # Lcom/digikala/dms/logic/Point;
    .param p3, "p"    # Lcom/digikala/dms/logic/Point;

    .line 16
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Lcom/digikala/dms/logic/Point;

    iget-wide v4, v1, Lcom/digikala/dms/logic/Point;->x:D

    iget-wide v6, v0, Lcom/digikala/dms/logic/Point;->x:D

    sub-double/2addr v4, v6

    iget-wide v6, v1, Lcom/digikala/dms/logic/Point;->y:D

    iget-wide v8, v0, Lcom/digikala/dms/logic/Point;->y:D

    sub-double/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/digikala/dms/logic/Point;-><init>(DD)V

    .line 17
    .local v3, "e1":Lcom/digikala/dms/logic/Point;
    new-instance v4, Lcom/digikala/dms/logic/Point;

    iget-wide v5, v2, Lcom/digikala/dms/logic/Point;->x:D

    iget-wide v7, v0, Lcom/digikala/dms/logic/Point;->x:D

    sub-double/2addr v5, v7

    iget-wide v7, v2, Lcom/digikala/dms/logic/Point;->y:D

    iget-wide v9, v0, Lcom/digikala/dms/logic/Point;->y:D

    sub-double/2addr v7, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/digikala/dms/logic/Point;-><init>(DD)V

    .line 18
    .local v4, "e2":Lcom/digikala/dms/logic/Point;
    move-object/from16 v5, p0

    invoke-direct {v5, v3, v4}, Lcom/digikala/dms/logic/LinearRegression;->dotProduct(Lcom/digikala/dms/logic/Point;Lcom/digikala/dms/logic/Point;)D

    move-result-wide v6

    .line 21
    .local v6, "valDp":D
    iget-wide v8, v3, Lcom/digikala/dms/logic/Point;->x:D

    iget-wide v10, v3, Lcom/digikala/dms/logic/Point;->x:D

    mul-double v8, v8, v10

    iget-wide v10, v3, Lcom/digikala/dms/logic/Point;->y:D

    iget-wide v12, v3, Lcom/digikala/dms/logic/Point;->y:D

    mul-double v10, v10, v12

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 22
    .local v8, "lenLineE1":D
    iget-wide v10, v4, Lcom/digikala/dms/logic/Point;->x:D

    iget-wide v12, v4, Lcom/digikala/dms/logic/Point;->x:D

    mul-double v10, v10, v12

    iget-wide v12, v4, Lcom/digikala/dms/logic/Point;->y:D

    iget-wide v14, v4, Lcom/digikala/dms/logic/Point;->y:D

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 23
    .local v10, "lenLineE2":D
    mul-double v12, v8, v10

    div-double v12, v6, v12

    .line 26
    .local v12, "cos":D
    mul-double v14, v12, v10

    .line 27
    .local v14, "projLenOfLine":D
    new-instance v1, Lcom/digikala/dms/logic/Point;

    move-object/from16 v16, v4

    .end local v4    # "e2":Lcom/digikala/dms/logic/Point;
    .local v16, "e2":Lcom/digikala/dms/logic/Point;
    iget-wide v4, v0, Lcom/digikala/dms/logic/Point;->x:D

    move-wide/from16 v17, v6

    .end local v6    # "valDp":D
    .local v17, "valDp":D
    iget-wide v6, v3, Lcom/digikala/dms/logic/Point;->x:D

    mul-double v6, v6, v14

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, v0, Lcom/digikala/dms/logic/Point;->y:D

    move-wide/from16 v19, v10

    .end local v10    # "lenLineE2":D
    .local v19, "lenLineE2":D
    iget-wide v10, v3, Lcom/digikala/dms/logic/Point;->y:D

    mul-double v10, v10, v14

    div-double/2addr v10, v8

    add-double/2addr v6, v10

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/digikala/dms/logic/Point;-><init>(DD)V

    .line 30
    .local v1, "pp":Lcom/digikala/dms/logic/Point;
    return-object v1
.end method
