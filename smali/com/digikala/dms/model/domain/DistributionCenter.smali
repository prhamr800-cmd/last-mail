###### Class com.digikala.dms.model.domain.DistributionCenter (com.digikala.dms.model.domain.DistributionCenter)
.class public Lcom/digikala/dms/model/domain/DistributionCenter;
.super Lio/realm/RealmObject;
.source "DistributionCenter.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_DistributionCenterRealmProxyInterface;


# instance fields
.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field private latLong:Lcom/digikala/dms/model/domain/LatLong;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LatLong"
    .end annotation
.end field

.field private managerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ManagerName"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
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
.method public getId()I
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/DistributionCenter;->realmGet$id()I

    move-result v0

    return v0
.end method

.method public getLatLong()Lcom/digikala/dms/model/domain/LatLong;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/DistributionCenter;->realmGet$latLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/DistributionCenter;->realmGet$managerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/DistributionCenter;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()I
    .registers 2

    iget v0, p0, Lcom/digikala/dms/model/domain/DistributionCenter;->id:I

    return v0
.end method

.method public realmGet$latLong()Lcom/digikala/dms/model/domain/LatLong;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/DistributionCenter;->latLong:Lcom/digikala/dms/model/domain/LatLong;

    return-object v0
.end method

.method public realmGet$managerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/DistributionCenter;->managerName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/DistributionCenter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$id(I)V
    .registers 2

    iput p1, p0, Lcom/digikala/dms/model/domain/DistributionCenter;->id:I

    return-void
.end method

.method public realmSet$latLong(Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/DistributionCenter;->latLong:Lcom/digikala/dms/model/domain/LatLong;

    return-void
.end method

.method public realmSet$managerName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/DistributionCenter;->managerName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/DistributionCenter;->title:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 54
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/DistributionCenter;->realmSet$id(I)V

    .line 55
    return-void
.end method

.method public setLatLong(Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 2
    .param p1, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;

    .line 46
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/DistributionCenter;->realmSet$latLong(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 47
    return-void
.end method

.method public setManagerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "managerName"    # Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/DistributionCenter;->realmSet$managerName(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/DistributionCenter;->realmSet$title(Ljava/lang/String;)V

    .line 31
    return-void
.end method
