###### Class com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson (com.snowplowanalytics.snowplow.tracker.payload.SelfDescribingJson)
.class public Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
.super Ljava/lang/Object;
.source "SelfDescribingJson.java"

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
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "schema"    # Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;)V
    .registers 4
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->payload:Ljava/util/HashMap;

    .line 62
    invoke-virtual {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->setSchema(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 63
    invoke-virtual {p0, p2}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->setData(Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;)V
    .registers 4
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->payload:Ljava/util/HashMap;

    .line 50
    invoke-virtual {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->setSchema(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 51
    invoke-virtual {p0, p2}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->setData(Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->payload:Ljava/util/HashMap;

    .line 74
    invoke-virtual {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->setSchema(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 75
    invoke-virtual {p0, p2}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->setData(Ljava/lang/Object;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 76
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->TAG:Ljava/lang/String;

    const-string v1, "Payload: add(String, Object) method called - Doing nothing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->TAG:Ljava/lang/String;

    const-string v1, "Payload: add(String, String) method called - Doing nothing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public addMap(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->TAG:Ljava/lang/String;

    const-string v1, "Payload: addMap(Map<String, Object>) method called - Doing nothing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public addMap(Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "base64_encoded"    # Ljava/lang/Boolean;
    .param p3, "type_encoded"    # Ljava/lang/String;
    .param p4, "type_no_encoded"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->TAG:Ljava/lang/String;

    const-string v1, "Payload: addMap(Map, Boolean, String, String) method called - Doing nothing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public getByteSize()J
    .registers 3

    .line 187
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getUTF8Length(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->payload:Ljava/util/HashMap;

    return-object v0
.end method

.method public setData(Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .registers 5
    .param p1, "selfDescribingJson"    # Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 130
    if-nez p1, :cond_3

    .line 131
    return-object p0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->payload:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {p1}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-object p0
.end method

.method public setData(Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .registers 5
    .param p1, "trackerPayload"    # Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    .line 100
    if-nez p1, :cond_3

    .line 101
    return-object p0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->payload:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {p1}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-object p0
.end method

.method public setData(Ljava/lang/Object;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .line 115
    if-nez p1, :cond_3

    .line 116
    return-object p0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->payload:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-object p0
.end method

.method public setSchema(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .registers 4
    .param p1, "schema"    # Ljava/lang/String;

    .line 86
    const-string v0, "schema cannot be null"

    invoke-static {p1, v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "schema cannot be empty."

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->payload:Ljava/util/HashMap;

    const-string v1, "schema"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->payload:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->mapToJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
