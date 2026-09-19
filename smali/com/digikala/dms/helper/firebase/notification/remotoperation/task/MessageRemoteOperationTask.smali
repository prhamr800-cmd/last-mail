###### Class com.digikala.dms.helper.firebase.notification.remotoperation.task.MessageRemoteOperationTask (com.digikala.dms.helper.firebase.notification.remotoperation.task.MessageRemoteOperationTask)
.class public Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/MessageRemoteOperationTask;
.super Ljava/lang/Object;
.source "MessageRemoteOperationTask.java"

# interfaces
.implements Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/IRemoteOperationTask;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    .local p1, "dataPayLoad":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "RemoteOperationTask"

    const-string v1, "execute: Message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/ServerMessages;-><init>()V

    .line 24
    .local v0, "message":Lcom/digikala/dms/model/domain/ServerMessages;
    const-string v1, "id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/ServerMessages;->setId(Ljava/lang/String;)V

    .line 25
    const-string/jumbo v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/ServerMessages;->setTitle(Ljava/lang/String;)V

    .line 26
    const-string v1, "message"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/digikala/dms/model/domain/ServerMessages;->setMessage(Ljava/lang/String;)V

    .line 27
    const-string v1, "date"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/digikala/dms/model/domain/ServerMessages;->setDate(J)V

    .line 29
    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ServerMessages;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ServerMessages;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ServerMessages;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 34
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    .line 36
    .local v1, "realm":Lio/realm/Realm;
    invoke-virtual {v1}, Lio/realm/Realm;->beginTransaction()V

    .line 37
    const-class v2, Lcom/digikala/dms/model/domain/ServerMessages;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/ServerMessages;

    .line 38
    .local v2, "realmMessage":Lcom/digikala/dms/model/domain/ServerMessages;
    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ServerMessages;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/digikala/dms/model/domain/ServerMessages;->setId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ServerMessages;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/digikala/dms/model/domain/ServerMessages;->setTitle(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ServerMessages;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/digikala/dms/model/domain/ServerMessages;->setMessage(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcom/digikala/dms/model/domain/ServerMessages;->getDate()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/digikala/dms/model/domain/ServerMessages;->setDate(J)V

    .line 42
    invoke-virtual {v1}, Lio/realm/Realm;->commitTransaction()V

    .line 43
    return-void

    .line 30
    .end local v1    # "realm":Lio/realm/Realm;
    .end local v2    # "realmMessage":Lcom/digikala/dms/model/domain/ServerMessages;
    :cond_7e
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Some fields of Message are null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
