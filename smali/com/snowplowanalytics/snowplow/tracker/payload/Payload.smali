###### Class com.snowplowanalytics.snowplow.tracker.payload.Payload (com.snowplowanalytics.snowplow.tracker.payload.Payload)
.class public interface abstract Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
.super Ljava/lang/Object;
.source "Payload.java"


# virtual methods
.method public abstract add(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addMap(Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getByteSize()J
.end method

.method public abstract getMap()Ljava/util/Map;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
