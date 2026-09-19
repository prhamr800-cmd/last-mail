###### Class com.google.maps.android.clustering.algo.GridBasedAlgorithm (com.google.maps.android.clustering.algo.GridBasedAlgorithm)
.class public Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;
.super Ljava/lang/Object;
.source "GridBasedAlgorithm.java"

# interfaces
.implements Lcom/google/maps/android/clustering/algo/Algorithm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/clustering/algo/Algorithm<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final GRID_SIZE:I = 0x64


# instance fields
.field private final mItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    .local p0, "this":Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    return-void
.end method

.method private static getCoord(JDD)J
    .registers 10
    .param p0, "numCells"    # J
    .param p2, "x"    # D
    .param p4, "y"    # D

    .line 92
    long-to-double v0, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public addItem(Lcom/google/maps/android/clustering/ClusterItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public addItems(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method public clearItems()V
    .registers 2

    .line 51
    .local p0, "this":Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 52
    return-void
.end method

.method public getClusters(D)Ljava/util/Set;
    .registers 24
    .param p1, "zoom"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/Set<",
            "+",
            "Lcom/google/maps/android/clustering/Cluster<",
            "TT;>;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm<TT;>;"
    move-object/from16 v1, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move-wide/from16 v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    mul-double v2, v2, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 62
    .local v2, "numCells":J
    new-instance v0, Lcom/google/maps/android/projection/SphericalMercatorProjection;

    long-to-double v6, v2

    invoke-direct {v0, v6, v7}, Lcom/google/maps/android/projection/SphericalMercatorProjection;-><init>(D)V

    move-object v12, v0

    .line 64
    .local v12, "proj":Lcom/google/maps/android/projection/SphericalMercatorProjection;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v13, v0

    .line 65
    .local v13, "clusters":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/maps/android/clustering/Cluster<TT;>;>;"
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    move-object v14, v0

    .line 67
    .local v14, "sparseArray":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;>;"
    iget-object v15, v1, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    monitor-enter v15

    .line 68
    :try_start_2c
    iget-object v0, v1, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/maps/android/clustering/ClusterItem;

    move-object v10, v6

    .line 69
    .local v10, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    invoke-interface {v10}, Lcom/google/maps/android/clustering/ClusterItem;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/google/maps/android/projection/SphericalMercatorProjection;->toPoint(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/android/projection/Point;

    move-result-object v6

    move-object v11, v6

    .line 71
    .local v11, "p":Lcom/google/maps/android/geometry/Point;
    iget-wide v8, v11, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v6, v11, Lcom/google/maps/android/geometry/Point;->y:D

    move-wide/from16 v16, v6

    move-wide v6, v2

    move-object/from16 v18, v0

    move-object v0, v10

    move-object v1, v11

    .end local v10    # "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    .end local v11    # "p":Lcom/google/maps/android/geometry/Point;
    .local v0, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    .local v1, "p":Lcom/google/maps/android/geometry/Point;
    move-wide/from16 v10, v16

    invoke-static/range {v6 .. v11}, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->getCoord(JDD)J

    move-result-wide v6

    .line 73
    .local v6, "coord":J
    invoke-virtual {v14, v6, v7}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/maps/android/clustering/algo/StaticCluster;

    .line 74
    .local v8, "cluster":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    if-nez v8, :cond_8c

    .line 75
    new-instance v9, Lcom/google/maps/android/clustering/algo/StaticCluster;

    new-instance v10, Lcom/google/maps/android/geometry/Point;
    :try_end_65
    .catchall {:try_start_2c .. :try_end_65} :catchall_9f

    move-wide/from16 v19, v2

    .end local v2    # "numCells":J
    .local v19, "numCells":J
    :try_start_67
    iget-wide v2, v1, Lcom/google/maps/android/geometry/Point;->x:D

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    iget-wide v4, v1, Lcom/google/maps/android/geometry/Point;->y:D

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const/4 v11, 0x0

    add-double v4, v4, v16

    invoke-direct {v10, v2, v3, v4, v5}, Lcom/google/maps/android/geometry/Point;-><init>(DD)V

    invoke-virtual {v12, v10}, Lcom/google/maps/android/projection/SphericalMercatorProjection;->toLatLng(Lcom/google/maps/android/geometry/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/google/maps/android/clustering/algo/StaticCluster;-><init>(Lcom/google/android/gms/maps/model/LatLng;)V

    move-object v8, v9

    .line 76
    invoke-virtual {v14, v6, v7, v8}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 77
    invoke-virtual {v13, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    .line 79
    .end local v19    # "numCells":J
    .restart local v2    # "numCells":J
    :cond_8c
    move-wide/from16 v19, v2

    .end local v2    # "numCells":J
    .restart local v19    # "numCells":J
    :goto_8e
    invoke-virtual {v8, v0}, Lcom/google/maps/android/clustering/algo/StaticCluster;->add(Lcom/google/maps/android/clustering/ClusterItem;)Z

    .line 80
    .end local v0    # "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    .end local v1    # "p":Lcom/google/maps/android/geometry/Point;
    .end local v6    # "coord":J
    .end local v8    # "cluster":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    nop

    .line 68
    move-object/from16 v0, v18

    move-wide/from16 v2, v19

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    goto :goto_32

    .line 81
    .end local v19    # "numCells":J
    .restart local v2    # "numCells":J
    :cond_9b
    move-wide/from16 v19, v2

    .end local v2    # "numCells":J
    .restart local v19    # "numCells":J
    monitor-exit v15

    .line 83
    return-object v13

    .line 81
    .end local v19    # "numCells":J
    .restart local v2    # "numCells":J
    :catchall_9f
    move-exception v0

    move-wide/from16 v19, v2

    .end local v2    # "numCells":J
    .restart local v19    # "numCells":J
    :goto_a2
    monitor-exit v15
    :try_end_a3
    .catchall {:try_start_67 .. :try_end_a3} :catchall_a4

    throw v0

    :catchall_a4
    move-exception v0

    goto :goto_a2
.end method

.method public getItems()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    return-object v0
.end method

.method public removeItem(Lcom/google/maps/android/clustering/ClusterItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/GridBasedAlgorithm;->mItems:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method
