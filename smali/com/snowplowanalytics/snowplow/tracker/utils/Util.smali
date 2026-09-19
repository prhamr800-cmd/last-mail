###### Class com.snowplowanalytics.snowplow.tracker.utils.Util (com.snowplowanalytics.snowplow.tracker.utils.Util)
.class public Lcom/snowplowanalytics/snowplow/tracker/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 511
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 512
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_d
    return-void
.end method

.method public static base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deserializer([B)Ljava/util/Map;
    .registers 5
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 600
    const/4 v0, 0x0

    .line 602
    .local v0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 603
    .local v1, "mem_in":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 604
    .local v2, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 605
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 606
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_19

    .line 607
    move-object v0, v3

    .line 610
    .end local v1    # "mem_in":Ljava/io/ByteArrayInputStream;
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1d

    .line 608
    :catch_19
    move-exception v1

    .line 609
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 611
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1d
    return-object v0
.end method

.method public static getAndroidIdfa(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 409
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_3
    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v4, "getAdvertisingIdInfo"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 412
    .local v3, "AdvertisingInfoObject":Ljava/lang/Object;
    const-string v4, "getId"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_20

    return-object v4

    .line 414
    .end local v3    # "AdvertisingInfoObject":Ljava/lang/Object;
    :catch_20
    move-exception v3

    .line 415
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->TAG:Ljava/lang/String;

    const-string v5, "Exception getting the Advertising ID: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v4, v5, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    return-object v0
.end method

.method public static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 388
    const-string v0, "phone"

    .line 389
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 391
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_17

    .line 392
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "carrierName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 394
    return-object v1

    .line 397
    .end local v1    # "carrierName":Ljava/lang/String;
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .registers 1

    .line 373
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceVendor()Ljava/lang/String;
    .registers 1

    .line 380
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getEventId()Ljava/lang/String;
    .registers 1

    .line 84
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGeoLocationContext(Landroid/content/Context;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 268
    invoke-static {p0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 270
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_82

    .line 271
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v1, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 273
    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 274
    const-string v2, "altitude"

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 275
    const-string v2, "latitudeLongitudeAccuracy"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 276
    const-string v2, "speed"

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 277
    const-string v2, "bearing"

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 278
    const-string/jumbo v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 280
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "latitude"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "longitude"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->mapHasKeys(Ljava/util/Map;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 281
    new-instance v2, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v3, "iglu:com.snowplowanalytics.snowplow/geolocation_context/jsonschema/1-1-0"

    invoke-direct {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 286
    .end local v1    # "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_82
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getJsonSafeObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "o"    # Ljava/lang/Object;

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_7

    .line 124
    return-object p0

    .line 125
    :cond_7
    if-nez p0, :cond_c

    .line 126
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object v0

    .line 127
    :cond_c
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_ab

    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_16

    goto/16 :goto_ab

    .line 129
    :cond_16
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_39

    .line 130
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 131
    .local v0, "retArray":Lorg/json/JSONArray;
    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 132
    .local v2, "entry":Ljava/lang/Object;
    invoke-static {v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getJsonSafeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 133
    .end local v2    # "entry":Ljava/lang/Object;
    goto :goto_26

    .line 134
    :cond_38
    return-object v0

    .line 135
    .end local v0    # "retArray":Lorg/json/JSONArray;
    :cond_39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 136
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 137
    .restart local v0    # "retArray":Lorg/json/JSONArray;
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 138
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    if-ge v2, v1, :cond_5d

    .line 139
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getJsonSafeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 141
    .end local v2    # "i":I
    :cond_5d
    return-object v0

    .line 142
    .end local v0    # "retArray":Lorg/json/JSONArray;
    .end local v1    # "length":I
    :cond_5e
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_6a

    .line 143
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->mapToJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 144
    :cond_6a
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_aa

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_aa

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_aa

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_aa

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_aa

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_aa

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_aa

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_aa

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8f

    goto :goto_aa

    .line 154
    :cond_8f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 157
    :cond_a8
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_aa
    :goto_aa
    return-object p0

    .line 128
    :cond_ab
    :goto_ab
    return-object p0
.end method

.method public static getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 297
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 298
    .local v0, "locationManager":Landroid/location/LocationManager;
    const/4 v1, 0x0

    .line 299
    .local v1, "locationProvider":Ljava/lang/String;
    const/4 v2, 0x0

    .line 302
    .local v2, "location":Landroid/location/Location;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_c
    const-string v5, "gps"

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 303
    const-string v5, "gps"

    move-object v1, v5

    goto :goto_35

    .line 304
    :cond_18
    const-string v5, "network"

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 305
    const-string v5, "network"

    move-object v1, v5

    goto :goto_35

    .line 307
    :cond_24
    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v5

    .line 308
    .local v5, "locationProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_35

    .line 309
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v1, v6

    .line 313
    .end local v5    # "locationProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_35
    :goto_35
    if-eqz v1, :cond_44

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 314
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5
    :try_end_43
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_43} :catch_45

    move-object v2, v5

    .line 318
    :cond_44
    goto :goto_55

    .line 316
    :catch_45
    move-exception v5

    .line 317
    .local v5, "ex":Ljava/lang/SecurityException;
    sget-object v6, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->TAG:Ljava/lang/String;

    const-string v7, "Exception occurred when retrieving location: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-static {v6, v7, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    .end local v5    # "ex":Ljava/lang/SecurityException;
    :goto_55
    return-object v2
.end method

.method public static getMobileContext(Landroid/content/Context;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v0, "pairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "osType"

    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getOsType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 334
    const-string v1, "osVersion"

    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 335
    const-string v1, "deviceModel"

    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 336
    const-string v1, "deviceManufacturer"

    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getDeviceVendor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 337
    const-string v1, "carrier"

    invoke-static {p0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 338
    const-string v1, "androidIdfa"

    invoke-static {p0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getAndroidIdfa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 340
    invoke-static {p0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 341
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    const-string v2, "networkType"

    invoke-static {v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getNetworkType(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 342
    const-string v2, "networkTechnology"

    invoke-static {v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getNetworkTechnology(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->addToMap(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 344
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "osType"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "osVersion"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "deviceManufacturer"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "deviceModel"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->mapHasKeys(Ljava/util/Map;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 349
    new-instance v2, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v3, "iglu:com.snowplowanalytics.snowplow/mobile_context/jsonschema/1-0-1"

    invoke-direct {v2, v3, v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 351
    :cond_76
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 465
    const-string v0, "connectivity"

    .line 466
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 468
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 470
    .local v1, "ni":Landroid/net/NetworkInfo;
    :try_start_9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 471
    .local v2, "maybeNi":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_13} :catch_17

    if-eqz v3, :cond_16

    .line 472
    move-object v1, v2

    .line 476
    .end local v2    # "maybeNi":Landroid/net/NetworkInfo;
    :cond_16
    goto :goto_29

    .line 474
    :catch_17
    move-exception v2

    .line 475
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->TAG:Ljava/lang/String;

    const-string v4, "Security exception getting NetworkInfo: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_29
    return-object v1
.end method

.method public static getNetworkTechnology(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "networkTech":Ljava/lang/String;
    if-eqz p0, :cond_13

    .line 450
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "networkType":Ljava/lang/String;
    const-string v2, "MOBILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 452
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 455
    .end local v1    # "networkType":Ljava/lang/String;
    :cond_13
    return-object v0
.end method

.method public static getNetworkType(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .registers 6
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 427
    const-string v0, "offline"

    .line 428
    .local v0, "networkType":Ljava/lang/String;
    if-eqz p0, :cond_36

    .line 429
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "maybeNetworkType":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3fb56f5e

    if-eq v3, v4, :cond_27

    const v4, 0x37af15

    if-eq v3, v4, :cond_1c

    goto :goto_30

    :cond_1c
    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v2, 0x1

    goto :goto_30

    :cond_27
    const-string v3, "mobile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v2, 0x0

    :cond_30
    :goto_30
    packed-switch v2, :pswitch_data_38

    .end local v1    # "maybeNetworkType":Ljava/lang/String;
    goto :goto_36

    .line 433
    .restart local v1    # "maybeNetworkType":Ljava/lang/String;
    :pswitch_34
    move-object v0, v1

    .line 434
    nop

    .line 438
    .end local v1    # "maybeNetworkType":Ljava/lang/String;
    :cond_36
    :goto_36
    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method public static getOsType()Ljava/lang/String;
    .registers 1

    .line 359
    const-string v0, "android"

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .registers 1

    .line 366
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getTimestamp()Ljava/lang/String;
    .registers 2

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUTF8Length(Ljava/lang/String;)J
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 167
    const-wide/16 v0, 0x0

    .line 168
    .local v0, "len":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 169
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 170
    .local v3, "code":C
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_15

    .line 171
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_38

    .line 172
    :cond_15
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_1d

    .line 173
    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    goto :goto_38

    .line 174
    :cond_1d
    const v4, 0xd800

    const-wide/16 v5, 0x4

    if-lt v3, v4, :cond_2d

    const v4, 0xdfff

    if-gt v3, v4, :cond_2d

    .line 177
    add-long/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 178
    :cond_2d
    const v4, 0xffff

    if-ge v3, v4, :cond_36

    .line 179
    const-wide/16 v4, 0x3

    add-long/2addr v0, v4

    goto :goto_38

    .line 181
    :cond_36
    const/4 v4, 0x0

    add-long/2addr v0, v5

    .line 168
    .end local v3    # "code":C
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 184
    .end local v2    # "i":I
    :cond_3b
    return-wide v0
.end method

.method private static varargs invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "cArgs"    # [Ljava/lang/Class;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 547
    .local v0, "classObject":Ljava/lang/Class;
    invoke-static {v0, p1, p0, p2, p3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static varargs invokeMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "classObject"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "instance"    # Ljava/lang/Object;
    .param p3, "cArgs"    # [Ljava/lang/Class;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 564
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 565
    .local v0, "methodObject":Ljava/lang/reflect/Method;
    invoke-virtual {v0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static varargs invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "cArgs"    # [Ljava/lang/Class;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 529
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 530
    .local v0, "classObject":Ljava/lang/Class;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2, p3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 197
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->TAG:Ljava/lang/String;

    const-string v1, "Checking tracker internet connectivity."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const-string v0, "connectivity"

    .line 200
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 203
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    :try_start_13
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 204
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_21

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    .line 205
    .local v4, "connected":Z
    :goto_22
    sget-object v5, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->TAG:Ljava/lang/String;

    const-string v6, "Tracker connection online: %s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_31} :catch_32

    .line 206
    return v4

    .line 207
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    .end local v4    # "connected":Z
    :catch_32
    move-exception v3

    .line 208
    .local v3, "e":Ljava/lang/SecurityException;
    sget-object v4, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->TAG:Ljava/lang/String;

    const-string v5, "Security exception checking connection: %s"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return v1
.end method

.method public static isTimeInRange(JJJ)Z
    .registers 9
    .param p0, "startTime"    # J
    .param p2, "checkTime"    # J
    .param p4, "range"    # J

    .line 230
    sub-long v0, p2, p4

    cmp-long v2, p0, v0

    if-lez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static joinLongList(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 240
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string v0, ""

    .line 242
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "s":Ljava/lang/String;
    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4c

    .line 243
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 244
    .local v3, "longVal":Ljava/lang/Long;
    if-eqz v3, :cond_49

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_49

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .end local v3    # "longVal":Ljava/lang/Long;
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 252
    .end local v0    # "i":I
    :cond_4c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 253
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 256
    :cond_68
    return-object v2
.end method

.method public static varargs mapHasKeys(Ljava/util/Map;[Ljava/lang/String;)Z
    .registers 7
    .param p1, "keys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 490
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_11

    aget-object v3, p1, v2

    .line 491
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 492
    return v1

    .line 490
    .end local v3    # "key":Ljava/lang/String;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 495
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public static mapToJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 14
    .param p0, "map"    # Ljava/util/Map;

    .line 95
    sget-object v0, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->TAG:Ljava/lang/String;

    const-string v1, "Converting a map to a JSONObject: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_19

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 99
    :cond_19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v0, "retObject":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 101
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 102
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 103
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getJsonSafeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 105
    .local v7, "value":Ljava/lang/Object;
    :try_start_40
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_43} :catch_44

    .line 109
    goto :goto_59

    .line 106
    :catch_44
    move-exception v8

    .line 107
    .local v8, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->TAG:Ljava/lang/String;

    const-string v10, "Could not put key \'%s\' and value \'%s\' into new JSONObject: %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v4

    aput-object v7, v11, v2

    const/4 v12, 0x2

    aput-object v8, v11, v12

    invoke-static {v9, v10, v11}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 110
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "e":Lorg/json/JSONException;
    :goto_59
    goto :goto_26

    .line 111
    :cond_5a
    return-object v0
.end method

.method public static serialize(Ljava/util/Map;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 577
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 579
    .local v0, "newByteArray":[B
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 580
    .local v1, "mem_out":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 581
    .local v2, "out":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 582
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 583
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 584
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_1a

    move-object v0, v3

    .line 587
    .end local v1    # "mem_out":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_1e

    .line 585
    :catch_1a
    move-exception v1

    .line 586
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 588
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1e
    return-object v0
.end method

.method public static stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 621
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 622
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 623
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 624
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
