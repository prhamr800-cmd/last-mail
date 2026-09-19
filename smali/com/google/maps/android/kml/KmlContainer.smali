###### Class com.google.maps.android.kml.KmlContainer (com.google.maps.android.kml.KmlContainer)
.class public Lcom/google/maps/android/kml/KmlContainer;
.super Ljava/lang/Object;
.source "KmlContainer.java"


# instance fields
.field private mContainerId:Ljava/lang/String;

.field private final mContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroundOverlays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlacemarks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStyleMap:Ljava/util/HashMap;
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


# direct methods
.method constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 8
    .param p7, "Id"    # Ljava/lang/String;
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
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    .local p1, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;>;"
    .local p3, "placemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    .local p4, "styleMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/kml/KmlContainer;>;"
    .local p6, "groundOverlay":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/maps/android/kml/KmlContainer;->mProperties:Ljava/util/HashMap;

    .line 32
    iput-object p3, p0, Lcom/google/maps/android/kml/KmlContainer;->mPlacemarks:Ljava/util/HashMap;

    .line 33
    iput-object p2, p0, Lcom/google/maps/android/kml/KmlContainer;->mStyles:Ljava/util/HashMap;

    .line 34
    iput-object p4, p0, Lcom/google/maps/android/kml/KmlContainer;->mStyleMap:Ljava/util/HashMap;

    .line 35
    iput-object p5, p0, Lcom/google/maps/android/kml/KmlContainer;->mContainers:Ljava/util/ArrayList;

    .line 36
    iput-object p6, p0, Lcom/google/maps/android/kml/KmlContainer;->mGroundOverlays:Ljava/util/HashMap;

    .line 37
    iput-object p7, p0, Lcom/google/maps/android/kml/KmlContainer;->mContainerId:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getContainerId()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mContainerId:Ljava/lang/String;

    return-object v0
.end method

.method public getContainers()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/kml/KmlContainer;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mContainers:Ljava/util/ArrayList;

    return-object v0
.end method

.method getGroundOverlayHashMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mGroundOverlays:Ljava/util/HashMap;

    return-object v0
.end method

.method public getGroundOverlays()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/kml/KmlGroundOverlay;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mGroundOverlays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPlacemarks()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mPlacemarks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getPlacemarksHashMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mPlacemarks:Ljava/util/HashMap;

    return-object v0
.end method

.method public getProperties()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStyle(Ljava/lang/String;)Lcom/google/maps/android/kml/KmlStyle;
    .registers 3
    .param p1, "styleID"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/kml/KmlStyle;

    return-object v0
.end method

.method getStyleMap()Ljava/util/HashMap;
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

    .line 62
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mStyleMap:Ljava/util/HashMap;

    return-object v0
.end method

.method getStyles()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mStyles:Ljava/util/HashMap;

    return-object v0
.end method

.method public hasContainers()Z
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mContainers:Ljava/util/ArrayList;

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

.method public hasPlacemarks()Z
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mPlacemarks:Ljava/util/HashMap;

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

.method public hasProperties()Z
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mProperties:Ljava/util/HashMap;

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

.method public hasProperty(Ljava/lang/String;)Z
    .registers 3
    .param p1, "keyValue"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setPlacemark(Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;)V
    .registers 4
    .param p1, "placemarks"    # Lcom/google/maps/android/kml/KmlPlacemark;
    .param p2, "object"    # Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlContainer;->mPlacemarks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Container"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\n properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlContainer;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ",\n placemarks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlContainer;->mPlacemarks:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ",\n containers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlContainer;->mContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, ",\n ground overlays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlContainer;->mGroundOverlays:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ",\n style maps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlContainer;->mStyleMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, ",\n styles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/maps/android/kml/KmlContainer;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
