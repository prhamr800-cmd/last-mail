###### Class com.digikala.dms.helper.firebase.notification.remotoperation.RemoteOperationFactory (com.digikala.dms.helper.firebase.notification.remotoperation.RemoteOperationFactory)
.class public Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemoteOperationFactory;
.super Ljava/lang/Object;
.source "RemoteOperationFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/IRemoteOperationTask;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, "task":Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/IRemoteOperationTask;
    sget-object v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->Message:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    invoke-virtual {v1}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 22
    new-instance v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/MessageRemoteOperationTask;

    invoke-direct {v1}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/MessageRemoteOperationTask;-><init>()V

    move-object v0, v1

    goto :goto_4c

    .line 23
    :cond_14
    sget-object v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->UpdateShipment:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    invoke-virtual {v1}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 24
    new-instance v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/UpdateShipmentRemoteOperationTask;

    invoke-direct {v1}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/UpdateShipmentRemoteOperationTask;-><init>()V

    move-object v0, v1

    goto :goto_4c

    .line 25
    :cond_27
    sget-object v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->UpdatePriority:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    invoke-virtual {v1}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 26
    new-instance v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/UpdatePriorityRemoteOperationTask;

    invoke-direct {v1}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/UpdatePriorityRemoteOperationTask;-><init>()V

    move-object v0, v1

    goto :goto_4c

    .line 27
    :cond_3a
    sget-object v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->CancelShipment:Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;

    invoke-virtual {v1}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemotServerOperationStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 28
    new-instance v1, Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/CancelShipmentRemoteOperationTask;

    invoke-direct {v1}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/CancelShipmentRemoteOperationTask;-><init>()V

    move-object v0, v1

    .line 31
    :cond_4c
    :goto_4c
    return-object v0
.end method
