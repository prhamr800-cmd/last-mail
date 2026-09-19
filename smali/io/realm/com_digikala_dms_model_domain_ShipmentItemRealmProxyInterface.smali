###### Class io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface (io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface)
.class public interface abstract Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_ShipmentItemRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$BasketId()Ljava/lang/String;
.end method

.method public abstract realmGet$OrderItemId()Ljava/lang/String;
.end method

.method public abstract realmGet$SerialItemList()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$amountPerQuantity()I
.end method

.method public abstract realmGet$batchItems()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$brandName()Ljava/lang/String;
.end method

.method public abstract realmGet$description()Ljava/lang/String;
.end method

.method public abstract realmGet$rejectReasonId()I
.end method

.method public abstract realmGet$totalCount()I
.end method

.method public abstract realmSet$BasketId(Ljava/lang/String;)V
.end method

.method public abstract realmSet$OrderItemId(Ljava/lang/String;)V
.end method

.method public abstract realmSet$SerialItemList(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$amountPerQuantity(I)V
.end method

.method public abstract realmSet$batchItems(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$brandName(Ljava/lang/String;)V
.end method

.method public abstract realmSet$description(Ljava/lang/String;)V
.end method

.method public abstract realmSet$rejectReasonId(I)V
.end method

.method public abstract realmSet$totalCount(I)V
.end method
