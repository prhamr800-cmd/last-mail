###### Class com.google.maps.android.heatmaps.HeatmapTileProvider (com.google.maps.android.heatmaps.HeatmapTileProvider)
.class public Lcom/google/maps/android/heatmaps/HeatmapTileProvider;
.super Ljava/lang/Object;
.source "HeatmapTileProvider.java"

# interfaces
.implements Lcom/google/android/gms/maps/model/TileProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_GRADIENT:Lcom/google/maps/android/heatmaps/Gradient;

.field private static final DEFAULT_GRADIENT_COLORS:[I

.field private static final DEFAULT_GRADIENT_START_POINTS:[F

.field private static final DEFAULT_MAX_ZOOM:I = 0xb

.field private static final DEFAULT_MIN_ZOOM:I = 0x5

.field public static final DEFAULT_OPACITY:D = 0.7

.field public static final DEFAULT_RADIUS:I = 0x14

.field private static final MAX_RADIUS:I = 0x32

.field private static final MAX_ZOOM_LEVEL:I = 0x16

.field private static final MIN_RADIUS:I = 0xa

.field private static final SCREEN_SIZE:I = 0x500

.field private static final TILE_DIM:I = 0x200

.field static final WORLD_WIDTH:D = 1.0


# instance fields
.field private mBounds:Lcom/google/maps/android/geometry/Bounds;

.field private mColorMap:[I

.field private mData:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/maps/android/heatmaps/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private mGradient:Lcom/google/maps/android/heatmaps/Gradient;

.field private mKernel:[D

.field private mMaxIntensity:[D

.field private mOpacity:D

.field private mRadius:I

.field private mTree:Lcom/google/maps/android/quadtree/PointQuadTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/quadtree/PointQuadTree<",
            "Lcom/google/maps/android/heatmaps/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 54
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 55
    const/4 v2, 0x0

    const/16 v3, 0x66

    const/16 v4, 0xe1

    invoke-static {v3, v4, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v1, v2

    .line 56
    const/16 v3, 0xff

    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    sput-object v1, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->DEFAULT_GRADIENT_COLORS:[I

    .line 64
    new-array v0, v0, [F

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->DEFAULT_GRADIENT_START_POINTS:[F

    .line 71
    new-instance v0, Lcom/google/maps/android/heatmaps/Gradient;

    sget-object v1, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->DEFAULT_GRADIENT_COLORS:[I

    sget-object v2, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->DEFAULT_GRADIENT_START_POINTS:[F

    invoke-direct {v0, v1, v2}, Lcom/google/maps/android/heatmaps/Gradient;-><init>([I[F)V

    sput-object v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->DEFAULT_GRADIENT:Lcom/google/maps/android/heatmaps/Gradient;

    return-void

    :array_2c
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;)V
    .registers 7
    .param p1, "builder"    # Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-static {p1}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->access$200(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mData:Ljava/util/Collection;

    .line 270
    invoke-static {p1}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->access$300(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    .line 271
    invoke-static {p1}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->access$400(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;)Lcom/google/maps/android/heatmaps/Gradient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mGradient:Lcom/google/maps/android/heatmaps/Gradient;

    .line 272
    invoke-static {p1}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->access$500(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mOpacity:D

    .line 275
    iget v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    iget v1, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->generateKernel(ID)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mKernel:[D

    .line 278
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mGradient:Lcom/google/maps/android/heatmaps/Gradient;

    invoke-virtual {p0, v0}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->setGradient(Lcom/google/maps/android/heatmaps/Gradient;)V

    .line 281
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mData:Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->setWeightedData(Ljava/util/Collection;)V

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;Lcom/google/maps/android/heatmaps/HeatmapTileProvider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;
    .param p2, "x1"    # Lcom/google/maps/android/heatmaps/HeatmapTileProvider$1;

    .line 38
    invoke-direct {p0, p1}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;-><init>(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .param p0, "x0"    # Ljava/util/Collection;

    .line 38
    invoke-static {p0}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->wrapData(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static colorize([[D[ID)Landroid/graphics/Bitmap;
    .registers 22
    .param p0, "grid"    # [[D
    .param p1, "colorMap"    # [I
    .param p2, "max"    # D

    .line 678
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, v1, v2

    .line 680
    .local v2, "maxColor":I
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v3, p2

    .line 682
    .local v3, "colorMapScaling":D
    array-length v13, v0

    .line 687
    .local v13, "dim":I
    mul-int v5, v13, v13

    new-array v12, v5, [I

    .line 688
    .local v12, "colors":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_18
    move v11, v6

    .end local v6    # "i":I
    .local v11, "i":I
    if-ge v11, v13, :cond_48

    .line 689
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1c
    if-ge v6, v13, :cond_42

    .line 693
    aget-object v7, v0, v6

    aget-wide v8, v7, v11

    .line 694
    .local v8, "val":D
    mul-int v7, v11, v13

    add-int/2addr v7, v6

    .line 695
    .local v7, "index":I
    move v15, v6

    .end local v6    # "j":I
    .local v15, "j":I
    mul-double v5, v8, v3

    double-to-int v5, v5

    .line 697
    .local v5, "col":I
    const-wide/16 v16, 0x0

    cmpl-double v6, v8, v16

    if-eqz v6, :cond_3b

    .line 699
    array-length v6, v1

    if-ge v5, v6, :cond_38

    aget v6, v1, v5

    aput v6, v12, v7

    .line 689
    :goto_36
    const/4 v6, 0x0

    goto :goto_3e

    .line 700
    :cond_38
    aput v2, v12, v7

    goto :goto_36

    .line 702
    :cond_3b
    const/4 v6, 0x0

    aput v6, v12, v7

    .line 689
    :goto_3e
    add-int/lit8 v5, v15, 0x1

    move v6, v5

    goto :goto_1c

    .line 688
    .end local v5    # "col":I
    .end local v7    # "index":I
    .end local v8    # "val":D
    .end local v15    # "j":I
    .restart local v6    # "j":I
    :cond_42
    move v15, v6

    const/4 v6, 0x0

    .end local v6    # "j":I
    .restart local v15    # "j":I
    add-int/lit8 v5, v11, 0x1

    move v6, v5

    goto :goto_18

    .line 708
    .end local v15    # "j":I
    :cond_48
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v13, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 710
    .local v14, "tile":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v14

    move-object v6, v12

    move v8, v13

    move v15, v11

    .end local v11    # "i":I
    .local v15, "i":I
    move v11, v13

    move-object/from16 v16, v12

    .end local v12    # "colors":[I
    .local v16, "colors":[I
    move v12, v13

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 711
    return-object v14
.end method

.method private static convertBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/Tile;
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 532
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 533
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 534
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 535
    .local v1, "bitmapdata":[B
    new-instance v2, Lcom/google/android/gms/maps/model/Tile;

    const/16 v3, 0x200

    invoke-direct {v2, v3, v3, v1}, Lcom/google/android/gms/maps/model/Tile;-><init>(II[B)V

    return-object v2
.end method

.method static convolve([[D[D)[[D
    .registers 24
    .param p0, "grid"    # [[D
    .param p1, "kernel"    # [D

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 600
    .local v2, "radius":I
    array-length v3, v0

    .line 602
    .local v3, "dimOld":I
    mul-int/lit8 v4, v2, 0x2

    sub-int v4, v3, v4

    .line 605
    .local v4, "dim":I
    move v5, v2

    .line 606
    .local v5, "lowerLimit":I
    add-int v6, v2, v4

    add-int/lit8 v6, v6, -0x1

    .line 609
    .local v6, "upperLimit":I
    filled-new-array {v3, v3}, [I

    move-result-object v7

    const-class v8, D

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 615
    .local v7, "intermediate":[[D
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_28
    const-wide/16 v10, 0x0

    if-ge v9, v3, :cond_6e

    .line 616
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_2d
    if-ge v12, v3, :cond_6b

    .line 618
    aget-object v13, v0, v9

    aget-wide v14, v13, v12

    .line 620
    .local v14, "val":D
    cmpl-double v13, v14, v10

    if-eqz v13, :cond_66

    .line 623
    add-int v13, v9, v2

    if-ge v6, v13, :cond_3d

    move v13, v6

    goto :goto_3f

    :cond_3d
    add-int v13, v9, v2

    :goto_3f
    add-int/lit8 v13, v13, 0x1

    .line 625
    .local v13, "xUpperLimit":I
    sub-int v8, v9, v2

    if-le v5, v8, :cond_47

    move v8, v5

    goto :goto_49

    :cond_47
    sub-int v8, v9, v2

    .line 626
    .local v8, "initial":I
    :goto_49
    move/from16 v16, v8

    .local v16, "x2":I
    :goto_4b
    move/from16 v17, v16

    move/from16 v10, v17

    .end local v16    # "x2":I
    .local v10, "x2":I
    if-ge v10, v13, :cond_66

    .line 630
    aget-object v11, v7, v10

    aget-wide v16, v11, v12

    sub-int v20, v9, v2

    sub-int v20, v10, v20

    aget-wide v20, v1, v20

    mul-double v20, v20, v14

    add-double v16, v16, v20

    aput-wide v16, v11, v12

    .line 626
    add-int/lit8 v16, v10, 0x1

    const-wide/16 v10, 0x0

    goto :goto_4b

    .line 616
    .end local v8    # "initial":I
    .end local v10    # "x2":I
    .end local v13    # "xUpperLimit":I
    :cond_66
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v10, 0x0

    goto :goto_2d

    .line 615
    .end local v14    # "val":D
    :cond_6b
    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 637
    .end local v12    # "y":I
    :cond_6e
    filled-new-array {v4, v4}, [I

    move-result-object v8

    const-class v10, D

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 644
    .local v8, "outputGrid":[[D
    move v9, v5

    :goto_7b
    add-int/lit8 v10, v6, 0x1

    if-ge v9, v10, :cond_be

    .line 645
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_80
    if-ge v10, v3, :cond_bb

    .line 647
    aget-object v11, v7, v9

    aget-wide v12, v11, v10

    .line 649
    .local v12, "val":D
    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_b8

    .line 653
    add-int v11, v10, v2

    if-ge v6, v11, :cond_92

    move v11, v6

    goto :goto_94

    :cond_92
    add-int v11, v10, v2

    :goto_94
    add-int/lit8 v11, v11, 0x1

    .line 655
    .local v11, "yUpperLimit":I
    sub-int v14, v10, v2

    if-le v5, v14, :cond_9c

    move v14, v5

    goto :goto_9e

    :cond_9c
    sub-int v14, v10, v2

    .line 656
    .local v14, "initial":I
    :goto_9e
    move v15, v14

    .local v15, "y2":I
    :goto_9f
    if-ge v15, v11, :cond_b8

    .line 659
    sub-int v16, v9, v2

    aget-object v16, v8, v16

    sub-int v17, v15, v2

    aget-wide v18, v16, v17

    sub-int v20, v10, v2

    sub-int v20, v15, v20

    aget-wide v20, v1, v20

    mul-double v20, v20, v12

    add-double v18, v18, v20

    aput-wide v18, v16, v17

    .line 656
    add-int/lit8 v15, v15, 0x1

    goto :goto_9f

    .line 645
    .end local v11    # "yUpperLimit":I
    .end local v14    # "initial":I
    .end local v15    # "y2":I
    :cond_b8
    add-int/lit8 v10, v10, 0x1

    goto :goto_80

    .line 644
    .end local v12    # "val":D
    :cond_bb
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b

    .line 665
    .end local v10    # "y":I
    :cond_be
    return-object v8
.end method

.method static generateKernel(ID)[D
    .registers 10
    .param p0, "radius"    # I
    .param p1, "sd"    # D

    .line 581
    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    .line 582
    .local v0, "kernel":[D
    neg-int v1, p0

    .local v1, "i":I
    :goto_7
    if-gt v1, p0, :cond_22

    .line 583
    add-int v2, v1, p0

    neg-int v3, v1

    mul-int v3, v3, v1

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v5, v5, p1

    mul-double v5, v5, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 585
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method static getBounds(Ljava/util/Collection;)Lcom/google/maps/android/geometry/Bounds;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/maps/android/heatmaps/WeightedLatLng;",
            ">;)",
            "Lcom/google/maps/android/geometry/Bounds;"
        }
    .end annotation

    .line 549
    .local p0, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 551
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/heatmaps/WeightedLatLng;

    .line 553
    .local v1, "first":Lcom/google/maps/android/heatmaps/WeightedLatLng;
    invoke-virtual {v1}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/maps/android/geometry/Point;->x:D

    .line 554
    .local v2, "minX":D
    invoke-virtual {v1}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/maps/android/geometry/Point;->x:D

    .line 555
    .local v4, "maxX":D
    invoke-virtual {v1}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v6

    iget-wide v6, v6, Lcom/google/maps/android/geometry/Point;->y:D

    .line 556
    .local v6, "minY":D
    invoke-virtual {v1}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/maps/android/geometry/Point;->y:D

    .line 558
    .local v8, "maxY":D
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 559
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/maps/android/heatmaps/WeightedLatLng;

    .line 560
    .local v10, "l":Lcom/google/maps/android/heatmaps/WeightedLatLng;
    invoke-virtual {v10}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v11

    iget-wide v11, v11, Lcom/google/maps/android/geometry/Point;->x:D

    .line 561
    .local v11, "x":D
    invoke-virtual {v10}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v13

    iget-wide v13, v13, Lcom/google/maps/android/geometry/Point;->y:D

    .line 563
    .local v13, "y":D
    cmpg-double v15, v11, v2

    if-gez v15, :cond_3f

    move-wide v2, v11

    .line 564
    :cond_3f
    cmpl-double v15, v11, v4

    if-lez v15, :cond_44

    move-wide v4, v11

    .line 565
    :cond_44
    cmpg-double v15, v13, v6

    if-gez v15, :cond_49

    move-wide v6, v13

    .line 566
    :cond_49
    cmpl-double v15, v13, v8

    if-lez v15, :cond_4e

    move-wide v8, v13

    .line 567
    .end local v10    # "l":Lcom/google/maps/android/heatmaps/WeightedLatLng;
    .end local v11    # "x":D
    .end local v13    # "y":D
    :cond_4e
    goto :goto_22

    .line 569
    :cond_4f
    new-instance v19, Lcom/google/maps/android/geometry/Bounds;

    move-object/from16 v10, v19

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    invoke-direct/range {v10 .. v18}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    return-object v19
.end method

.method private getMaxIntensities(I)[D
    .registers 14
    .param p1, "radius"    # I

    .line 506
    const/16 v0, 0x16

    new-array v1, v0, [D

    .line 509
    .local v1, "maxIntensityArray":[D
    const/4 v2, 0x5

    const/4 v3, 0x5

    .local v3, "i":I
    :goto_6
    const/16 v4, 0xb

    if-ge v3, v4, :cond_31

    .line 511
    iget-object v4, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mData:Ljava/util/Collection;

    iget-object v5, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    const-wide/high16 v6, 0x4094000000000000L    # 1280.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-int/lit8 v10, v3, -0x3

    int-to-double v10, v10

    .line 512
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v6

    double-to-int v6, v8

    .line 511
    invoke-static {v4, v5, p1, v6}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->getMaxValue(Ljava/util/Collection;Lcom/google/maps/android/geometry/Bounds;II)D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 513
    if-ne v3, v2, :cond_2e

    .line 514
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_25
    if-ge v4, v3, :cond_2e

    aget-wide v5, v1, v3

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 509
    .end local v4    # "j":I
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 517
    .end local v3    # "i":I
    :cond_31
    nop

    .local v4, "i":I
    :goto_32
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    if-ge v2, v0, :cond_3e

    .line 518
    const/16 v3, 0xa

    aget-wide v3, v1, v3

    aput-wide v3, v1, v2

    .line 517
    add-int/lit8 v4, v2, 0x1

    goto :goto_32

    .line 521
    .end local v2    # "i":I
    :cond_3e
    return-object v1
.end method

.method static getMaxValue(Ljava/util/Collection;Lcom/google/maps/android/geometry/Bounds;II)D
    .registers 37
    .param p1, "bounds"    # Lcom/google/maps/android/geometry/Bounds;
    .param p2, "radius"    # I
    .param p3, "screenDim"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/maps/android/heatmaps/WeightedLatLng;",
            ">;",
            "Lcom/google/maps/android/geometry/Bounds;",
            "II)D"
        }
    .end annotation

    .line 727
    .local p0, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/google/maps/android/geometry/Bounds;->minX:D

    .line 728
    .local v1, "minX":D
    iget-wide v3, v0, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    .line 729
    .local v3, "maxX":D
    iget-wide v5, v0, Lcom/google/maps/android/geometry/Bounds;->minY:D

    .line 730
    .local v5, "minY":D
    iget-wide v7, v0, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    .line 731
    .local v7, "maxY":D
    sub-double v9, v3, v1

    sub-double v11, v7, v5

    cmpl-double v13, v9, v11

    if-lez v13, :cond_15

    sub-double v9, v3, v1

    goto :goto_18

    :cond_15
    const/4 v9, 0x0

    sub-double v9, v7, v5

    .line 734
    .local v9, "boundsDim":D
    :goto_18
    mul-int/lit8 v12, p2, 0x2

    div-int v12, p3, v12

    int-to-double v14, v12

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double v14, v14, v16

    double-to-int v12, v14

    .line 736
    .local v12, "nBuckets":I
    int-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v9

    .line 740
    .local v14, "scale":D
    new-instance v16, Landroid/support/v4/util/LongSparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    move-object/from16 v18, v16

    .line 745
    .local v18, "buckets":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/support/v4/util/LongSparseArray<Ljava/lang/Double;>;>;"
    const-wide/16 v16, 0x0

    .line 746
    .local v16, "max":D
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_37
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/maps/android/heatmaps/WeightedLatLng;

    .line 747
    .local v20, "l":Lcom/google/maps/android/heatmaps/WeightedLatLng;
    invoke-virtual/range {v20 .. v20}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v0

    move-wide/from16 v21, v3

    .end local v3    # "maxX":D
    .local v21, "maxX":D
    iget-wide v3, v0, Lcom/google/maps/android/geometry/Point;->x:D

    .line 748
    .local v3, "x":D
    invoke-virtual/range {v20 .. v20}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v0

    move-wide/from16 v23, v7

    .end local v7    # "maxY":D
    .local v23, "maxY":D
    iget-wide v7, v0, Lcom/google/maps/android/geometry/Point;->y:D

    .line 750
    .local v7, "y":D
    sub-double v25, v3, v1

    move-wide/from16 v27, v1

    .end local v1    # "minX":D
    .local v27, "minX":D
    mul-double v0, v25, v14

    double-to-int v0, v0

    .line 751
    .local v0, "xBucket":I
    sub-double v1, v7, v5

    mul-double v1, v1, v14

    double-to-int v1, v1

    .line 754
    .local v1, "yBucket":I
    move-wide/from16 v29, v3

    .end local v3    # "x":D
    .local v29, "x":D
    int-to-long v2, v0

    move-object/from16 v4, v18

    .end local v18    # "buckets":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/support/v4/util/LongSparseArray<Ljava/lang/Double;>;>;"
    .local v4, "buckets":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/support/v4/util/LongSparseArray<Ljava/lang/Double;>;>;"
    invoke-virtual {v4, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/LongSparseArray;

    .line 755
    .local v2, "column":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Double;>;"
    if-nez v2, :cond_79

    .line 756
    new-instance v3, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v3}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    move-object v2, v3

    .line 757
    move-wide/from16 v31, v5

    .end local v5    # "minY":D
    .local v31, "minY":D
    int-to-long v5, v0

    invoke-virtual {v4, v5, v6, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_7b

    .line 760
    .end local v31    # "minY":D
    .restart local v5    # "minY":D
    :cond_79
    move-wide/from16 v31, v5

    .end local v5    # "minY":D
    .restart local v31    # "minY":D
    :goto_7b
    int-to-long v5, v1

    invoke-virtual {v2, v5, v6}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 761
    .local v3, "value":Ljava/lang/Double;
    if-nez v3, :cond_8a

    .line 762
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 764
    :cond_8a
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getIntensity()D

    move-result-wide v25

    add-double v5, v5, v25

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 766
    int-to-long v5, v1

    invoke-virtual {v2, v5, v6, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 768
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v18, v5, v16

    if-lez v18, :cond_aa

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 769
    move-wide/from16 v16, v0

    .line 746
    .end local v0    # "xBucket":I
    .end local v1    # "yBucket":I
    .end local v2    # "column":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Double;>;"
    .end local v3    # "value":Ljava/lang/Double;
    .end local v7    # "y":D
    .end local v20    # "l":Lcom/google/maps/android/heatmaps/WeightedLatLng;
    .end local v29    # "x":D
    :cond_aa
    move-object/from16 v18, v4

    move-wide/from16 v3, v21

    move-wide/from16 v7, v23

    move-wide/from16 v1, v27

    move-wide/from16 v5, v31

    move-object/from16 v0, p1

    goto :goto_37

    .line 771
    .end local v4    # "buckets":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/support/v4/util/LongSparseArray<Ljava/lang/Double;>;>;"
    .end local v21    # "maxX":D
    .end local v23    # "maxY":D
    .end local v27    # "minX":D
    .end local v31    # "minY":D
    .local v1, "minX":D
    .local v3, "maxX":D
    .restart local v5    # "minY":D
    .local v7, "maxY":D
    .restart local v18    # "buckets":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/support/v4/util/LongSparseArray<Ljava/lang/Double;>;>;"
    :cond_b7
    move-wide/from16 v27, v1

    move-wide/from16 v21, v3

    move-wide/from16 v31, v5

    move-wide/from16 v23, v7

    move-object/from16 v4, v18

    .end local v1    # "minX":D
    .end local v3    # "maxX":D
    .end local v5    # "minY":D
    .end local v7    # "maxY":D
    .end local v18    # "buckets":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/support/v4/util/LongSparseArray<Ljava/lang/Double;>;>;"
    .restart local v4    # "buckets":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/support/v4/util/LongSparseArray<Ljava/lang/Double;>;>;"
    .restart local v21    # "maxX":D
    .restart local v23    # "maxY":D
    .restart local v27    # "minX":D
    .restart local v31    # "minY":D
    return-wide v16
.end method

.method private static wrapData(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/maps/android/heatmaps/WeightedLatLng;",
            ">;"
        }
    .end annotation

    .line 343
    .local p0, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/maps/model/LatLng;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, "weightedData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 346
    .local v2, "l":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v3, Lcom/google/maps/android/heatmaps/WeightedLatLng;

    invoke-direct {v3, v2}, Lcom/google/maps/android/heatmaps/WeightedLatLng;-><init>(Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v2    # "l":Lcom/google/android/gms/maps/model/LatLng;
    goto :goto_9

    .line 349
    :cond_1e
    return-object v0
.end method


# virtual methods
.method public getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .registers 49
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "zoom"    # I

    .line 369
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v4, v8, v4

    .line 374
    .local v4, "tileWidth":D
    iget v10, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v4

    const-wide/high16 v12, 0x4080000000000000L    # 512.0

    div-double/2addr v10, v12

    .line 378
    .local v10, "padding":D
    mul-double v6, v6, v10

    add-double/2addr v6, v4

    .line 382
    .local v6, "tileWidthPadded":D
    iget v12, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    mul-int/lit8 v12, v12, 0x2

    add-int/lit16 v12, v12, 0x200

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v12, v6, v12

    .line 385
    .local v12, "bucketWidth":D
    int-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v4

    sub-double/2addr v14, v10

    .line 386
    .local v14, "minX":D
    add-int/lit8 v8, v1, 0x1

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    add-double/2addr v8, v10

    .line 387
    .local v8, "maxX":D
    move-wide/from16 v26, v6

    .end local v6    # "tileWidthPadded":D
    .local v26, "tileWidthPadded":D
    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    sub-double/2addr v6, v10

    .line 388
    .local v6, "minY":D
    add-int/lit8 v1, v2, 0x1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    add-double/2addr v1, v10

    .line 395
    .local v1, "maxY":D
    const-wide/16 v28, 0x0

    .line 396
    .local v28, "xOffset":D
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v30, v16

    .line 397
    .local v30, "wrappedPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    const-wide/16 v16, 0x0

    cmpg-double v18, v14, v16

    if-gez v18, :cond_7e

    .line 401
    new-instance v31, Lcom/google/maps/android/geometry/Bounds;

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v17, v14, v16

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v31

    move-wide/from16 v21, v6

    move-wide/from16 v23, v1

    invoke-direct/range {v16 .. v24}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    move-object/from16 v32, v31

    .line 402
    .local v32, "overlapBounds":Lcom/google/maps/android/geometry/Bounds;
    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    .line 403
    move-wide/from16 v33, v4

    .end local v4    # "tileWidth":D
    .local v33, "tileWidth":D
    iget-object v4, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    move-object/from16 v5, v32

    .end local v32    # "overlapBounds":Lcom/google/maps/android/geometry/Bounds;
    .local v5, "overlapBounds":Lcom/google/maps/android/geometry/Bounds;
    invoke-virtual {v4, v5}, Lcom/google/maps/android/quadtree/PointQuadTree;->search(Lcom/google/maps/android/geometry/Bounds;)Ljava/util/Collection;

    move-result-object v30

    .line 404
    .end local v5    # "overlapBounds":Lcom/google/maps/android/geometry/Bounds;
    goto :goto_9f

    .end local v33    # "tileWidth":D
    .restart local v4    # "tileWidth":D
    :cond_7e
    move-wide/from16 v33, v4

    .end local v4    # "tileWidth":D
    .restart local v33    # "tileWidth":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v8, v4

    if-lez v16, :cond_9f

    .line 409
    new-instance v25, Lcom/google/maps/android/geometry/Bounds;

    const-wide/16 v17, 0x0

    sub-double v19, v8, v4

    move-object/from16 v16, v25

    move-wide/from16 v21, v6

    move-wide/from16 v23, v1

    invoke-direct/range {v16 .. v24}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    move-object/from16 v4, v25

    .line 410
    .local v4, "overlapBounds":Lcom/google/maps/android/geometry/Bounds;
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    .line 411
    iget-object v5, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v5, v4}, Lcom/google/maps/android/quadtree/PointQuadTree;->search(Lcom/google/maps/android/geometry/Bounds;)Ljava/util/Collection;

    move-result-object v30

    .line 415
    .end local v4    # "overlapBounds":Lcom/google/maps/android/geometry/Bounds;
    :cond_9f
    :goto_9f
    new-instance v4, Lcom/google/maps/android/geometry/Bounds;

    move-object/from16 v16, v4

    move-wide/from16 v17, v14

    move-wide/from16 v19, v8

    move-wide/from16 v21, v6

    move-wide/from16 v23, v1

    invoke-direct/range {v16 .. v24}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    .line 420
    .local v4, "tileBounds":Lcom/google/maps/android/geometry/Bounds;
    new-instance v5, Lcom/google/maps/android/geometry/Bounds;

    move-wide/from16 v35, v1

    .end local v1    # "maxY":D
    .local v35, "maxY":D
    iget-object v1, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v1, v1, Lcom/google/maps/android/geometry/Bounds;->minX:D

    sub-double v17, v1, v10

    iget-object v1, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v1, v1, Lcom/google/maps/android/geometry/Bounds;->maxX:D

    add-double v19, v1, v10

    iget-object v1, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v1, v1, Lcom/google/maps/android/geometry/Bounds;->minY:D

    sub-double v21, v1, v10

    iget-object v1, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    iget-wide v1, v1, Lcom/google/maps/android/geometry/Bounds;->maxY:D

    add-double v23, v1, v10

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v24}, Lcom/google/maps/android/geometry/Bounds;-><init>(DDDD)V

    move-object v1, v5

    .line 422
    .local v1, "paddedBounds":Lcom/google/maps/android/geometry/Bounds;
    invoke-virtual {v4, v1}, Lcom/google/maps/android/geometry/Bounds;->intersects(Lcom/google/maps/android/geometry/Bounds;)Z

    move-result v2

    if-nez v2, :cond_d9

    .line 423
    sget-object v2, Lcom/google/android/gms/maps/model/TileProvider;->NO_TILE:Lcom/google/android/gms/maps/model/Tile;

    return-object v2

    .line 427
    :cond_d9
    iget-object v2, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v2, v4}, Lcom/google/maps/android/quadtree/PointQuadTree;->search(Lcom/google/maps/android/geometry/Bounds;)Ljava/util/Collection;

    move-result-object v2

    .line 430
    .local v2, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 431
    sget-object v5, Lcom/google/android/gms/maps/model/TileProvider;->NO_TILE:Lcom/google/android/gms/maps/model/Tile;

    return-object v5

    .line 435
    :cond_e8
    iget v5, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, 0x200

    move-object/from16 v37, v1

    .end local v1    # "paddedBounds":Lcom/google/maps/android/geometry/Bounds;
    .local v37, "paddedBounds":Lcom/google/maps/android/geometry/Bounds;
    iget v1, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, 0x200

    filled-new-array {v5, v1}, [I

    move-result-object v1

    const-class v5, D

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 436
    .local v1, "intensity":[[D
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_106
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/maps/android/heatmaps/WeightedLatLng;

    .line 437
    .local v16, "w":Lcom/google/maps/android/heatmaps/WeightedLatLng;
    move-object/from16 v38, v2

    .end local v2    # "points":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    .local v38, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v2

    .line 438
    .local v2, "p":Lcom/google/maps/android/geometry/Point;
    move-object/from16 v39, v4

    move-object/from16 v40, v5

    .end local v4    # "tileBounds":Lcom/google/maps/android/geometry/Bounds;
    .local v39, "tileBounds":Lcom/google/maps/android/geometry/Bounds;
    iget-wide v4, v2, Lcom/google/maps/android/geometry/Point;->x:D

    sub-double/2addr v4, v14

    div-double/2addr v4, v12

    double-to-int v4, v4

    .line 439
    .local v4, "bucketX":I
    move-wide/from16 v41, v8

    .end local v8    # "maxX":D
    .local v41, "maxX":D
    iget-wide v8, v2, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double/2addr v8, v6

    div-double/2addr v8, v12

    double-to-int v5, v8

    .line 440
    .local v5, "bucketY":I
    aget-object v8, v1, v4

    aget-wide v17, v8, v5

    invoke-virtual/range {v16 .. v16}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getIntensity()D

    move-result-wide v19

    add-double v17, v17, v19

    aput-wide v17, v8, v5

    .line 441
    .end local v2    # "p":Lcom/google/maps/android/geometry/Point;
    .end local v4    # "bucketX":I
    .end local v5    # "bucketY":I
    .end local v16    # "w":Lcom/google/maps/android/heatmaps/WeightedLatLng;
    nop

    .line 436
    move-object/from16 v2, v38

    move-object/from16 v4, v39

    move-object/from16 v5, v40

    move-wide/from16 v8, v41

    goto :goto_106

    .line 443
    .end local v38    # "points":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    .end local v39    # "tileBounds":Lcom/google/maps/android/geometry/Bounds;
    .end local v41    # "maxX":D
    .local v2, "points":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    .local v4, "tileBounds":Lcom/google/maps/android/geometry/Bounds;
    .restart local v8    # "maxX":D
    :cond_13e
    move-object/from16 v38, v2

    move-object/from16 v39, v4

    move-wide/from16 v41, v8

    .end local v2    # "points":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    .end local v4    # "tileBounds":Lcom/google/maps/android/geometry/Bounds;
    .end local v8    # "maxX":D
    .restart local v38    # "points":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    .restart local v39    # "tileBounds":Lcom/google/maps/android/geometry/Bounds;
    .restart local v41    # "maxX":D
    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_148
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_176

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/android/heatmaps/WeightedLatLng;

    .line 444
    .local v4, "w":Lcom/google/maps/android/heatmaps/WeightedLatLng;
    invoke-virtual {v4}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getPoint()Lcom/google/maps/android/geometry/Point;

    move-result-object v5

    .line 445
    .local v5, "p":Lcom/google/maps/android/geometry/Point;
    iget-wide v8, v5, Lcom/google/maps/android/geometry/Point;->x:D

    add-double v8, v8, v28

    sub-double/2addr v8, v14

    div-double/2addr v8, v12

    double-to-int v8, v8

    .line 446
    .local v8, "bucketX":I
    move-wide/from16 v43, v10

    .end local v10    # "padding":D
    .local v43, "padding":D
    iget-wide v9, v5, Lcom/google/maps/android/geometry/Point;->y:D

    sub-double/2addr v9, v6

    div-double/2addr v9, v12

    double-to-int v9, v9

    .line 447
    .local v9, "bucketY":I
    aget-object v10, v1, v8

    aget-wide v16, v10, v9

    invoke-virtual {v4}, Lcom/google/maps/android/heatmaps/WeightedLatLng;->getIntensity()D

    move-result-wide v18

    add-double v16, v16, v18

    aput-wide v16, v10, v9

    .line 448
    .end local v4    # "w":Lcom/google/maps/android/heatmaps/WeightedLatLng;
    .end local v5    # "p":Lcom/google/maps/android/geometry/Point;
    .end local v8    # "bucketX":I
    .end local v9    # "bucketY":I
    nop

    .line 443
    move-wide/from16 v10, v43

    goto :goto_148

    .line 451
    .end local v43    # "padding":D
    .restart local v10    # "padding":D
    :cond_176
    move-wide/from16 v43, v10

    .end local v10    # "padding":D
    .restart local v43    # "padding":D
    iget-object v2, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mKernel:[D

    invoke-static {v1, v2}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->convolve([[D[D)[[D

    move-result-object v2

    .line 454
    .local v2, "convolved":[[D
    iget-object v4, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mColorMap:[I

    iget-object v5, v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mMaxIntensity:[D

    aget-wide v8, v5, v3

    invoke-static {v2, v4, v8, v9}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->colorize([[D[ID)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 457
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->convertBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/Tile;

    move-result-object v5

    return-object v5
.end method

.method public setData(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 332
    .local p1, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-static {p1}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->wrapData(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->setWeightedData(Ljava/util/Collection;)V

    .line 333
    return-void
.end method

.method public setGradient(Lcom/google/maps/android/heatmaps/Gradient;)V
    .registers 4
    .param p1, "gradient"    # Lcom/google/maps/android/heatmaps/Gradient;

    .line 467
    iput-object p1, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mGradient:Lcom/google/maps/android/heatmaps/Gradient;

    .line 468
    iget-wide v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mOpacity:D

    invoke-virtual {p1, v0, v1}, Lcom/google/maps/android/heatmaps/Gradient;->generateColorMap(D)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mColorMap:[I

    .line 469
    return-void
.end method

.method public setOpacity(D)V
    .registers 4
    .param p1, "opacity"    # D

    .line 492
    iput-wide p1, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mOpacity:D

    .line 494
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mGradient:Lcom/google/maps/android/heatmaps/Gradient;

    invoke-virtual {p0, v0}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->setGradient(Lcom/google/maps/android/heatmaps/Gradient;)V

    .line 495
    return-void
.end method

.method public setRadius(I)V
    .registers 7
    .param p1, "radius"    # I

    .line 478
    iput p1, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    .line 480
    iget v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    iget v1, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->generateKernel(ID)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mKernel:[D

    .line 482
    iget v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    invoke-direct {p0, v0}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->getMaxIntensities(I)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mMaxIntensity:[D

    .line 483
    return-void
.end method

.method public setWeightedData(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/maps/android/heatmaps/WeightedLatLng;",
            ">;)V"
        }
    .end annotation

    .line 297
    .local p1, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    iput-object p1, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mData:Ljava/util/Collection;

    .line 300
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mData:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 310
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mData:Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->getBounds(Ljava/util/Collection;)Lcom/google/maps/android/geometry/Bounds;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    .line 312
    new-instance v0, Lcom/google/maps/android/quadtree/PointQuadTree;

    iget-object v1, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mBounds:Lcom/google/maps/android/geometry/Bounds;

    invoke-direct {v0, v1}, Lcom/google/maps/android/quadtree/PointQuadTree;-><init>(Lcom/google/maps/android/geometry/Bounds;)V

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    .line 315
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mData:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/heatmaps/WeightedLatLng;

    .line 316
    .local v1, "l":Lcom/google/maps/android/heatmaps/WeightedLatLng;
    iget-object v2, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mTree:Lcom/google/maps/android/quadtree/PointQuadTree;

    invoke-virtual {v2, v1}, Lcom/google/maps/android/quadtree/PointQuadTree;->add(Lcom/google/maps/android/quadtree/PointQuadTree$Item;)V

    .line 317
    .end local v1    # "l":Lcom/google/maps/android/heatmaps/WeightedLatLng;
    goto :goto_21

    .line 321
    :cond_33
    iget v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mRadius:I

    invoke-direct {p0, v0}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->getMaxIntensities(I)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->mMaxIntensity:[D

    .line 322
    return-void

    .line 301
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No input points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.maps.android.heatmaps.HeatmapTileProvider.AnonymousClass1 (com.google.maps.android.heatmaps.HeatmapTileProvider$1)
.class synthetic Lcom/google/maps/android/heatmaps/HeatmapTileProvider$1;
.super Ljava/lang/Object;
.source "HeatmapTileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/heatmaps/HeatmapTileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.maps.android.heatmaps.HeatmapTileProvider.Builder (com.google.maps.android.heatmaps.HeatmapTileProvider$Builder)
.class public Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;
.super Ljava/lang/Object;
.source "HeatmapTileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/heatmaps/HeatmapTileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private data:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/maps/android/heatmaps/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private gradient:Lcom/google/maps/android/heatmaps/Gradient;

.field private opacity:D

.field private radius:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->radius:I

    .line 169
    sget-object v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->DEFAULT_GRADIENT:Lcom/google/maps/android/heatmaps/Gradient;

    iput-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->gradient:Lcom/google/maps/android/heatmaps/Gradient;

    .line 170
    const-wide v0, 0x3fe6666666666666L    # 0.7

    iput-wide v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->opacity:D

    .line 177
    return-void
.end method

.method static synthetic access$200(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;)Ljava/util/Collection;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;

    .line 163
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->data:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;

    .line 163
    iget v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->radius:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;)Lcom/google/maps/android/heatmaps/Gradient;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;

    .line 163
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->gradient:Lcom/google/maps/android/heatmaps/Gradient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;)D
    .registers 3
    .param p0, "x0"    # Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;

    .line 163
    iget-wide v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->opacity:D

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/google/maps/android/heatmaps/HeatmapTileProvider;
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->data:Ljava/util/Collection;

    if-eqz v0, :cond_b

    .line 262
    new-instance v0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;-><init>(Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;Lcom/google/maps/android/heatmaps/HeatmapTileProvider$1;)V

    return-object v0

    .line 258
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No input data: you must use either .data or .weightedData before building"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public data(Ljava/util/Collection;)Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;"
        }
    .end annotation

    .line 187
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-static {p1}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider;->access$000(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->weightedData(Ljava/util/Collection;)Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;

    move-result-object v0

    return-object v0
.end method

.method public gradient(Lcom/google/maps/android/heatmaps/Gradient;)Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;
    .registers 2
    .param p1, "val"    # Lcom/google/maps/android/heatmaps/Gradient;

    .line 230
    iput-object p1, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->gradient:Lcom/google/maps/android/heatmaps/Gradient;

    .line 231
    return-object p0
.end method

.method public opacity(D)Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;
    .registers 8
    .param p1, "val"    # D

    .line 241
    iput-wide p1, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->opacity:D

    .line 243
    iget-wide v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->opacity:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_13

    iget-wide v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->opacity:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_13

    .line 246
    return-object p0

    .line 244
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Opacity must be in range [0, 1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public radius(I)Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;
    .registers 4
    .param p1, "val"    # I

    .line 215
    iput p1, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->radius:I

    .line 217
    iget v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->radius:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_f

    iget v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->radius:I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_f

    .line 220
    return-object p0

    .line 218
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Radius not within bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public weightedData(Ljava/util/Collection;)Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/maps/android/heatmaps/WeightedLatLng;",
            ">;)",
            "Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;"
        }
    .end annotation

    .line 198
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/maps/android/heatmaps/WeightedLatLng;>;"
    iput-object p1, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->data:Ljava/util/Collection;

    .line 201
    iget-object v0, p0, Lcom/google/maps/android/heatmaps/HeatmapTileProvider$Builder;->data:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 204
    return-object p0

    .line 202
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No input points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
