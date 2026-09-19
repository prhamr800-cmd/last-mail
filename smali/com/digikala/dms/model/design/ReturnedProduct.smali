###### Class com.digikala.dms.model.design.ReturnedProduct (com.digikala.dms.model.design.ReturnedProduct)
.class public Lcom/digikala/dms/model/design/ReturnedProduct;
.super Lio/realm/RealmObject;
.source "ReturnedProduct.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;


# instance fields
.field private Count:Ljava/lang/String;

.field private ItemBatchId:I

.field private OrderItemId:Ljava/lang/String;

.field private ReasonId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 18
    :cond_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "orderItemId"    # Ljava/lang/String;
    .param p2, "reasonId"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/String;
    .param p4, "itemBatchId"    # I

    .line 20
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 21
    :cond_d
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmSet$ReasonId(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p3}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmSet$Count(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p4}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmSet$ItemBatchId(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmGet$Count()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemBatchId()I
    .registers 2

    .line 52
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmGet$ItemBatchId()I

    move-result v0

    return v0
.end method

.method public getOrderItemId()Ljava/lang/String;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonId()Ljava/lang/String;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$Count()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/ReturnedProduct;->Count:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$ItemBatchId()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/design/ReturnedProduct;->ItemBatchId:I

    return v0
.end method

.method public realmGet$OrderItemId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/ReturnedProduct;->OrderItemId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$ReasonId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/design/ReturnedProduct;->ReasonId:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$Count(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/ReturnedProduct;->Count:Ljava/lang/String;

    return-void
.end method

.method public realmSet$ItemBatchId(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/design/ReturnedProduct;->ItemBatchId:I

    return-void
.end method

.method public realmSet$OrderItemId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/ReturnedProduct;->OrderItemId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$ReasonId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/design/ReturnedProduct;->ReasonId:Ljava/lang/String;

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .registers 2
    .param p1, "count"    # Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmSet$Count(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setItemBatchId(I)V
    .registers 2
    .param p1, "itemBatchId"    # I

    .line 56
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmSet$ItemBatchId(I)V

    .line 57
    return-void
.end method

.method public setOrderItemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "OrderItemId"    # Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public setReasonId(Ljava/lang/String;)V
    .registers 2
    .param p1, "reasonId"    # Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/design/ReturnedProduct;->realmSet$ReasonId(Ljava/lang/String;)V

    .line 41
    return-void
.end method
