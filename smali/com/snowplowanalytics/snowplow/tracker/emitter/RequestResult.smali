###### Class com.snowplowanalytics.snowplow.tracker.emitter.RequestResult (com.snowplowanalytics.snowplow.tracker.emitter.RequestResult)
.class public Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;
.super Ljava/lang/Object;
.source "RequestResult.java"


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

.field private final success:Z


# direct methods
.method public constructor <init>(ZLjava/util/LinkedList;)V
    .registers 3
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p2, "eventIds":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;->success:Z

    .line 34
    iput-object p2, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;->eventIds:Ljava/util/LinkedList;

    .line 35
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

    .line 48
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;->eventIds:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSuccess()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/RequestResult;->success:Z

    return v0
.end method
