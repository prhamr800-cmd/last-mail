###### Class com.digikala.dms.model.domain.CardType (com.digikala.dms.model.domain.CardType)
.class public Lcom/digikala/dms/model/domain/CardType;
.super Lio/realm/RealmObject;
.source "CardType.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_CardTypeRealmProxyInterface;


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CardTypeId"
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

    .line 21
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 22
    :cond_d
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/CardType;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/CardType;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/CardType;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/CardType;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/CardType;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/CardType;->title:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/CardType;->realmSet$id(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/CardType;->realmSet$title(Ljava/lang/String;)V

    .line 38
    return-void
.end method
