###### Class com.snowplowanalytics.snowplow.tracker.events.SelfDescribing (com.snowplowanalytics.snowplow.tracker.events.SelfDescribing)
.class public Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;
.source "SelfDescribing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder2;,
        Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;
    }
.end annotation


# instance fields
.field private base64Encode:Z

.field private final eventData:Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;


# direct methods
.method protected constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 62
    .local p1, "builder":Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)V

    .line 65
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->eventData:Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 68
    return-void
.end method

.method public static builder()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder<",
            "*>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder2;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    .registers 7

    .line 84
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    invoke-direct {v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;-><init>()V

    .line 85
    .local v0, "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    new-instance v1, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v2, "iglu:com.snowplowanalytics.snowplow/unstruct_event/jsonschema/1-0-0"

    iget-object v3, p0, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->eventData:Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 86
    invoke-virtual {v3}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->getMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    .local v1, "envelope":Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    const-string v2, "e"

    const-string/jumbo v3, "ue"

    invoke-virtual {v0, v2, v3}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;->getMap()Ljava/util/Map;

    move-result-object v2

    iget-boolean v3, p0, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->base64Encode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "ue_px"

    const-string/jumbo v5, "ue_pr"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->addMap(Ljava/util/Map;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->putDefaultParams(Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;)Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v2

    return-object v2
.end method

.method public setBase64Encode(Z)V
    .registers 2
    .param p1, "base64Encode"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;->base64Encode:Z

    .line 75
    return-void
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.SelfDescribing.AnonymousClass1 (com.snowplowanalytics.snowplow.tracker.events.SelfDescribing$1)
.class synthetic Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$1;
.super Ljava/lang/Object;
.source "SelfDescribing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.snowplowanalytics.snowplow.tracker.events.SelfDescribing.Builder (com.snowplowanalytics.snowplow.tracker.events.SelfDescribing$Builder)
.class public abstract Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
.source "SelfDescribing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder<",
        "TT;>;>",
        "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private eventData:Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder<TT;>;"
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;)Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    .line 30
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->eventData:Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;
    .registers 2

    .line 46
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder<TT;>;"
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;

    invoke-direct {v0, p0}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;)V

    return-object v0
.end method

.method public eventData(Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;)Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;
    .registers 3
    .param p1, "eventData"    # Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;",
            ")TT;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->eventData:Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    .line 42
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;

    return-object v0
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.SelfDescribing.Builder2 (com.snowplowanalytics.snowplow.tracker.events.SelfDescribing$Builder2)
.class Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder2;
.super Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;
.source "SelfDescribing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder<",
        "Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$1;

    .line 50
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder2;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder2;->self()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder2;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/snowplowanalytics/snowplow/tracker/events/SelfDescribing$Builder2;
    .registers 1

    .line 53
    return-object p0
.end method
