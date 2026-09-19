###### Class com.digikala.dms.model.domain.RejectReason (com.digikala.dms.model.domain.RejectReason)
.class public Lcom/digikala/dms/model/domain/RejectReason;
.super Lio/realm/RealmObject;
.source "RejectReason.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_RejectReasonRealmProxyInterface;


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Title"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field


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

    .line 13
    :cond_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 16
    :cond_d
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/RejectReason;->realmSet$title(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/digikala/dms/model/domain/RejectReason;->realmSet$id(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/RejectReason;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/RejectReason;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/RejectReason;->realmGet$type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/RejectReason;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/RejectReason;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/RejectReason;->type:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/RejectReason;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/RejectReason;->title:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/RejectReason;->type:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/RejectReason;->realmSet$id(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 34
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/RejectReason;->realmSet$title(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/RejectReason;->realmSet$type(Ljava/lang/String;)V

    .line 51
    return-void
.end method
