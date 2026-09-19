###### Class com.digikala.dms.core.NetworkStateBroadcastReceiver (com.digikala.dms.core.NetworkStateBroadcastReceiver)
.class public Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateBroadcastReceiver.java"


# static fields
.field private static final TAG_DEBUG:Ljava/lang/String;

.field private static final TAG_REQUEST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;->TAG_DEBUG:Ljava/lang/String;

    .line 38
    const-class v0, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;->TAG_REQUEST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 35
    sget-object v0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;->TAG_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 49
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1b

    .line 50
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 52
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 54
    invoke-direct {p0}, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;->syncToServer()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1c

    .line 56
    const/4 v2, 0x1

    return v2

    .line 61
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1b
    goto :goto_20

    .line 59
    :catch_1c
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method private syncToServer()V
    .registers 8

    .line 69
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 70
    .local v0, "realm":Lio/realm/Realm;
    const-class v1, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "isLoggedIn"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 72
    .local v1, "loggedInDeliveries":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Courier;>;"
    invoke-virtual {v1}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ne v2, v3, :cond_62

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v3}, Lcom/digikala/dms/model/domain/Courier;->getId()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "deliveryId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/Courier;

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Courier;->getBatch()Lcom/digikala/dms/model/domain/Batch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Batch;->getId()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "batchId":Ljava/lang/String;
    const-class v5, Lcom/digikala/dms/model/domain/Shipment;

    invoke-virtual {v0, v5}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v5

    const-string/jumbo v6, "tupleIsSyncedWithServer"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v2

    .line 77
    .local v2, "notSyncedShipments":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Shipment;>;"
    invoke-virtual {v2}, Lio/realm/RealmResults;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_54

    .end local v2    # "notSyncedShipments":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Shipment;>;"
    goto :goto_61

    .line 81
    .restart local v2    # "notSyncedShipments":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Shipment;>;"
    :cond_54
    new-instance v5, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$1;-><init>(Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;Lio/realm/Realm;Lio/realm/RealmResults;)V

    new-instance v6, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$2;

    invoke-direct {v6, p0}, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$2;-><init>(Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;)V

    invoke-static {v3, v4, v2, v5, v6}, Lcom/digikala/dms/helper/webservice/WebApi;->makeSyncShipmentsWithBackOfficeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 139
    .end local v2    # "notSyncedShipments":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lcom/digikala/dms/model/domain/Shipment;>;"
    :goto_61
    goto :goto_69

    .line 140
    .end local v3    # "deliveryId":Ljava/lang/String;
    .end local v4    # "batchId":Ljava/lang/String;
    :cond_62
    sget-object v2, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;->TAG_DEBUG:Ljava/lang/String;

    const-string v3, "There is no exactly one logged-in delivery!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_69
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 42
    invoke-direct {p0, p1}, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;->isNetworkAvailable(Landroid/content/Context;)Z

    .line 43
    return-void
.end method

###### Class com.digikala.dms.core.NetworkStateBroadcastReceiver.AnonymousClass1 (com.digikala.dms.core.NetworkStateBroadcastReceiver$1)
.class Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "NetworkStateBroadcastReceiver.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;->syncToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;

.field final synthetic val$notSyncedShipments:Lio/realm/RealmResults;

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;Lio/realm/Realm;Lio/realm/RealmResults;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$1;->this$0:Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;

    iput-object p2, p0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$1;->val$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$1;->val$notSyncedShipments:Lio/realm/RealmResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 81
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 84
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "Response"

    const-string v1, "Response Success"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_12
    const-string v0, "Data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 90
    .local v0, "successfullySynced":Z
    if-eqz v0, :cond_4b

    .line 91
    const-string v1, "Success"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "Success"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1}, Lio/realm/Realm;->beginTransaction()V

    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    iget-object v2, p0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$1;->val$notSyncedShipments:Lio/realm/RealmResults;

    invoke-virtual {v2}, Lio/realm/RealmResults;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 97
    iget-object v2, p0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$1;->val$notSyncedShipments:Lio/realm/RealmResults;

    invoke-virtual {v2, v1}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/Shipment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/digikala/dms/model/domain/Shipment;->setTupleIsSyncedWithServer(Z)V

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 99
    .end local v1    # "i":I
    :cond_45
    iget-object v1, p0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1}, Lio/realm/Realm;->commitTransaction()V

    goto :goto_62

    .line 101
    :cond_4b
    const-string v1, "Error"

    const-string v2, "Error1"

    invoke-static {v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "Error"

    const-string v2, "Error1"

    invoke-static {v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsuccessful Sync Process!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_62} :catch_63

    .line 116
    .end local v0    # "successfullySynced":Z
    :goto_62
    goto :goto_c5

    .line 106
    :catch_63
    move-exception v0

    .line 107
    .local v0, "joe":Lorg/json/JSONException;
    if-eqz v0, :cond_9b

    .line 108
    const-string v1, "Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    .line 111
    :cond_9b
    const-string v1, "Error"

    const-string v2, "Json Error"

    invoke-static {v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "Error"

    const-string v2, "Json Error"

    invoke-static {v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_a9
    invoke-static {}, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONObject exception on the response of \"SyncShipmentsWithBackOffice\" request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "joe":Lorg/json/JSONException;
    :goto_c5
    return-void
.end method

###### Class com.digikala.dms.core.NetworkStateBroadcastReceiver.AnonymousClass2 (com.digikala.dms.core.NetworkStateBroadcastReceiver$2)
.class Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "NetworkStateBroadcastReceiver.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;->syncToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver$2;->this$0:Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 121
    if-eqz p1, :cond_6b

    .line 122
    const-string v0, "Response"

    const-string v1, "Response Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "Response"

    const-string v1, "Response Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 127
    :cond_6b
    const-string v0, "Response"

    const-string v1, "Response Error"

    const-string v2, "Volley Error"

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "Response"

    const-string v1, "Response Error"

    const-string v2, "Volley Error"

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "Error"

    const-string v1, "Volley Error"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "Error"

    const-string v1, "Volley Error"

    invoke-static {v0, v1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_8b
    invoke-static {}, Lcom/digikala/dms/core/NetworkStateBroadcastReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot sync shipments with the server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    return-void
.end method
