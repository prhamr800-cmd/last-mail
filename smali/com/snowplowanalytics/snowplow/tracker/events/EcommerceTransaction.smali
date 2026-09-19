###### Class com.snowplowanalytics.snowplow.tracker.events.EcommerceTransaction (com.snowplowanalytics.snowplow.tracker.events.EcommerceTransaction)
.class public Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;
.source "EcommerceTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder2;,
        Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    }
.end annotation


# instance fields
.field private final affiliation:Ljava/lang/String;

.field private final city:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final currency:Ljava/lang/String;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final orderId:Ljava/lang/String;

.field private final shipping:Ljava/lang/Double;

.field private final state:Ljava/lang/String;

.field private final taxValue:Ljava/lang/Double;

.field private final totalValue:Ljava/lang/Double;


# direct methods
.method protected constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 169
    .local p1, "builder":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;)V

    .line 172
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$300(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "orderId cannot be empty"

    invoke-static {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 177
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$100(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->orderId:Ljava/lang/String;

    .line 178
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$200(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->totalValue:Ljava/lang/Double;

    .line 179
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$400(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->affiliation:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$500(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->taxValue:Ljava/lang/Double;

    .line 181
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$600(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->shipping:Ljava/lang/Double;

    .line 182
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$700(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->city:Ljava/lang/String;

    .line 183
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$800(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->state:Ljava/lang/String;

    .line 184
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$900(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->country:Ljava/lang/String;

    .line 185
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$1000(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->currency:Ljava/lang/String;

    .line 186
    invoke-static {p1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->access$300(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->items:Ljava/util/List;

    .line 187
    return-void
.end method

.method public static builder()Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<",
            "*>;"
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder2;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$1;)V

    return-object v0
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->items:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/Payload;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    .registers 7

    .line 196
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    invoke-direct {v0}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;-><init>()V

    .line 197
    .local v0, "payload":Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;
    const-string v1, "e"

    const-string/jumbo v2, "tr"

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v1, "tr_id"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v1, "tr_tt"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->totalValue:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "tr_af"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->affiliation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v1, "tr_tx"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->taxValue:Ljava/lang/Double;

    const/4 v3, 0x0

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->taxValue:Ljava/lang/Double;

    .line 202
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    .line 201
    :cond_40
    move-object v2, v3

    :goto_41
    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v1, "tr_sh"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->shipping:Ljava/lang/Double;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->shipping:Ljava/lang/Double;

    .line 204
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    nop

    .line 203
    :cond_56
    invoke-virtual {v0, v1, v3}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "tr_ci"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->city:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, "tr_st"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->state:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v1, "tr_co"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v1, "tr_cu"

    iget-object v2, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;->putDefaultParams(Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;)Lcom/snowplowanalytics/snowplow/tracker/payload/TrackerPayload;

    move-result-object v1

    return-object v1
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.EcommerceTransaction.AnonymousClass1 (com.snowplowanalytics.snowplow.tracker.events.EcommerceTransaction$1)
.class synthetic Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$1;
.super Ljava/lang/Object;
.source "EcommerceTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.snowplowanalytics.snowplow.tracker.events.EcommerceTransaction.Builder (com.snowplowanalytics.snowplow.tracker.events.EcommerceTransaction$Builder)
.class public abstract Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
.super Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
.source "EcommerceTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<",
        "TT;>;>",
        "Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private affiliation:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field private orderId:Ljava/lang/String;

.field private shipping:Ljava/lang/Double;

.field private state:Ljava/lang/String;

.field private taxValue:Ljava/lang/Double;

.field private totalValue:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    .line 38
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    .line 38
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->currency:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/Double;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    .line 38
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->totalValue:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$300(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    .line 38
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    .line 38
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->affiliation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/Double;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    .line 38
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->taxValue:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$600(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/Double;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    .line 38
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->shipping:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$700(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    .line 38
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->city:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    .line 38
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    .line 38
    iget-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->country:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public affiliation(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 3
    .param p1, "affiliation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->affiliation:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    return-object v0
.end method

.method public build()Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;
    .registers 2

    .line 153
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    new-instance v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;

    invoke-direct {v0, p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;-><init>(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;)V

    return-object v0
.end method

.method public city(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 3
    .param p1, "city"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->city:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    return-object v0
.end method

.method public country(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 3
    .param p1, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->country:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    return-object v0
.end method

.method public currency(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 3
    .param p1, "currency"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->currency:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    return-object v0
.end method

.method public items(Ljava/util/List;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;",
            ">;)TT;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->items:Ljava/util/List;

    .line 138
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    return-object v0
.end method

.method public varargs items([Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 4
    .param p1, "itemArgs"    # [Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;",
            ")TT;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransactionItem;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 148
    iput-object v0, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->items:Ljava/util/List;

    .line 149
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v1

    check-cast v1, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    return-object v1
.end method

.method public orderId(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 3
    .param p1, "orderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->orderId:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    return-object v0
.end method

.method public shipping(Ljava/lang/Double;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 3
    .param p1, "shipping"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            ")TT;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->shipping:Ljava/lang/Double;

    .line 93
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    return-object v0
.end method

.method public state(Ljava/lang/String;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 3
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->state:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    return-object v0
.end method

.method public taxValue(Ljava/lang/Double;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 3
    .param p1, "taxValue"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            ")TT;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->taxValue:Ljava/lang/Double;

    .line 84
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    return-object v0
.end method

.method public totalValue(Ljava/lang/Double;)Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
    .registers 3
    .param p1, "totalValue"    # Ljava/lang/Double;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            ")TT;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;, "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<TT;>;"
    iput-object p1, p0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->totalValue:Ljava/lang/Double;

    .line 66
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;->self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;

    move-result-object v0

    check-cast v0, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;

    return-object v0
.end method

###### Class com.snowplowanalytics.snowplow.tracker.events.EcommerceTransaction.Builder2 (com.snowplowanalytics.snowplow.tracker.events.EcommerceTransaction$Builder2)
.class Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder2;
.super Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;
.source "EcommerceTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder<",
        "Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$1;

    .line 157
    invoke-direct {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder2;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic self()Lcom/snowplowanalytics/snowplow/tracker/events/AbstractEvent$Builder;
    .registers 2

    .line 157
    invoke-virtual {p0}, Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder2;->self()Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder2;

    move-result-object v0

    return-object v0
.end method

.method protected self()Lcom/snowplowanalytics/snowplow/tracker/events/EcommerceTransaction$Builder2;
    .registers 1

    .line 160
    return-object p0
.end method
