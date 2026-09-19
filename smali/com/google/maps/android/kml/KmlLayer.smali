###### Class com.google.maps.android.kml.KmlLayer (com.google.maps.android.kml.KmlLayer)
.class public Lcom/google/maps/android/kml/KmlLayer;
.super Ljava/lang/Object;
.source "KmlLayer.java"


# instance fields
.field private final mRenderer:Lcom/google/maps/android/kml/KmlRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;ILandroid/content/Context;)V
    .registers 5
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "resourceId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/maps/android/kml/KmlLayer;-><init>(Lcom/google/android/gms/maps/GoogleMap;Ljava/io/InputStream;Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Ljava/io/InputStream;Landroid/content/Context;)V
    .registers 12
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p2, :cond_35

    .line 46
    new-instance v0, Lcom/google/maps/android/kml/KmlRenderer;

    invoke-direct {v0, p1, p3}, Lcom/google/maps/android/kml/KmlRenderer;-><init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/maps/android/kml/KmlLayer;->mRenderer:Lcom/google/maps/android/kml/KmlRenderer;

    .line 47
    invoke-static {p2}, Lcom/google/maps/android/kml/KmlLayer;->createXmlParser(Ljava/io/InputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 48
    .local v0, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Lcom/google/maps/android/kml/KmlParser;

    invoke-direct {v1, v0}, Lcom/google/maps/android/kml/KmlParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 49
    .local v1, "parser":Lcom/google/maps/android/kml/KmlParser;
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlParser;->parseKml()V

    .line 50
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 51
    iget-object v2, p0, Lcom/google/maps/android/kml/KmlLayer;->mRenderer:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlParser;->getStyles()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlParser;->getStyleMaps()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlParser;->getPlacemarks()Ljava/util/HashMap;

    move-result-object v5

    .line 52
    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlParser;->getContainers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/maps/android/kml/KmlParser;->getGroundOverlays()Ljava/util/HashMap;

    move-result-object v7

    .line 51
    invoke-virtual/range {v2 .. v7}, Lcom/google/maps/android/kml/KmlRenderer;->storeKmlData(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 53
    return-void

    .line 44
    .end local v0    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "parser":Lcom/google/maps/android/kml/KmlParser;
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KML InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createXmlParser(Ljava/io/InputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 62
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 63
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 64
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 65
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 66
    return-object v1
.end method


# virtual methods
.method public addLayerToMap()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlLayer;->mRenderer:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlRenderer;->addLayerToMap()V

    .line 74
    return-void
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

    .line 117
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlLayer;->mRenderer:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlRenderer;->getNestedContainers()Ljava/lang/Iterable;

    move-result-object v0

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

    .line 126
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlLayer;->mRenderer:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlRenderer;->getGroundOverlays()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Lcom/google/android/gms/maps/GoogleMap;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlLayer;->mRenderer:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlRenderer;->getMap()Lcom/google/android/gms/maps/GoogleMap;

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

    .line 99
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlLayer;->mRenderer:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlRenderer;->getKmlPlacemarks()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public hasContainers()Z
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlLayer;->mRenderer:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlRenderer;->hasNestedContainers()Z

    move-result v0

    return v0
.end method

.method public hasPlacemarks()Z
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlLayer;->mRenderer:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlRenderer;->hasKmlPlacemarks()Z

    move-result v0

    return v0
.end method

.method public removeLayerFromMap()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlLayer;->mRenderer:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlRenderer;->removeLayerFromMap()V

    .line 81
    return-void
.end method

.method public setMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 3
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 144
    iget-object v0, p0, Lcom/google/maps/android/kml/KmlLayer;->mRenderer:Lcom/google/maps/android/kml/KmlRenderer;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/kml/KmlRenderer;->setMap(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 145
    return-void
.end method
