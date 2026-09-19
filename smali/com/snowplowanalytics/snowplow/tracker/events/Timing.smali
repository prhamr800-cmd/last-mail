###### Class com.snowplowanalytics.snowplow.tracker.events.Timing (com.snowplowanalytics.snowplow.tracker.events.Timing)
.class public Lcom/snowplowanalytics/snowplow/tracker/events/Timing;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;
.source "Timing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder2;,
        Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;
    }
.end annotation


# instance fields
.field private final category:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final timing:Ljava/lang/Integer;

.field private final variable:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 89
    .local p1, "builder":Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)V

    .line 92
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->access$300(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "category cannot be empty"

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 96
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->access$300(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "variable cannot be empty"

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 98
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->category:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->access$300(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->variable:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->access$400(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->label:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->timing:Ljava/lang/Integer;

    .line 102
    return-void
.end method

.method public static builder()Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder<",
            "*>;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder2;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$1;)V

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "payload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "category"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v1, "variable"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->variable:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v1, "timing"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->timing:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->label:Ljava/lang/String;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 116
    const-string v1, "label"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_2f
    return-object v0
.end method

.method public bridge synthetic getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;
    .registers 4

    .line 127
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;

    const-string v1, "iglu:com.snowplowanalytics.snowplow/timing/jsonschema/1-0-0"

    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;->getData()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.Timing.AnonymousClass1 (com.snowplowanalytics.snowplow.tracker.events.Timing$1)
.class synthetic Lcom/snowplowanalytics/snowplow/tracker/events/Timing$1;
.super Ljava/lang/Object;
.source "Timing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/Timing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.snowplowanalytics.snowplow.tracker.events.Timing.Builder (com.snowplowanalytics.snowplow.tracker.events.Timing$Builder)
.class public abstract Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
.source "Timing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/Timing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder<",
        "TT;>;>",
        "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private timing:Ljava/lang/Integer;

.field private variable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder<TT;>;"
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;

    .line 29
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;

    .line 29
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->timing:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;

    .line 29
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->variable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;

    .line 29
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->label:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snowplowanalytics/snowplow/tracker/events/Timing;
    .registers 2

    .line 73
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder<TT;>;"
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;

    invoke-direct {v0, p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;)V

    return-object v0
.end method

.method public category(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;
    .registers 3
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->category:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;

    return-object v0
.end method

.method public label(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;
    .registers 3
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->label:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;

    return-object v0
.end method

.method public timing(Ljava/lang/Integer;)Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;
    .registers 3
    .param p1, "timing"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->timing:Ljava/lang/Integer;

    .line 60
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;

    return-object v0
.end method

.method public variable(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;
    .registers 3
    .param p1, "variable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->variable:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;

    return-object v0
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.Timing.Builder2 (com.snowplowanalytics.snowplow.tracker.events.Timing$Builder2)
.class Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder2;
.super Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;
.source "Timing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/Timing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder<",
        "Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/Timing$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/Timing$1;

    .line 77
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder2;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder2;->self()Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder2;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/snowplowanalytics/snowplow/tracker/events/Timing$Builder2;
    .registers 1

    .line 80
    return-object p0
.end method
