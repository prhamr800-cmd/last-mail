###### Class com.snowplowanalytics.snowplow.tracker.events.PageView (com.snowplowanalytics.snowplow.tracker.events.PageView)
.class public Lcom/snowplowanalytics/snowplow/tracker/events/PageView;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder2;,
        Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;
    }
.end annotation


# instance fields
.field private final pageTitle:Ljava/lang/String;

.field private final pageUrl:Ljava/lang/String;

.field private final referrer:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 80
    .local p1, "builder":Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)V

    .line 83
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "pageUrl cannot be empty"

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 86
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView;->pageUrl:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView;->pageTitle:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->access$300(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView;->referrer:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static builder()Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder<",
            "*>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder2;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    .registers 4

    .line 98
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    invoke-direct {v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;-><init>()V

    .line 99
    .local v0, "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    const-string v1, "e"

    const-string v2, "pv"

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "page"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView;->pageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "refr"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView;->putDefaultParams(Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;)Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v1

    return-object v1
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.PageView.AnonymousClass1 (com.snowplowanalytics.snowplow.tracker.events.PageView$1)
.class synthetic Lcom/snowplowanalytics/snowplow/tracker/events/PageView$1;
.super Ljava/lang/Object;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.snowplowanalytics.snowplow.tracker.events.PageView.Builder (com.snowplowanalytics.snowplow.tracker.events.PageView$Builder)
.class public abstract Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder<",
        "TT;>;>",
        "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private pageTitle:Ljava/lang/String;

.field private pageUrl:Ljava/lang/String;

.field private referrer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder<TT;>;"
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;

    .line 30
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;

    .line 30
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->pageTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;

    .line 30
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->referrer:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snowplowanalytics/snowplow/tracker/events/PageView;
    .registers 2

    .line 64
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder<TT;>;"
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView;

    invoke-direct {v0, p0}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;)V

    return-object v0
.end method

.method public pageTitle(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;
    .registers 3
    .param p1, "pageTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->pageTitle:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;

    return-object v0
.end method

.method public pageUrl(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;
    .registers 3
    .param p1, "pageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->pageUrl:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;

    return-object v0
.end method

.method public referrer(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;
    .registers 3
    .param p1, "referrer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->referrer:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;

    return-object v0
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.PageView.Builder2 (com.snowplowanalytics.snowplow.tracker.events.PageView$Builder2)
.class Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder2;
.super Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder<",
        "Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/PageView$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/PageView$1;

    .line 68
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder2;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder2;->self()Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder2;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/snowplowanalytics/snowplow/tracker/events/PageView$Builder2;
    .registers 1

    .line 71
    return-object p0
.end method
