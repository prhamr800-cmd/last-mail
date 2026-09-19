###### Class com.google.maps.android.kml.KmlStyle (com.google.maps.android.kml.KmlStyle)
.class Lcom/google/maps/android/kml/KmlStyle;
.super Ljava/lang/Object;
.source "KmlStyle.java"


# static fields
.field private static final HSV_VALUES:I = 0x3

.field private static final HUE_VALUE:I = 0x0

.field private static final INITIAL_SCALE:I = 0x1


# instance fields
.field private final mBalloonOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFill:Z

.field private mIconRandomColorMode:Z

.field private mIconUrl:Ljava/lang/String;

.field private mLineRandomColorMode:Z

.field private mMarkerColor:F

.field private final mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

.field private mOutline:Z

.field private mPolyRandomColorMode:Z

.field private final mPolygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

.field private final mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

.field private mScale:D

.field private mStyleId:Ljava/lang/String;

.field private final mStylesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mFill:Z

    .line 37
    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mOutline:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStyleId:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 59
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 60
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mBalloonOptions:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    .line 63
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mScale:D

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mMarkerColor:F

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mIconRandomColorMode:Z

    .line 66
    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mLineRandomColorMode:Z

    .line 67
    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolyRandomColorMode:Z

    .line 68
    return-void
.end method

.method static computeRandomColor(I)I
    .registers 6
    .param p0, "color"    # I

    .line 461
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 462
    .local v0, "random":Ljava/util/Random;
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 463
    .local v1, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 464
    .local v2, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 466
    .local v3, "blue":I
    if-eqz v1, :cond_17

    .line 467
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 469
    :cond_17
    if-eqz v3, :cond_1d

    .line 470
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 472
    :cond_1d
    if-eqz v2, :cond_23

    .line 473
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 475
    :cond_23
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

.method private static convertColor(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "color"    # Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-le v0, v4, :cond_66

    .line 239
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v6, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v6, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v6, v3

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ab

    .line 242
    :cond_66
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "newColor":Ljava/lang/String;
    :goto_ab
    return-object v0
.end method

.method private static createMarkerOptions(Lcom/google/android/gms/maps/model/MarkerOptions;ZF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 6
    .param p0, "originalMarkerOption"    # Lcom/google/android/gms/maps/model/MarkerOptions;
    .param p1, "iconRandomColorMode"    # Z
    .param p2, "markerColor"    # F

    .line 383
    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 384
    .local v0, "newMarkerOption":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 385
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 386
    if-eqz p1, :cond_29

    .line 387
    float-to-int v1, p2

    invoke-static {v1}, Lcom/google/maps/android/kml/KmlStyle;->computeRandomColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/maps/android/kml/KmlStyle;->getHueValue(I)F

    move-result v1

    .line 388
    .local v1, "hue":F
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 390
    .end local v1    # "hue":F
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 391
    return-object v0
.end method

.method private static createPolygonOptions(Lcom/google/android/gms/maps/model/PolygonOptions;ZZ)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 5
    .param p0, "originalPolygonOption"    # Lcom/google/android/gms/maps/model/PolygonOptions;
    .param p1, "isFill"    # Z
    .param p2, "isOutline"    # Z

    .line 415
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    .line 416
    .local v0, "polygonOptions":Lcom/google/android/gms/maps/model/PolygonOptions;
    if-eqz p1, :cond_e

    .line 417
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 419
    :cond_e
    if-eqz p2, :cond_1e

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 421
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 423
    :cond_1e
    return-object v0
.end method

.method private static createPolylineOptions(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 3
    .param p0, "originalPolylineOption"    # Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 400
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 401
    .local v0, "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 402
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 403
    return-object v0
.end method

.method private static getHueValue(I)F
    .registers 3
    .param p0, "integerColor"    # I

    .line 225
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 226
    .local v0, "hsvValues":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 227
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method


# virtual methods
.method getBalloonOptions()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mBalloonOptions:Ljava/util/HashMap;

    return-object v0
.end method

.method getIconScale()D
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mScale:D

    return-wide v0
.end method

.method getIconUrl()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlStyle;->isIconRandomColorMode()Z

    move-result v1

    iget v2, p0, Lcom/google/maps/android/kml/KmlStyle;->mMarkerColor:F

    invoke-static {v0, v1, v2}, Lcom/google/maps/android/kml/KmlStyle;->createMarkerOptions(Lcom/google/android/gms/maps/model/MarkerOptions;ZF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    return-object v0
.end method

.method getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 4

    .line 450
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    iget-boolean v1, p0, Lcom/google/maps/android/kml/KmlStyle;->mFill:Z

    iget-boolean v2, p0, Lcom/google/maps/android/kml/KmlStyle;->mOutline:Z

    invoke-static {v0, v1, v2}, Lcom/google/maps/android/kml/KmlStyle;->createPolygonOptions(Lcom/google/android/gms/maps/model/PolygonOptions;ZZ)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    return-object v0
.end method

.method getPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-static {v0}, Lcom/google/maps/android/kml/KmlStyle;->createPolylineOptions(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    return-object v0
.end method

.method getStyleId()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStyleId:Ljava/lang/String;

    return-object v0
.end method

.method hasBalloonStyle()Z
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mBalloonOptions:Ljava/util/HashMap;

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

.method hasFill()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mFill:Z

    return v0
.end method

.method hasOutline()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mOutline:Z

    return v0
.end method

.method isIconRandomColorMode()Z
    .registers 2

    .line 298
    iget-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mIconRandomColorMode:Z

    return v0
.end method

.method isLineRandomColorMode()Z
    .registers 2

    .line 318
    iget-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mLineRandomColorMode:Z

    return v0
.end method

.method isPolyRandomColorMode()Z
    .registers 2

    .line 338
    iget-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolyRandomColorMode:Z

    return v0
.end method

.method isStyleSet(Ljava/lang/String;)Z
    .registers 3
    .param p1, "style"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setFill(Z)V
    .registers 2
    .param p1, "fill"    # Z

    .line 122
    iput-boolean p1, p0, Lcom/google/maps/android/kml/KmlStyle;->mFill:Z

    .line 123
    return-void
.end method

.method setFillColor(Ljava/lang/String;)V
    .registers 6
    .param p1, "color"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    const-string v1, "#"

    invoke-static {p1}, Lcom/google/maps/android/kml/KmlStyle;->convertColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 203
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string v1, "fillColor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method setHeading(F)V
    .registers 4
    .param p1, "heading"    # F

    .line 254
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 255
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string v1, "heading"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method setHotSpot(FFLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xUnits"    # Ljava/lang/String;
    .param p4, "yUnits"    # Ljava/lang/String;

    .line 267
    const/high16 v0, 0x3f000000    # 0.5f

    .line 268
    .local v0, "xAnchor":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 270
    .local v1, "yAnchor":F
    const-string v2, "fraction"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 271
    move v0, p1

    .line 273
    :cond_d
    const-string v2, "fraction"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 274
    move v1, p2

    .line 277
    :cond_16
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 278
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string v3, "hotSpot"

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method

.method setIconColorMode(Ljava/lang/String;)V
    .registers 4
    .param p1, "colorMode"    # Ljava/lang/String;

    .line 288
    const-string v0, "random"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mIconRandomColorMode:Z

    .line 289
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string v1, "iconColorMode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method setIconScale(D)V
    .registers 5
    .param p1, "scale"    # D

    .line 140
    iput-wide p1, p0, Lcom/google/maps/android/kml/KmlStyle;->mScale:D

    .line 141
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string v1, "iconScale"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method setIconUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "iconUrl"    # Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlStyle;->mIconUrl:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mIconUrl:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 190
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-static {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromPath(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 192
    :cond_15
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string v1, "iconUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method setInfoWindowText(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mBalloonOptions:Ljava/util/HashMap;

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method setLineColorMode(Ljava/lang/String;)V
    .registers 4
    .param p1, "colorMode"    # Ljava/lang/String;

    .line 308
    const-string v0, "random"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mLineRandomColorMode:Z

    .line 309
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string v1, "lineColorMode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method setMarkerColor(Ljava/lang/String;)V
    .registers 5
    .param p1, "color"    # Ljava/lang/String;

    .line 212
    const-string v0, "#"

    invoke-static {p1}, Lcom/google/maps/android/kml/KmlStyle;->convertColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_15
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1b
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 213
    .local v0, "integerColor":I
    invoke-static {v0}, Lcom/google/maps/android/kml/KmlStyle;->getHueValue(I)F

    move-result v1

    iput v1, p0, Lcom/google/maps/android/kml/KmlStyle;->mMarkerColor:F

    .line 214
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlStyle;->mMarkerOptions:Lcom/google/android/gms/maps/model/MarkerOptions;

    iget v2, p0, Lcom/google/maps/android/kml/KmlStyle;->mMarkerColor:F

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 215
    iget-object v1, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string v2, "markerColor"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method setOutline(Z)V
    .registers 4
    .param p1, "outline"    # Z

    .line 168
    iput-boolean p1, p0, Lcom/google/maps/android/kml/KmlStyle;->mOutline:Z

    .line 169
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string v1, "outline"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method setOutlineColor(Ljava/lang/String;)V
    .registers 6
    .param p1, "color"    # Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    const-string v1, "#"

    invoke-static {p1}, Lcom/google/maps/android/kml/KmlStyle;->convertColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 349
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    const-string v1, "#"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    :cond_37
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_3d
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 350
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string v1, "outlineColor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 351
    return-void
.end method

.method setPolyColorMode(Ljava/lang/String;)V
    .registers 4
    .param p1, "colorMode"    # Ljava/lang/String;

    .line 328
    const-string v0, "random"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolyRandomColorMode:Z

    .line 329
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string v1, "polyColorMode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method setStyleId(Ljava/lang/String;)V
    .registers 2
    .param p1, "styleId"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlStyle;->mStyleId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method setWidth(Ljava/lang/Float;)V
    .registers 4
    .param p1, "width"    # Ljava/lang/Float;

    .line 359
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 360
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mPolygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 361
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlStyle;->mStylesSet:Ljava/util/HashSet;

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Style"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 481
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n balloon options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlStyle;->mBalloonOptions:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    const-string v1, ",\n fill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/maps/android/kml/KmlStyle;->mFill:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, ",\n outline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/maps/android/kml/KmlStyle;->mOutline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 484
    const-string v1, ",\n icon url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlStyle;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v1, ",\n scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/maps/android/kml/KmlStyle;->mScale:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 486
    const-string v1, ",\n style id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlStyle;->mStyleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
