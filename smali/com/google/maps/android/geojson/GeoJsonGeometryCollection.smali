###### Class com.google.maps.android.geojson.GeoJsonGeometryCollection (com.google.maps.android.geojson.GeoJsonGeometryCollection)
.class public Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;
.super Ljava/lang/Object;
.source "GeoJsonGeometryCollection.java"

# interfaces
.implements Lcom/google/maps/android/geojson/GeoJsonGeometry;


# static fields
.field private static final GEOMETRY_TYPE:Ljava/lang/String; = "GeometryCollection"


# instance fields
.field private final mGeometries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/maps/android/geojson/GeoJsonGeometry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/maps/android/geojson/GeoJsonGeometry;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p1, "geometries":Ljava/util/List;, "Ljava/util/List<Lcom/google/maps/android/geojson/GeoJsonGeometry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-eqz p1, :cond_8

    .line 24
    iput-object p1, p0, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;->mGeometries:Ljava/util/List;

    .line 25
    return-void

    .line 22
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geometries cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getGeometries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/maps/android/geojson/GeoJsonGeometry;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;->mGeometries:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 30
    const-string v0, "GeometryCollection"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeometryCollection"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n Geometries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/geojson/GeoJsonGeometryCollection;->mGeometries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
