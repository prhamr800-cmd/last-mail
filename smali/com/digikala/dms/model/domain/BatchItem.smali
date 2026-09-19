###### Class com.digikala.dms.model.domain.BatchItem (com.digikala.dms.model.domain.BatchItem)
.class public Lcom/digikala/dms/model/domain/BatchItem;
.super Lio/realm/RealmObject;
.source "BatchItem.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;


# instance fields
.field private consumerPrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ConsumerPrice"
    .end annotation
.end field

.field private count:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Count"
    .end annotation
.end field

.field private expireDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExpireDate"
    .end annotation
.end field

.field private itemBatchId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ItemBatchId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_d
    return-void
.end method


# virtual methods
.method public getConsumerPrice()Ljava/lang/String;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/BatchItem;->realmGet$consumerPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()Ljava/lang/String;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/BatchItem;->realmGet$count()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpireDate()Ljava/lang/String;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/BatchItem;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemBatchId()Ljava/lang/String;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/BatchItem;->realmGet$itemBatchId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$consumerPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/BatchItem;->consumerPrice:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$count()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/BatchItem;->count:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$expireDate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/BatchItem;->expireDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$itemBatchId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/BatchItem;->itemBatchId:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$consumerPrice(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/BatchItem;->consumerPrice:Ljava/lang/String;

    return-void
.end method

.method public realmSet$count(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/BatchItem;->count:Ljava/lang/String;

    return-void
.end method

.method public realmSet$expireDate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/BatchItem;->expireDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$itemBatchId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/BatchItem;->itemBatchId:Ljava/lang/String;

    return-void
.end method

.method public setConsumerPrice(Ljava/lang/String;)V
    .registers 2
    .param p1, "consumerPrice"    # Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/BatchItem;->realmSet$consumerPrice(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .registers 2
    .param p1, "count"    # Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/BatchItem;->realmSet$count(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setExpireDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "expireDate"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/BatchItem;->realmSet$expireDate(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setItemBatchId(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemBatchId"    # Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/BatchItem;->realmSet$itemBatchId(Ljava/lang/String;)V

    .line 28
    return-void
.end method
