###### Class com.digikala.dms.view.fragment.MapFragment (com.digikala.dms.view.fragment.MapFragment)
.class public Lcom/digikala/dms/view/fragment/MapFragment;
.super Landroid/support/v4/app/Fragment;
.source "MapFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/view/fragment/MapFragment$DrawDirectionTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
        "Lcom/google/android/gms/maps/OnMapReadyCallback;",
        "Lcom/google/android/gms/location/LocationListener;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/location/LocationSettingsResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final LEVEL_BEARING:F = 0.0f

.field private static final LEVEL_TILT:F = 0.0f

.field private static final LEVEL_ZOOM:F = 16.0f

.field private static final LOCATION_REQUEST_CODE:I = 0x65

.field private static final MAPS_DIRECTIONS:Ljava/lang/String; = "http://maps.googleapis.com/maps/api/directions/json"

.field private static final MAPS_MATRIX:Ljava/lang/String; = "http://maps.googleapis.com/maps/api/distancematrix/json"

.field private static PERMISSIONS_Location:[Ljava/lang/String; = null

.field private static final REQUEST_LOCATION_:I = 0x1

.field private static final TAG_DEBUG:Ljava/lang/String;


# instance fields
.field private DC:Lcom/google/android/gms/maps/model/LatLng;

.field private currentLocation:Landroid/location/Location;

.field private currentLocationMarker:Lcom/google/android/gms/maps/model/Marker;

.field private destination:Lcom/google/android/gms/maps/model/LatLng;

.field private fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field locationListener:Landroid/location/LocationListener;

.field protected locationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mShipments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private mapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

.field private origins:Lcom/google/android/gms/maps/model/LatLng;

.field private rootView:Landroid/view/View;

.field sizeFirstRoute:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 85
    const-class v0, Lcom/digikala/dms/view/fragment/ShipmentsListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/view/fragment/MapFragment;->TAG_DEBUG:Ljava/lang/String;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/digikala/dms/view/fragment/MapFragment;->PERMISSIONS_Location:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 118
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mShipments:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v1, 0x4049b3c36976bc1fL    # 51.404401

    const-wide v3, 0x4041e1cefaa4766cL    # 35.764129

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->origins:Lcom/google/android/gms/maps/model/LatLng;

    .line 115
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->DC:Lcom/google/android/gms/maps/model/LatLng;

    .line 116
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->destination:Lcom/google/android/gms/maps/model/LatLng;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/view/fragment/MapFragment;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/MapFragment;

    .line 78
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->currentLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$002(Lcom/digikala/dms/view/fragment/MapFragment;Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/MapFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .line 78
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->currentLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$200(Lcom/digikala/dms/view/fragment/MapFragment;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/MapFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/MapFragment;->parseJsonFromGoogle(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/digikala/dms/view/fragment/MapFragment;)Lcom/google/android/gms/maps/GoogleMap;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/view/fragment/MapFragment;

    .line 78
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method private addMarkerToMap(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;F)Lcom/google/android/gms/maps/model/Marker;
    .registers 6
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "hue"    # F

    .line 503
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 504
    .local v0, "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 505
    invoke-static {p3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 507
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    return-object v1
.end method

.method private addPolylineToMap(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 511
    .local p1, "decodedPath":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    .line 512
    return-void
.end method

.method public static decodePoly(Ljava/lang/String;)Ljava/util/List;
    .registers 19
    .param p0, "encoded"    # Ljava/lang/String;
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

    .line 574
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v1, "poly":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 576
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "lat":I
    move v6, v4

    move v4, v2

    const/4 v2, 0x0

    .line 578
    .local v2, "lng":I
    .local v4, "index":I
    .local v6, "lat":I
    :goto_10
    if-ge v4, v3, :cond_77

    .line 579
    const/4 v7, 0x0

    move v8, v7

    move v7, v4

    const/4 v4, 0x0

    .line 581
    .local v4, "result":I
    .local v7, "index":I
    .local v8, "shift":I
    :goto_16
    add-int/lit8 v9, v7, 0x1

    .local v9, "index":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .end local v7    # "index":I
    add-int/lit8 v7, v7, -0x3f

    .line 582
    .local v7, "b":I
    and-int/lit8 v10, v7, 0x1f

    shl-int/2addr v10, v8

    or-int/2addr v4, v10

    .line 583
    add-int/lit8 v8, v8, 0x5

    .line 584
    const/16 v10, 0x20

    if-ge v7, v10, :cond_75

    .line 585
    and-int/lit8 v11, v4, 0x1

    if-eqz v11, :cond_31

    shr-int/lit8 v11, v4, 0x1

    xor-int/lit8 v11, v11, -0x1

    goto :goto_33

    :cond_31
    shr-int/lit8 v11, v4, 0x1

    .line 586
    .local v11, "dlat":I
    :goto_33
    add-int v12, v6, v11

    .line 588
    .end local v6    # "lat":I
    .local v12, "lat":I
    const/4 v6, 0x0

    .line 589
    .end local v8    # "shift":I
    .local v6, "shift":I
    const/4 v4, 0x0

    .line 591
    :goto_37
    add-int/lit8 v8, v9, 0x1

    .local v8, "index":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .end local v9    # "index":I
    add-int/lit8 v7, v9, -0x3f

    .line 592
    and-int/lit8 v9, v7, 0x1f

    shl-int/2addr v9, v6

    or-int/2addr v4, v9

    .line 593
    add-int/lit8 v6, v6, 0x5

    .line 594
    if-ge v7, v10, :cond_71

    .line 595
    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_50

    shr-int/lit8 v9, v4, 0x1

    xor-int/lit8 v9, v9, -0x1

    goto :goto_52

    :cond_50
    shr-int/lit8 v9, v4, 0x1

    .line 596
    .local v9, "dlng":I
    :goto_52
    add-int/2addr v2, v9

    .line 598
    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v13, v12

    const-wide v15, 0x40f86a0000000000L    # 100000.0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v15

    move/from16 v17, v6

    .end local v6    # "shift":I
    .local v17, "shift":I
    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v15

    invoke-direct {v10, v13, v14, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v5, v10

    .line 600
    .local v5, "p":Lcom/google/android/gms/maps/model/LatLng;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    .end local v4    # "result":I
    .end local v5    # "p":Lcom/google/android/gms/maps/model/LatLng;
    .end local v7    # "b":I
    .end local v9    # "dlng":I
    .end local v11    # "dlat":I
    .end local v17    # "shift":I
    nop

    .line 576
    move v4, v8

    move v6, v12

    goto :goto_10

    .line 591
    .restart local v4    # "result":I
    .restart local v6    # "shift":I
    .restart local v7    # "b":I
    .restart local v11    # "dlat":I
    :cond_71
    move/from16 v17, v6

    move v9, v8

    .end local v6    # "shift":I
    .restart local v17    # "shift":I
    goto :goto_37

    .line 579
    .end local v7    # "b":I
    .end local v11    # "dlat":I
    .end local v12    # "lat":I
    .end local v17    # "shift":I
    .local v6, "lat":I
    .local v8, "shift":I
    .local v9, "index":I
    :cond_75
    move v7, v9

    goto :goto_16

    .line 603
    .end local v8    # "shift":I
    .end local v9    # "index":I
    .local v4, "index":I
    :cond_77
    return-object v1
.end method

.method private drawCircle(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 5
    .param p1, "location"    # Lcom/google/android/gms/maps/model/LatLng;

    .line 555
    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 556
    .local v0, "options":Lcom/google/android/gms/maps/model/CircleOptions;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 558
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->currentLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 559
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 560
    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 559
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 561
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 562
    const v2, 0x7f060022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 561
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 563
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    .line 564
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_3c

    .line 565
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    .line 568
    :cond_3c
    return-void
.end method

.method private drawDirectionRequest(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;)V
    .registers 12
    .param p1, "origin"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "destination"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 688
    .local p3, "wayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const-string v0, "getRequest"

    .line 690
    .local v0, "tag_json_obj":Ljava/lang/String;
    new-instance v7, Lcom/digikala/dms/view/fragment/MapFragment$5;

    invoke-static {p1, p2, p3}, Lcom/digikala/dms/view/fragment/MapFragment;->makeURLForDirection(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/digikala/dms/view/fragment/MapFragment$3;

    invoke-direct {v5, p0}, Lcom/digikala/dms/view/fragment/MapFragment$3;-><init>(Lcom/digikala/dms/view/fragment/MapFragment;)V

    new-instance v6, Lcom/digikala/dms/view/fragment/MapFragment$4;

    invoke-direct {v6, p0}, Lcom/digikala/dms/view/fragment/MapFragment$4;-><init>(Lcom/digikala/dms/view/fragment/MapFragment;)V

    const/4 v3, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/digikala/dms/view/fragment/MapFragment$5;-><init>(Lcom/digikala/dms/view/fragment/MapFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 705
    .local v1, "request":Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;
    invoke-static {v1, v0}, Lcom/digikala/dms/helper/webservice/VolleyHelper;->addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method private fetchLastLocation()V
    .registers 3

    .line 198
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 206
    return-void

    .line 208
    :cond_19
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 209
    .local v0, "task":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Landroid/location/Location;>;"
    new-instance v1, Lcom/digikala/dms/view/fragment/MapFragment$2;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/MapFragment$2;-><init>(Lcom/digikala/dms/view/fragment/MapFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 233
    return-void
.end method

.method private goToLocation(DD)V
    .registers 9
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .line 477
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 478
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 479
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 480
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 481
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 483
    .local v0, "cameraPosition":Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_2e

    .line 484
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 487
    :cond_2e
    return-void
.end method

.method private loadShipments()V
    .registers 6

    .line 490
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 491
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 492
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "isLoggedIn"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 494
    .local v1, "loggedInDeliveries":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Courier;>;"
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ne v2, v3, :cond_39

    .line 495
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/model/domain/Batch;->getShipments()Lio/realm/RealmList;

    move-result-object v2

    .line 496
    .local v2, "allShipments":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 497
    .end local v2    # "allShipments":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    goto :goto_40

    .line 498
    :cond_39
    sget-object v2, Lcom/digikala/dms/view/fragment/MapFragment;->TAG_DEBUG:Ljava/lang/String;

    const-string v3, "The number of logged-in deliveries must be exactly one"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_40
    return-void
.end method

.method public static makeURLForDirection(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .param p0, "origin"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "destination"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 608
    .local p2, "wayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .local v0, "urlString":Ljava/lang/StringBuilder;
    const-string v1, "http://maps.googleapis.com/maps/api/directions/json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v1, "?origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v1, "&destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a8

    .line 621
    :try_start_48
    const-string v1, "&waypoints=optimize:true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string/jumbo v1, "|"

    const-string/jumbo v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a3

    .line 625
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string v2, ","

    const-string/jumbo v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_a0

    .line 630
    const-string/jumbo v2, "|"

    const-string/jumbo v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_48 .. :try_end_a0} :catch_a4

    .line 624
    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 635
    .end local v1    # "i":I
    :cond_a3
    goto :goto_a8

    .line 633
    :catch_a4
    move-exception v1

    .line 634
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 638
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_a8
    :goto_a8
    const-string v1, "&sensor=false&mode=driving&alternatives=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance()Lcom/digikala/dms/view/fragment/MapFragment;
    .registers 1

    .line 122
    new-instance v0, Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-direct {v0}, Lcom/digikala/dms/view/fragment/MapFragment;-><init>()V

    .line 123
    .local v0, "mapFragment":Lcom/digikala/dms/view/fragment/MapFragment;
    return-object v0
.end method

.method private parseJsonFromGoogle(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "result"    # Ljava/lang/String;
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

    .line 653
    const/4 v0, 0x0

    .line 655
    .local v0, "latLongs":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 656
    const/4 v1, 0x0

    iput v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->sizeFirstRoute:I

    .line 659
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 661
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "routes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 662
    .local v3, "routeArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 664
    .local v4, "routes":Lorg/json/JSONObject;
    const-string v5, "legs"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 665
    .local v5, "legsArray":Lorg/json/JSONArray;
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 666
    .local v6, "leg":Lorg/json/JSONObject;
    const-string v7, "steps"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 668
    .local v7, "stepsArray":Lorg/json/JSONArray;
    nop

    .local v1, "j":I
    :goto_2a
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_4a

    .line 669
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 671
    .local v8, "step":Lorg/json/JSONObject;
    const-string v9, "polyline"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 672
    .local v9, "polyLine":Lorg/json/JSONObject;
    const-string v10, "points"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/digikala/dms/view/fragment/MapFragment;->decodePoly(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_47} :catch_4b

    .line 668
    .end local v8    # "step":Lorg/json/JSONObject;
    .end local v9    # "polyLine":Lorg/json/JSONObject;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 676
    .end local v1    # "j":I
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "routeArray":Lorg/json/JSONArray;
    .end local v4    # "routes":Lorg/json/JSONObject;
    .end local v5    # "legsArray":Lorg/json/JSONArray;
    .end local v6    # "leg":Lorg/json/JSONObject;
    .end local v7    # "stepsArray":Lorg/json/JSONArray;
    :cond_4a
    goto :goto_66

    .line 674
    :catch_4b
    move-exception v1

    .line 675
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/digikala/dms/view/fragment/MapFragment;->TAG_DEBUG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_66
    return-object v0
.end method

.method private routingBetweenShipment()V
    .registers 11

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v0, "wayPoints":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v1, 0x1

    .line 353
    .local v1, "i":I
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mShipments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_aa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Shipment;

    .line 354
    .local v3, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v4

    if-eqz v4, :cond_a8

    .line 356
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_72

    .line 358
    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    .line 359
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v6

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v8

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 358
    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    .line 360
    .local v4, "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getCustomerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 361
    const v5, 0x7f0800e2

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 362
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 364
    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v6

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v8

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v4    # "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    goto :goto_a6

    .line 366
    :cond_72
    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v6

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v8

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    .line 367
    .restart local v4    # "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Shipment;->getCustomerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 368
    const v5, 0x7f0800e1

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 370
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 372
    .end local v4    # "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    :goto_a6
    add-int/lit8 v1, v1, 0x1

    .line 374
    .end local v3    # "shipment":Lcom/digikala/dms/model/domain/Shipment;
    :cond_a8
    goto/16 :goto_c

    .line 376
    :cond_aa
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getLatestShipmentIDFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "orderID":Ljava/lang/String;
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v3

    .line 379
    .local v3, "realm":Lio/realm/Realm;
    const-class v4, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v3, v4}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v4

    const-string v5, "orderId"

    .line 380
    invoke-virtual {v4, v5, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/Shipment;

    .line 382
    .local v4, "latestShipment":Lcom/digikala/dms/model/domain/Shipment;
    if-eqz v4, :cond_e2

    .line 383
    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v6

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v8

    invoke-virtual {v8}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v5, p0, Lcom/digikala/dms/view/fragment/MapFragment;->origins:Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_e6

    .line 385
    :cond_e2
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/MapFragment;->DC:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v5, p0, Lcom/digikala/dms/view/fragment/MapFragment;->origins:Lcom/google/android/gms/maps/model/LatLng;

    .line 388
    :goto_e6
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/MapFragment;->origins:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v6, p0, Lcom/digikala/dms/view/fragment/MapFragment;->destination:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0, v5, v6, v0}, Lcom/digikala/dms/view/fragment/MapFragment;->drawDirectionRequest(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;)V

    .line 389
    return-void
.end method

.method private setCurrentLocation()V
    .registers 6

    .line 515
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3b

    .line 516
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3b

    .line 518
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 519
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_3b

    .line 521
    :cond_31
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/digikala/dms/view/fragment/MapFragment;->PERMISSIONS_Location:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 528
    :cond_3b
    :goto_3b
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->currentLocation:Landroid/location/Location;

    .line 535
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->currentLocationMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_55

    .line 536
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->currentLocationMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 537
    const-string v0, "remove"

    const-string v1, "remove"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_55
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->currentLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/MapFragment;->currentLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 541
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 542
    .local v1, "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    const-string v2, "current location"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 543
    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 544
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/MapFragment;->currentLocationMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 546
    invoke-direct {p0, v0}, Lcom/digikala/dms/view/fragment/MapFragment;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 547
    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 548
    .local v2, "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v3, :cond_97

    .line 549
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 552
    :cond_97
    return-void
.end method

.method private setDistributionCenterLocation()V
    .registers 8

    .line 424
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 425
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/DistributionCenter;

    .line 427
    .local v1, "distributionCenter":Lcom/digikala/dms/model/domain/DistributionCenter;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/DistributionCenter;->getLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v3

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/DistributionCenter;->getLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v5

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/MapFragment;->DC:Lcom/google/android/gms/maps/model/LatLng;

    .line 428
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/DistributionCenter;->getLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v3

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/DistributionCenter;->getLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v5

    invoke-virtual {v5}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/digikala/dms/view/fragment/MapFragment;->destination:Lcom/google/android/gms/maps/model/LatLng;

    .line 430
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_47

    .line 431
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 434
    :cond_47
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/MapFragment;->DC:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 435
    .local v2, "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {v1}, Lcom/digikala/dms/model/domain/DistributionCenter;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 436
    const v3, 0x7f0800e0

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 438
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v3, :cond_6c

    .line 439
    iget-object v3, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 441
    :cond_6c
    return-void
.end method

.method private setGoogleApi()V
    .registers 3

    .line 263
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 265
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 266
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 268
    return-void
.end method

.method private setGoogleMapUI(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 5
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 393
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 394
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 395
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setTrafficEnabled(Z)V

    .line 397
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    .line 398
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    .line 401
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 402
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_47

    .line 405
    :cond_3e
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v2, Lcom/digikala/dms/view/fragment/MapFragment;->PERMISSIONS_Location:[Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 413
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_5b

    .line 415
    :try_start_4b
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_50} :catch_51

    .line 418
    goto :goto_52

    .line 416
    :catch_51
    move-exception v0

    .line 419
    :goto_52
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 421
    :cond_5b
    return-void
.end method

.method private setMapFragment()V
    .registers 3

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f09010b

    .line 251
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 252
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    if-eqz v0, :cond_18

    .line 253
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 258
    :cond_18
    goto :goto_1a

    .line 256
    :catch_19
    move-exception v0

    .line 260
    :goto_1a
    return-void
.end method

.method private setRootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .line 236
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->rootView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 237
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_13

    .line 239
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 242
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_13
    const v0, 0x7f0c0045

    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->rootView:Landroid/view/View;
    :try_end_1d
    .catch Landroid/view/InflateException; {:try_start_17 .. :try_end_1d} :catch_1e

    .line 245
    goto :goto_1f

    .line 243
    :catch_1e
    move-exception v0

    .line 246
    :goto_1f
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 293
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 295
    :cond_7
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    .line 296
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    .line 298
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 299
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_42

    .line 302
    :cond_38
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/digikala/dms/view/fragment/MapFragment;->PERMISSIONS_Location:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 309
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->currentLocation:Landroid/location/Location;

    if-eqz v0, :cond_54

    .line 310
    const-string v0, "Found Location"

    invoke-static {v0}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->mapFragmentEvent(Ljava/lang/String;)V

    .line 311
    const-string v0, "Found Location"

    invoke-static {v0}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->mapFragmentEvent(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->fetchLastLocation()V

    goto :goto_5e

    .line 315
    :cond_54
    const-string v0, "Not Found Location"

    invoke-static {v0}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->mapFragmentEvent(Ljava/lang/String;)V

    .line 316
    const-string v0, "Not Found Location"

    invoke-static {v0}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->mapFragmentEvent(Ljava/lang/String;)V

    .line 319
    :goto_5e
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 338
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2
    .param p1, "i"    # I

    .line 333
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 137
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/digikala/dms/view/fragment/MapFragment;->setHasOptionsMenu(Z)V

    .line 140
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->setGoogleApi()V

    .line 142
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->setMapFragment()V

    .line 144
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 145
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 146
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 147
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 149
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v1

    iput-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 150
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5b

    .line 151
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v0, v2

    const/16 v2, 0x65

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 152
    return-void

    .line 154
    :cond_5b
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->fetchLastLocation()V

    .line 156
    new-instance v1, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/digikala/dms/view/fragment/MapFragment;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    move-result-object v1

    .line 158
    .local v1, "builder":Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v2

    .line 159
    .local v2, "locationSettingsRequest":Lcom/google/android/gms/location/LocationSettingsRequest;
    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->setAlwaysShow(Z)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 162
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->SettingsApi:Lcom/google/android/gms/location/SettingsApi;

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 163
    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/location/SettingsApi;->checkLocationSettings(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 164
    .local v0, "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/location/LocationSettingsResult;>;"
    new-instance v3, Lcom/digikala/dms/view/fragment/MapFragment$1;

    invoke-direct {v3, p0}, Lcom/digikala/dms/view/fragment/MapFragment$1;-><init>(Lcom/digikala/dms/view/fragment/MapFragment;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 195
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/digikala/dms/view/fragment/MapFragment;->setRootView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 132
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8
    .param p1, "location"    # Landroid/location/Location;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 329
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 2
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 342
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/MapFragment;->setGoogleMapUI(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 344
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->setDistributionCenterLocation()V

    .line 346
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->routingBetweenShipment()V

    .line 347
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8
    .param p1, "permsRequestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 447
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 474
    return-void

    .line 449
    :cond_4
    array-length v1, p3

    if-lez v1, :cond_41

    const/4 v1, 0x0

    aget v2, p3, v1

    if-nez v2, :cond_41

    .line 451
    aget v2, p3, v1

    if-nez v2, :cond_12

    const/4 v1, 0x1

    nop

    .line 453
    .local v1, "locationEnabled":Z
    :cond_12
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_32

    .line 454
    invoke-virtual {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_32

    .line 455
    const-string v0, "permission"

    const-string v2, "onRequestPermissionsResult : if 1"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void

    .line 459
    :cond_32
    const-string v2, "permission"

    const-string v3, "onRequestPermissionsResult : ok"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 462
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->fetchLastLocation()V

    .line 470
    .end local v1    # "locationEnabled":Z
    :cond_41
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/MapFragment;->onResult(Lcom/google/android/gms/location/LocationSettingsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .registers 5
    .param p1, "locationSettingsResult"    # Lcom/google/android/gms/location/LocationSettingsResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 710
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 711
    .local v0, "status":Lcom/google/android/gms/common/api/Status;
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    goto :goto_10

    .line 731
    :cond_e
    goto :goto_10

    .line 716
    :cond_f
    nop

    .line 737
    :goto_10
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 279
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 280
    invoke-direct {p0}, Lcom/digikala/dms/view/fragment/MapFragment;->loadShipments()V

    .line 281
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 272
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 273
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 275
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 285
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 286
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 287
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 289
    :cond_14
    return-void
.end method

###### Class com.digikala.dms.view.fragment.MapFragment.AnonymousClass1 (com.digikala.dms.view.fragment.MapFragment$1)
.class Lcom/digikala/dms/view/fragment/MapFragment$1;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/MapFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/location/LocationSettingsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/MapFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/MapFragment;

    .line 164
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/MapFragment$1;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2

    .line 164
    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/MapFragment$1;->onResult(Lcom/google/android/gms/location/LocationSettingsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .registers 6
    .param p1, "result"    # Lcom/google/android/gms/location/LocationSettingsResult;

    .line 167
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 168
    .local v0, "status":Lcom/google/android/gms/common/api/Status;
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResult;->getLocationSettingsStates()Lcom/google/android/gms/location/LocationSettingsStates;

    move-result-object v1

    .line 169
    .local v1, "state":Lcom/google/android/gms/location/LocationSettingsStates;
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    if-eqz v2, :cond_20

    const/4 v3, 0x6

    if-eq v2, v3, :cond_12

    goto :goto_21

    .line 180
    :cond_12
    :try_start_12
    iget-object v2, p0, Lcom/digikala/dms/view/fragment/MapFragment$1;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    .line 181
    invoke-virtual {v2}, Lcom/digikala/dms/view/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x3e8

    .line 180
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/api/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_1d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 184
    goto :goto_21

    .line 182
    :catch_1e
    move-exception v2

    .line 185
    goto :goto_21

    .line 173
    :cond_20
    nop

    .line 191
    :goto_21
    return-void
.end method

###### Class com.digikala.dms.view.fragment.MapFragment.AnonymousClass2 (com.digikala.dms.view.fragment.MapFragment$2)
.class Lcom/digikala/dms/view/fragment/MapFragment$2;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/MapFragment;->fetchLastLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/MapFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/MapFragment;

    .line 209
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/MapFragment$2;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 212
    if-eqz p1, :cond_1e

    .line 213
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment$2;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-static {v0, p1}, Lcom/digikala/dms/view/fragment/MapFragment;->access$002(Lcom/digikala/dms/view/fragment/MapFragment;Landroid/location/Location;)Landroid/location/Location;

    .line 215
    iget-object v0, p0, Lcom/digikala/dms/view/fragment/MapFragment$2;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-virtual {v0}, Lcom/digikala/dms/view/fragment/MapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 216
    .local v0, "supportMapFragment":Lcom/google/android/gms/maps/SupportMapFragment;
    new-instance v1, Lcom/digikala/dms/view/fragment/MapFragment$2$1;

    invoke-direct {v1, p0}, Lcom/digikala/dms/view/fragment/MapFragment$2$1;-><init>(Lcom/digikala/dms/view/fragment/MapFragment$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 231
    .end local v0    # "supportMapFragment":Lcom/google/android/gms/maps/SupportMapFragment;
    :cond_1e
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 209
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/MapFragment$2;->onSuccess(Landroid/location/Location;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.MapFragment.AnonymousClass2.AnonymousClass1 (com.digikala.dms.view.fragment.MapFragment$2$1)
.class Lcom/digikala/dms/view/fragment/MapFragment$2$1;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/MapFragment$2;->onSuccess(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/digikala/dms/view/fragment/MapFragment$2;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/MapFragment$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/view/fragment/MapFragment$2;

    .line 216
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/MapFragment$2$1;->this$1:Lcom/digikala/dms/view/fragment/MapFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 7
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 219
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment$2$1;->this$1:Lcom/digikala/dms/view/fragment/MapFragment$2;

    iget-object v1, v1, Lcom/digikala/dms/view/fragment/MapFragment$2;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-static {v1}, Lcom/digikala/dms/view/fragment/MapFragment;->access$000(Lcom/digikala/dms/view/fragment/MapFragment;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/digikala/dms/view/fragment/MapFragment$2$1;->this$1:Lcom/digikala/dms/view/fragment/MapFragment$2;

    iget-object v3, v3, Lcom/digikala/dms/view/fragment/MapFragment$2;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-static {v3}, Lcom/digikala/dms/view/fragment/MapFragment;->access$000(Lcom/digikala/dms/view/fragment/MapFragment;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 221
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const-string v2, "You are Here"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 222
    .local v1, "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 223
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 225
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 226
    return-void
.end method

###### Class com.digikala.dms.view.fragment.MapFragment.AnonymousClass3 (com.digikala.dms.view.fragment.MapFragment$3)
.class Lcom/digikala/dms/view/fragment/MapFragment$3;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/MapFragment;->drawDirectionRequest(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/MapFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/MapFragment;

    .line 690
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/MapFragment$3;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 690
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/MapFragment$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 694
    new-instance v0, Lcom/digikala/dms/view/fragment/MapFragment$DrawDirectionTask;

    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment$3;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/digikala/dms/view/fragment/MapFragment$DrawDirectionTask;-><init>(Lcom/digikala/dms/view/fragment/MapFragment;Lcom/digikala/dms/view/fragment/MapFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/digikala/dms/view/fragment/MapFragment$DrawDirectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 695
    return-void
.end method

###### Class com.digikala.dms.view.fragment.MapFragment.AnonymousClass4 (com.digikala.dms.view.fragment.MapFragment$4)
.class Lcom/digikala/dms/view/fragment/MapFragment$4;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/MapFragment;->drawDirectionRequest(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/MapFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/MapFragment;

    .line 696
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/MapFragment$4;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 700
    const-string v0, "errror"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    return-void
.end method

###### Class com.digikala.dms.view.fragment.MapFragment.AnonymousClass5 (com.digikala.dms.view.fragment.MapFragment$5)
.class Lcom/digikala/dms/view/fragment/MapFragment$5;
.super Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;
.source "MapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/view/fragment/MapFragment;->drawDirectionRequest(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/digikala/dms/view/fragment/MapFragment;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 6
    .param p1, "this$0"    # Lcom/digikala/dms/view/fragment/MapFragment;
    .param p2, "method"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .line 702
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/MapFragment$5;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

###### Class com.digikala.dms.view.fragment.MapFragment.DrawDirectionTask (com.digikala.dms.view.fragment.MapFragment$DrawDirectionTask)
.class Lcom/digikala/dms/view/fragment/MapFragment$DrawDirectionTask;
.super Landroid/os/AsyncTask;
.source "MapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/view/fragment/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawDirectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/view/fragment/MapFragment;


# direct methods
.method private constructor <init>(Lcom/digikala/dms/view/fragment/MapFragment;)V
    .registers 2

    .line 743
    iput-object p1, p0, Lcom/digikala/dms/view/fragment/MapFragment$DrawDirectionTask;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/digikala/dms/view/fragment/MapFragment;Lcom/digikala/dms/view/fragment/MapFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/digikala/dms/view/fragment/MapFragment;
    .param p2, "x1"    # Lcom/digikala/dms/view/fragment/MapFragment$1;

    .line 743
    invoke-direct {p0, p1}, Lcom/digikala/dms/view/fragment/MapFragment$DrawDirectionTask;-><init>(Lcom/digikala/dms/view/fragment/MapFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 743
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/MapFragment$DrawDirectionTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "jsonData"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 748
    const/4 v0, 0x0

    .line 751
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    :try_start_1
    iget-object v1, p0, Lcom/digikala/dms/view/fragment/MapFragment$DrawDirectionTask;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/digikala/dms/view/fragment/MapFragment;->access$200(Lcom/digikala/dms/view/fragment/MapFragment;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-object v0, v1

    .line 754
    goto :goto_10

    .line 752
    :catch_c
    move-exception v1

    .line 753
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 755
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_10
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 743
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/view/fragment/MapFragment$DrawDirectionTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 762
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "z":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_57

    .line 763
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/LatLng;

    .line 764
    .local v2, "src":Lcom/google/android/gms/maps/model/LatLng;
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 766
    .local v4, "dest":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v5, p0, Lcom/digikala/dms/view/fragment/MapFragment$DrawDirectionTask;->this$0:Lcom/digikala/dms/view/fragment/MapFragment;

    invoke-static {v5}, Lcom/digikala/dms/view/fragment/MapFragment;->access$300(Lcom/digikala/dms/view/fragment/MapFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v6}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/android/gms/maps/model/LatLng;

    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v9, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v11, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v8, v7, v0

    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v9, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v11, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v8, v7, v3

    .line 767
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/PolylineOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v6

    const/high16 v7, 0x41100000    # 9.0f

    .line 768
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v6

    const v7, -0xffff01

    .line 769
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v3

    .line 766
    invoke-virtual {v5, v3}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    .line 762
    .end local v2    # "src":Lcom/google/android/gms/maps/model/LatLng;
    .end local v4    # "dest":Lcom/google/android/gms/maps/model/LatLng;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 772
    .end local v1    # "z":I
    :cond_57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_74

    .line 773
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/digikala/dms/util/Util;->saveLatestLatLngToSharedPreference(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_80

    .line 775
    :cond_74
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/digikala/dms/util/Util;->saveLatestLatLngToSharedPreference(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 777
    :goto_80
    return-void
.end method
