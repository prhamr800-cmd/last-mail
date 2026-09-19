###### Class com.snowplowanalytics.snowplow.tracker.emitter.EmittableEvents (com.snowplowanalytics.snowplow.tracker.emitter.EmittableEvents)
.class public Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;
.super Ljava/lang/Object;
.source "EmittableEvents.java"


# instance fields
.field private final eventIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;>;"
    .local p2, "eventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;->events:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;->eventIds:Ljava/util/LinkedList;

    .line 33
    return-void
.end method


# virtual methods
.method public getEventIds()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;->eventIds:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getEvents()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/EmittableEvents;->events:Ljava/util/ArrayList;

    return-object v0
.end method
