###### Class com.google.maps.android.clustering.algo.NonHierarchicalDistanceBasedAlgorithm (com.google.maps.android.clustering.algo.NonHierarchicalDistanceBasedAlgorithm)
.class public Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;
.super Ljava/lang/Object;
.source "NonHierarchicalDistanceBasedAlgorithm.java"

# interfaces
.implements Lcom/google/maps/android/clustering/algo/Algorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;
    }
.end annotation

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
.field public static final MAX_DISTANCE_AT_ZOOM:I = 0x64

.field private static final PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;


# instance fields
.field private final mItems:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/quadtree/PointQuadTree<",
            "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 62
    new-instance v0, Lcom/google/maps/android/projection/SphericalMercatorProjection;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lcom/google/maps/android/projection/SphericalMercatorProjection;-><init>(D)V

    sput-object v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .line 49
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mItems:Ljava/util/Collection;

    .line 60
    new-instance v0, Lcom/google/maps/android/quadtree/PointQuadTree;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(DDDD)V

    iput-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    .line 175
    return-void
.end method

.method static synthetic access$200()Lcom/google/maps/android/projection/SphericalMercatorProjection;
    .registers 1

    .line 49
    sget-object v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->PROJECTION:Lcom/google/maps/android/projection/SphericalMercatorProjection;

    return-object v0
.end method

.method private createBoundsFromSpan(Lcom/google/maps/android/geometry/Point;D)Lcom/google/maps/android/geometry/Bounds;
    .registers 16
    .param p1, "p"    # Lcom/google/maps/android/geometry/Point;
    .param p2, "span"    # D

    .line 169
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p2, v0

    .line 170
    .local v0, "halfSpan":D
    new-instance v11, Lcom/google/maps/android/geometry/Bounds;

    iget-wide v2, p1, Lcom/google/maps/android/geometry/Point;->x:D

    sub-double v3, v2, v0

    iget-wide v5, p1, Lcom/google/maps/android/geometry/Point;->x:D

    add-double/2addr v5, v0

    iget-wide v7, p1, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double/2addr v7, v0

    iget-wide v9, p1, Lcom/google/maps/android/geometry/Point;->y:D

    add-double/2addr v9, v0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    return-object v11
.end method

.method private distanceSquared(Lcom/google/maps/android/geometry/Point;Lcom/google/maps/android/geometry/Point;)D
    .registers 11
    .param p1, "a"    # Lcom/google/maps/android/geometry/Point;
    .param p2, "b"    # Lcom/google/maps/android/geometry/Point;

    .line 163
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    iget-wide v0, p1, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v2, p2, Lcom/google/maps/android/geometry/Point;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v4, p2, Lcom/google/maps/android/geometry/Point;->x:D

    sub-double/2addr v2, v4

    mul-double v0, v0, v2

    iget-wide v2, p1, Lcom/google/maps/android/geometry/Point;->y:D

    iget-wide v4, p2, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p1, Lcom/google/maps/android/geometry/Point;->y:D

    iget-wide v6, p2, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double/2addr v4, v6

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addItem(Lcom/google/maps/android/clustering/ClusterItem;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    new-instance v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;-><init>(Lcom/google/maps/android/clustering/ClusterItem;Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$1;)V

    .line 67
    .local v0, "quadItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    monitor-enter v1

    .line 68
    :try_start_9
    iget-object v2, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v2, v0}, Lcom/google/maps/android/quadtree/PointQuadTree;->add(Lcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public addItems(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/clustering/ClusterItem;

    .line 76
    .local v1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    invoke-virtual {p0, v1}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->addItem(Lcom/google/maps/android/clustering/ClusterItem;)V

    .line 77
    .end local v1    # "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    goto :goto_4

    .line 78
    :cond_14
    return-void
.end method

.method public clearItems()V
    .registers 3

    .line 82
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 84
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v1}, Lcom/google/maps/android/quadtree/PointQuadTree;->clear()V

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getClusters(D)Ljava/util/Set;
    .registers 26
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

    .line 101
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    double-to-int v4, v2

    .line 103
    .local v4, "discreteZoom":I
    int-to-double v5, v4

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v5

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    div-double/2addr v7, v5

    .line 105
    .local v7, "zoomSpecificSpan":D
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v5, v0

    .line 106
    .local v5, "visitedCandidates":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v6, v0

    .line 107
    .local v6, "results":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/maps/android/clustering/Cluster<TT;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 108
    .local v9, "distanceToCluster":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;Ljava/lang/Double;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    .line 110
    .local v10, "itemToCluster":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;>;"
    iget-object v11, v1, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    monitor-enter v11

    .line 111
    :try_start_2d
    iget-object v0, v1, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_101

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    .line 112
    .local v12, "candidate":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    invoke-interface {v5, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_46

    .line 114
    goto :goto_33

    .line 117
    :cond_46
    invoke-virtual {v12}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v13

    invoke-direct {v1, v13, v7, v8}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->createBoundsFromSpan(Lcom/google/maps/android/geometry/Point;D)Lcom/google/maps/android/geometry/Bounds;

    move-result-object v13

    .line 119
    .local v13, "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    iget-object v14, v1, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v14, v13}, Lcom/google/maps/android/quadtree/PointQuadTree;->search(Lcom/google/maps/android/geometry/Bounds;)Ljava/util/Collection;

    move-result-object v14

    .line 120
    .local v14, "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v15
    :try_end_58
    .catchall {:try_start_2d .. :try_end_58} :catchall_107

    move-object/from16 v16, v0

    const/4 v0, 0x1

    if-ne v15, v0, :cond_77

    .line 122
    :try_start_5d
    invoke-interface {v6, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v9, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_70

    .line 125
    nop

    .line 111
    move-object/from16 v0, v16

    goto :goto_33

    .line 147
    .end local v12    # "candidate":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .end local v13    # "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    .end local v14    # "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    :catchall_70
    move-exception v0

    move/from16 v20, v4

    move-wide/from16 v21, v7

    goto/16 :goto_10c

    .line 127
    .restart local v12    # "candidate":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .restart local v13    # "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    .restart local v14    # "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    :cond_77
    :try_start_77
    new-instance v0, Lcom/google/maps/android/clustering/algo/StaticCluster;

    invoke-static {v12}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->access$100(Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/maps/android/clustering/ClusterItem;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/google/maps/android/clustering/algo/StaticCluster;-><init>(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 128
    .local v0, "cluster":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_8b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_ed

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    move-object/from16 v19, v17

    .line 131
    .local v19, "clusterItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    move-object/from16 v2, v19

    .end local v19    # "clusterItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .local v2, "clusterItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;
    :try_end_a1
    .catchall {:try_start_77 .. :try_end_a1} :catchall_107

    .line 132
    .local v3, "existingDistance":Ljava/lang/Double;
    move/from16 v20, v4

    .end local v4    # "discreteZoom":I
    .local v20, "discreteZoom":I
    :try_start_a3
    invoke-virtual {v2}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v4
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_e9

    move-wide/from16 v21, v7

    .end local v7    # "zoomSpecificSpan":D
    .local v21, "zoomSpecificSpan":D
    :try_start_a9
    invoke-virtual {v12}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v7

    invoke-direct {v1, v4, v7}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->distanceSquared(Lcom/google/maps/android/geometry/Point;Lcom/google/maps/android/geometry/Point;)D

    move-result-wide v7

    .line 133
    .local v7, "distance":D
    if-eqz v3, :cond_d0

    .line 135
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    cmpg-double v4, v17, v7

    if-gez v4, :cond_c3

    .line 136
    nop

    .line 130
    move/from16 v4, v20

    move-wide/from16 v7, v21

    .end local v2    # "clusterItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .end local v3    # "existingDistance":Ljava/lang/Double;
    .end local v20    # "discreteZoom":I
    .end local v21    # "zoomSpecificSpan":D
    .restart local v4    # "discreteZoom":I
    .local v7, "zoomSpecificSpan":D
    :goto_c0
    move-wide/from16 v2, p1

    goto :goto_8b

    .line 139
    .end local v4    # "discreteZoom":I
    .restart local v2    # "clusterItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .restart local v3    # "existingDistance":Ljava/lang/Double;
    .local v7, "distance":D
    .restart local v20    # "discreteZoom":I
    .restart local v21    # "zoomSpecificSpan":D
    :cond_c3
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/android/clustering/algo/StaticCluster;

    invoke-static {v2}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->access$100(Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/maps/android/clustering/algo/StaticCluster;->remove(Lcom/google/maps/android/clustering/ClusterItem;)Z

    .line 141
    :cond_d0
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v2}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->access$100(Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/android/clustering/algo/StaticCluster;->add(Lcom/google/maps/android/clustering/ClusterItem;)Z

    .line 143
    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v2    # "clusterItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .end local v3    # "existingDistance":Ljava/lang/Double;
    .end local v7    # "distance":D
    nop

    .line 130
    move/from16 v4, v20

    move-wide/from16 v7, v21

    move-object/from16 v1, p0

    goto :goto_c0

    .line 147
    .end local v0    # "cluster":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    .end local v12    # "candidate":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .end local v13    # "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    .end local v14    # "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    .end local v21    # "zoomSpecificSpan":D
    .local v7, "zoomSpecificSpan":D
    :catchall_e9
    move-exception v0

    move-wide/from16 v21, v7

    .end local v7    # "zoomSpecificSpan":D
    .restart local v21    # "zoomSpecificSpan":D
    goto :goto_10c

    .line 145
    .end local v20    # "discreteZoom":I
    .end local v21    # "zoomSpecificSpan":D
    .restart local v0    # "cluster":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    .restart local v4    # "discreteZoom":I
    .restart local v7    # "zoomSpecificSpan":D
    .restart local v12    # "candidate":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .restart local v13    # "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    .restart local v14    # "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    :cond_ed
    move/from16 v20, v4

    move-wide/from16 v21, v7

    .end local v4    # "discreteZoom":I
    .end local v7    # "zoomSpecificSpan":D
    .restart local v20    # "discreteZoom":I
    .restart local v21    # "zoomSpecificSpan":D
    invoke-interface {v5, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 146
    .end local v0    # "cluster":Lcom/google/maps/android/clustering/algo/StaticCluster;, "Lcom/google/maps/android/clustering/algo/StaticCluster<TT;>;"
    .end local v12    # "candidate":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .end local v13    # "searchBounds":Lcom/google/maps/android/geometry/Bounds;
    .end local v14    # "clusterItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;>;"
    nop

    .line 111
    move-object/from16 v0, v16

    move/from16 v4, v20

    move-wide/from16 v7, v21

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    goto/16 :goto_33

    .line 147
    .end local v20    # "discreteZoom":I
    .end local v21    # "zoomSpecificSpan":D
    .restart local v4    # "discreteZoom":I
    .restart local v7    # "zoomSpecificSpan":D
    :cond_101
    move/from16 v20, v4

    move-wide/from16 v21, v7

    .end local v4    # "discreteZoom":I
    .end local v7    # "zoomSpecificSpan":D
    .restart local v20    # "discreteZoom":I
    .restart local v21    # "zoomSpecificSpan":D
    monitor-exit v11

    .line 148
    return-object v6

    .line 147
    .end local v20    # "discreteZoom":I
    .end local v21    # "zoomSpecificSpan":D
    .restart local v4    # "discreteZoom":I
    .restart local v7    # "zoomSpecificSpan":D
    :catchall_107
    move-exception v0

    move/from16 v20, v4

    move-wide/from16 v21, v7

    .end local v4    # "discreteZoom":I
    .end local v7    # "zoomSpecificSpan":D
    .restart local v20    # "discreteZoom":I
    .restart local v21    # "zoomSpecificSpan":D
    :goto_10c
    monitor-exit v11
    :try_end_10d
    .catchall {:try_start_a9 .. :try_end_10d} :catchall_10e

    throw v0

    :catchall_10e
    move-exception v0

    goto :goto_10c
.end method

.method public getItems()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    monitor-enter v1

    .line 155
    :try_start_8
    iget-object v2, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    .line 156
    .local v3, "quadItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    invoke-static {v3}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->access$100(Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v3    # "quadItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    goto :goto_e

    .line 158
    :cond_22
    monitor-exit v1

    .line 159
    return-object v0

    .line 158
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public removeItem(Lcom/google/maps/android/clustering/ClusterItem;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    new-instance v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;-><init>(Lcom/google/maps/android/clustering/ClusterItem;Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$1;)V

    .line 93
    .local v0, "quadItem":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    monitor-enter v1

    .line 94
    :try_start_9
    iget-object v2, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mItems:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->mQuadTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v2, v0}, Lcom/google/maps/android/quadtree/PointQuadTree;->remove(Lcom/google/maps/android/quadtree/PointQuadTree$Item;)Z

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v2
.end method

###### Class com.google.maps.android.clustering.algo.NonHierarchicalDistanceBasedAlgorithm.AnonymousClass1 (com.google.maps.android.clustering.algo.NonHierarchicalDistanceBasedAlgorithm$1)
.class synthetic Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$1;
.super Ljava/lang/Object;
.source "NonHierarchicalDistanceBasedAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.maps.android.clustering.algo.NonHierarchicalDistanceBasedAlgorithm.QuadItem (com.google.maps.android.clustering.algo.NonHierarchicalDistanceBasedAlgorithm$QuadItem)
.class Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;
.super Ljava/lang/Object;
.source "NonHierarchicalDistanceBasedAlgorithm.java"

# interfaces
.implements Lcom/google/maps/android/quadtree/PointQuadTree$Item;
.implements Lcom/google/maps/android/clustering/Cluster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuadItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/clustering/ClusterItem;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/quadtree/PointQuadTree$Item;",
        "Lcom/google/maps/android/clustering/Cluster<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPoint:Lcom/google/maps/android/geometry/Point;

.field private final mPosition:Lcom/google/android/gms/maps/model/LatLng;

.field private singletonSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/maps/android/clustering/ClusterItem;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 181
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    .local p1, "item":Lcom/google/maps/android/clustering/ClusterItem;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;

    .line 183
    invoke-interface {p1}, Lcom/google/maps/android/clustering/ClusterItem;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    .line 184
    invoke-static {}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm;->access$200()Lcom/google/maps/android/projection/SphericalMercatorProjection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/maps/android/projection/SphericalMercatorProjection;->toPoint(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/android/projection/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->mPoint:Lcom/google/maps/android/geometry/Point;

    .line 185
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->singletonSet:Ljava/util/Set;

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/android/clustering/ClusterItem;Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/maps/android/clustering/ClusterItem;
    .param p2, "x1"    # Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$1;

    .line 175
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;-><init>(Lcom/google/maps/android/clustering/ClusterItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;)Lcom/google/maps/android/clustering/ClusterItem;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    .line 175
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 215
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    instance-of v0, p1, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    if-nez v0, :cond_6

    .line 216
    const/4 v0, 0x0

    return v0

    .line 219
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;

    iget-object v0, v0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;

    iget-object v1, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getItems()Ljava/util/Collection;
    .registers 2

    .line 175
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    invoke-virtual {p0}, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->getItems()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->singletonSet:Ljava/util/Set;

    return-object v0
.end method

.method public getPoint()Lcom/google/maps/android/geometry/Point;
    .registers 2

    .line 190
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->mPoint:Lcom/google/maps/android/geometry/Point;

    return-object v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    .line 195
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 205
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 210
    .local p0, "this":Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;, "Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/clustering/algo/NonHierarchicalDistanceBasedAlgorithm$QuadItem;->mClusterItem:Lcom/google/maps/android/clustering/ClusterItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
