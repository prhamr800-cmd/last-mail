###### Class io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface (io.realm.com_digikala_dms_model_domain_ShipmentRealmProxyInterface)
.class public interface abstract Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_ShipmentRealmProxyInterface.java"


# virtual methods
.method public abstract realmGet$FinalPayableAmount()Ljava/lang/Long;
.end method

.method public abstract realmGet$PaymentMethod()Ljava/lang/String;
.end method

.method public abstract realmGet$autoRefundable()Ljava/lang/Boolean;
.end method

.method public abstract realmGet$basketCount()I
.end method

.method public abstract realmGet$basketItems()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$cardNumber()Ljava/lang/String;
.end method

.method public abstract realmGet$cardTypeId()Ljava/lang/String;
.end method

.method public abstract realmGet$comment()Ljava/lang/String;
.end method

.method public abstract realmGet$confirmLocation()Lcom/digikala/dms/model/domain/LatLong;
.end method

.method public abstract realmGet$confirmTime()Ljava/lang/String;
.end method

.method public abstract realmGet$customerName()Ljava/lang/String;
.end method

.method public abstract realmGet$customerPhoneNo()Ljava/lang/String;
.end method

.method public abstract realmGet$deliveryAddress()Ljava/lang/String;
.end method

.method public abstract realmGet$deliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;
.end method

.method public abstract realmGet$deliveryTime()Ljava/lang/String;
.end method

.method public abstract realmGet$invoiceId()Ljava/lang/String;
.end method

.method public abstract realmGet$isFmcg()Ljava/lang/Boolean;
.end method

.method public abstract realmGet$orderId()Ljava/lang/String;
.end method

.method public abstract realmGet$payableAmount()J
.end method

.method public abstract realmGet$paymentStatus()I
.end method

.method public abstract realmGet$podCode()Ljava/lang/String;
.end method

.method public abstract realmGet$priority()Ljava/lang/String;
.end method

.method public abstract realmGet$recipientName()Ljava/lang/String;
.end method

.method public abstract realmGet$recipientPhoneNo()Ljava/lang/String;
.end method

.method public abstract realmGet$rejectReasonId()I
.end method

.method public abstract realmGet$remainingAmount()J
.end method

.method public abstract realmGet$returnedProducts()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$shippingCostConfig()Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShippingCostConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract realmGet$signature()Ljava/lang/String;
.end method

.method public abstract realmGet$status()I
.end method

.method public abstract realmGet$tupleIsSyncedWithServer()Z
.end method

.method public abstract realmSet$FinalPayableAmount(Ljava/lang/Long;)V
.end method

.method public abstract realmSet$PaymentMethod(Ljava/lang/String;)V
.end method

.method public abstract realmSet$autoRefundable(Ljava/lang/Boolean;)V
.end method

.method public abstract realmSet$basketCount(I)V
.end method

.method public abstract realmSet$basketItems(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$cardNumber(Ljava/lang/String;)V
.end method

.method public abstract realmSet$cardTypeId(Ljava/lang/String;)V
.end method

.method public abstract realmSet$comment(Ljava/lang/String;)V
.end method

.method public abstract realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V
.end method

.method public abstract realmSet$confirmTime(Ljava/lang/String;)V
.end method

.method public abstract realmSet$customerName(Ljava/lang/String;)V
.end method

.method public abstract realmSet$customerPhoneNo(Ljava/lang/String;)V
.end method

.method public abstract realmSet$deliveryAddress(Ljava/lang/String;)V
.end method

.method public abstract realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V
.end method

.method public abstract realmSet$deliveryTime(Ljava/lang/String;)V
.end method

.method public abstract realmSet$invoiceId(Ljava/lang/String;)V
.end method

.method public abstract realmSet$isFmcg(Ljava/lang/Boolean;)V
.end method

.method public abstract realmSet$orderId(Ljava/lang/String;)V
.end method

.method public abstract realmSet$payableAmount(J)V
.end method

.method public abstract realmSet$paymentStatus(I)V
.end method

.method public abstract realmSet$podCode(Ljava/lang/String;)V
.end method

.method public abstract realmSet$priority(Ljava/lang/String;)V
.end method

.method public abstract realmSet$recipientName(Ljava/lang/String;)V
.end method

.method public abstract realmSet$recipientPhoneNo(Ljava/lang/String;)V
.end method

.method public abstract realmSet$rejectReasonId(I)V
.end method

.method public abstract realmSet$remainingAmount(J)V
.end method

.method public abstract realmSet$returnedProducts(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$shippingCostConfig(Lio/realm/RealmList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShippingCostConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract realmSet$signature(Ljava/lang/String;)V
.end method

.method public abstract realmSet$status(I)V
.end method

.method public abstract realmSet$tupleIsSyncedWithServer(Z)V
.end method
