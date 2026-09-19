###### Class com.google.maps.android.kml.KmlMultiGeometry (com.google.maps.android.kml.KmlMultiGeometry)
.class public Lcom/google/maps/android/kml/KmlMultiGeometry;
.super Ljava/lang/Object;
.source "KmlMultiGeometry.java"

# interfaces
.implements Lcom/google/maps/android/kml/KmlGeometry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/maps/android/kml/KmlGeometry<",
        "Ljava/util/ArrayList<",
        "Lcom/google/maps/android/kml/KmlGeometry;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final GEOMETRY_TYPE:Ljava/lang/String; = "MultiGeometry"


# instance fields
.field private mGeometries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/kml/KmlGeometry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/kml/KmlGeometry;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "geometries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/kml/KmlGeometry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlMultiGeometry;->mGeometries:Ljava/util/ArrayList;

    .line 20
    if-eqz p1, :cond_f

    .line 23
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlMultiGeometry;->mGeometries:Ljava/util/ArrayList;

    .line 24
    return-void

    .line 21
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geometries cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic getGeometryObject()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/google/maps/android/kml/KmlMultiGeometry;->getGeometryObject()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryObject()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/kml/KmlGeometry;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlMultiGeometry;->mGeometries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, "MultiGeometry"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiGeometry"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n geometries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlMultiGeometry;->mGeometries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
