###### Class com.snowplowanalytics.snowplow.tracker.events.Event (com.snowplowanalytics.snowplow.tracker.events.Event)
.class public interface abstract Lcom/snowplowanalytics/snowplow/tracker/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# virtual methods
.method public abstract getContext()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceCreatedTimestamp()J
.end method

.method public abstract getEventId()Ljava/lang/String;
.end method

.method public abstract getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
.end method

.method public abstract getTrueTimestamp()J
.end method
