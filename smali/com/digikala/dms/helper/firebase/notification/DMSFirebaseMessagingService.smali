###### Class com.digikala.dms.helper.firebase.notification.DMSFirebaseMessagingService (com.digikala.dms.helper.firebase.notification.DMSFirebaseMessagingService)
.class public Lcom/digikala/dms/helper/firebase/notification/DMSFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "DMSFirebaseMessagingService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/digikala/dms/helper/firebase/notification/DMSFirebaseMessagingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/firebase/notification/DMSFirebaseMessagingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private handleDataMessage(Ljava/util/Map;)V
    .registers 5
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

    .line 58
    .local p1, "dataPayLoad":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/digikala/dms/helper/firebase/notification/DMSFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/RemoteOperationFactory;->create(Ljava/lang/String;)Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/IRemoteOperationTask;

    move-result-object v0

    .line 61
    .local v0, "task":Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/IRemoteOperationTask;
    if-eqz v0, :cond_28

    .line 62
    invoke-interface {v0, p1}, Lcom/digikala/dms/helper/firebase/notification/remotoperation/task/IRemoteOperationTask;->execute(Ljava/util/Map;)V

    .line 64
    :cond_28
    return-void
.end method

.method private handleNotification(Lcom/google/firebase/messaging/RemoteMessage$Notification;)V
    .registers 5
    .param p1, "notification"    # Lcom/google/firebase/messaging/RemoteMessage$Notification;

    .line 68
    sget-object v0, Lcom/digikala/dms/helper/firebase/notification/DMSFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .registers 7
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    .line 37
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 40
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    .line 41
    .local v0, "dataPayLoad":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_31

    .line 43
    :try_start_f
    invoke-direct {p0, v0}, Lcom/digikala/dms/helper/firebase/notification/DMSFirebaseMessagingService;->handleDataMessage(Ljava/util/Map;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 47
    goto :goto_31

    .line 44
    :catch_13
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    sget-object v2, Lcom/digikala/dms/helper/firebase/notification/DMSFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v1

    .line 52
    .local v1, "notification":Lcom/google/firebase/messaging/RemoteMessage$Notification;
    if-eqz v1, :cond_3a

    .line 53
    invoke-direct {p0, v1}, Lcom/digikala/dms/helper/firebase/notification/DMSFirebaseMessagingService;->handleNotification(Lcom/google/firebase/messaging/RemoteMessage$Notification;)V

    .line 55
    :cond_3a
    return-void
.end method
