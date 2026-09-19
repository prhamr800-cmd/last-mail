###### Class com.google.maps.android.kml.KmlContainerParser (com.google.maps.android.kml.KmlContainerParser)
.class Lcom/google/maps/android/kml/KmlContainerParser;
.super Ljava/lang/Object;
.source "KmlContainerParser.java"


# static fields
.field private static final CONTAINER_REGEX:Ljava/lang/String; = "Folder|Document"

.field private static final EXTENDED_DATA:Ljava/lang/String; = "ExtendedData"

.field private static final GROUND_OVERLAY:Ljava/lang/String; = "GroundOverlay"

.field private static final PLACEMARK:Ljava/lang/String; = "Placemark"

.field private static final PROPERTY_REGEX:Ljava/lang/String; = "name|description|visibility|open|address|phoneNumber"

.field private static final STYLE:Ljava/lang/String; = "Style"

.field private static final STYLE_MAP:Ljava/lang/String; = "StyleMap"

.field private static final UNSUPPORTED_REGEX:Ljava/lang/String; = "altitude|altitudeModeGroup|altitudeMode|begin|bottomFov|cookie|displayName|displayMode|displayMode|end|expires|extrude|flyToView|gridOrigin|httpQuery|leftFov|linkDescription|linkName|linkSnippet|listItemType|maxSnippetLines|maxSessionLength|message|minAltitude|minFadeExtent|minLodPixels|minRefreshPeriod|maxAltitude|maxFadeExtent|maxLodPixels|maxHeight|maxWidth|near|overlayXY|range|refreshMode|refreshInterval|refreshVisibility|rightFov|roll|rotationXY|screenXY|shape|sourceHref|state|targetHref|tessellate|tileSize|topFov|viewBoundScale|viewFormat|viewRefreshMode|viewRefreshTime|when"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assignPropertiesToContainer(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlContainer;
    .registers 20
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "startTag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 65
    .local v2, "containerId":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v3, "containerProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v12, v4

    .line 67
    .local v12, "containerStyles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v13, v4

    .line 68
    .local v13, "containerPlacemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v4

    .line 69
    .local v14, "nestedContainers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/maps/android/kml/KmlContainer;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v15, v4

    .line 70
    .local v15, "containerStyleMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v11, v4

    .line 73
    .local v11, "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 74
    const-string v4, "id"

    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_39
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 78
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .local v4, "eventType":I
    :goto_40
    move v10, v4

    .line 79
    .end local v4    # "eventType":I
    .local v10, "eventType":I
    const/4 v4, 0x3

    if-ne v10, v4, :cond_68

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 80
    move-object/from16 v17, v1

    move v1, v10

    move-object/from16 v18, v11

    goto :goto_6d

    .line 103
    :cond_54
    new-instance v16, Lcom/google/maps/android/kml/KmlContainer;

    move-object/from16 v4, v16

    move-object v5, v3

    move-object v6, v12

    move-object v7, v13

    move-object v8, v15

    move-object v9, v14

    move-object/from16 v17, v1

    move v1, v10

    .end local v10    # "eventType":I
    .local v1, "eventType":I
    .local v17, "startTag":Ljava/lang/String;
    move-object v10, v11

    move-object/from16 v18, v11

    .end local v11    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    .local v18, "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    move-object v11, v2

    invoke-direct/range {v4 .. v11}, Lcom/google/maps/android/kml/KmlContainer;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;)V

    return-object v16

    .line 80
    .end local v17    # "startTag":Ljava/lang/String;
    .end local v18    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    .local v1, "startTag":Ljava/lang/String;
    .restart local v10    # "eventType":I
    .restart local v11    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    :cond_68
    move-object/from16 v17, v1

    move v1, v10

    move-object/from16 v18, v11

    .end local v10    # "eventType":I
    .end local v11    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    .local v1, "eventType":I
    .restart local v17    # "startTag":Ljava/lang/String;
    .restart local v18    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    :goto_6d
    const/4 v4, 0x2

    if-ne v1, v4, :cond_106

    .line 81
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "altitude|altitudeModeGroup|altitudeMode|begin|bottomFov|cookie|displayName|displayMode|displayMode|end|expires|extrude|flyToView|gridOrigin|httpQuery|leftFov|linkDescription|linkName|linkSnippet|listItemType|maxSnippetLines|maxSessionLength|message|minAltitude|minFadeExtent|minLodPixels|minRefreshPeriod|maxAltitude|maxFadeExtent|maxLodPixels|maxHeight|maxWidth|near|overlayXY|range|refreshMode|refreshInterval|refreshVisibility|rightFov|roll|rotationXY|screenXY|shape|sourceHref|state|targetHref|tessellate|tileSize|topFov|viewBoundScale|viewFormat|viewRefreshMode|viewRefreshTime|when"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 82
    invoke-static/range {p0 .. p0}, Lcom/google/maps/android/kml/KmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 100
    .end local v18    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    .local v6, "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    :goto_7f
    move-object/from16 v6, v18

    goto/16 :goto_108

    .line 83
    .end local v6    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    .restart local v18    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    :cond_83
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Folder|Document"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 84
    invoke-static/range {p0 .. p0}, Lcom/google/maps/android/kml/KmlContainerParser;->assignPropertiesToContainer(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlContainer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 85
    :cond_97
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "name|description|visibility|open|address|phoneNumber"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 86
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    .line 87
    :cond_af
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "StyleMap"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 88
    invoke-static {v0, v15}, Lcom/google/maps/android/kml/KmlContainerParser;->setContainerStyleMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_7f

    .line 89
    :cond_bf
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Style"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 90
    invoke-static {v0, v12}, Lcom/google/maps/android/kml/KmlContainerParser;->setContainerStyle(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_7f

    .line 91
    :cond_cf
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Placemark"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_df

    .line 92
    invoke-static {v0, v13}, Lcom/google/maps/android/kml/KmlContainerParser;->setContainerPlacemark(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_7f

    .line 93
    :cond_df
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ExtendedData"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 94
    invoke-static {v0, v3}, Lcom/google/maps/android/kml/KmlContainerParser;->setExtendedDataProperties(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_7f

    .line 95
    :cond_ef
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "GroundOverlay"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_106

    .line 96
    nop

    .line 97
    invoke-static/range {p0 .. p0}, Lcom/google/maps/android/kml/KmlFeatureParser;->createGroundOverlay(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlGroundOverlay;

    move-result-object v4

    move-object/from16 v6, v18

    .end local v18    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    .restart local v6    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_108

    .line 100
    .end local v6    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    .restart local v18    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    :cond_106
    move-object/from16 v6, v18

    .end local v18    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    .restart local v6    # "containerGroundOverlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlGroundOverlay;Lcom/google/android/gms/maps/model/GroundOverlay;>;"
    :goto_108
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 78
    move-object v11, v6

    move-object/from16 v1, v17

    goto/16 :goto_40
.end method

.method static createContainer(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlContainer;
    .registers 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/google/maps/android/kml/KmlContainerParser;->assignPropertiesToContainer(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlContainer;

    move-result-object v0

    return-object v0
.end method

.method private static setContainerPlacemark(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    .local p1, "containerPlacemarks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/maps/android/kml/KmlPlacemark;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/google/maps/android/kml/KmlFeatureParser;->createPlacemark(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlPlacemark;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method private static setContainerStyle(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/kml/KmlStyle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    .local p1, "containerStyles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;>;"
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 147
    invoke-static {p0}, Lcom/google/maps/android/kml/KmlStyleParser;->createStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlStyle;

    move-result-object v0

    .line 148
    .local v0, "style":Lcom/google/maps/android/kml/KmlStyle;
    invoke-virtual {v0}, Lcom/google/maps/android/kml/KmlStyle;->getStyleId()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "styleId":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v0    # "style":Lcom/google/maps/android/kml/KmlStyle;
    .end local v1    # "styleId":Ljava/lang/String;
    :cond_14
    return-void
.end method

.method private static setContainerStyleMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .registers 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    .local p1, "containerStyleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/maps/android/kml/KmlStyleParser;->createStyleMap(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 114
    return-void
.end method

.method private static setExtendedDataProperties(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    .local p1, "mContainerProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 125
    .local v0, "propertyKey":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 126
    .local v1, "eventType":I
    :goto_5
    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExtendedData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_16

    .line 137
    :cond_15
    return-void

    .line 127
    :cond_16
    :goto_16
    const/4 v2, 0x2

    if-ne v1, v2, :cond_44

    .line 128
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 129
    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 130
    :cond_2d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    if-eqz v0, :cond_44

    .line 131
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/4 v0, 0x0

    .line 135
    :cond_44
    :goto_44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_5
.end method
