###### Class com.digikala.dms.model.design.LeftShipment (com.digikala.dms.model.design.LeftShipment)
.class public Lcom/digikala/dms/model/design/LeftShipment;
.super Ljava/lang/Object;
.source "LeftShipment.java"


# instance fields
.field private reasonId:Ljava/lang/String;

.field private shipmentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReasonId()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/digikala/dms/model/design/LeftShipment;->reasonId:Ljava/lang/String;

    return-object v0
.end method

.method public getShipmentId()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/digikala/dms/model/design/LeftShipment;->shipmentId:Ljava/lang/String;

    return-object v0
.end method

.method public setReasonId(Ljava/lang/String;)V
    .registers 2
    .param p1, "reasonId"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/digikala/dms/model/design/LeftShipment;->reasonId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setShipmentId(Ljava/lang/String;)V
    .registers 2
    .param p1, "shipmentId"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/digikala/dms/model/design/LeftShipment;->shipmentId:Ljava/lang/String;

    .line 17
    return-void
.end method
