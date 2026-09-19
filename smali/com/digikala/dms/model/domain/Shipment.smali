###### Class com.digikala.dms.model.domain.Shipment (com.digikala.dms.model.domain.Shipment)
.class public Lcom/digikala/dms/model/domain/Shipment;
.super Lio/realm/RealmObject;
.source "Shipment.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_ShipmentRealmProxyInterface;


# static fields
.field public static final COLUMN_ORDER_ID:Ljava/lang/String; = "orderId"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TUPLE_IS_SYNCED_WITH_SERVER:Ljava/lang/String; = "tupleIsSyncedWithServer"

.field public static final STATUS_DELIVERED_FULL:I = 0x5

.field public static final STATUS_DELIVERED_PARTIAL:I = 0x7

.field public static final STATUS_LEFT:I = 0x9

.field public static final STATUS_MISSED_CALL:I = 0x8

.field public static final STATUS_OPEN:I = 0x1

.field public static final STATUS_PAYMENT_CASH_ON_DELIVERY:I = 0xc

.field public static final STATUS_PAYMENT_CLEARED:I = 0xb

.field public static final STATUS_RETURNED:I = 0x6


# instance fields
.field private FinalPayableAmount:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FinalPayableAmount"
    .end annotation
.end field

.field private PaymentMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentMethod"
    .end annotation
.end field

.field private autoRefundable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "autoRefundable"
    .end annotation
.end field

.field private basketCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalCount"
    .end annotation
.end field

.field private basketItems:Lio/realm/RealmList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            ">;"
        }
    .end annotation
.end field

.field private cardNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardNumber"
    .end annotation
.end field

.field private cardTypeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardTypeId"
    .end annotation
.end field

.field private comment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment"
    .end annotation
.end field

.field private confirmLocation:Lcom/digikala/dms/model/domain/LatLong;

.field private confirmTime:Ljava/lang/String;

.field private customerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerName"
    .end annotation
.end field

.field private customerPhoneNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerPhoneNo"
    .end annotation
.end field

.field private deliveryAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeliveryAddress"
    .end annotation
.end field

.field private deliveryLatLong:Lcom/digikala/dms/model/domain/LatLong;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LatLong"
    .end annotation
.end field

.field private deliveryTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeliveryTime"
    .end annotation
.end field

.field private invoiceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InvoiceId"
    .end annotation
.end field

.field private isFmcg:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsFmcg"
    .end annotation
.end field

.field private orderId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ShipmentId"
    .end annotation
.end field

.field private payableAmount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AmountPayable"
    .end annotation
.end field

.field private paymentStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentStatus"
    .end annotation
.end field

.field private podCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Pod"
    .end annotation
.end field

.field private priority:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Priority"
    .end annotation
.end field

.field private recipientName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RecipientName"
    .end annotation
.end field

.field private recipientPhoneNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RecipientPhoneNo"
    .end annotation
.end field

.field private rejectReasonId:I

.field private remainingAmount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RemainingAmount"
    .end annotation
.end field

.field private returnedProducts:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation
.end field

.field private shippingCostConfig:Lio/realm/RealmList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ShippingCostConfig"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShippingCostConfig;",
            ">;"
        }
    .end annotation
.end field

.field private signature:Ljava/lang/String;

.field private status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Status"
    .end annotation
.end field

.field private tupleIsSyncedWithServer:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 97
    :cond_d
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$basketItems(Lio/realm/RealmList;)V

    .line 100
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$shippingCostConfig(Lio/realm/RealmList;)V

    return-void
.end method

.method public static getColumnOrderId()Ljava/lang/String;
    .registers 1

    .line 116
    const-string v0, "orderId"

    return-object v0
.end method


# virtual methods
.method public getAutoRefundable()Ljava/lang/Boolean;
    .registers 2

    .line 108
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$autoRefundable()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getBasketCount()I
    .registers 2

    .line 128
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$basketCount()I

    move-result v0

    return v0
.end method

.method public getBasketItems()Lio/realm/RealmList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            ">;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$basketItems()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .registers 2

    .line 343
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$cardNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCardTypeId()Ljava/lang/String;
    .registers 2

    .line 335
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$cardTypeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 351
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfirmLocation()Lcom/digikala/dms/model/domain/LatLong;
    .registers 2

    .line 319
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$confirmLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    return-object v0
.end method

.method public getConfirmTime()Ljava/lang/String;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$confirmTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerName()Ljava/lang/String;
    .registers 2

    .line 207
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$customerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerPhoneNo()Ljava/lang/String;
    .registers 2

    .line 215
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$customerPhoneNo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryAddress()Ljava/lang/String;
    .registers 2

    .line 247
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$deliveryAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;
    .registers 2

    .line 255
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$deliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    return-object v0
.end method

.method public getDeliveryTime()Ljava/lang/String;
    .registers 2

    .line 239
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$deliveryTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFinalPayableAmount()Ljava/lang/Long;
    .registers 2

    .line 375
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$FinalPayableAmount()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getFmcg()Ljava/lang/Boolean;
    .registers 2

    .line 383
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$isFmcg()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getInvoiceId()Ljava/lang/String;
    .registers 2

    .line 167
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$invoiceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    .line 151
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$orderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayableAmount()J
    .registers 3

    .line 191
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$payableAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPaymentMethod()Ljava/lang/String;
    .registers 2

    .line 367
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$PaymentMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentStatus()I
    .registers 2

    .line 183
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$paymentStatus()I

    move-result v0

    return v0
.end method

.method public getPodCode()Ljava/lang/String;
    .registers 2

    .line 159
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$podCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .registers 2

    .line 175
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$priority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientName()Ljava/lang/String;
    .registers 2

    .line 223
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$recipientName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientPhoneNo()Ljava/lang/String;
    .registers 2

    .line 231
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$recipientPhoneNo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRejectReasonId()I
    .registers 2

    .line 279
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$rejectReasonId()I

    move-result v0

    return v0
.end method

.method public getRemainingAmount()J
    .registers 3

    .line 199
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$remainingAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReturnedProducts()Lio/realm/RealmList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$returnedProducts()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getShippingCostConfig()Lio/realm/RealmList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShippingCostConfig;",
            ">;"
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$shippingCostConfig()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 295
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$signature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 271
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$status()I

    move-result v0

    return v0
.end method

.method public isTupleIsSyncedWithServer()Z
    .registers 2

    .line 287
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Shipment;->realmGet$tupleIsSyncedWithServer()Z

    move-result v0

    return v0
.end method

.method public realmGet$FinalPayableAmount()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->FinalPayableAmount:Ljava/lang/Long;

    return-object v0
.end method

.method public realmGet$PaymentMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->PaymentMethod:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$autoRefundable()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->autoRefundable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$basketCount()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/domain/Shipment;->basketCount:I

    return v0
.end method

.method public realmGet$basketItems()Lio/realm/RealmList;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->basketItems:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$cardNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$cardTypeId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->cardTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$comment()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$confirmLocation()Lcom/digikala/dms/model/domain/LatLong;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->confirmLocation:Lcom/digikala/dms/model/domain/LatLong;

    return-object v0
.end method

.method public realmGet$confirmTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->confirmTime:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$customerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->customerName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$customerPhoneNo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->customerPhoneNo:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$deliveryAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->deliveryAddress:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$deliveryLatLong()Lcom/digikala/dms/model/domain/LatLong;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->deliveryLatLong:Lcom/digikala/dms/model/domain/LatLong;

    return-object v0
.end method

.method public realmGet$deliveryTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->deliveryTime:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$invoiceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->invoiceId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$isFmcg()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->isFmcg:Ljava/lang/Boolean;

    return-object v0
.end method

.method public realmGet$orderId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$payableAmount()J
    .registers 3

    iget-wide v0, p0, Lcom/digikala/dms/model/domain/Shipment;->payableAmount:J

    return-wide v0
.end method

.method public realmGet$paymentStatus()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/domain/Shipment;->paymentStatus:I

    return v0
.end method

.method public realmGet$podCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->podCode:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$priority()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$recipientName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->recipientName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$recipientPhoneNo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->recipientPhoneNo:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$rejectReasonId()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/domain/Shipment;->rejectReasonId:I

    return v0
.end method

.method public realmGet$remainingAmount()J
    .registers 3

    iget-wide v0, p0, Lcom/digikala/dms/model/domain/Shipment;->remainingAmount:J

    return-wide v0
.end method

.method public realmGet$returnedProducts()Lio/realm/RealmList;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->returnedProducts:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$shippingCostConfig()Lio/realm/RealmList;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->shippingCostConfig:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$signature()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Shipment;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$status()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/domain/Shipment;->status:I

    return v0
.end method

.method public realmGet$tupleIsSyncedWithServer()Z
    .registers 2

    iget-boolean v0, p0, Lcom/digikala/dms/model/domain/Shipment;->tupleIsSyncedWithServer:Z

    return v0
.end method

.method public realmSet$FinalPayableAmount(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->FinalPayableAmount:Ljava/lang/Long;

    return-void
.end method

.method public realmSet$PaymentMethod(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->PaymentMethod:Ljava/lang/String;

    return-void
.end method

.method public realmSet$autoRefundable(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->autoRefundable:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$basketCount(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/domain/Shipment;->basketCount:I

    return-void
.end method

.method public realmSet$basketItems(Lio/realm/RealmList;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->basketItems:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$cardNumber(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->cardNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$cardTypeId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->cardTypeId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->comment:Ljava/lang/String;

    return-void
.end method

.method public realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->confirmLocation:Lcom/digikala/dms/model/domain/LatLong;

    return-void
.end method

.method public realmSet$confirmTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->confirmTime:Ljava/lang/String;

    return-void
.end method

.method public realmSet$customerName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->customerName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$customerPhoneNo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->customerPhoneNo:Ljava/lang/String;

    return-void
.end method

.method public realmSet$deliveryAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->deliveryAddress:Ljava/lang/String;

    return-void
.end method

.method public realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->deliveryLatLong:Lcom/digikala/dms/model/domain/LatLong;

    return-void
.end method

.method public realmSet$deliveryTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->deliveryTime:Ljava/lang/String;

    return-void
.end method

.method public realmSet$invoiceId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->invoiceId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$isFmcg(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->isFmcg:Ljava/lang/Boolean;

    return-void
.end method

.method public realmSet$orderId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->orderId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$payableAmount(J)V
    .registers 3

    iput-wide p1, p0, Lcom/digikala/dms/model/domain/Shipment;->payableAmount:J

    return-void
.end method

.method public realmSet$paymentStatus(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/domain/Shipment;->paymentStatus:I

    return-void
.end method

.method public realmSet$podCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->podCode:Ljava/lang/String;

    return-void
.end method

.method public realmSet$priority(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->priority:Ljava/lang/String;

    return-void
.end method

.method public realmSet$recipientName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->recipientName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$recipientPhoneNo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->recipientPhoneNo:Ljava/lang/String;

    return-void
.end method

.method public realmSet$rejectReasonId(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/domain/Shipment;->rejectReasonId:I

    return-void
.end method

.method public realmSet$remainingAmount(J)V
    .registers 3

    iput-wide p1, p0, Lcom/digikala/dms/model/domain/Shipment;->remainingAmount:J

    return-void
.end method

.method public realmSet$returnedProducts(Lio/realm/RealmList;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->returnedProducts:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$shippingCostConfig(Lio/realm/RealmList;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->shippingCostConfig:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$signature(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Shipment;->signature:Ljava/lang/String;

    return-void
.end method

.method public realmSet$status(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/domain/Shipment;->status:I

    return-void
.end method

.method public realmSet$tupleIsSyncedWithServer(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/digikala/dms/model/domain/Shipment;->tupleIsSyncedWithServer:Z

    return-void
.end method

.method public setAutoRefundable(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "autoRefundable"    # Ljava/lang/Boolean;

    .line 112
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$autoRefundable(Ljava/lang/Boolean;)V

    .line 113
    return-void
.end method

.method public setBasketCount(I)V
    .registers 2
    .param p1, "basketCount"    # I

    .line 132
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$basketCount(I)V

    .line 133
    return-void
.end method

.method public setBasketItems(Lio/realm/RealmList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p1, "basketItems":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/BasketItems;>;"
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$basketItems(Lio/realm/RealmList;)V

    .line 125
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "cardNumber"    # Ljava/lang/String;

    .line 347
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$cardNumber(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public setCardTypeId(Ljava/lang/String;)V
    .registers 2
    .param p1, "cardTypeId"    # Ljava/lang/String;

    .line 339
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$cardTypeId(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .param p1, "comment"    # Ljava/lang/String;

    .line 355
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$comment(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public setConfirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 2
    .param p1, "confirmLocation"    # Lcom/digikala/dms/model/domain/LatLong;

    .line 323
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$confirmLocation(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 324
    return-void
.end method

.method public setConfirmTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "confirmTime"    # Ljava/lang/String;

    .line 315
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$confirmTime(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public setCustomerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "customerName"    # Ljava/lang/String;

    .line 211
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$customerName(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setCustomerPhoneNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "customerPhoneNo"    # Ljava/lang/String;

    .line 219
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$customerPhoneNo(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public setDeliveryAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "deliveryAddress"    # Ljava/lang/String;

    .line 251
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$deliveryAddress(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setDeliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 2
    .param p1, "deliveryLatLong"    # Lcom/digikala/dms/model/domain/LatLong;

    .line 259
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$deliveryLatLong(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 260
    return-void
.end method

.method public setDeliveryTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "deliveryTime"    # Ljava/lang/String;

    .line 243
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$deliveryTime(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setFinalPayableAmount(Ljava/lang/Long;)V
    .registers 2
    .param p1, "FinalPayableAmount"    # Ljava/lang/Long;

    .line 379
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$FinalPayableAmount(Ljava/lang/Long;)V

    .line 380
    return-void
.end method

.method public setFmcg(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "fmcg"    # Ljava/lang/Boolean;

    .line 387
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$isFmcg(Ljava/lang/Boolean;)V

    .line 388
    return-void
.end method

.method public setInvoiceId(Ljava/lang/String;)V
    .registers 2
    .param p1, "invoiceId"    # Ljava/lang/String;

    .line 171
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$invoiceId(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderId"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$orderId(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public setPayableAmount(J)V
    .registers 3
    .param p1, "payableAmount"    # J

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$payableAmount(J)V

    .line 196
    return-void
.end method

.method public setPaymentMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "PaymentMethod"    # Ljava/lang/String;

    .line 371
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$PaymentMethod(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public setPaymentStatus(I)V
    .registers 2
    .param p1, "paymentStatus"    # I

    .line 187
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$paymentStatus(I)V

    .line 188
    return-void
.end method

.method public setPodCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "podCode"    # Ljava/lang/String;

    .line 163
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$podCode(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .registers 2
    .param p1, "priority"    # Ljava/lang/String;

    .line 179
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$priority(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public setRecipientName(Ljava/lang/String;)V
    .registers 2
    .param p1, "recipientName"    # Ljava/lang/String;

    .line 227
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$recipientName(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setRecipientPhoneNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "recipientPhoneNo"    # Ljava/lang/String;

    .line 235
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$recipientPhoneNo(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setRejectReasonId(I)V
    .registers 2
    .param p1, "rejectReasonId"    # I

    .line 283
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$rejectReasonId(I)V

    .line 284
    return-void
.end method

.method public setRemainingAmount(J)V
    .registers 3
    .param p1, "remainingAmount"    # J

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$remainingAmount(J)V

    .line 204
    return-void
.end method

.method public setReturnedProducts(Lio/realm/RealmList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;)V"
        }
    .end annotation

    .line 331
    .local p1, "returnedProducts":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/design/SerialItems;>;"
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$returnedProducts(Lio/realm/RealmList;)V

    .line 332
    return-void
.end method

.method public setShippingCostConfig(Lio/realm/RealmList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShippingCostConfig;",
            ">;)V"
        }
    .end annotation

    .line 395
    .local p1, "shippingCostConfig":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShippingCostConfig;>;"
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$shippingCostConfig(Lio/realm/RealmList;)V

    .line 396
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2
    .param p1, "signature"    # Ljava/lang/String;

    .line 299
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$signature(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 275
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$status(I)V

    .line 276
    return-void
.end method

.method public setTupleIsSyncedWithServer(Z)V
    .registers 2
    .param p1, "tupleIsSyncedWithServer"    # Z

    .line 291
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Shipment;->realmSet$tupleIsSyncedWithServer(Z)V

    .line 292
    return-void
.end method
