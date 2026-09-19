###### Class com.snowplowanalytics.snowplow.tracker.events.AbstractEvent (com.snowplowanalytics.snowplow.tracker.events.AbstractEvent)
.class public abstract Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;
.super Ljava/lang/Object;
.source "AbstractEvent.java"

# interfaces
.implements Lcom/snowplowanalytics/snowplow/tracker/events/Event;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    }
.end annotation


# instance fields
.field private final context:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;",
            ">;"
        }
    .end annotation
.end field

.field protected deviceCreatedTimestamp:J

.field private final eventId:Ljava/lang/String;

.field private trueTimestamp:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 110
    .local p1, "builder":Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->access$000(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "eventId cannot be empty"

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 117
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->access$000(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->context:Ljava/util/List;

    .line 118
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->deviceCreatedTimestamp:J

    .line 119
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->access$300(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->trueTimestamp:Ljava/lang/Long;

    .line 120
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->eventId:Ljava/lang/String;

    .line 121
    return-void
.end method


# virtual methods
.method public getContext()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->context:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDeviceCreatedTimestamp()J
    .registers 3

    .line 136
    iget-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->deviceCreatedTimestamp:J

    return-wide v0
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
.end method

.method public getTrueTimestamp()J
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->trueTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method putDefaultParams(Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;)Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    .registers 5
    .param p1, "payload"    # Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    .line 168
    const-string v0, "eid"

    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "dtm"

    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->getDeviceCreatedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->trueTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_28

    .line 171
    const-string/jumbo v0, "ttm"

    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;->getTrueTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_28
    return-object p1
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.AbstractEvent.Builder (com.snowplowanalytics.snowplow.tracker.events.AbstractEvent$Builder)
.class public abstract Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
.super Ljava/lang/Object;
.source "AbstractEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private context:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;",
            ">;"
        }
    .end annotation
.end field

.field private deviceCreatedTimestamp:J

.field private eventId:Ljava/lang/String;

.field private trueTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->context:Ljava/util/List;

    .line 44
    invoke-static {}, Lcom/snowplowanalytics/snowplow/tracker/utils/Util;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->eventId:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->deviceCreatedTimestamp:J

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->trueTimestamp:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$000(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    .line 41
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->context:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    .line 41
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    .line 41
    iget-wide v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->deviceCreatedTimestamp:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    .line 41
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->trueTimestamp:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public customContext(Ljava/util/List;)Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;",
            ">;)TT;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<TT;>;"
    .local p1, "context":Ljava/util/List;, "Ljava/util/List<Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->context:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public deviceCreatedTimestamp(J)Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 4
    .param p1, "deviceCreatedTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<TT;>;"
    iput-wide p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->deviceCreatedTimestamp:J

    .line 94
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public eventId(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 3
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->eventId:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public timestamp(J)Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 4
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<TT;>;"
    iput-wide p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->deviceCreatedTimestamp:J

    .line 82
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public trueTimestamp(J)Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 4
    .param p1, "trueTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<TT;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->trueTimestamp:Ljava/lang/Long;

    .line 106
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    return-object v0
.end method
