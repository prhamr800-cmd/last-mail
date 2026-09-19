###### Class com.digikala.dms.model.design.PartialDeliver (com.digikala.dms.model.design.PartialDeliver)
.class public Lcom/digikala/dms/model/design/PartialDeliver;
.super Ljava/lang/Object;
.source "PartialDeliver.java"


# instance fields
.field private CardNumber:Ljava/lang/String;

.field private CardTypeId:Ljava/lang/String;

.field private Comment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Description"
    .end annotation
.end field

.field private FinalPayableAmount:Ljava/lang/Long;

.field private GpsStatus:Ljava/lang/String;

.field private Latitude:Ljava/lang/String;

.field private Longitude:Ljava/lang/String;

.field private OrderId:Ljava/lang/String;

.field private PackId:Ljava/lang/String;

.field private PaymentMethod:Ljava/lang/String;

.field private SerialOrBatchItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation
.end field

.field private Signature:Ljava/lang/String;


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

    .line 78
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardTypeId()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->CardTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->Comment:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalPayableAmount()Ljava/lang/Long;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->FinalPayableAmount:Ljava/lang/Long;

    return-object v0
.end method

.method public getGpsStatus()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->GpsStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->Latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->Longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->OrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackId()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->PackId:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethod()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->PaymentMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialOrBatchItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->SerialOrBatchItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/digikala/dms/model/design/PartialDeliver;->Signature:Ljava/lang/String;

    return-object v0
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "cardNumber"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->CardNumber:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCardTypeId(Ljava/lang/String;)V
    .registers 2
    .param p1, "cardTypeId"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->CardTypeId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2
    .param p1, "comment"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->Comment:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setFinalPayableAmount(Ljava/lang/Long;)V
    .registers 2
    .param p1, "FinalPayableAmount"    # Ljava/lang/Long;

    .line 114
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->FinalPayableAmount:Ljava/lang/Long;

    .line 115
    return-void
.end method

.method public setGpsStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "gpsStatus"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->GpsStatus:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "latitude"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->Latitude:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "longitude"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->Longitude:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderId"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->OrderId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPackId(Ljava/lang/String;)V
    .registers 2
    .param p1, "packId"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->PackId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPaymentMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "PaymentMethod"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->PaymentMethod:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setSerialOrBatchItems(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "serialOrBatchItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/SerialItems;>;"
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->SerialOrBatchItems:Ljava/util/ArrayList;

    .line 99
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2
    .param p1, "signature"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/digikala/dms/model/design/PartialDeliver;->Signature:Ljava/lang/String;

    .line 43
    return-void
.end method
