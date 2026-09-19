###### Class com.digikala.dms.model.domain.ShippingCostConfig (com.digikala.dms.model.domain.ShippingCostConfig)
.class public Lcom/digikala/dms/model/domain/ShippingCostConfig;
.super Lio/realm/RealmObject;
.source "ShippingCostConfig.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_ShippingCostConfigRealmProxyInterface;


# instance fields
.field private shippingCost:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ShippingCost"
    .end annotation
.end field

.field private threshold:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Threshold"
    .end annotation
.end field


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

    .line 17
    :cond_d
    return-void
.end method


# virtual methods
.method public getShippingCost()I
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ShippingCostConfig;->realmGet$shippingCost()I

    move-result v0

    return v0
.end method

.method public getThreshold()I
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ShippingCostConfig;->realmGet$threshold()I

    move-result v0

    return v0
.end method

.method public realmGet$shippingCost()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/domain/ShippingCostConfig;->shippingCost:I

    return v0
.end method

.method public realmGet$threshold()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/domain/ShippingCostConfig;->threshold:I

    return v0
.end method

.method public realmSet$shippingCost(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/domain/ShippingCostConfig;->shippingCost:I

    return-void
.end method

.method public realmSet$threshold(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/domain/ShippingCostConfig;->threshold:I

    return-void
.end method

.method public setShippingCost(I)V
    .registers 2
    .param p1, "shippingCost"    # I

    .line 32
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShippingCostConfig;->realmSet$shippingCost(I)V

    .line 33
    return-void
.end method

.method public setThreshold(I)V
    .registers 2
    .param p1, "threshold"    # I

    .line 24
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ShippingCostConfig;->realmSet$threshold(I)V

    .line 25
    return-void
.end method
