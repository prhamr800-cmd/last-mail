###### Class com.digikala.dms.model.domain.BasketItems (com.digikala.dms.model.domain.BasketItems)
.class public Lcom/digikala/dms/model/domain/BasketItems;
.super Lio/realm/RealmObject;
.source "BasketItems.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;


# instance fields
.field private basketId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field private orderItems:Lio/realm/RealmList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderItems"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
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
.method public getBasketId()Ljava/lang/String;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/BasketItems;->realmGet$basketId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderItems()Lio/realm/RealmList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/BasketItems;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$basketId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/BasketItems;->basketId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$orderItems()Lio/realm/RealmList;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/BasketItems;->orderItems:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmSet$basketId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/BasketItems;->basketId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$orderItems(Lio/realm/RealmList;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/BasketItems;->orderItems:Lio/realm/RealmList;

    return-void
.end method

.method public setBasketId(Ljava/lang/String;)V
    .registers 2
    .param p1, "basketId"    # Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/BasketItems;->realmSet$basketId(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public setOrderItems(Lio/realm/RealmList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "orderItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/BasketItems;->realmSet$orderItems(Lio/realm/RealmList;)V

    .line 30
    return-void
.end method
