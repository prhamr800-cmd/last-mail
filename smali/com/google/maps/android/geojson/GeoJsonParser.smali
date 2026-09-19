###### Class com.google.maps.android.geojson.GeoJsonParser (com.google.maps.android.geojson.GeoJsonParser)
.class Lcom/google/maps/android/geojson/GeoJsonParser;
.super Ljava/lang/Object;
.source "GeoJsonParser.java"


# static fields
.field private static final BOUNDING_BOX:Ljava/lang/String; = "bbox"

.field private static final FEATURE:Ljava/lang/String; = "Feature"

.field private static final FEATURE_COLLECTION:Ljava/lang/String; = "FeatureCollection"

.field private static final FEATURE_COLLECTION_ARRAY:Ljava/lang/String; = "features"

.field private static final FEATURE_GEOMETRY:Ljava/lang/String; = "geometry"

.field private static final FEATURE_ID:Ljava/lang/String; = "id"

.field private static final GEOMETRY_COLLECTION:Ljava/lang/String; = "GeometryCollection"

.field private static final GEOMETRY_COLLECTION_ARRAY:Ljava/lang/String; = "geometries"

.field private static final GEOMETRY_COORDINATES_ARRAY:Ljava/lang/String; = "coordinates"

.field private static final LINESTRING:Ljava/lang/String; = "LineString"

.field private static final LOG_TAG:Ljava/lang/String; = "GeoJsonParser"

.field private static final MULTILINESTRING:Ljava/lang/String; = "MultiLineString"

.field private static final MULTIPOINT:Ljava/lang/String; = "MultiPoint"

.field private static final MULTIPOLYGON:Ljava/lang/String; = "MultiPolygon"

.field private static final POINT:Ljava/lang/String; = "Point"

.field private static final POLYGON:Ljava/lang/String; = "Polygon"

.field private static final PROPERTIES:Ljava/lang/String; = "properties"


# instance fields
.field private mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final mGeoJsonFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mGeoJsonFile:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "geoJsonFile"    # Lorg/json/JSONObject;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 83
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseGeoJson()V

    .line 84
    return-void
.end method

.method private static createGeometry(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonGeometry;
    .registers 3
    .param p0, "geometryType"    # Ljava/lang/String;
    .param p1, "geometryArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 215
    const-string v0, "Point"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 216
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPoint;

    move-result-object v0

    return-object v0

    .line 217
    :cond_d
    const-string v0, "MultiPoint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 218
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createMultiPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiPoint;

    move-result-object v0

    return-object v0

    .line 219
    :cond_1a
    const-string v0, "LineString"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 220
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonLineString;

    move-result-object v0

    return-object v0

    .line 221
    :cond_27
    const-string v0, "MultiLineString"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 222
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createMultiLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiLineString;

    move-result-object v0

    return-object v0

    .line 223
    :cond_34
    const-string v0, "Polygon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 224
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPolygon;

    move-result-object v0

    return-object v0

    .line 225
    :cond_41
    const-string v0, "MultiPolygon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 226
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createMultiPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;

    move-result-object v0

    return-object v0

    .line 227
    :cond_4e
    const-string v0, "GeometryCollection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 228
    invoke-static {p1}, Lcom/google/maps/android/geojson/GeoJsonParser;->createGeometryCollection(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;

    move-result-object v0

    return-object v0

    .line 230
    :cond_5b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createGeometryCollection(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;
    .registers 5
    .param p0, "geometries"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, "geometryCollectionElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/geojson/GeoJsonGeometry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 327
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 328
    .local v2, "geometryElement":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v3

    .line 329
    .local v3, "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    if-eqz v3, :cond_19

    .line 331
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v2    # "geometryElement":Lorg/json/JSONObject;
    .end local v3    # "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 334
    .end local v1    # "i":I
    :cond_1c
    new-instance v1, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;

    invoke-direct {v1, v0}, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private static createLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonLineString;
    .registers 3
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 267
    new-instance v0, Lcom/google/maps/android/geojson/GeoJsonLineString;

    invoke-static {p0}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseCoordinatesArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/maps/android/geojson/GeoJsonLineString;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static createMultiLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiLineString;
    .registers 4
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "geoJsonLineStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/geojson/GeoJsonLineString;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 281
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->createLineString(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonLineString;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 283
    .end local v1    # "i":I
    :cond_1a
    new-instance v1, Lcom/google/maps/android/geojson/GeoJsonMultiLineString;

    invoke-direct {v1, v0}, Lcom/google/maps/android/geojson/GeoJsonMultiLineString;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private static createMultiPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiPoint;
    .registers 4
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "geoJsonPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/geojson/GeoJsonPoint;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 254
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->createPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 256
    .end local v1    # "i":I
    :cond_1a
    new-instance v1, Lcom/google/maps/android/geojson/GeoJsonMultiPoint;

    invoke-direct {v1, v0}, Lcom/google/maps/android/geojson/GeoJsonMultiPoint;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private static createMultiPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;
    .registers 4
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v0, "geoJsonPolygons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/geojson/GeoJsonPolygon;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 308
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->createPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPolygon;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 310
    .end local v1    # "i":I
    :cond_1a
    new-instance v1, Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;

    invoke-direct {v1, v0}, Lcom/google/maps/android/geojson/GeoJsonMultiPolygon;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private static createPoint(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPoint;
    .registers 3
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/google/maps/android/geojson/GeoJsonPoint;

    invoke-static {p0}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseCoordinate(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/maps/android/geojson/GeoJsonPoint;-><init>(Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method

.method private static createPolygon(Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonPolygon;
    .registers 3
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 294
    new-instance v0, Lcom/google/maps/android/geojson/GeoJsonPolygon;

    invoke-static {p0}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseCoordinatesArrays(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/maps/android/geojson/GeoJsonPolygon;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static isGeometry(Ljava/lang/String;)Z
    .registers 2
    .param p0, "type"    # Ljava/lang/String;

    .line 87
    const-string v0, "Point|MultiPoint|LineString|MultiLineString|Polygon|MultiPolygon|GeometryCollection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static parseBoundingBox(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 7
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 137
    .local v0, "southWestCorner":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 138
    .local v1, "northEastCorner":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v2
.end method

.method private static parseCoordinate(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 6
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 346
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private static parseCoordinatesArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 4
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v0, "coordinatesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 361
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseCoordinate(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 363
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method private static parseCoordinatesArrays(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 4
    .param p0, "coordinates"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v0, "coordinatesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 379
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseCoordinatesArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 381
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method private static parseFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonFeature;
    .registers 10
    .param p0, "geoJsonFeature"    # Lorg/json/JSONObject;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x0

    .line 101
    .local v1, "boundingBox":Lcom/google/android/gms/maps/model/LatLngBounds;
    const/4 v2, 0x0

    .line 102
    .local v2, "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v3, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_8
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 106
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 108
    :cond_17
    const-string v4, "bbox"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 109
    const-string v4, "bbox"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseBoundingBox(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    move-object v1, v4

    .line 111
    :cond_2a
    const-string v4, "geometry"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    const-string v4, "geometry"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 112
    const-string v4, "geometry"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v4

    move-object v2, v4

    .line 114
    :cond_45
    const-string v4, "properties"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    const-string v4, "properties"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 115
    const-string v4, "properties"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseProperties(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_5f} :catch_67

    move-object v3, v4

    .line 120
    :cond_60
    nop

    .line 121
    new-instance v4, Lcom/google/maps/android/geojson/GeoJsonFeature;

    invoke-direct {v4, v2, v0, v3, v1}, Lcom/google/maps/android/geojson/GeoJsonFeature;-><init>(Lcom/google/maps/android/geojson/GeoJsonGeometry;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    return-object v4

    .line 117
    :catch_67
    move-exception v4

    .line 118
    .local v4, "e":Lorg/json/JSONException;
    const-string v5, "GeoJsonParser"

    const-string v6, "Feature could not be successfully parsed "

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7f

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_85

    :cond_7f
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_85
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v5, 0x0

    return-object v5
.end method

.method private parseFeatureCollection(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .registers 11
    .param p1, "geoJsonFeatureCollection"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v0, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/geojson/GeoJsonFeature;>;"
    :try_start_5
    const-string v1, "features"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 426
    .local v1, "geoJsonFeatures":Lorg/json/JSONArray;
    const-string v2, "bbox"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 427
    const-string v2, "bbox"

    .line 428
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 427
    invoke-static {v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseBoundingBox(Lorg/json/JSONArray;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1f} :catch_79

    .line 433
    :cond_1f
    nop

    .line 432
    nop

    .line 435
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 437
    const/16 v3, 0x4d

    :try_start_2a
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 438
    .local v4, "feature":Lorg/json/JSONObject;
    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Feature"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 439
    invoke-static {v4}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonFeature;

    move-result-object v5

    .line 440
    .local v5, "parsedFeature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    if-eqz v5, :cond_47

    .line 442
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 444
    :cond_47
    const-string v6, "GeoJsonParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Index of Feature in Feature Collection that could not be created: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_5d} :catch_5e

    .line 452
    .end local v4    # "feature":Lorg/json/JSONObject;
    .end local v5    # "parsedFeature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :cond_5d
    :goto_5d
    goto :goto_75

    .line 449
    :catch_5e
    move-exception v4

    .line 450
    .local v4, "e":Lorg/json/JSONException;
    const-string v5, "GeoJsonParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Index of Feature in Feature Collection that could not be created: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 454
    .end local v2    # "i":I
    :cond_78
    return-object v0

    .line 430
    .end local v1    # "geoJsonFeatures":Lorg/json/JSONArray;
    :catch_79
    move-exception v1

    .line 431
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "GeoJsonParser"

    const-string v3, "Feature Collection could not be created."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v0
.end method

.method private parseGeoJson()V
    .registers 4

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "type":Ljava/lang/String;
    const-string v1, "Feature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 394
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonFeature;

    move-result-object v1

    .line 395
    .local v1, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    if-eqz v1, :cond_4e

    .line 396
    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 398
    .end local v1    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :cond_1f
    const-string v1, "FeatureCollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 399
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseFeatureCollection(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4e

    .line 400
    :cond_33
    invoke-static {v0}, Lcom/google/maps/android/geojson/GeoJsonParser;->isGeometry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 401
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFile:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseGeometryToFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonFeature;

    move-result-object v1

    .line 402
    .restart local v1    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    if-eqz v1, :cond_4e

    .line 404
    iget-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 407
    .end local v1    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    :cond_47
    const-string v1, "GeoJsonParser"

    const-string v2, "GeoJSON file could not be parsed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 411
    .end local v0    # "type":Ljava/lang/String;
    :cond_4e
    :goto_4e
    goto :goto_57

    .line 409
    :catch_4f
    move-exception v0

    .line 410
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "GeoJsonParser"

    const-string v2, "GeoJSON file could not be parsed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_57
    return-void
.end method

.method private static parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonGeometry;
    .registers 5
    .param p0, "geoJsonGeometry"    # Lorg/json/JSONObject;

    .line 151
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "geometryType":Ljava/lang/String;
    const-string v2, "GeometryCollection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 156
    const-string v2, "geometries"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_23

    .line 157
    :cond_17
    invoke-static {v1}, Lcom/google/maps/android/geojson/GeoJsonParser;->isGeometry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 158
    const-string v2, "coordinates"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 161
    .local v2, "geometryArray":Lorg/json/JSONArray;
    :goto_23
    nop

    .line 163
    invoke-static {v1, v2}, Lcom/google/maps/android/geojson/GeoJsonParser;->createGeometry(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v3
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_28} :catch_2a

    return-object v3

    .line 161
    .end local v2    # "geometryArray":Lorg/json/JSONArray;
    :cond_29
    return-object v0

    .line 164
    .end local v1    # "geometryType":Ljava/lang/String;
    :catch_2a
    move-exception v1

    .line 165
    .local v1, "e":Lorg/json/JSONException;
    return-object v0
.end method

.method private static parseGeometryToFeature(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonFeature;
    .registers 5
    .param p0, "geoJsonGeometry"    # Lorg/json/JSONObject;

    .line 177
    invoke-static {p0}, Lcom/google/maps/android/geojson/GeoJsonParser;->parseGeometry(Lorg/json/JSONObject;)Lcom/google/maps/android/geojson/GeoJsonGeometry;

    move-result-object v0

    .line 178
    .local v0, "geometry":Lcom/google/maps/android/geojson/GeoJsonGeometry;
    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 179
    new-instance v2, Lcom/google/maps/android/geojson/GeoJsonFeature;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v2, v0, v1, v3, v1}, Lcom/google/maps/android/geojson/GeoJsonFeature;-><init>(Lcom/google/maps/android/geojson/GeoJsonGeometry;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    return-object v2

    .line 181
    :cond_12
    const-string v2, "GeoJsonParser"

    const-string v3, "Geometry could not be parsed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object v1
.end method

.method private static parseProperties(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .registers 5
    .param p0, "properties"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, "propertiesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    .local v1, "propertyKeys":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_9

    .line 201
    :cond_1d
    return-object v0
.end method


# virtual methods
.method getBoundingBox()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method getFeatures()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonParser;->mGeoJsonFeatures:Ljava/util/ArrayList;

    return-object v0
.end method
