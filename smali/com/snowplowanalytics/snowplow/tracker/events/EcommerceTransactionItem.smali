###### Class com.snowplowanalytics.snowplow.tracker.events.EcommerceTransactionItem (com.snowplowanalytics.snowplow.tracker.events.EcommerceTransactionItem)
.class public Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;
.source "EcommerceTransactionItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder2;,
        Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
    }
.end annotation


# instance fields
.field private final category:Ljava/lang/String;

.field private final currency:Ljava/lang/String;

.field private final itemId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final price:Ljava/lang/Double;

.field private final quantity:Ljava/lang/Integer;

.field private final sku:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 121
    .local p1, "builder":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)V

    .line 124
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$300(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$400(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$500(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "itemId cannot be empty"

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 129
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$300(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "sku cannot be empty"

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 131
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->itemId:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$300(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->sku:Ljava/lang/String;

    .line 133
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$400(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->price:Ljava/lang/Double;

    .line 134
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$500(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->quantity:Ljava/lang/Integer;

    .line 135
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$600(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->name:Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$700(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->category:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->access$800(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->currency:Ljava/lang/String;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
    .param p2, "x1"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$1;

    .line 21
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)V

    return-void
.end method

.method public static builder()Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<",
            "*>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder2;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    .registers 5

    .line 154
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    invoke-direct {v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;-><init>()V

    .line 155
    .local v0, "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    const-string v1, "e"

    const-string/jumbo v2, "ti"

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "dtm"

    iget-wide v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->deviceCreatedTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v1, "ti_id"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v1, "ti_sk"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v1, "ti_nm"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v1, "ti_ca"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v1, "ti_pr"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->price:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "ti_qu"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->quantity:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v1, "ti_cu"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->putDefaultParams(Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;)Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v1

    return-object v1
.end method

.method public setDeviceCreatedTimestamp(J)V
    .registers 3
    .param p1, "deviceCreatedTimestamp"    # J

    .line 144
    iput-wide p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;->deviceCreatedTimestamp:J

    .line 145
    return-void
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.EcommerceTransactionItem.AnonymousClass1 (com.snowplowanalytics.snowplow.tracker.events.EcommerceTransactionItem$1)
.class synthetic Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$1;
.super Ljava/lang/Object;
.source "EcommerceTransactionItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.snowplowanalytics.snowplow.tracker.events.EcommerceTransactionItem.Builder (com.snowplowanalytics.snowplow.tracker.events.EcommerceTransactionItem$Builder)
.class public abstract Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
.source "EcommerceTransactionItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<",
        "TT;>;>",
        "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private price:Ljava/lang/Double;

.field private quantity:Ljava/lang/Integer;

.field private sku:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<TT;>;"
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    .line 31
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    .line 31
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->sku:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/Double;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    .line 31
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->price:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$500(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    .line 31
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    .line 31
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    .line 31
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    .line 31
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->currency:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;
    .registers 3

    .line 105
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<TT;>;"
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$1;)V

    return-object v0
.end method

.method public category(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
    .registers 3
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->category:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    return-object v0
.end method

.method public currency(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
    .registers 3
    .param p1, "currency"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->currency:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    return-object v0
.end method

.method public itemId(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
    .registers 3
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->itemId:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->name:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    return-object v0
.end method

.method public price(Ljava/lang/Double;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
    .registers 3
    .param p1, "price"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            ")TT;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->price:Ljava/lang/Double;

    .line 65
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    return-object v0
.end method

.method public quantity(Ljava/lang/Integer;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
    .registers 3
    .param p1, "quantity"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->quantity:Ljava/lang/Integer;

    .line 74
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    return-object v0
.end method

.method public sku(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
    .registers 3
    .param p1, "sku"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->sku:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;

    return-object v0
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.EcommerceTransactionItem.Builder2 (com.snowplowanalytics.snowplow.tracker.events.EcommerceTransactionItem$Builder2)
.class Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder2;
.super Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;
.source "EcommerceTransactionItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder<",
        "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$1;

    .line 109
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder2;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 2

    .line 109
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder2;->self()Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder2;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem$Builder2;
    .registers 1

    .line 112
    return-object p0
.end method
