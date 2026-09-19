###### Class com.snowplowanalytics.snowplow.tracker.events.Structured (com.snowplowanalytics.snowplow.tracker.events.Structured)
.class public Lcom/snowplowanalytics/snowplow/tracker/events/Structured;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;
.source "Structured.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder2;,
        Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;
    }
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private final category:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final property:Ljava/lang/String;

.field private final value:Ljava/lang/Double;


# direct methods
.method protected constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 102
    .local p1, "builder":Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)V

    .line 105
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "category cannot be empty"

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 108
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "action cannot be empty"

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 110
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->category:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->action:Ljava/lang/String;

    .line 112
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->access$300(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->label:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->access$400(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->property:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->access$500(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->value:Ljava/lang/Double;

    .line 115
    return-void
.end method

.method public static builder()Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<",
            "*>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder2;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    .registers 5

    .line 124
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    invoke-direct {v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;-><init>()V

    .line 125
    .local v0, "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    const-string v1, "e"

    const-string v2, "se"

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "se_ca"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "se_ac"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "se_la"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "se_pr"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->property:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "se_va"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->value:Ljava/lang/Double;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->value:Ljava/lang/Double;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    .line 130
    :goto_3a
    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;->putDefaultParams(Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;)Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v1

    return-object v1
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.Structured.AnonymousClass1 (com.snowplowanalytics.snowplow.tracker.events.Structured$1)
.class synthetic Lcom/snowplowanalytics/snowplow/tracker/events/Structured$1;
.super Ljava/lang/Object;
.source "Structured.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/Structured;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.snowplowanalytics.snowplow.tracker.events.Structured.Builder (com.snowplowanalytics.snowplow.tracker.events.Structured$Builder)
.class public abstract Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
.source "Structured.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/Structured;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<",
        "TT;>;>",
        "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private property:Ljava/lang/String;

.field private value:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<TT;>;"
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;

    .line 32
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;

    .line 32
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;

    .line 32
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->label:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;

    .line 32
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->property:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)Ljava/lang/Double;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;

    .line 32
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->value:Ljava/lang/Double;

    return-object v0
.end method


# virtual methods
.method public action(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->action:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;

    return-object v0
.end method

.method public build()Lcom/snowplowanalytics/snowplow/tracker/events/Structured;
    .registers 2

    .line 86
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<TT;>;"
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;

    invoke-direct {v0, p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;)V

    return-object v0
.end method

.method public category(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;
    .registers 3
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->category:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;

    return-object v0
.end method

.method public label(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;
    .registers 3
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->label:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;

    return-object v0
.end method

.method public property(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;
    .registers 3
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->property:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;

    return-object v0
.end method

.method public value(Ljava/lang/Double;)Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            ")TT;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->value:Ljava/lang/Double;

    .line 82
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;

    return-object v0
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.Structured.Builder2 (com.snowplowanalytics.snowplow.tracker.events.Structured$Builder2)
.class Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder2;
.super Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;
.source "Structured.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/Structured;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder<",
        "Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/Structured$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/Structured$1;

    .line 90
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder2;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder2;->self()Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder2;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/snowplowanalytics/snowplow/tracker/events/Structured$Builder2;
    .registers 1

    .line 93
    return-object p0
.end method
