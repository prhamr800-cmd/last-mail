###### Class com.digikala.dms.model.design.SyncCandidateShipment (com.digikala.dms.model.design.SyncCandidateShipment)
.class public Lcom/digikala/dms/model/design/SyncCandidateShipment;
.super Ljava/lang/Object;
.source "SyncCandidateShipment.java"


# instance fields
.field private CardNumber:Ljava/lang/String;

.field private CardTypeId:Ljava/lang/String;

.field private Comment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Description"
    .end annotation
.end field

.field private DeliveryDateTime:Ljava/lang/String;

.field private FinalPayableAmount:Ljava/lang/Long;

.field private Latitude:D

.field private Longitude:D

.field private OrderId:Ljava/lang/String;

.field private PackId:Ljava/lang/String;

.field private PaymentMethod:Ljava/lang/String;

.field private ReasonId:I

.field private SerialOrBatchItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/NonRealmSerialItems;",
            ">;"
        }
    .end annotation
.end field

.field private Signature:Ljava/lang/String;

.field private Status:I

.field private UserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardNumber()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardTypeId()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->CardTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->Comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryDateTime()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->DeliveryDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalPayableAmount()Ljava/lang/Long;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->FinalPayableAmount:Ljava/lang/Long;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->Latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->Longitude:D

    return-wide v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->OrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackId()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->PackId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayableMethod()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->PaymentMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonId()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->ReasonId:I

    return v0
.end method

.method public getSerialOrBatchItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/NonRealmSerialItems;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->SerialOrBatchItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->Signature:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->Status:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->UserId:Ljava/lang/String;

    return-object v0
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "cardNumber"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->CardNumber:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCardTypeId(Ljava/lang/String;)V
    .registers 2
    .param p1, "cardTypeId"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->CardTypeId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .param p1, "comment"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->Comment:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setDeliveryDateTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "deliveryDateTime"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->DeliveryDateTime:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setFinalPayableAmount(Ljava/lang/Long;)V
    .registers 2
    .param p1, "FinalPayableAmount"    # Ljava/lang/Long;

    .line 141
    iput-object p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->FinalPayableAmount:Ljava/lang/Long;

    .line 142
    return-void
.end method

.method public setLatitude(D)V
    .registers 3
    .param p1, "latitude"    # D

    .line 101
    iput-wide p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->Latitude:D

    .line 102
    return-void
.end method

.method public setLongitude(D)V
    .registers 3
    .param p1, "longitude"    # D

    .line 109
    iput-wide p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->Longitude:D

    .line 110
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderId"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->OrderId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPackId(Ljava/lang/String;)V
    .registers 2
    .param p1, "packId"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->PackId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setPayableMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "PaymentMethod"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->PaymentMethod:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setReasonId(I)V
    .registers 2
    .param p1, "reasonId"    # I

    .line 85
    iput p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->ReasonId:I

    .line 86
    return-void
.end method

.method public setSerialOrBatchItems(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/NonRealmSerialItems;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "serialOrBatchItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/NonRealmSerialItems;>;"
    iput-object p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->SerialOrBatchItems:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2
    .param p1, "signature"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->Signature:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 53
    iput p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->Status:I

    .line 54
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .param p1, "userId"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/digikala/dms/model/design/SyncCandidateShipment;->UserId:Ljava/lang/String;

    .line 62
    return-void
.end method
