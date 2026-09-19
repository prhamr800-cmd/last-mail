###### Class com.google.maps.android.MarkerManager (com.google.maps.android.MarkerManager)
.class public Lcom/google/maps/android/MarkerManager;
.super Ljava/lang/Object;
.source "MarkerManager.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/maps/android/MarkerManager$Collection;
    }
.end annotation


# instance fields
.field private final mAllMarkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lcom/google/maps/android/MarkerManager$Collection;",
            ">;"
        }
    .end annotation
.end field

.field private final mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final mNamedCollections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/MarkerManager$Collection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 3
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/MarkerManager;->mNamedCollections:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/google/maps/android/MarkerManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 46
    return-void
.end method

.method static synthetic access$400(Lcom/google/maps/android/MarkerManager;)Lcom/google/android/gms/maps/GoogleMap;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/MarkerManager;

    .line 38
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/maps/android/MarkerManager;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/MarkerManager;

    .line 38
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getCollection(Ljava/lang/String;)Lcom/google/maps/android/MarkerManager$Collection;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mNamedCollections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    return-object v0
.end method

.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .registers 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .line 84
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    .line 85
    .local v0, "collection":Lcom/google/maps/android/MarkerManager$Collection;
    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$000(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 86
    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$000(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 88
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .registers 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .line 75
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    .line 76
    .local v0, "collection":Lcom/google/maps/android/MarkerManager$Collection;
    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$000(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 77
    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$000(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;->getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 79
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public newCollection()Lcom/google/maps/android/MarkerManager$Collection;
    .registers 2

    .line 49
    new-instance v0, Lcom/google/maps/android/MarkerManager$Collection;

    invoke-direct {v0, p0}, Lcom/google/maps/android/MarkerManager$Collection;-><init>(Lcom/google/maps/android/MarkerManager;)V

    return-object v0
.end method

.method public newCollection(Ljava/lang/String;)Lcom/google/maps/android/MarkerManager$Collection;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mNamedCollections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collection id is not unique: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_1b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_25
    new-instance v0, Lcom/google/maps/android/MarkerManager$Collection;

    invoke-direct {v0, p0}, Lcom/google/maps/android/MarkerManager$Collection;-><init>(Lcom/google/maps/android/MarkerManager;)V

    .line 61
    .local v0, "collection":Lcom/google/maps/android/MarkerManager$Collection;
    iget-object v1, p0, Lcom/google/maps/android/MarkerManager;->mNamedCollections:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object v0
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .registers 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .line 93
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    .line 94
    .local v0, "collection":Lcom/google/maps/android/MarkerManager$Collection;
    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$100(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 95
    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$100(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V

    .line 97
    :cond_17
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .registers 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .line 101
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    .line 102
    .local v0, "collection":Lcom/google/maps/android/MarkerManager$Collection;
    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$200(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 103
    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$200(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v1

    return v1

    .line 105
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .registers 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .line 118
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    .line 119
    .local v0, "collection":Lcom/google/maps/android/MarkerManager$Collection;
    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$300(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 120
    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$300(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V

    .line 122
    :cond_17
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .registers 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .line 126
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    .line 127
    .local v0, "collection":Lcom/google/maps/android/MarkerManager$Collection;
    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$300(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 128
    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$300(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V

    .line 130
    :cond_17
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .registers 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .line 110
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    .line 111
    .local v0, "collection":Lcom/google/maps/android/MarkerManager$Collection;
    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$300(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 112
    invoke-static {v0}, Lcom/google/maps/android/MarkerManager$Collection;->access$300(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V

    .line 114
    :cond_17
    return-void
.end method

.method public remove(Lcom/google/android/gms/maps/model/Marker;)Z
    .registers 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .line 139
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager;->mAllMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/MarkerManager$Collection;

    .line 140
    .local v0, "collection":Lcom/google/maps/android/MarkerManager$Collection;
    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/google/maps/android/MarkerManager$Collection;->remove(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

###### Class com.google.maps.android.MarkerManager.Collection (com.google.maps.android.MarkerManager$Collection)
.class public Lcom/google/maps/android/MarkerManager$Collection;
.super Ljava/lang/Object;
.source "MarkerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/maps/android/MarkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Collection"
.end annotation


# instance fields
.field private mInfoWindowAdapter:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

.field private mInfoWindowClickListener:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

.field private mMarkerClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

.field private mMarkerDragListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

.field private final mMarkers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/maps/android/MarkerManager;


# direct methods
.method public constructor <init>(Lcom/google/maps/android/MarkerManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/maps/android/MarkerManager;

    .line 150
    iput-object p1, p0, Lcom/google/maps/android/MarkerManager$Collection;->this$0:Lcom/google/maps/android/MarkerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkers:Ljava/util/Set;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/MarkerManager$Collection;

    .line 143
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mInfoWindowAdapter:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/MarkerManager$Collection;

    .line 143
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mInfoWindowClickListener:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/MarkerManager$Collection;

    .line 143
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkerClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/maps/android/MarkerManager$Collection;)Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/maps/android/MarkerManager$Collection;

    .line 143
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkerDragListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    return-object v0
.end method


# virtual methods
.method public addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;
    .registers 4
    .param p1, "opts"    # Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 154
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->this$0:Lcom/google/maps/android/MarkerManager;

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager;->access$400(Lcom/google/maps/android/MarkerManager;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 155
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    iget-object v1, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/google/maps/android/MarkerManager$Collection;->this$0:Lcom/google/maps/android/MarkerManager;

    invoke-static {v1}, Lcom/google/maps/android/MarkerManager;->access$500(Lcom/google/maps/android/MarkerManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-object v0
.end method

.method public clear()V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Marker;

    .line 171
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 172
    iget-object v2, p0, Lcom/google/maps/android/MarkerManager$Collection;->this$0:Lcom/google/maps/android/MarkerManager;

    invoke-static {v2}, Lcom/google/maps/android/MarkerManager;->access$500(Lcom/google/maps/android/MarkerManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v1    # "marker":Lcom/google/android/gms/maps/model/Marker;
    goto :goto_6

    .line 174
    :cond_1f
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 175
    return-void
.end method

.method public getMarkers()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/google/android/gms/maps/model/Marker;)Z
    .registers 3
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .line 161
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 162
    iget-object v0, p0, Lcom/google/maps/android/MarkerManager$Collection;->this$0:Lcom/google/maps/android/MarkerManager;

    invoke-static {v0}, Lcom/google/maps/android/MarkerManager;->access$500(Lcom/google/maps/android/MarkerManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 164
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public setOnInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
    .registers 2
    .param p1, "infoWindowAdapter"    # Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    .line 194
    iput-object p1, p0, Lcom/google/maps/android/MarkerManager$Collection;->mInfoWindowAdapter:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    .line 195
    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V
    .registers 2
    .param p1, "infoWindowClickListener"    # Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    .line 182
    iput-object p1, p0, Lcom/google/maps/android/MarkerManager$Collection;->mInfoWindowClickListener:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;

    .line 183
    return-void
.end method

.method public setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
    .registers 2
    .param p1, "markerClickListener"    # Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    .line 186
    iput-object p1, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkerClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    .line 187
    return-void
.end method

.method public setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V
    .registers 2
    .param p1, "markerDragListener"    # Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    .line 190
    iput-object p1, p0, Lcom/google/maps/android/MarkerManager$Collection;->mMarkerDragListener:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    .line 191
    return-void
.end method
