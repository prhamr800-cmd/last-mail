###### Class com.digikala.dms.helper.firebase.notification.remotoperation.task.UpdateShipmentRemoteOperationTask (com.digikala.dms.helper.firebase.notification.remotoperation.task.UpdateShipmentRemoteOperationTask)
.class public Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/UpdateShipmentRemoteOperationTask;
.super Ljava/lang/Object;
.source "UpdateShipmentRemoteOperationTask.java"

# interfaces
.implements Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/IRemoteOperationTask;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/Map;)V
    .registers 4
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

    .line 16
    .local p1, "dataPayLoad":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "RemoteOperationTask"

    const-string v1, "execute: Update Shipment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method
