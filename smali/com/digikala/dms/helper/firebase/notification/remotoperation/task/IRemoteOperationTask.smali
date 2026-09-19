###### Class com.digikala.dms.helper.firebase.notification.remotoperation.task.IRemoteOperationTask (com.digikala.dms.helper.firebase.notification.remotoperation.task.IRemoteOperationTask)
.class public interface abstract Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/IRemoteOperationTask;
.super Ljava/lang/Object;
.source "IRemoteOperationTask.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RemoteOperationTask"


# virtual methods
.method public abstract execute(Ljava/util/Map;)V
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
.end method
