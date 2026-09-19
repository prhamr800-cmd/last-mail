###### Class com.snowplowanalytics.snowplow.tracker.events.ScreenView (com.snowplowanalytics.snowplow.tracker.events.ScreenView)
.class public Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder2;,
        Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 67
    .local p1, "builder":Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)V

    .line 70
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkArgument(Z)V

    .line 72
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;->name:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;->id:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static builder()Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder<",
            "*>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder2;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$1;)V

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    .registers 4

    .line 83
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    invoke-direct {v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;-><init>()V

    .line 84
    .local v0, "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    const-string v1, "name"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "id"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-object v0
.end method

.method public bridge synthetic getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .registers 4

    .line 95
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v1, "iglu:com.snowplowanalytics.snowplow/screen_view/jsonschema/1-0-0"

    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;->getData()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;)V

    return-object v0
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.ScreenView.AnonymousClass1 (com.snowplowanalytics.snowplow.tracker.events.ScreenView$1)
.class synthetic Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$1;
.super Ljava/lang/Object;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.snowplowanalytics.snowplow.tracker.events.ScreenView.Builder (com.snowplowanalytics.snowplow.tracker.events.ScreenView$Builder)
.class public abstract Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder<",
        "TT;>;>",
        "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder<TT;>;"
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;

    .line 27
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;

    .line 27
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;->id:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;
    .registers 2

    .line 51
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder<TT;>;"
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;

    invoke-direct {v0, p0}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;)V

    return-object v0
.end method

.method public id(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;->id:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;

    return-object v0
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.ScreenView.Builder2 (com.snowplowanalytics.snowplow.tracker.events.ScreenView$Builder2)
.class Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder2;
.super Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder<",
        "Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$1;

    .line 55
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder2;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder2;->self()Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder2;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/snowplowanalytics/snowplow/tracker/events/ScreenView$Builder2;
    .registers 1

    .line 58
    return-object p0
.end method
