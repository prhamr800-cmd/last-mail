###### Class com.snowplowanalytics.snowplow.tracker.emitter.ReadyRequest (com.snowplowanalytics.snowplow.tracker.emitter.ReadyRequest)
.class public Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;
.super Ljava/lang/Object;
.source "ReadyRequest.java"


# instance fields
.field private final ids:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final oversize:Z

.field private final request:Lokhttp3/Request;


# direct methods
.method public constructor <init>(ZLokhttp3/Request;Ljava/util/LinkedList;)V
    .registers 4
    .param p1, "oversize"    # Z
    .param p2, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lokhttp3/Request;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p3, "ids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;->oversize:Z

    .line 40
    iput-object p2, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;->request:Lokhttp3/Request;

    .line 41
    iput-object p3, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;->ids:Ljava/util/LinkedList;

    .line 42
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

    .line 55
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;->ids:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getRequest()Lokhttp3/Request;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public isOversize()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/snowplowanalytics/snowplow/tracker/emitter/ReadyRequest;->oversize:Z

    return v0
.end method
