###### Class com.google.maps.android.quadtree.PointQuadTree (com.google.maps.android.quadtree.PointQuadTree)
.class public Lcom/google/maps/android/quadtree/PointQuadTree;
.super Ljava/lang/Object;
.source "PointQuadTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/quadtree/PointQuadTree$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/maps/android/quadtree/PointQuadTree$Item;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MAX_DEPTH:I = 0x28

.field private static final MAX_ELEMENTS:I = 0x32


# instance fields
.field private final mBounds:Lcom/google/maps/android/geometry/Bounds;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/maps/android/quadtree/PointQuadTree<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mDepth:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(DDDD)V
    .registers 19
    .param p1, "minX"    # D
    .param p3, "maxX"    # D
    .param p5, "minY"    # D
    .param p7, "maxY"    # D

    .line 74
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    new-instance v9, Lcom/google/maps/android/geometry/Bounds;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    move-object v0, p0

    invoke-direct {p0, v9}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(Lcom/google/maps/android/geometry/Bounds;)V

    .line 75
    return-void
.end method

.method private constructor <init>(DDDDI)V
    .registers 20
    .param p1, "minX"    # D
    .param p3, "maxX"    # D
    .param p5, "minY"    # D
    .param p7, "maxY"    # D
    .param p9, "depth"    # I

    .line 82
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    new-instance v9, Lcom/google/maps/android/geometry/Bounds;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    move-object v0, p0

    move/from16 v1, p9

    invoke-direct {p0, v9, v1}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(Lcom/google/maps/android/geometry/Bounds;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/google/maps/android/geometry/Bounds;)V
    .registers 3
    .param p1, "bounds"    # Lcom/google/maps/android/geometry/Bounds;

    .line 78
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(Lcom/google/maps/android/geometry/Bounds;I)V

    .line 79
    return-void
.end method

.method private constructor <init>(Lcom/google/maps/android/geometry/Bounds;I)V
    .registers 4
    .param p1, "bounds"    # Lcom/google/maps/android/geometry/Bounds;
    .param p2, "depth"    # I

    .line 85
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    .line 87
    iput p2, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    .line 88
    return-void
.end method

.method private insert(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)V
    .registers 13
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDTT;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    .local p5, "item":Lcom/google/maps/android/quadtree/PointQuadTree$Item;, "TT;"
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_60

    .line 102
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v0, v0, Lcom/google/maps/android/geometry/Bounds;->midY:D

    cmpg-double v2, p3, v0

    if-gez v2, :cond_36

    .line 103
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v0, v0, Lcom/google/maps/android/geometry/Bounds;->midX:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_25

    .line 104
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/android/quadtree/PointQuadTree;->insert(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    goto :goto_5f

    .line 106
    :cond_25
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/android/quadtree/PointQuadTree;->insert(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    goto :goto_5f

    .line 109
    :cond_36
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v0, v0, Lcom/google/maps/android/geometry/Bounds;->midX:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_4f

    .line 110
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/android/quadtree/PointQuadTree;->insert(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    goto :goto_5f

    .line 112
    :cond_4f
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/android/quadtree/PointQuadTree;->insert(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    .line 115
    :goto_5f
    return-void

    .line 117
    :cond_60
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    if-nez v0, :cond_6b

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    .line 120
    :cond_6b
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_83

    iget v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_83

    .line 122
    invoke-direct {p0}, Lcom/google/maps/android/quadtree/PointQuadTree;->split()V

    .line 124
    :cond_83
    return-void
.end method

.method private remove(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)Z
    .registers 13
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDTT;)Z"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    .local p5, "item":Lcom/google/maps/android/quadtree/PointQuadTree$Item;, "TT;"
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_64

    .line 161
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v0, v0, Lcom/google/maps/android/geometry/Bounds;->midY:D

    cmpg-double v2, p3, v0

    if-gez v2, :cond_38

    .line 162
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v0, v0, Lcom/google/maps/android/geometry/Bounds;->midX:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_26

    .line 163
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/android/quadtree/PointQuadTree;->remove(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)Z

    move-result v0

    return v0

    .line 165
    :cond_26
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/android/quadtree/PointQuadTree;->remove(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)Z

    move-result v0

    return v0

    .line 168
    :cond_38
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v0, v0, Lcom/google/maps/android/geometry/Bounds;->midX:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_52

    .line 169
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/android/quadtree/PointQuadTree;->remove(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)Z

    move-result v0

    return v0

    .line 171
    :cond_52
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/android/quadtree/PointQuadTree;->remove(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)Z

    move-result v0

    return v0

    .line 176
    :cond_64
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private search(Lcom/google/maps/android/geometry/Bounds;Ljava/util/Collection;)V
    .registers 6
    .param p1, "searchBounds"    # Lcom/google/maps/android/geometry/Bounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/geometry/Bounds;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    .local p2, "results":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/geometry/Bounds;->intersects(Lcom/google/maps/android/geometry/Bounds;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 201
    return-void

    .line 204
    :cond_9
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_23

    .line 205
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree;

    .line 206
    .local v1, "quad":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    invoke-direct {v1, p1, p2}, Lcom/google/maps/android/quadtree/PointQuadTree;->search(Lcom/google/maps/android/geometry/Bounds;Ljava/util/Collection;)V

    .line 207
    .end local v1    # "quad":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    goto :goto_13

    .line 208
    :cond_23
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    if-eqz v0, :cond_55

    .line 209
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/geometry/Bounds;->contains(Lcom/google/maps/android/geometry/Bounds;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 210
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_55

    .line 212
    :cond_35
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/quadtree/PointQuadTree$Item;

    .line 213
    .local v1, "item":Lcom/google/maps/android/quadtree/PointQuadTree$Item;, "TT;"
    invoke-interface {v1}, Lcom/google/maps/android/quadtree/PointQuadTree$Item;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/maps/android/geometry/Bounds;->contains(Lcom/google/maps/android/geometry/Point;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 214
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v1    # "item":Lcom/google/maps/android/quadtree/PointQuadTree$Item;, "TT;"
    :cond_54
    goto :goto_3b

    .line 219
    :cond_55
    :goto_55
    return-void
.end method

.method private split()V
    .registers 13

    .line 130
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    .line 131
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    new-instance v11, Lcom/google/maps/android/quadtree/PointQuadTree;

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v2, v1, Lcom/google/maps/android/geometry/Bounds;->minX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v4, v1, Lcom/google/maps/android/geometry/Bounds;->midX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v6, v1, Lcom/google/maps/android/geometry/Bounds;->minY:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v8, v1, Lcom/google/maps/android/geometry/Bounds;->midY:D

    iget v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    new-instance v11, Lcom/google/maps/android/quadtree/PointQuadTree;

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v2, v1, Lcom/google/maps/android/geometry/Bounds;->midX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v4, v1, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v6, v1, Lcom/google/maps/android/geometry/Bounds;->minY:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v8, v1, Lcom/google/maps/android/geometry/Bounds;->midY:D

    iget v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    new-instance v11, Lcom/google/maps/android/quadtree/PointQuadTree;

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v2, v1, Lcom/google/maps/android/geometry/Bounds;->minX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v4, v1, Lcom/google/maps/android/geometry/Bounds;->midX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v6, v1, Lcom/google/maps/android/geometry/Bounds;->midY:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v8, v1, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    iget v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    new-instance v11, Lcom/google/maps/android/quadtree/PointQuadTree;

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v2, v1, Lcom/google/maps/android/geometry/Bounds;->midX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v4, v1, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v6, v1, Lcom/google/maps/android/geometry/Bounds;->midY:D

    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v8, v1, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    iget v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mDepth:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    .line 137
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/quadtree/PointQuadTree$Item;

    .line 141
    .local v2, "item":Lcom/google/maps/android/quadtree/PointQuadTree$Item;, "TT;"
    invoke-interface {v2}, Lcom/google/maps/android/quadtree/PointQuadTree$Item;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/maps/android/geometry/Point;->x:D

    invoke-interface {v2}, Lcom/google/maps/android/quadtree/PointQuadTree$Item;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/maps/android/geometry/Point;->y:D

    move-object v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/maps/android/quadtree/PointQuadTree;->insert(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    .line 142
    .end local v2    # "item":Lcom/google/maps/android/quadtree/PointQuadTree$Item;, "TT;"
    goto :goto_8d

    .line 143
    :cond_ab
    return-void
.end method


# virtual methods
.method public add(Lcom/google/maps/android/quadtree/PointQuadTree$Item;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    .local p1, "item":Lcom/google/maps/android/quadtree/PointQuadTree$Item;, "TT;"
    invoke-interface {p1}, Lcom/google/maps/android/quadtree/PointQuadTree$Item;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v0

    .line 95
    .local v0, "point":Lcom/google/maps/android/geometry/Point;
    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v2, v0, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v4, v0, Lcom/google/maps/android/geometry/Point;->y:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/maps/android/geometry/Bounds;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 96
    iget-wide v3, v0, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v5, v0, Lcom/google/maps/android/geometry/Point;->y:D

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/android/quadtree/PointQuadTree;->insert(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    .line 98
    :cond_19
    return-void
.end method

.method public clear()V
    .registers 2

    .line 184
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mChildren:Ljava/util/List;

    .line 185
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 186
    iget-object v0, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    :cond_c
    return-void
.end method

.method public remove(Lcom/google/maps/android/quadtree/PointQuadTree$Item;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    .local p1, "item":Lcom/google/maps/android/quadtree/PointQuadTree$Item;, "TT;"
    invoke-interface {p1}, Lcom/google/maps/android/quadtree/PointQuadTree$Item;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v0

    .line 152
    .local v0, "point":Lcom/google/maps/android/geometry/Point;
    iget-object v1, p0, Lcom/google/maps/android/quadtree/PointQuadTree;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v2, v0, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v4, v0, Lcom/google/maps/android/geometry/Point;->y:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/maps/android/geometry/Bounds;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 153
    iget-wide v3, v0, Lcom/google/maps/android/geometry/Point;->x:D

    iget-wide v5, v0, Lcom/google/maps/android/geometry/Point;->y:D

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/android/quadtree/PointQuadTree;->remove(DDLcom/google/maps/android/quadtree/PointQuadTree$Item;)Z

    move-result v1

    return v1

    .line 155
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method public search(Lcom/google/maps/android/geometry/Bounds;)Ljava/util/Collection;
    .registers 3
    .param p1, "searchBounds"    # Lcom/google/maps/android/geometry/Bounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/geometry/Bounds;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lcom/google/maps/android/quadtree/PointQuadTree;, "Lcom/google/maps/android/quadtree/PointQuadTree<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/quadtree/PointQuadTree;->search(Lcom/google/maps/android/geometry/Bounds;Ljava/util/Collection;)V

    .line 196
    return-object v0
.end method

###### Class com.google.maps.android.quadtree.PointQuadTree.Item (com.google.maps.android.quadtree.PointQuadTree$Item)
.class public interface abstract Lcom/google/maps/android/quadtree/PointQuadTree$Item;
.super Ljava/lang/Object;
.source "PointQuadTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/quadtree/PointQuadTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Item"
.end annotation


# virtual methods
.method public abstract getPoint()Lcom/google/maps/android/geometry/Point;
.end method
