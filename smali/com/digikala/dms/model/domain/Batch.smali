###### Class com.digikala.dms.model.domain.Batch (com.digikala.dms.model.domain.Batch)
.class public Lcom/digikala/dms/model/domain/Batch;
.super Lio/realm/RealmObject;
.source "Batch.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_BatchRealmProxyInterface;


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final STATUS_CONFIRMED:I = 0x3


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field private shipments:Lio/realm/RealmList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Orders"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
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
.method public getId()Ljava/lang/String;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Batch;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShipments()Lio/realm/RealmList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Batch;->realmGet$shipments()Lio/realm/RealmList;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/Batch;->realmGet$status()I

    move-result v0

    return v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Batch;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$shipments()Lio/realm/RealmList;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/Batch;->shipments:Lio/realm/RealmList;

    return-object v0
.end method

.method public realmGet$status()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/domain/Batch;->status:I

    return v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Batch;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$shipments(Lio/realm/RealmList;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/Batch;->shipments:Lio/realm/RealmList;

    return-void
.end method

.method public realmSet$status(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/domain/Batch;->status:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Batch;->realmSet$id(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public setShipments(Lio/realm/RealmList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "shipments":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/Shipment;>;"
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Batch;->realmSet$shipments(Lio/realm/RealmList;)V

    .line 48
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 39
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/Batch;->realmSet$status(I)V

    .line 40
    return-void
.end method
