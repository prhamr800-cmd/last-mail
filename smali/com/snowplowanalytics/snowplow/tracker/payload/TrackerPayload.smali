###### Class com.snowplowanalytics.snowplow.tracker.payload.TrackerPayload (com.snowplowanalytics.snowplow.tracker.payload.TrackerPayload)
.class public Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
.super Ljava/lang/Object;
.source "TrackerPayload.java"

# interfaces
.implements Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final payload:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->payload:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_10

    .line 44
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->TAG:Ljava/lang/String;

    const-string v3, "The keys value is empty, returning without adding key: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return-void

    .line 47
    :cond_10
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding new kv pair: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "->%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->payload:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_30

    .line 37
    :cond_b
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding new kv pair: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "->%s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->payload:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void

    .line 34
    :cond_30
    :goto_30
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->TAG:Ljava/lang/String;

    const-string v3, "The keys value is empty, returning without adding key: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v3, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public addMap(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 54
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->TAG:Ljava/lang/String;

    const-string v2, "Map passed in is null, returning without adding map."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void

    .line 57
    :cond_d
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->TAG:Ljava/lang/String;

    const-string v2, "Adding new map: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->payload:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 59
    return-void
.end method

.method public addMap(Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "base64_encoded"    # Ljava/lang/Boolean;
    .param p3, "type_encoded"    # Ljava/lang/String;
    .param p4, "type_no_encoded"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 65
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->TAG:Ljava/lang/String;

    const-string v2, "Map passed in is null, returning nothing."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void

    .line 69
    :cond_d
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->mapToJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "mapString":Ljava/lang/String;
    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->TAG:Ljava/lang/String;

    const-string v3, "Adding new map: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 73
    invoke-static {v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 75
    :cond_2f
    invoke-virtual {p0, p4, v1}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_32
    return-void
.end method

.method public getByteSize()J
    .registers 3

    .line 88
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getUTF8Length(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMap()Ljava/util/Map;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->payload:Ljava/util/HashMap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->payload:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->mapToJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
