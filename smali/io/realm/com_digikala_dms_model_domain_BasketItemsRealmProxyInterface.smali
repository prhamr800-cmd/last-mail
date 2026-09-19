###### Class io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxyInterface (io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxyInterface)
.class public interface abstract Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_BasketItemsRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$basketId()Ljava/lang/String;
.end method

.method public abstract realmGet$orderItems()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmSet$basketId(Ljava/lang/String;)V
.end method

.method public abstract realmSet$orderItems(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            ">;)V"
        }
    .end annotation
.end method
