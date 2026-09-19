###### Class com.digikala.dms.model.domain.ServerMessages (com.digikala.dms.model.domain.ServerMessages)
.class public Lcom/digikala/dms/model/domain/ServerMessages;
.super Lio/realm/RealmObject;
.source "ServerMessages.java"

# interfaces
.implements Lio/realm/com_digikala_dms_model_domain_ServerMessagesRealmProxyInterface;


# instance fields
.field private date:J

.field private id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private seen:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 20
    :cond_d
    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .line 47
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ServerMessages;->realmGet$date()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ServerMessages;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ServerMessages;->realmGet$message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ServerMessages;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSeen()Z
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/digikala/dms/model/domain/ServerMessages;->realmGet$seen()Z

    move-result v0

    return v0
.end method

.method public realmGet$date()J
    .registers 3

    iget-wide v0, p0, Lcom/digikala/dms/model/domain/ServerMessages;->date:J

    return-wide v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/ServerMessages;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$message()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/ServerMessages;->message:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$seen()Z
    .registers 2

    iget-boolean v0, p0, Lcom/digikala/dms/model/domain/ServerMessages;->seen:Z

    return v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/digikala/dms/model/domain/ServerMessages;->title:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$date(J)V
    .registers 3

    iput-wide p1, p0, Lcom/digikala/dms/model/domain/ServerMessages;->date:J

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/ServerMessages;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$message(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/ServerMessages;->message:Ljava/lang/String;

    return-void
.end method

.method public realmSet$seen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/digikala/dms/model/domain/ServerMessages;->seen:Z

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/digikala/dms/model/domain/ServerMessages;->title:Ljava/lang/String;

    return-void
.end method

.method public setDate(J)V
    .registers 3
    .param p1, "date"    # J

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/digikala/dms/model/domain/ServerMessages;->realmSet$date(J)V

    .line 52
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ServerMessages;->realmSet$id(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ServerMessages;->realmSet$message(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setSeen(Z)V
    .registers 2
    .param p1, "seen"    # Z

    .line 59
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ServerMessages;->realmSet$seen(Z)V

    .line 60
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Lcom/digikala/dms/model/domain/ServerMessages;->realmSet$title(Ljava/lang/String;)V

    .line 36
    return-void
.end method
