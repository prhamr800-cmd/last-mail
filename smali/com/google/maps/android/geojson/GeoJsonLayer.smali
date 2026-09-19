###### Class com.google.maps.android.geojson.GeoJsonLayer (com.google.maps.android.geojson.GeoJsonLayer)
.class public Lcom/google/maps/android/geojson/GeoJsonLayer;
.super Ljava/lang/Object;
.source "GeoJsonLayer.java"


# instance fields
.field private mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;ILandroid/content/Context;)V
    .registers 5
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "resourceId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 70
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/android/geojson/GeoJsonLayer;->createJsonFileObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/android/geojson/GeoJsonLayer;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lorg/json/JSONObject;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "geoJsonFile"    # Lorg/json/JSONObject;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p2, :cond_38

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 49
    new-instance v1, Lcom/google/maps/android/geojson/GeoJsonParser;

    invoke-direct {v1, p2}, Lcom/google/maps/android/geojson/GeoJsonParser;-><init>(Lorg/json/JSONObject;)V

    .line 51
    .local v1, "parser":Lcom/google/maps/android/geojson/GeoJsonParser;
    invoke-virtual {v1}, Lcom/google/maps/android/geojson/GeoJsonParser;->getBoundingBox()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 52
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v2, "geoJsonFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/geojson/GeoJsonFeature;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lcom/google/maps/android/geojson/GeoJsonParser;->getFeatures()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 54
    .local v4, "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v4    # "feature":Lcom/google/maps/android/geojson/GeoJsonFeature;
    goto :goto_20

    .line 56
    :cond_30
    new-instance v0, Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-direct {v0, p1, v2}, Lcom/google/maps/android/geojson/GeoJsonRenderer;-><init>(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    .line 57
    return-void

    .line 45
    .end local v1    # "parser":Lcom/google/maps/android/geojson/GeoJsonParser;
    .end local v2    # "geoJsonFeatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/geojson/GeoJsonFeature;Ljava/lang/Object;>;"
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GeoJSON file cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createJsonFileObject(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .registers 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, "result":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v2, 0x0

    .line 89
    .local v1, "reader":Ljava/io/BufferedReader;
    .local v2, "line":Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .end local v2    # "line":Ljava/lang/String;
    move-object v2, v3

    .restart local v2    # "line":Ljava/lang/String;
    if-eqz v3, :cond_1b

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_29

    goto :goto_10

    .line 93
    :cond_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 94
    nop

    .line 96
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 93
    :catchall_29
    move-exception v3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v3
.end method


# virtual methods
.method public addFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .registers 4
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 122
    if-eqz p1, :cond_8

    .line 125
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    .line 126
    return-void

    .line 123
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Feature cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addLayerToMap()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->addLayerToMap()V

    .line 113
    return-void
.end method

.method public getBoundingBox()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getDefaultLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getDefaultLineStringStyle()Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getDefaultPointStyle()Lcom/google/maps/android/geojson/GeoJsonPointStyle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getDefaultPolygonStyle()Lcom/google/maps/android/geojson/GeoJsonPolygonStyle;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/geojson/GeoJsonFeature;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getFeatures()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Lcom/google/android/gms/maps/GoogleMap;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    return-object v0
.end method

.method public isLayerOnMap()Z
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->isLayerOnMap()Z

    move-result v0

    return v0
.end method

.method public removeFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V
    .registers 4
    .param p1, "feature"    # Lcom/google/maps/android/geojson/GeoJsonFeature;

    .line 134
    if-eqz p1, :cond_8

    .line 137
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeFeature(Lcom/google/maps/android/geojson/GeoJsonFeature;)V

    .line 138
    return-void

    .line 135
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Feature cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeLayerFromMap()V
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->removeLayerFromMap()V

    .line 164
    return-void
.end method

.method public setMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 3
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 156
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mRenderer:Lcom/google/maps/android/geojson/GeoJsonRenderer;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/geojson/GeoJsonRenderer;->setMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Collection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n Bounding box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonLayer;->mBoundingBox:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
