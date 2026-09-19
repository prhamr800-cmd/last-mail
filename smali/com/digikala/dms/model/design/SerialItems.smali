###### Class com.digikala.dms.model.design.SerialItems (com.digikala.dms.model.design.SerialItems)
.class public Lcom/digikala/dms/model/design/SerialItems;
.super Lio/realm/RealmObject;
.source "SerialItems.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;


# instance fields
.field private BasketId:Ljava/lang/String;

.field private Count:I

.field private ItemBatchId:Ljava/lang/String;

.field private OrderItemId:Ljava/lang/String;

.field private ReasonId:Ljava/lang/String;

.field private SerialItem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 11
    :cond_d
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$SerialItem(Ljava/lang/String;)V

    .line 13
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$ItemBatchId(Ljava/lang/String;)V

    .line 15
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$BasketId(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$Count(I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "mSerialItem"    # Ljava/lang/String;
    .param p2, "mReasonId"    # Ljava/lang/String;
    .param p3, "mItemBatchId"    # Ljava/lang/String;
    .param p4, "orderItemId"    # Ljava/lang/String;
    .param p5, "count"    # I
    .param p6, "basketId"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 11
    :cond_d
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$SerialItem(Ljava/lang/String;)V

    .line 13
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$ItemBatchId(Ljava/lang/String;)V

    .line 15
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$BasketId(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$Count(I)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$SerialItem(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$ReasonId(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p3}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$ItemBatchId(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p4}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p6}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$BasketId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p5}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$Count(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public getBasketId()Ljava/lang/String;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/SerialItems;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/SerialItems;->realmGet$Count()I

    move-result v0

    return v0
.end method

.method public getItemBatchId()Ljava/lang/String;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/SerialItems;->realmGet$ItemBatchId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderItemId()Ljava/lang/String;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/SerialItems;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonId()Ljava/lang/String;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/SerialItems;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialItem()Ljava/lang/String;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/SerialItems;->realmGet$SerialItem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$BasketId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/SerialItems;->BasketId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$Count()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/design/SerialItems;->Count:I

    return v0
.end method

.method public realmGet$ItemBatchId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/SerialItems;->ItemBatchId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$OrderItemId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/SerialItems;->OrderItemId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$ReasonId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/SerialItems;->ReasonId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$SerialItem()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/SerialItems;->SerialItem:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$BasketId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/SerialItems;->BasketId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$Count(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/design/SerialItems;->Count:I

    return-void
.end method

.method public realmSet$ItemBatchId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/SerialItems;->ItemBatchId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$OrderItemId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/SerialItems;->OrderItemId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$ReasonId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/SerialItems;->ReasonId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$SerialItem(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/SerialItems;->SerialItem:Ljava/lang/String;

    return-void
.end method

.method public setBasketId(Ljava/lang/String;)V
    .registers 2
    .param p1, "basketId"    # Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$BasketId(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public setCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 69
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$Count(I)V

    .line 70
    return-void
.end method

.method public setItemBatchId(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemBatchId"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$ItemBatchId(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setOrderItemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderItemId"    # Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setReasonId(Ljava/lang/String;)V
    .registers 2
    .param p1, "reasonId"    # Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$ReasonId(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setSerialItem(Ljava/lang/String;)V
    .registers 2
    .param p1, "serialItem"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/SerialItems;->realmSet$SerialItem(Ljava/lang/String;)V

    .line 38
    return-void
.end method
