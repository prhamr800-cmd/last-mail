###### Class com.google.maps.android.geojson.GeoJsonRenderer (com.google.maps.android.geojson.GeoJsonRenderer)
.class Lcom/google/maps/android/geojson/GeoJsonRenderer;
.super Ljava/lang/Object;
.source "GeoJsonRenderer.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final FEATURE_NOT_ON_MAP:Ljava/lang/Object;

.field private static final POLYGON_INNER_COORDINATE_INDEX:I = 0x1

.field private static final POLYGON_OUTER_COORDINATE_INDEX:I


# instance fields
.field private final mDefaultLineStringStyle:Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

.field private final mDefaultPointStyle:Lcom/google/maps/android/geojson/GeoJsonPointStyle;

.field private final mDefaultPolygonStyle:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

.field private final mFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerOnMap:Z

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/HashMap;)V
    .registers 5
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/GoogleMap;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p2, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/geojson/GeoJsonFeature;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 53
    iput-object p2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    .line 55
    new-instance v0, Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    invoke-direct {v0}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPointStyle:Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    .line 56
    new-instance v0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    invoke-direct {v0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultLineStringStyle:Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    .line 57
    new-instance v0, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    invoke-direct {v0}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPolygonStyle:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    .line 60
    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getFeatures()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 61
    .local v1, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    invoke-direct {p0, v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->setFeatureDefaultStyles(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    .line 62
    .end local v1    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    goto :goto_27

    .line 63
    :cond_37
    return-void
.end method

.method private addFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/maps/android/geojson/GeoJsonGeometry;)Ljava/lang/Object;
    .registers 6
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;
    .param p2, "geometry"    # Lcom/google/maps/android/geojson/GeoJsonGeometry;

    .line 234
    invoke-interface {p2}, Lcom/google/maps/android/geojson/GeoJsonGeometry;->getType()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "geometryType":Ljava/lang/String;
    const-string v1, "Point"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 236
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/google/maps/android/geojson/GeoJsonPoint;

    invoke-direct {p0, v1, v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addPointToMap(Lcom/google/maps/android/geojson/GeoJsonPointStyle;Lcom/google/maps/android/geojson/GeoJsonPoint;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    return-object v1

    .line 237
    :cond_18
    const-string v1, "LineString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 238
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/google/maps/android/geojson/GeoJsonLineString;

    invoke-direct {p0, v1, v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addLineStringToMap(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/geojson/GeoJsonLineString;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    return-object v1

    .line 240
    :cond_2c
    const-string v1, "Polygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 241
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/google/maps/android/geojson/GeoJsonPolygon;

    invoke-direct {p0, v1, v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addPolygonToMap(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/geojson/GeoJsonPolygon;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v1

    return-object v1

    .line 243
    :cond_40
    const-string v1, "MultiPoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 244
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/google/maps/android/geojson/GeoJsonMultiPoint;

    invoke-direct {p0, v1, v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addMultiPointToMap(Lcom/google/maps/android/geojson/GeoJsonPointStyle;Lcom/google/maps/android/geojson/GeoJsonMultiPoint;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 246
    :cond_54
    const-string v1, "MultiLineString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 247
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/google/maps/android/geojson/GeoJsonMultiLineString;

    invoke-direct {p0, v1, v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addMultiLineStringToMap(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/geojson/GeoJsonMultiLineString;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 249
    :cond_68
    const-string v1, "MultiPolygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 250
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;

    invoke-direct {p0, v1, v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addMultiPolygonToMap(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 252
    :cond_7c
    const-string v1, "GeometryCollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 253
    move-object v1, p2

    check-cast v1, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;

    .line 254
    invoke-virtual {v1}, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;->getGeometries()Ljava/util/List;

    move-result-object v1

    .line 253
    invoke-direct {p0, p1, v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addGeometryCollectionToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 256
    :cond_90
    const/4 v1, 0x0

    return-object v1
.end method

.method private addGeometryCollectionToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            "Ljava/util/List<",
            "Lcom/google/maps/android/geojson/GeoJsonGeometry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 366
    .local p2, "geoJsonGeometries":Ljava/util/List;, "Ljava/util/List<Lcom/google/maps/android/geojson/GeoJsonGeometry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "geometries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/geojson/GeoJsonGeometry;

    .line 368
    .local v2, "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    invoke-direct {p0, p1, v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/maps/android/geojson/GeoJsonGeometry;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v2    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    goto :goto_9

    .line 370
    :cond_1d
    return-object v0
.end method

.method private addLineStringToMap(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/geojson/GeoJsonLineString;)Lcom/google/android/gms/maps/model/Polyline;
    .registers 5
    .param p1, "lineStringStyle"    # Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;
    .param p2, "lineString"    # Lcom/google/maps/android/geojson/GeoJsonLineString;

    .line 297
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->toPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    .line 299
    .local v0, "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonLineString;->getCoordinates()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 300
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    return-object v1
.end method

.method private addMultiLineStringToMap(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/geojson/GeoJsonMultiLineString;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "lineStringStyle"    # Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;
    .param p2, "multiLineString"    # Lcom/google/maps/android/geojson/GeoJsonMultiLineString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;",
            "Lcom/google/maps/android/geojson/GeoJsonMultiLineString;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, "polylines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/Polyline;>;"
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonMultiLineString;->getLineStrings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/geojson/GeoJsonLineString;

    .line 315
    .local v2, "geoJsonLineString":Lcom/google/maps/android/geojson/GeoJsonLineString;
    invoke-direct {p0, p1, v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addLineStringToMap(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/geojson/GeoJsonLineString;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v2    # "geoJsonLineString":Lcom/google/maps/android/geojson/GeoJsonLineString;
    goto :goto_d

    .line 317
    :cond_21
    return-object v0
.end method

.method private addMultiPointToMap(Lcom/google/maps/android/geojson/GeoJsonPointStyle;Lcom/google/maps/android/geojson/GeoJsonMultiPoint;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "pointStyle"    # Lcom/google/maps/android/geojson/GeoJsonPointStyle;
    .param p2, "multiPoint"    # Lcom/google/maps/android/geojson/GeoJsonMultiPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/geojson/GeoJsonPointStyle;",
            "Lcom/google/maps/android/geojson/GeoJsonMultiPoint;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/Marker;>;"
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonMultiPoint;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/geojson/GeoJsonPoint;

    .line 283
    .local v2, "geoJsonPoint":Lcom/google/maps/android/geojson/GeoJsonPoint;
    invoke-direct {p0, p1, v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addPointToMap(Lcom/google/maps/android/geojson/GeoJsonPointStyle;Lcom/google/maps/android/geojson/GeoJsonPoint;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v2    # "geoJsonPoint":Lcom/google/maps/android/geojson/GeoJsonPoint;
    goto :goto_d

    .line 285
    :cond_21
    return-object v0
.end method

.method private addMultiPolygonToMap(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "polygonStyle"    # Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;
    .param p2, "multiPolygon"    # Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;",
            "Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/Polygon;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v0, "polygons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/Polygon;>;"
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;->getPolygons()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/geojson/GeoJsonPolygon;

    .line 350
    .local v2, "geoJsonPolygon":Lcom/google/maps/android/geojson/GeoJsonPolygon;
    invoke-direct {p0, p1, v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addPolygonToMap(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/geojson/GeoJsonPolygon;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v2    # "geoJsonPolygon":Lcom/google/maps/android/geojson/GeoJsonPolygon;
    goto :goto_d

    .line 352
    :cond_21
    return-object v0
.end method

.method private addPointToMap(Lcom/google/maps/android/geojson/GeoJsonPointStyle;Lcom/google/maps/android/geojson/GeoJsonPoint;)Lcom/google/android/gms/maps/model/Marker;
    .registers 5
    .param p1, "pointStyle"    # Lcom/google/maps/android/geojson/GeoJsonPointStyle;
    .param p2, "point"    # Lcom/google/maps/android/geojson/GeoJsonPoint;

    .line 267
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonPointStyle;->toMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 268
    .local v0, "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonPoint;->getCoordinates()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 269
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    return-object v1
.end method

.method private addPolygonToMap(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/geojson/GeoJsonPolygon;)Lcom/google/android/gms/maps/model/Polygon;
    .registers 6
    .param p1, "polygonStyle"    # Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;
    .param p2, "polygon"    # Lcom/google/maps/android/geojson/GeoJsonPolygon;

    .line 328
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;->toPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    .line 330
    .local v0, "polygonOptions":Lcom/google/android/gms/maps/model/PolygonOptions;
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonPolygon;->getCoordinates()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 332
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_13
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonPolygon;->getCoordinates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 334
    invoke-virtual {p2}, Lcom/google/maps/android/geojson/GeoJsonPolygon;->getCoordinates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 336
    .end local v1    # "i":I
    :cond_2d
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v1

    return-object v1
.end method

.method private redrawFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .registers 3
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 380
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->redrawFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/android/gms/maps/GoogleMap;)V

    .line 381
    return-void
.end method

.method private redrawFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 5
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;
    .param p2, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 384
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    sget-object v1, Lcom/google/maps/android/geojson/GeoJsonRenderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iput-object p2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 387
    if-eqz p2, :cond_27

    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 388
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getGeometry()Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/maps/android/geojson/GeoJsonGeometry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_27
    return-void
.end method

.method private static removeFromMap(Ljava/lang/Object;)V
    .registers 3
    .param p0, "mapObject"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p0, Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_b

    .line 72
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_3a

    .line 73
    :cond_b
    instance-of v0, p0, Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_16

    .line 74
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    goto :goto_3a

    .line 75
    :cond_16
    instance-of v0, p0, Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_21

    .line 76
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    goto :goto_3a

    .line 77
    :cond_21
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    .line 78
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "mapObjectElement":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    .line 80
    .end local v1    # "mapObjectElement":Ljava/lang/Object;
    goto :goto_2c

    .line 82
    :cond_3a
    :goto_3a
    return-void
.end method

.method private setFeatureDefaultStyles(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .registers 3
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 137
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    move-result-object v0

    if-nez v0, :cond_b

    .line 138
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPointStyle:Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->setPointStyle(Lcom/google/maps/android/geojson/GeoJsonPointStyle;)V

    .line 140
    :cond_b
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    move-result-object v0

    if-nez v0, :cond_16

    .line 141
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultLineStringStyle:Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->setLineStringStyle(Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;)V

    .line 143
    :cond_16
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    move-result-object v0

    if-nez v0, :cond_21

    .line 144
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPolygonStyle:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->setPolygonStyle(Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;)V

    .line 146
    :cond_21
    return-void
.end method


# virtual methods
.method addFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .registers 4
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 154
    sget-object v0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    .line 155
    .local v0, "mapObject":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->setFeatureDefaultStyles(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    .line 156
    iget-boolean v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    if-eqz v1, :cond_2b

    .line 157
    invoke-virtual {p1, p0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->addObserver(Ljava/util/Observer;)V

    .line 159
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 161
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    .line 164
    :cond_1d
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 166
    invoke-virtual {p1}, Lcom/google/maps/android/geojson/GeoJsonFeature;->getGeometry()Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/maps/android/geojson/GeoJsonGeometry;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    :cond_2b
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method addLayerToMap()V
    .registers 3

    .line 114
    iget-boolean v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    if-nez v0, :cond_1f

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    .line 116
    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getFeatures()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 117
    .local v1, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    invoke-virtual {p0, v1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    .line 118
    .end local v1    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    goto :goto_f

    .line 120
    :cond_1f
    return-void
.end method

.method getDefaultLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultLineStringStyle:Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    return-object v0
.end method

.method getDefaultPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPointStyle:Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    return-object v0
.end method

.method getDefaultPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mDefaultPolygonStyle:Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    return-object v0
.end method

.method getFeatures()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getMap()Lcom/google/android/gms/maps/GoogleMap;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method isLayerOnMap()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    return v0
.end method

.method removeFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .registers 3
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 193
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 194
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p1, p0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->deleteObserver(Ljava/util/Observer;)V

    .line 197
    :cond_14
    return-void
.end method

.method removeLayerFromMap()V
    .registers 4

    .line 176
    iget-boolean v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    if-eqz v0, :cond_2a

    .line 177
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 178
    .local v1, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v1, p0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->deleteObserver(Ljava/util/Observer;)V

    .line 181
    .end local v1    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    goto :goto_e

    .line 182
    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mLayerOnMap:Z

    .line 184
    :cond_2a
    return-void
.end method

.method setMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 4
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 104
    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getFeatures()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 105
    .local v1, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    invoke-direct {p0, v1, p1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->redrawFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;Lcom/google/android/gms/maps/GoogleMap;)V

    .line 106
    .end local v1    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    goto :goto_8

    .line 107
    :cond_18
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 7
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .line 399
    instance-of v0, p1, Lcom/google/maps/android/geojson/GeoJsonFeature;

    if-eqz v0, :cond_44

    .line 400
    move-object v0, p1

    check-cast v0, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 401
    .local v0, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/maps/android/geojson/GeoJsonRenderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    if-eq v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 402
    .local v1, "featureIsOnMap":Z
    :goto_14
    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 405
    invoke-direct {p0, v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->redrawFeatureToMap(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    goto :goto_44

    .line 406
    :cond_20
    if-eqz v1, :cond_39

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v2

    if-nez v2, :cond_39

    .line 408
    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFromMap(Ljava/lang/Object;)V

    .line 409
    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonRenderer;->mFeatures:Ljava/util/HashMap;

    sget-object v3, Lcom/google/maps/android/geojson/GeoJsonRenderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 410
    :cond_39
    if-nez v1, :cond_44

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 412
    invoke-virtual {p0, v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    .line 415
    .end local v0    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    .end local v1    # "featureIsOnMap":Z
    :cond_44
    :goto_44
    return-void
.end method
