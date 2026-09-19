###### Class com.google.maps.android.kml.KmlStyleParser (com.google.maps.android.kml.KmlStyleParser)
.class Lcom/google/maps/android/kml/KmlStyleParser;
.super Ljava/lang/Object;
.source "KmlStyleParser.java"


# static fields
.field private static final COLOR_STYLE_COLOR:Ljava/lang/String; = "color"

.field private static final COLOR_STYLE_MODE:Ljava/lang/String; = "colorMode"

.field private static final ICON_STYLE_HEADING:Ljava/lang/String; = "heading"

.field private static final ICON_STYLE_HOTSPOT:Ljava/lang/String; = "hotSpot"

.field private static final ICON_STYLE_SCALE:Ljava/lang/String; = "scale"

.field private static final ICON_STYLE_URL:Ljava/lang/String; = "Icon"

.field private static final LINE_STYLE_WIDTH:Ljava/lang/String; = "width"

.field private static final POLY_STYLE_FILL:Ljava/lang/String; = "fill"

.field private static final POLY_STYLE_OUTLINE:Ljava/lang/String; = "outline"

.field private static final STYLE_MAP_KEY:Ljava/lang/String; = "key"

.field private static final STYLE_MAP_NORMAL_STYLE:Ljava/lang/String; = "normal"

.field private static final STYLE_TAG:Ljava/lang/String; = "styleUrl"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBalloonStyle(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 145
    .local v0, "eventType":I
    :goto_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BalloonStyle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_15

    .line 151
    :cond_14
    return-void

    .line 146
    :cond_15
    :goto_15
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 147
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setInfoWindowText(Ljava/lang/String;)V

    .line 149
    :cond_2c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4
.end method

.method private static createIconStyle(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 89
    .local v0, "eventType":I
    :goto_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconStyle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_15

    .line 107
    :cond_14
    return-void

    .line 90
    :cond_15
    :goto_15
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8f

    .line 91
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "heading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 92
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setHeading(F)V

    goto :goto_8f

    .line 93
    :cond_30
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 94
    invoke-static {p0, p1}, Lcom/google/maps/android/kml/KmlStyleParser;->setIconUrl(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V

    goto :goto_8f

    .line 95
    :cond_40
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hotSpot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 96
    invoke-static {p0, p1}, Lcom/google/maps/android/kml/KmlStyleParser;->setIconHotSpot(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V

    goto :goto_8f

    .line 97
    :cond_50
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 98
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/maps/android/kml/KmlStyle;->setIconScale(D)V

    goto :goto_8f

    .line 99
    :cond_68
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 100
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setMarkerColor(Ljava/lang/String;)V

    goto :goto_8f

    .line 101
    :cond_7c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "colorMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 102
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setIconColorMode(Ljava/lang/String;)V

    .line 105
    :cond_8f
    :goto_8f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_4
.end method

.method private static createLineStyle(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 194
    .local v0, "eventType":I
    :goto_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LineStyle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_15

    .line 206
    :cond_14
    return-void

    .line 195
    :cond_15
    :goto_15
    const/4 v1, 0x2

    if-ne v0, v1, :cond_58

    .line 196
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 197
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setOutlineColor(Ljava/lang/String;)V

    goto :goto_58

    .line 198
    :cond_2c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 199
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setWidth(Ljava/lang/Float;)V

    goto :goto_58

    .line 200
    :cond_45
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "colorMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 201
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setLineColorMode(Ljava/lang/String;)V

    .line 204
    :cond_58
    :goto_58
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4
.end method

.method private static createPolyStyle(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 217
    .local v0, "eventType":I
    :goto_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PolyStyle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_15

    .line 231
    :cond_14
    return-void

    .line 218
    :cond_15
    :goto_15
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6f

    .line 219
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 220
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setFillColor(Ljava/lang/String;)V

    goto :goto_6f

    .line 221
    :cond_2c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "outline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 222
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/android/kml/KmlBoolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setOutline(Z)V

    goto :goto_6f

    .line 223
    :cond_44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fill"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 224
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/android/kml/KmlBoolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setFill(Z)V

    goto :goto_6f

    .line 225
    :cond_5c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "colorMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 226
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setPolyColorMode(Ljava/lang/String;)V

    .line 229
    :cond_6f
    :goto_6f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4
.end method

.method static createStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/maps/android/kml/KmlStyle;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/google/maps/android/kml/KmlStyle;

    invoke-direct {v0}, Lcom/google/maps/android/kml/KmlStyle;-><init>()V

    .line 48
    .local v0, "styleProperties":Lcom/google/maps/android/kml/KmlStyle;
    const-string v1, "id"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/maps/android/kml/KmlStyleParser;->setStyleId(Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;)V

    .line 49
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 50
    .local v1, "eventType":I
    :goto_13
    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Style"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_24

    .line 65
    :cond_23
    return-object v0

    .line 51
    :cond_24
    :goto_24
    const/4 v2, 0x2

    if-ne v1, v2, :cond_66

    .line 52
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IconStyle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 53
    invoke-static {p0, v0}, Lcom/google/maps/android/kml/KmlStyleParser;->createIconStyle(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V

    goto :goto_66

    .line 54
    :cond_37
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LineStyle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 55
    invoke-static {p0, v0}, Lcom/google/maps/android/kml/KmlStyleParser;->createLineStyle(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V

    goto :goto_66

    .line 56
    :cond_47
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PolyStyle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 57
    invoke-static {p0, v0}, Lcom/google/maps/android/kml/KmlStyleParser;->createPolyStyle(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V

    goto :goto_66

    .line 58
    :cond_57
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BalloonStyle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 59
    invoke-static {p0, v0}, Lcom/google/maps/android/kml/KmlStyleParser;->createBalloonStyle(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V

    .line 62
    :cond_66
    :goto_66
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_13
.end method

.method static createStyleMap(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v0, "styleMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 119
    .local v2, "isNormalStyleMapValue":Ljava/lang/Boolean;
    const-string v3, "#"

    const-string v4, "id"

    const/4 v5, 0x0

    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    :cond_22
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 120
    .local v3, "styleId":Ljava/lang/String;
    :goto_28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 121
    .local v4, "eventType":I
    :goto_2c
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3d

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StyleMap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto :goto_3d

    .line 133
    :cond_3c
    return-object v0

    .line 122
    :cond_3d
    :goto_3d
    const/4 v5, 0x2

    if-ne v4, v5, :cond_7b

    .line 123
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 124
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    const-string v6, "normal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 125
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_7b

    .line 126
    :cond_5e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "styleUrl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 127
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 131
    :cond_7b
    :goto_7b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_2c
.end method

.method private static setIconHotSpot(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "style"    # Lcom/google/maps/android/kml/KmlStyle;

    .line 178
    const-string/jumbo v0, "x"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 179
    .local v0, "xValue":Ljava/lang/Float;
    const-string/jumbo v2, "y"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 180
    .local v2, "yValue":Ljava/lang/Float;
    const-string/jumbo v3, "xunits"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "xUnits":Ljava/lang/String;
    const-string/jumbo v4, "yunits"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "yUnits":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p1, v4, v5, v3, v1}, Lcom/google/maps/android/kml/KmlStyle;->setHotSpot(FFLjava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private static setIconUrl(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/maps/android/kml/KmlStyle;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "style"    # Lcom/google/maps/android/kml/KmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 162
    .local v0, "eventType":I
    :goto_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_15

    .line 168
    :cond_14
    return-void

    .line 163
    :cond_15
    :goto_15
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "href"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 164
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/maps/android/kml/KmlStyle;->setIconUrl(Ljava/lang/String;)V

    .line 166
    :cond_2b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4
.end method

.method private static setStyleId(Ljava/lang/String;Lcom/google/maps/android/kml/KmlStyle;)V
    .registers 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "styleProperties"    # Lcom/google/maps/android/kml/KmlStyle;

    .line 73
    if-eqz p0, :cond_1c

    .line 75
    const-string v0, "#"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 76
    .local v0, "styleId":Ljava/lang/String;
    :goto_19
    invoke-virtual {p1, v0}, Lcom/google/maps/android/kml/KmlStyle;->setStyleId(Ljava/lang/String;)V

    .line 78
    .end local v0    # "styleId":Ljava/lang/String;
    :cond_1c
    return-void
.end method
