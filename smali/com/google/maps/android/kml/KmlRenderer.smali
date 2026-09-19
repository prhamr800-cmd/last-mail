###### Class com.google.maps.android.kml.KmlRenderer (com.google.maps.android.kml.KmlRenderer)
.class Lcom/google/maps/android/kml/KmlRenderer;
.super Landroid/support/v4/app/FragmentActivity;
.source "KmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;,
        Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KmlRenderer"

.field private static final LRU_CACHE_SIZE:I = 0x32


# instance fields
.field private mContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGroundOverlayImagesDownloaded:Z

.field private final mGroundOverlayUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroundOverlays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private final mImagesCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerVisible:Z

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final mMarkerIconUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkerIconsDownloaded:Z

.field private mPlacemarks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStyleMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mStylesRenderer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)V
    .registers 5
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContext:Landroid/content/Context;

    .line 77
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 78
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayUrls:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mLayerVisible:Z

    .line 83
    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconsDownloaded:Z

    .line 84
    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayImagesDownloaded:Z

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/maps/android/kml/KmlRenderer;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .line 41
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/maps/android/kml/KmlRenderer;)Landroid/support/v4/util/LruCache;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .line 41
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/maps/android/kml/KmlRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .line 41
    iget-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mLayerVisible:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .line 41
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashMap;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/kml/KmlRenderer;->addIconToMarkers(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .line 41
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 3
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Iterable;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/kml/KmlRenderer;->addContainerGroupIconsToMarkers(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .line 41
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashMap;
    .param p3, "x3"    # Z

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlayToMap(Ljava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/lang/Iterable;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/google/maps/android/kml/KmlRenderer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Iterable;
    .param p3, "x3"    # Z

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlayInContainerGroups(Ljava/lang/String;Ljava/lang/Iterable;Z)V

    return-void
.end method

.method private addContainerGroupIconsToMarkers(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 6
    .param p1, "iconUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p2, "kmlContainers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/maps/android/kml/KmlContainer;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/kml/KmlContainer;

    .line 467
    .local v1, "container":Lcom/google/maps/android/kml/KmlContainer;
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getPlacemarksHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addIconToMarkers(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 468
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->hasContainers()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 469
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getContainers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addContainerGroupIconsToMarkers(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 471
    .end local v1    # "container":Lcom/google/maps/android/kml/KmlContainer;
    :cond_24
    goto :goto_4

    .line 472
    :cond_25
    return-void
.end method

.method private addContainerGroupToMap(Ljava/lang/Iterable;Z)V
    .registers 8
    .param p2, "containerVisibility"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;Z)V"
        }
    .end annotation

    .line 348
    .local p1, "kmlContainers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/maps/android/kml/KmlContainer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/kml/KmlContainer;

    .line 349
    .local v1, "container":Lcom/google/maps/android/kml/KmlContainer;
    invoke-static {v1, p2}, Lcom/google/maps/android/kml/KmlRenderer;->getContainerVisibility(Lcom/google/maps/android/kml/KmlContainer;Z)Z

    move-result v2

    .line 350
    .local v2, "isContainerVisible":Z
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getStyles()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 352
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getStyles()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 354
    :cond_23
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getStyleMap()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 356
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getStyleMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {p0, v3, v4}, Lcom/google/maps/android/kml/KmlRenderer;->assignStyleMap(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 358
    :cond_32
    invoke-direct {p0, v1, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addContainerObjectToMap(Lcom/google/maps/android/kml/KmlContainer;Z)V

    .line 359
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->hasContainers()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 360
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getContainers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addContainerGroupToMap(Ljava/lang/Iterable;Z)V

    .line 362
    .end local v1    # "container":Lcom/google/maps/android/kml/KmlContainer;
    .end local v2    # "isContainerVisible":Z
    :cond_42
    goto :goto_4

    .line 363
    :cond_43
    return-void
.end method

.method private addContainerObjectToMap(Lcom/google/maps/android/kml/KmlContainer;Z)V
    .registers 8
    .param p1, "kmlContainer"    # Lcom/google/maps/android/kml/KmlContainer;
    .param p2, "isContainerVisible"    # Z

    .line 371
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlContainer;->getPlacemarks()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/kml/KmlPlacemark;

    .line 372
    .local v1, "placemark":Lcom/google/maps/android/kml/KmlPlacemark;
    invoke-static {v1}, Lcom/google/maps/android/kml/KmlRenderer;->getPlacemarkVisibility(Lcom/google/maps/android/kml/KmlPlacemark;)Z

    move-result v2

    .line 373
    .local v2, "isPlacemarkVisible":Z
    if-eqz p2, :cond_1e

    if-eqz v2, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    .line 374
    .local v3, "isObjectVisible":Z
    :goto_1f
    invoke-direct {p0, v1, v3}, Lcom/google/maps/android/kml/KmlRenderer;->addPlacemarkToMap(Lcom/google/maps/android/kml/KmlPlacemark;Z)Ljava/lang/Object;

    move-result-object v4

    .line 375
    .local v4, "mapObject":Ljava/lang/Object;
    invoke-virtual {p1, v1, v4}, Lcom/google/maps/android/kml/KmlContainer;->setPlacemark(Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;)V

    .line 376
    .end local v1    # "placemark":Lcom/google/maps/android/kml/KmlPlacemark;
    .end local v2    # "isPlacemarkVisible":Z
    .end local v3    # "isObjectVisible":Z
    .end local v4    # "mapObject":Ljava/lang/Object;
    goto :goto_8

    .line 377
    :cond_27
    return-void
.end method

.method private addGroundOverlayInContainerGroups(Ljava/lang/String;Ljava/lang/Iterable;Z)V
    .registers 8
    .param p1, "groundOverlayUrl"    # Ljava/lang/String;
    .param p3, "containerVisibility"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;Z)V"
        }
    .end annotation

    .line 789
    .local p2, "kmlContainers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/maps/android/kml/KmlContainer;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/kml/KmlContainer;

    .line 790
    .local v1, "container":Lcom/google/maps/android/kml/KmlContainer;
    invoke-static {v1, p3}, Lcom/google/maps/android/kml/KmlRenderer;->getContainerVisibility(Lcom/google/maps/android/kml/KmlContainer;Z)Z

    move-result v2

    .line 791
    .local v2, "isContainerVisible":Z
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getGroundOverlayHashMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, p1, v3, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlayToMap(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 792
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->hasContainers()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 793
    nop

    .line 794
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getContainers()Ljava/lang/Iterable;

    move-result-object v3

    .line 793
    invoke-direct {p0, p1, v3, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlayInContainerGroups(Ljava/lang/String;Ljava/lang/Iterable;Z)V

    .line 796
    .end local v1    # "container":Lcom/google/maps/android/kml/KmlContainer;
    .end local v2    # "isContainerVisible":Z
    :cond_29
    goto :goto_4

    .line 797
    :cond_2a
    return-void
.end method

.method private addGroundOverlayToMap(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 10
    .param p1, "groundOverlayUrl"    # Ljava/lang/String;
    .param p3, "containerVisibility"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;Z)V"
        }
    .end annotation

    .line 766
    .local p2, "groundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    .line 767
    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 768
    .local v0, "groundOverlayBitmap":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/kml/KmlGroundOverlay;

    .line 769
    .local v2, "kmlGroundOverlay":Lcom/google/maps/android/kml/KmlGroundOverlay;
    invoke-virtual {v2}, Lcom/google/maps/android/kml/KmlGroundOverlay;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 770
    invoke-virtual {v2}, Lcom/google/maps/android/kml/KmlGroundOverlay;->getGroundOverlayOptions()Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v3

    .line 771
    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->image(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v3

    .line 772
    .local v3, "groundOverlayOptions":Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    iget-object v4, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/maps/GoogleMap;->addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/GroundOverlay;

    move-result-object v4

    .line 773
    .local v4, "mapGroundOverlay":Lcom/google/android/gms/maps/model/GroundOverlay;
    if-nez p3, :cond_3e

    .line 774
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/GroundOverlay;->setVisible(Z)V

    .line 776
    :cond_3e
    invoke-virtual {p2, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .end local v2    # "kmlGroundOverlay":Lcom/google/maps/android/kml/KmlGroundOverlay;
    .end local v3    # "groundOverlayOptions":Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .end local v4    # "mapGroundOverlay":Lcom/google/android/gms/maps/model/GroundOverlay;
    :cond_41
    goto :goto_14

    .line 779
    :cond_42
    return-void
.end method

.method private addGroundOverlays(Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;)V"
        }
    .end annotation

    .line 733
    .local p1, "groundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/kml/KmlGroundOverlay;

    .line 734
    .local v1, "groundOverlay":Lcom/google/maps/android/kml/KmlGroundOverlay;
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlGroundOverlay;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "groundOverlayUrl":Ljava/lang/String;
    if-eqz v2, :cond_3c

    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlGroundOverlay;->getLatLngBox()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 737
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 738
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlayToMap(Ljava/lang/String;Ljava/util/HashMap;Z)V

    goto :goto_3c

    .line 739
    :cond_2f
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 740
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    .end local v1    # "groundOverlay":Lcom/google/maps/android/kml/KmlGroundOverlay;
    .end local v2    # "groundOverlayUrl":Ljava/lang/String;
    :cond_3c
    :goto_3c
    goto :goto_8

    .line 744
    :cond_3d
    return-void
.end method

.method private addGroundOverlays(Ljava/util/HashMap;Ljava/lang/Iterable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;)V"
        }
    .end annotation

    .line 720
    .local p1, "groundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    .local p2, "kmlContainers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/maps/android/kml/KmlContainer;>;"
    invoke-direct {p0, p1}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlays(Ljava/util/HashMap;)V

    .line 721
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/kml/KmlContainer;

    .line 722
    .local v1, "container":Lcom/google/maps/android/kml/KmlContainer;
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getGroundOverlayHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 723
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getContainers()Ljava/lang/Iterable;

    move-result-object v3

    .line 722
    invoke-direct {p0, v2, v3}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlays(Ljava/util/HashMap;Ljava/lang/Iterable;)V

    .line 724
    .end local v1    # "container":Lcom/google/maps/android/kml/KmlContainer;
    goto :goto_7

    .line 725
    :cond_1f
    return-void
.end method

.method private addIconToMarkers(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 11
    .param p1, "iconUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 427
    .local p2, "placemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/kml/KmlPlacemark;

    .line 428
    .local v1, "placemark":Lcom/google/maps/android/kml/KmlPlacemark;
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlPlacemark;->getStyleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/kml/KmlStyle;

    .line 429
    .local v2, "urlStyle":Lcom/google/maps/android/kml/KmlStyle;
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlPlacemark;->getInlineStyle()Lcom/google/maps/android/kml/KmlStyle;

    move-result-object v3

    .line 430
    .local v3, "inlineStyle":Lcom/google/maps/android/kml/KmlStyle;
    const-string v4, "Point"

    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlPlacemark;->getGeometry()Lcom/google/maps/android/kml/KmlGeometry;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/maps/android/kml/KmlGeometry;->getGeometryType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 431
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_44

    .line 432
    invoke-virtual {v3}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    const/4 v6, 0x1

    goto :goto_45

    :cond_44
    const/4 v6, 0x0

    .line 433
    .local v6, "isInlineStyleIcon":Z
    :goto_45
    if-eqz v2, :cond_52

    .line 434
    invoke-virtual {v2}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    goto :goto_53

    :cond_52
    const/4 v4, 0x0

    .line 435
    .local v4, "isPlacemarkStyleIcon":Z
    :goto_53
    if-eqz v6, :cond_59

    .line 436
    invoke-direct {p0, v3, p2, v1}, Lcom/google/maps/android/kml/KmlRenderer;->scaleBitmap(Lcom/google/maps/android/kml/KmlStyle;Ljava/util/HashMap;Lcom/google/maps/android/kml/KmlPlacemark;)V

    goto :goto_5e

    .line 437
    :cond_59
    if-eqz v4, :cond_5e

    .line 438
    invoke-direct {p0, v2, p2, v1}, Lcom/google/maps/android/kml/KmlRenderer;->scaleBitmap(Lcom/google/maps/android/kml/KmlStyle;Ljava/util/HashMap;Lcom/google/maps/android/kml/KmlPlacemark;)V

    .line 441
    .end local v1    # "placemark":Lcom/google/maps/android/kml/KmlPlacemark;
    .end local v2    # "urlStyle":Lcom/google/maps/android/kml/KmlStyle;
    .end local v3    # "inlineStyle":Lcom/google/maps/android/kml/KmlStyle;
    .end local v4    # "isPlacemarkStyleIcon":Z
    .end local v6    # "isInlineStyleIcon":Z
    :cond_5e
    :goto_5e
    goto :goto_8

    .line 442
    :cond_5f
    return-void
.end method

.method private addLineStringToMap(Lcom/google/maps/android/kml/KmlLineString;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Polyline;
    .registers 6
    .param p1, "lineString"    # Lcom/google/maps/android/kml/KmlLineString;
    .param p2, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p3, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;

    .line 617
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 618
    .local v0, "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlLineString;->getGeometryObject()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 619
    if-eqz p3, :cond_11

    .line 620
    invoke-direct {p0, v0, p3}, Lcom/google/maps/android/kml/KmlRenderer;->setInlineLineStringStyle(Lcom/google/android/gms/maps/model/PolylineOptions;Lcom/google/maps/android/kml/KmlStyle;)V

    goto :goto_22

    .line 621
    :cond_11
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->isLineRandomColorMode()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 622
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/android/kml/KmlStyle;->computeRandomColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 624
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    return-object v1
.end method

.method private addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V
    .registers 5
    .param p1, "styleUrl"    # Ljava/lang/String;
    .param p2, "markerOptions"    # Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 400
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 402
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 403
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 404
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_25

    :cond_18
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 405
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_25
    :goto_25
    return-void
.end method

.method private addMultiGeometryToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlMultiGeometry;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;Z)Ljava/util/ArrayList;
    .registers 16
    .param p1, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;
    .param p2, "multiGeometry"    # Lcom/google/maps/android/kml/KmlMultiGeometry;
    .param p3, "urlStyle"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p4, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p5, "isContainerVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Lcom/google/maps/android/kml/KmlMultiGeometry;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v0, "mapObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlMultiGeometry;->getGeometryObject()Ljava/util/ArrayList;

    move-result-object v1

    .line 704
    .local v1, "kmlObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/kml/KmlGeometry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/android/kml/KmlGeometry;

    .line 705
    .local v3, "kmlGeometry":Lcom/google/maps/android/kml/KmlGeometry;
    move-object v4, p0

    move-object v5, p1

    move-object v6, v3

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/google/maps/android/kml/KmlRenderer;->addToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlGeometry;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    .end local v3    # "kmlGeometry":Lcom/google/maps/android/kml/KmlGeometry;
    goto :goto_d

    .line 708
    :cond_27
    return-object v0
.end method

.method private addPlacemarkToMap(Lcom/google/maps/android/kml/KmlPlacemark;Z)Ljava/lang/Object;
    .registers 13
    .param p1, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;
    .param p2, "placemarkVisibility"    # Z

    .line 331
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPlacemark;->getGeometry()Lcom/google/maps/android/kml/KmlGeometry;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 332
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPlacemark;->getStyleId()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "placemarkId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPlacemark;->getGeometry()Lcom/google/maps/android/kml/KmlGeometry;

    move-result-object v7

    .line 334
    .local v7, "geometry":Lcom/google/maps/android/kml/KmlGeometry;
    invoke-direct {p0, v0}, Lcom/google/maps/android/kml/KmlRenderer;->getPlacemarkStyle(Ljava/lang/String;)Lcom/google/maps/android/kml/KmlStyle;

    move-result-object v8

    .line 335
    .local v8, "style":Lcom/google/maps/android/kml/KmlStyle;
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPlacemark;->getInlineStyle()Lcom/google/maps/android/kml/KmlStyle;

    move-result-object v9

    .line 336
    .local v9, "inlineStyle":Lcom/google/maps/android/kml/KmlStyle;
    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/maps/android/kml/KmlRenderer;->addToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlGeometry;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 338
    .end local v0    # "placemarkId":Ljava/lang/String;
    .end local v7    # "geometry":Lcom/google/maps/android/kml/KmlGeometry;
    .end local v8    # "style":Lcom/google/maps/android/kml/KmlStyle;
    .end local v9    # "inlineStyle":Lcom/google/maps/android/kml/KmlStyle;
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private addPlacemarksToMap(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p1, "placemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/kml/KmlPlacemark;

    .line 312
    .local v1, "kmlPlacemark":Lcom/google/maps/android/kml/KmlPlacemark;
    invoke-static {v1}, Lcom/google/maps/android/kml/KmlRenderer;->getPlacemarkVisibility(Lcom/google/maps/android/kml/KmlPlacemark;)Z

    move-result v2

    .line 313
    .local v2, "isPlacemarkVisible":Z
    invoke-direct {p0, v1, v2}, Lcom/google/maps/android/kml/KmlRenderer;->addPlacemarkToMap(Lcom/google/maps/android/kml/KmlPlacemark;Z)Ljava/lang/Object;

    move-result-object v3

    .line 315
    .local v3, "mapObject":Ljava/lang/Object;
    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .end local v1    # "kmlPlacemark":Lcom/google/maps/android/kml/KmlPlacemark;
    .end local v2    # "isPlacemarkVisible":Z
    .end local v3    # "mapObject":Ljava/lang/Object;
    goto :goto_8

    .line 317
    :cond_20
    return-void
.end method

.method private addPointToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlPoint;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Marker;
    .registers 7
    .param p1, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;
    .param p2, "point"    # Lcom/google/maps/android/kml/KmlPoint;
    .param p3, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p4, "markerInlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;

    .line 515
    invoke-virtual {p3}, Lcom/google/maps/android/kml/KmlStyle;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 516
    .local v0, "markerUrlStyle":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlPoint;->getGeometryObject()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 517
    if-eqz p4, :cond_15

    .line 518
    invoke-virtual {p3}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p4, v1}, Lcom/google/maps/android/kml/KmlRenderer;->setInlinePointStyle(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/android/kml/KmlStyle;Ljava/lang/String;)V

    goto :goto_22

    .line 519
    :cond_15
    invoke-virtual {p3}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 521
    invoke-virtual {p3}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/maps/android/kml/KmlRenderer;->addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    .line 523
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    .line 524
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-direct {p0, p3, v1, p1}, Lcom/google/maps/android/kml/KmlRenderer;->setMarkerInfoWindow(Lcom/google/maps/android/kml/KmlStyle;Lcom/google/android/gms/maps/model/Marker;Lcom/google/maps/android/kml/KmlPlacemark;)V

    .line 525
    return-object v1
.end method

.method private addPolygonToMap(Lcom/google/maps/android/kml/KmlPolygon;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Polygon;
    .registers 7
    .param p1, "polygon"    # Lcom/google/maps/android/kml/KmlPolygon;
    .param p2, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p3, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;

    .line 654
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    .line 655
    .local v0, "polygonOptions":Lcom/google/android/gms/maps/model/PolygonOptions;
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPolygon;->getOuterBoundaryCoordinates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 656
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlPolygon;->getInnerBoundaryCoordinates()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 657
    .local v2, "innerBoundary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 658
    .end local v2    # "innerBoundary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    goto :goto_13

    .line 659
    :cond_23
    if-eqz p3, :cond_29

    .line 660
    invoke-direct {p0, v0, p3}, Lcom/google/maps/android/kml/KmlRenderer;->setInlinePolygonStyle(Lcom/google/android/gms/maps/model/PolygonOptions;Lcom/google/maps/android/kml/KmlStyle;)V

    goto :goto_3a

    .line 661
    :cond_29
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->isPolyRandomColorMode()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 662
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/android/kml/KmlStyle;->computeRandomColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 664
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v1

    return-object v1
.end method

.method private addToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlGeometry;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;Z)Ljava/lang/Object;
    .registers 14
    .param p1, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;
    .param p2, "geometry"    # Lcom/google/maps/android/kml/KmlGeometry;
    .param p3, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p4, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p5, "isVisible"    # Z

    .line 485
    invoke-interface {p2}, Lcom/google/maps/android/kml/KmlGeometry;->getGeometryType()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "geometryType":Ljava/lang/String;
    const-string v1, "Point"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 487
    move-object v1, p2

    check-cast v1, Lcom/google/maps/android/kml/KmlPoint;

    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/maps/android/kml/KmlRenderer;->addPointToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlPoint;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    .line 488
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1, p5}, Lcom/google/android/gms/maps/model/Marker;->setVisible(Z)V

    .line 489
    return-object v1

    .line 490
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_17
    const-string v1, "LineString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 491
    move-object v1, p2

    check-cast v1, Lcom/google/maps/android/kml/KmlLineString;

    invoke-direct {p0, v1, p3, p4}, Lcom/google/maps/android/kml/KmlRenderer;->addLineStringToMap(Lcom/google/maps/android/kml/KmlLineString;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    .line 492
    .local v1, "polyline":Lcom/google/android/gms/maps/model/Polyline;
    invoke-virtual {v1, p5}, Lcom/google/android/gms/maps/model/Polyline;->setVisible(Z)V

    .line 493
    return-object v1

    .line 494
    .end local v1    # "polyline":Lcom/google/android/gms/maps/model/Polyline;
    :cond_2a
    const-string v1, "Polygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 495
    move-object v1, p2

    check-cast v1, Lcom/google/maps/android/kml/KmlPolygon;

    invoke-direct {p0, v1, p3, p4}, Lcom/google/maps/android/kml/KmlRenderer;->addPolygonToMap(Lcom/google/maps/android/kml/KmlPolygon;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v1

    .line 496
    .local v1, "polygon":Lcom/google/android/gms/maps/model/Polygon;
    invoke-virtual {v1, p5}, Lcom/google/android/gms/maps/model/Polygon;->setVisible(Z)V

    .line 497
    return-object v1

    .line 498
    .end local v1    # "polygon":Lcom/google/android/gms/maps/model/Polygon;
    :cond_3d
    const-string v1, "MultiGeometry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 499
    move-object v4, p2

    check-cast v4, Lcom/google/maps/android/kml/KmlMultiGeometry;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/android/kml/KmlRenderer;->addMultiGeometryToMap(Lcom/google/maps/android/kml/KmlPlacemark;Lcom/google/maps/android/kml/KmlMultiGeometry;Lcom/google/maps/android/kml/KmlStyle;Lcom/google/maps/android/kml/KmlStyle;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 503
    :cond_52
    const/4 v1, 0x0

    return-object v1
.end method

.method private createInfoWindow()V
    .registers 3

    .line 561
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/maps/android/kml/KmlRenderer$1;

    invoke-direct {v1, p0}, Lcom/google/maps/android/kml/KmlRenderer$1;-><init>(Lcom/google/maps/android/kml/KmlRenderer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 578
    return-void
.end method

.method private downloadGroundOverlays()V
    .registers 5

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayImagesDownloaded:Z

    .line 751
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 752
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 753
    .local v1, "groundOverlayUrl":Ljava/lang/String;
    new-instance v2, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;

    invoke-direct {v2, p0, v1}, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;-><init>(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 754
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 755
    .end local v1    # "groundOverlayUrl":Ljava/lang/String;
    goto :goto_9

    .line 756
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_24
    return-void
.end method

.method private downloadMarkerIcons()V
    .registers 5

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconsDownloaded:Z

    .line 414
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 415
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 416
    .local v1, "markerIconUrl":Ljava/lang/String;
    new-instance v2, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;

    invoke-direct {v2, p0, v1}, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;-><init>(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 417
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 418
    .end local v1    # "markerIconUrl":Ljava/lang/String;
    goto :goto_9

    .line 419
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_24
    return-void
.end method

.method static getContainerVisibility(Lcom/google/maps/android/kml/KmlContainer;Z)Z
    .registers 5
    .param p0, "kmlContainer"    # Lcom/google/maps/android/kml/KmlContainer;
    .param p1, "isParentContainerVisible"    # Z

    .line 148
    const/4 v0, 0x1

    .line 149
    .local v0, "isChildContainerVisible":Z
    const-string/jumbo v1, "visibility"

    invoke-virtual {p0, v1}, Lcom/google/maps/android/kml/KmlContainer;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 150
    const-string/jumbo v1, "visibility"

    invoke-virtual {p0, v1}, Lcom/google/maps/android/kml/KmlContainer;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "placemarkVisibility":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_18

    .line 152
    const/4 v0, 0x0

    .line 155
    .end local v1    # "placemarkVisibility":Ljava/lang/String;
    :cond_18
    if-eqz p1, :cond_1e

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method private getPlacemarkStyle(Ljava/lang/String;)Lcom/google/maps/android/kml/KmlStyle;
    .registers 4
    .param p1, "styleId"    # Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/kml/KmlStyle;

    .line 387
    .local v0, "style":Lcom/google/maps/android/kml/KmlStyle;
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 388
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/maps/android/kml/KmlStyle;

    .line 390
    :cond_1a
    return-object v0
.end method

.method private static getPlacemarkVisibility(Lcom/google/maps/android/kml/KmlPlacemark;)Z
    .registers 4
    .param p0, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;

    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, "isPlacemarkVisible":Z
    const-string/jumbo v1, "visibility"

    invoke-virtual {p0, v1}, Lcom/google/maps/android/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 98
    const-string/jumbo v1, "visibility"

    invoke-virtual {p0, v1}, Lcom/google/maps/android/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "placemarkVisibility":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_18

    .line 100
    const/4 v0, 0x0

    .line 103
    .end local v1    # "placemarkVisibility":Ljava/lang/String;
    :cond_18
    return v0
.end method

.method private removeContainers(Ljava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "containers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/maps/android/kml/KmlContainer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/kml/KmlContainer;

    .line 175
    .local v1, "container":Lcom/google/maps/android/kml/KmlContainer;
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getPlacemarksHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/kml/KmlRenderer;->removePlacemarks(Ljava/util/HashMap;)V

    .line 176
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getGroundOverlayHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/maps/android/kml/KmlRenderer;->removeGroundOverlays(Ljava/util/HashMap;)V

    .line 177
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlContainer;->getContainers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/maps/android/kml/KmlRenderer;->removeContainers(Ljava/lang/Iterable;)V

    .line 178
    .end local v1    # "container":Lcom/google/maps/android/kml/KmlContainer;
    goto :goto_4

    .line 179
    :cond_26
    return-void
.end method

.method private removeGroundOverlays(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "groundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/GroundOverlay;

    .line 165
    .local v1, "groundOverlay":Lcom/google/android/gms/maps/model/GroundOverlay;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/GroundOverlay;->remove()V

    .line 166
    .end local v1    # "groundOverlay":Lcom/google/android/gms/maps/model/GroundOverlay;
    goto :goto_8

    .line 167
    :cond_18
    return-void
.end method

.method private static removePlacemarks(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p0, "placemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, "mapObject":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_1d

    .line 129
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_32

    .line 130
    :cond_1d
    instance-of v2, v1, Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v2, :cond_28

    .line 131
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    goto :goto_32

    .line 132
    :cond_28
    instance-of v2, v1, Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v2, :cond_32

    .line 133
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    .line 135
    .end local v1    # "mapObject":Ljava/lang/Object;
    :cond_32
    :goto_32
    goto :goto_8

    .line 136
    :cond_33
    return-void
.end method

.method private scaleBitmap(Lcom/google/maps/android/kml/KmlStyle;Ljava/util/HashMap;Lcom/google/maps/android/kml/KmlPlacemark;)V
    .registers 10
    .param p1, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p3, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/kml/KmlStyle;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            ")V"
        }
    .end annotation

    .line 451
    .local p2, "placemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlStyle;->getIconScale()D

    move-result-wide v0

    .line 452
    .local v0, "bitmapScale":D
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "bitmapUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 454
    .local v3, "bitmapImage":Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/maps/android/kml/KmlRenderer;->scaleIcon(Landroid/graphics/Bitmap;Ljava/lang/Double;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    .line 455
    .local v4, "scaledBitmap":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 456
    return-void
.end method

.method private static scaleIcon(Landroid/graphics/Bitmap;Ljava/lang/Double;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .registers 7
    .param p0, "unscaledBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # Ljava/lang/Double;

    .line 114
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 115
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 116
    .local v1, "height":I
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 117
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    return-object v3
.end method

.method private setInlineLineStringStyle(Lcom/google/android/gms/maps/model/PolylineOptions;Lcom/google/maps/android/kml/KmlStyle;)V
    .registers 5
    .param p1, "polylineOptions"    # Lcom/google/android/gms/maps/model/PolylineOptions;
    .param p2, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;

    .line 634
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 635
    .local v0, "inlinePolylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    const-string v1, "outlineColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 636
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 638
    :cond_13
    const-string/jumbo v1, "width"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 639
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 641
    :cond_23
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->isLineRandomColorMode()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 642
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/android/kml/KmlStyle;->computeRandomColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 644
    :cond_34
    return-void
.end method

.method private setInlinePointStyle(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/android/kml/KmlStyle;Ljava/lang/String;)V
    .registers 7
    .param p1, "markerOptions"    # Lcom/google/android/gms/maps/model/MarkerOptions;
    .param p2, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p3, "markerUrlIconUrl"    # Ljava/lang/String;

    .line 589
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 590
    .local v0, "inlineMarkerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    const-string v1, "heading"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 591
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 593
    :cond_13
    const-string v1, "hotSpot"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 594
    nop

    .line 595
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 597
    :cond_27
    const-string v1, "markerColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 598
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 600
    :cond_36
    const-string v1, "iconUrl"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 601
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/maps/android/kml/KmlRenderer;->addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    goto :goto_4b

    .line 602
    :cond_46
    if-eqz p3, :cond_4b

    .line 604
    invoke-direct {p0, p3, p1}, Lcom/google/maps/android/kml/KmlRenderer;->addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    .line 606
    :cond_4b
    :goto_4b
    return-void
.end method

.method private setInlinePolygonStyle(Lcom/google/android/gms/maps/model/PolygonOptions;Lcom/google/maps/android/kml/KmlStyle;)V
    .registers 5
    .param p1, "polygonOptions"    # Lcom/google/android/gms/maps/model/PolygonOptions;
    .param p2, "inlineStyle"    # Lcom/google/maps/android/kml/KmlStyle;

    .line 674
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    .line 675
    .local v0, "inlinePolygonOptions":Lcom/google/android/gms/maps/model/PolygonOptions;
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->hasFill()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "fillColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 676
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 678
    :cond_19
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->hasOutline()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 679
    const-string v1, "outlineColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 680
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 682
    :cond_2e
    const-string/jumbo v1, "width"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 683
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 686
    :cond_3e
    invoke-virtual {p2}, Lcom/google/maps/android/kml/KmlStyle;->isPolyRandomColorMode()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 687
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/android/kml/KmlStyle;->computeRandomColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 689
    :cond_4f
    return-void
.end method

.method private setMarkerInfoWindow(Lcom/google/maps/android/kml/KmlStyle;Lcom/google/android/gms/maps/model/Marker;Lcom/google/maps/android/kml/KmlPlacemark;)V
    .registers 10
    .param p1, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .param p2, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .param p3, "placemark"    # Lcom/google/maps/android/kml/KmlPlacemark;

    .line 536
    const-string v0, "name"

    invoke-virtual {p3, v0}, Lcom/google/maps/android/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    .line 537
    .local v0, "hasName":Z
    const-string v1, "description"

    invoke-virtual {p3, v1}, Lcom/google/maps/android/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    .line 538
    .local v1, "hasDescription":Z
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlStyle;->hasBalloonStyle()Z

    move-result v2

    .line 539
    .local v2, "hasBalloonOptions":Z
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlStyle;->getBalloonOptions()Ljava/util/HashMap;

    move-result-object v3

    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 540
    .local v3, "hasBalloonText":Z
    if-eqz v2, :cond_33

    if-eqz v3, :cond_33

    .line 541
    invoke-virtual {p1}, Lcom/google/maps/android/kml/KmlStyle;->getBalloonOptions()Ljava/util/HashMap;

    move-result-object v4

    const-string/jumbo v5, "text"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->createInfoWindow()V

    goto :goto_6c

    .line 543
    :cond_33
    if-eqz v2, :cond_44

    if-eqz v0, :cond_44

    .line 544
    const-string v4, "name"

    invoke-virtual {p3, v4}, Lcom/google/maps/android/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->createInfoWindow()V

    goto :goto_6c

    .line 546
    :cond_44
    if-eqz v0, :cond_5e

    if-eqz v1, :cond_5e

    .line 547
    const-string v4, "name"

    invoke-virtual {p3, v4}, Lcom/google/maps/android/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 548
    const-string v4, "description"

    invoke-virtual {p3, v4}, Lcom/google/maps/android/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 549
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->createInfoWindow()V

    goto :goto_6c

    .line 550
    :cond_5e
    if-eqz v1, :cond_6c

    .line 551
    const-string v4, "description"

    invoke-virtual {p3, v4}, Lcom/google/maps/android/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->createInfoWindow()V

    .line 554
    :cond_6c
    :goto_6c
    return-void
.end method


# virtual methods
.method addLayerToMap()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 216
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStyleMaps:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/android/kml/KmlRenderer;->assignStyleMap(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 217
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/google/maps/android/kml/KmlRenderer;->addGroundOverlays(Ljava/util/HashMap;Ljava/lang/Iterable;)V

    .line 218
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/android/kml/KmlRenderer;->addContainerGroupToMap(Ljava/lang/Iterable;Z)V

    .line 219
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/google/maps/android/kml/KmlRenderer;->addPlacemarksToMap(Ljava/util/HashMap;)V

    .line 220
    iget-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlayImagesDownloaded:Z

    if-nez v0, :cond_27

    .line 221
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->downloadGroundOverlays()V

    .line 223
    :cond_27
    iget-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMarkerIconsDownloaded:Z

    if-nez v0, :cond_2e

    .line 224
    invoke-direct {p0}, Lcom/google/maps/android/kml/KmlRenderer;->downloadMarkerIcons()V

    .line 226
    :cond_2e
    iput-boolean v1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mLayerVisible:Z

    .line 227
    return-void
.end method

.method assignStyleMap(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "styleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "styleMapKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "styleMapValue":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 189
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v1    # "styleMapKey":Ljava/lang/String;
    .end local v2    # "styleMapValue":Ljava/lang/String;
    :cond_27
    goto :goto_8

    .line 192
    :cond_28
    return-void
.end method

.method getGroundOverlays()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getKmlPlacemarks()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getMap()Lcom/google/android/gms/maps/GoogleMap;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method getNestedContainers()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasKmlPlacemarks()Z
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method hasNestedContainers()Z
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method removeLayerFromMap()V
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/maps/android/kml/KmlRenderer;->removePlacemarks(Ljava/util/HashMap;)V

    .line 299
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/google/maps/android/kml/KmlRenderer;->removeGroundOverlays(Ljava/util/HashMap;)V

    .line 300
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlRenderer;->hasNestedContainers()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 301
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlRenderer;->getNestedContainers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/maps/android/kml/KmlRenderer;->removeContainers(Ljava/lang/Iterable;)V

    .line 303
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mLayerVisible:Z

    .line 304
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 305
    return-void
.end method

.method setMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 2
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 244
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlRenderer;->removeLayerFromMap()V

    .line 245
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 246
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlRenderer;->addLayerToMap()V

    .line 247
    return-void
.end method

.method storeKmlData(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;>;"
    .local p2, "styleMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "placemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    .local p4, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/kml/KmlContainer;>;"
    .local p5, "groundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStyles:Ljava/util/HashMap;

    .line 208
    iput-object p2, p0, Lcom/google/maps/android/kml/KmlRenderer;->mStyleMaps:Ljava/util/HashMap;

    .line 209
    iput-object p3, p0, Lcom/google/maps/android/kml/KmlRenderer;->mPlacemarks:Ljava/util/HashMap;

    .line 210
    iput-object p4, p0, Lcom/google/maps/android/kml/KmlRenderer;->mContainers:Ljava/util/ArrayList;

    .line 211
    iput-object p5, p0, Lcom/google/maps/android/kml/KmlRenderer;->mGroundOverlays:Ljava/util/HashMap;

    .line 212
    return-void
.end method

###### Class com.google.maps.android.kml.KmlRenderer.AnonymousClass1 (com.google.maps.android.kml.KmlRenderer$1)
.class Lcom/google/maps/android/kml/KmlRenderer$1;
.super Ljava/lang/Object;
.source "KmlRenderer.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/maps/android/kml/KmlRenderer;->createInfoWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/maps/android/kml/KmlRenderer;


# direct methods
.method constructor <init>(Lcom/google/maps/android/kml/KmlRenderer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/maps/android/kml/KmlRenderer;

    .line 561
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlRenderer$1;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .registers 9
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .line 568
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$1;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v0}, Lcom/google/maps/android/kml/KmlRenderer;->access$000(Lcom/google/maps/android/kml/KmlRenderer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/maps/android/R$layout;->info_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 569
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/google/maps/android/R$id;->window:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 570
    .local v1, "infoWindowText":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 571
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_69

    .line 573
    :cond_5e
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    :goto_69
    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .registers 3
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .line 564
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.maps.android.kml.KmlRenderer.GroundOverlayImageDownload (com.google.maps.android.kml.KmlRenderer$GroundOverlayImageDownload)
.class Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;
.super Landroid/os/AsyncTask;
.source "KmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/kml/KmlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroundOverlayImageDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGroundOverlayUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/maps/android/kml/KmlRenderer;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;)V
    .registers 3
    .param p2, "groundOverlayUrl"    # Ljava/lang/String;

    .line 859
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 860
    iput-object p2, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    .line 861
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 872
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_11} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 876
    :catch_12
    move-exception v0

    .line 877
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 874
    .end local v0    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v0

    .line 875
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 878
    .end local v0    # "e":Ljava/net/MalformedURLException;
    nop

    .line 879
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 855
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 889
    if-nez p1, :cond_21

    .line 890
    const-string v0, "KmlRenderer"

    const-string v1, "Image at this URL could not be found "

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_17
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 892
    :cond_21
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v0}, Lcom/google/maps/android/kml/KmlRenderer;->access$100(Lcom/google/maps/android/kml/KmlRenderer;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v0}, Lcom/google/maps/android/kml/KmlRenderer;->access$200(Lcom/google/maps/android/kml/KmlRenderer;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 894
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v2}, Lcom/google/maps/android/kml/KmlRenderer;->access$700(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/android/kml/KmlRenderer;->access$800(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 895
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->mGroundOverlayUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v2}, Lcom/google/maps/android/kml/KmlRenderer;->access$500(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/android/kml/KmlRenderer;->access$900(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/lang/Iterable;Z)V

    .line 898
    :cond_4f
    :goto_4f
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 855
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/maps/android/kml/KmlRenderer$GroundOverlayImageDownload;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

###### Class com.google.maps.android.kml.KmlRenderer.MarkerIconImageDownload (com.google.maps.android.kml.KmlRenderer$MarkerIconImageDownload)
.class Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;
.super Landroid/os/AsyncTask;
.source "KmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/kml/KmlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkerIconImageDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIconUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/maps/android/kml/KmlRenderer;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;)V
    .registers 3
    .param p2, "iconUrl"    # Ljava/lang/String;

    .line 811
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 812
    iput-object p2, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->mIconUrl:Ljava/lang/String;

    .line 813
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 824
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->mIconUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_11} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 827
    :catch_12
    move-exception v0

    .line 828
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .line 825
    .end local v0    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v0

    .line 826
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 829
    .end local v0    # "e":Ljava/net/MalformedURLException;
    nop

    .line 830
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 802
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 840
    if-nez p1, :cond_21

    .line 841
    const-string v0, "KmlRenderer"

    const-string v1, "Image at this URL could not be found "

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->mIconUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_17
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 843
    :cond_21
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v0}, Lcom/google/maps/android/kml/KmlRenderer;->access$100(Lcom/google/maps/android/kml/KmlRenderer;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v0}, Lcom/google/maps/android/kml/KmlRenderer;->access$200(Lcom/google/maps/android/kml/KmlRenderer;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 845
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->mIconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v2}, Lcom/google/maps/android/kml/KmlRenderer;->access$300(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/maps/android/kml/KmlRenderer;->access$400(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 846
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->mIconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->this$0:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-static {v2}, Lcom/google/maps/android/kml/KmlRenderer;->access$500(Lcom/google/maps/android/kml/KmlRenderer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/maps/android/kml/KmlRenderer;->access$600(Lcom/google/maps/android/kml/KmlRenderer;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 849
    :cond_4e
    :goto_4e
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 802
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/maps/android/kml/KmlRenderer$MarkerIconImageDownload;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
