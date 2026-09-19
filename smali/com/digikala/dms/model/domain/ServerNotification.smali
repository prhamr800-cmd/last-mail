###### Class com.digikala.dms.model.domain.ServerNotification (com.digikala.dms.model.domain.ServerNotification)
.class public Lcom/digikala/dms/model/domain/ServerNotification;
.super Lio/realm/RealmObject;
.source "ServerNotification.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_ServerNotificationRealmProxyInterface;


# instance fields
.field private id:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 14
    :cond_d
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 17
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ServerNotification;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ServerNotification;->realmGet$status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/ServerNotification;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/ServerNotification;->status:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/ServerNotification;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/ServerNotification;->status:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ServerNotification;->realmSet$id(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ServerNotification;->realmSet$status(Ljava/lang/String;)V

    .line 30
    return-void
.end method
