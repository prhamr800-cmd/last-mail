###### Class com.digikala.dms.model.domain.ShipmentItem (com.digikala.dms.model.domain.ShipmentItem)
.class public Lcom/digikala/dms/model/domain/ShipmentItem;
.super Lio/realm/RealmObject;
.source "ShipmentItem.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;


# instance fields
.field private BasketId:Ljava/lang/String;

.field private OrderItemId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderItemId"
    .end annotation
.end field

.field private SerialItemList:Lio/realm/RealmList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SerialItems"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private amountPerQuantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AmountPerQuantity"
    .end annotation
.end field

.field private batchItems:Lio/realm/RealmList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BatchItems"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            ">;"
        }
    .end annotation
.end field

.field private brandName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BrandName"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Title"
    .end annotation
.end field

.field private rejectReasonId:I

.field private totalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 34
    :cond_d
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$BasketId(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILio/realm/RealmList;Lio/realm/RealmList;Ljava/lang/String;I)V
    .registers 10
    .param p1, "orderItemId"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "totalCount"    # I
    .param p4, "amountPerQuantity"    # I
    .param p7, "basketId"    # Ljava/lang/String;
    .param p8, "rejectReasonId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            ">;",
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 40
    .local p5, "batchItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    .local p6, "serialItemList":Lio/realm/RealmList;, "Lio/realm/RealmList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 34
    :cond_d
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$BasketId(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$description(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p3}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$totalCount(I)V

    .line 44
    invoke-virtual {p0, p4}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$amountPerQuantity(I)V

    .line 45
    invoke-virtual {p0, p5}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$batchItems(Lio/realm/RealmList;)V

    .line 46
    invoke-virtual {p0, p6}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$SerialItemList(Lio/realm/RealmList;)V

    .line 47
    invoke-virtual {p0, p7}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$BasketId(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p8}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$rejectReasonId(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public getAmountPerQuantity()I
    .registers 2

    .line 93
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmGet$amountPerQuantity()I

    move-result v0

    return v0
.end method

.method public getBasketId()Ljava/lang/String;
    .registers 2

    .line 109
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatchItems()Lio/realm/RealmList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmGet$batchItems()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getBrandName()Ljava/lang/String;
    .registers 2

    .line 117
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmGet$brandName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmGet$description()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderItemId()Ljava/lang/String;
    .registers 2

    .line 61
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRejectReasonId()I
    .registers 2

    .line 85
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmGet$rejectReasonId()I

    move-result v0

    return v0
.end method

.method public getSerialItemList()Lio/realm/RealmList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmGet$SerialItemList()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getTotalCount()I
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmGet$totalCount()I

    move-result v0

    return v0
.end method

.method public realmGet$BasketId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->BasketId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$OrderItemId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->OrderItemId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$SerialItemList()Lio/realm/RealmList;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->SerialItemList:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$amountPerQuantity()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->amountPerQuantity:I

    return v0
.end method

.method public realmGet$batchItems()Lio/realm/RealmList;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->batchItems:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$brandName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->brandName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$description()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$rejectReasonId()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->rejectReasonId:I

    return v0
.end method

.method public realmGet$totalCount()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->totalCount:I

    return v0
.end method

.method public realmSet$BasketId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->BasketId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$OrderItemId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->OrderItemId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$SerialItemList(Lio/realm/RealmList;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->SerialItemList:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$amountPerQuantity(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->amountPerQuantity:I

    return-void
.end method

.method public realmSet$batchItems(Lio/realm/RealmList;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->batchItems:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$brandName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->brandName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$description(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->description:Ljava/lang/String;

    return-void
.end method

.method public realmSet$rejectReasonId(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->rejectReasonId:I

    return-void
.end method

.method public realmSet$totalCount(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/domain/ShipmentItem;->totalCount:I

    return-void
.end method

.method public setAmountPerQuantity(I)V
    .registers 2
    .param p1, "amountPerQuantity"    # I

    .line 97
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$amountPerQuantity(I)V

    .line 98
    return-void
.end method

.method public setBasketId(Ljava/lang/String;)V
    .registers 2
    .param p1, "basketId"    # Ljava/lang/String;

    .line 113
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$BasketId(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setBatchItems(Lio/realm/RealmList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "batchItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BatchItem;>;"
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$batchItems(Lio/realm/RealmList;)V

    .line 56
    return-void
.end method

.method public setBrandName(Ljava/lang/String;)V
    .registers 2
    .param p1, "brandName"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$brandName(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$description(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setOrderItemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderItemId"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setRejectReasonId(I)V
    .registers 2
    .param p1, "rejectReasonId"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$rejectReasonId(I)V

    .line 90
    return-void
.end method

.method public setSerialItemList(Lio/realm/RealmList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "serialItemList":Lio/realm/RealmList;, "Lio/realm/RealmList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$SerialItemList(Lio/realm/RealmList;)V

    .line 106
    return-void
.end method

.method public setTotalCount(I)V
    .registers 2
    .param p1, "totalCount"    # I

    .line 81
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShipmentItem;->realmSet$totalCount(I)V

    .line 82
    return-void
.end method
