###### Class com.google.maps.android.geojson.GeoJsonLineStringStyle (com.google.maps.android.geojson.GeoJsonLineStringStyle)
.class public Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;
.super Ljava/util/Observable;
.source "GeoJsonLineStringStyle.java"

# interfaces
.implements Lcom/google/maps/android/geojson/GeoJsonStyle;


# static fields
.field private static final GEOMETRY_TYPE:[Ljava/lang/String;


# instance fields
.field private final mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "LineString"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MultiLineString"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "GeometryCollection"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 25
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 26
    return-void
.end method

.method private styleChanged()V
    .registers 1

    .line 155
    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->setChanged()V

    .line 156
    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->notifyObservers()V

    .line 157
    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result v0

    return v0
.end method

.method public getGeometryType()[Ljava/lang/String;
    .registers 2

    .line 31
    sget-object v0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()F
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getWidth()F

    move-result v0

    return v0
.end method

.method public getZIndex()F
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getZIndex()F

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->isClickable()Z

    move-result v0

    return v0
.end method

.method public isGeodesic()Z
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->isGeodesic()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setClickable(Z)V
    .registers 3
    .param p1, "clickable"    # Z

    .line 68
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->clickable(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 69
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->styleChanged()V

    .line 70
    return-void
.end method

.method public setColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 49
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 50
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->styleChanged()V

    .line 51
    return-void
.end method

.method public setGeodesic(Z)V
    .registers 3
    .param p1, "geodesic"    # Z

    .line 87
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 88
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->styleChanged()V

    .line 89
    return-void
.end method

.method public setVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .line 146
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->visible(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 147
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->styleChanged()V

    .line 148
    return-void
.end method

.method public setWidth(F)V
    .registers 3
    .param p1, "width"    # F

    .line 106
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 107
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->styleChanged()V

    .line 108
    return-void
.end method

.method public setZIndex(F)V
    .registers 3
    .param p1, "zIndex"    # F

    .line 125
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 126
    invoke-direct {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->styleChanged()V

    .line 127
    return-void
.end method

.method public toPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;
    .registers 3

    .line 165
    new-instance v0, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 166
    .local v0, "polylineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 167
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->clickable(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 168
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->isGeodesic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 169
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->visible(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 170
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 171
    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->mPolylineOptions:Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->zIndex(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 172
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineStringStyle{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n geometry type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->GEOMETRY_TYPE:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, ",\n color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, ",\n clickable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ",\n geodesic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->isGeodesic()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ",\n visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ",\n width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ",\n z index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/maps/android/geojson/GeoJsonLineStringStyle;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
