###### Class com.digikala.dms.helper.webservice.WebApi (com.digikala.dms.helper.webservice.WebApi)
.class public final Lcom/digikala/dms/helper/webservice/WebApi;
.super Ljava/lang/Object;
.source "WebApi.java"


# static fields
.field private static final ENDPOINT_CHANGE_PASSWORD:Ljava/lang/String; = "Account/ChangePassword"

.field public static final ENDPOINT_CONFIRM_SHIPMENTS_BATCH:Ljava/lang/String; = "Driver/DriverConfirm"

.field private static final ENDPOINT_DYNAMIC_SHIPPING_COST:Ljava/lang/String; = "Driver/DynamicShippingCost"

.field private static final ENDPOINT_FINALIZE_SHIPMENTS_BATCH:Ljava/lang/String; = "Driver/Finalize"

.field private static final ENDPOINT_FULL_DELIVER:Ljava/lang/String; = "Driver/CustomerConfirm"

.field private static final ENDPOINT_GET_CONST_VALUES:Ljava/lang/String; = "Driver/ConstantValue"

.field private static final ENDPOINT_GET_RATE:Ljava/lang/String; = "Driver/GetRate"

.field private static final ENDPOINT_GET_SHIPMENT:Ljava/lang/String; = "Order/OrderItem"

.field private static final ENDPOINT_GET_SHIPMENTS:Ljava/lang/String; = "Order/OrderList"

.field private static final ENDPOINT_LEFT_SHIPMENT:Ljava/lang/String; = "Driver/LeftOrder"

.field public static final ENDPOINT_LOGIN:Ljava/lang/String; = "Account/Login"

.field private static final ENDPOINT_LOGOUT:Ljava/lang/String; = "Account/Logout"

.field private static final ENDPOINT_MISSED_CALL:Ljava/lang/String; = "Driver/MissCall"

.field private static final ENDPOINT_PARTIAL_DELIVER:Ljava/lang/String; = "Driver/HalfReturn"

.field private static final ENDPOINT_REJECT_SHIPMENT:Ljava/lang/String; = "Driver/FullReturn"

.field private static final ENDPOINT_SEND_SHIPMENT_PRIORITY:Ljava/lang/String; = "Driver/SetPriority"

.field private static final ENDPOINT_SEND_USER_LOCATION:Ljava/lang/String; = "Driver/TrackLocation"

.field private static final ENDPOINT_SYNC_SHIPMENTS_WITH_BO:Ljava/lang/String; = "Driver/Sync"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 16
    .param p0, "deliveryId"    # Ljava/lang/String;
    .param p1, "Password"    # Ljava/lang/String;
    .param p2, "NewPassword"    # Ljava/lang/String;
    .param p3, "requestTag"    # Ljava/lang/String;
    .param p5, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 675
    .local p4, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Ljava/lang/Boolean;>;"
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 679
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "UserId"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v1, "Password"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v1, "NewPassword"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    new-instance v9, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    const-string v3, "Account/ChangePassword"

    new-instance v1, Lcom/digikala/dms/helper/webservice/WebApi$25;

    invoke-direct {v1}, Lcom/digikala/dms/helper/webservice/WebApi$25;-><init>()V

    .line 688
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApi$25;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v2, 0x1

    move-object v1, v9

    move-object v4, v0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 683
    return-object v9
.end method

.method public static getConstantValueResponse(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 14
    .param p0, "deliveryId"    # Ljava/lang/String;
    .param p1, "requestTag"    # Ljava/lang/String;
    .param p3, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Lcom/digikala/dms/model/design/ConstantValue;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Lcom/digikala/dms/model/design/ConstantValue;",
            ">;"
        }
    .end annotation

    .line 180
    .local p2, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Lcom/digikala/dms/model/design/ConstantValue;>;"
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "TAG"

    const-string v1, "getConstantValueResponse: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Driver/ConstantValue?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/digikala/dms/helper/webservice/WebApi$7;

    invoke-direct {v1}, Lcom/digikala/dms/helper/webservice/WebApi$7;-><init>()V

    .line 188
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApi$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 183
    return-object v0
.end method

.method public static getRateRequest(Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 13
    .param p0, "requestTag"    # Ljava/lang/String;
    .param p2, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Lcom/digikala/dms/model/domain/Rate;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Lcom/digikala/dms/model/domain/Batch;",
            ">;"
        }
    .end annotation

    .line 130
    .local p1, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Lcom/digikala/dms/model/domain/Rate;>;"
    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApi$4;

    invoke-direct {v0}, Lcom/digikala/dms/helper/webservice/WebApi$4;-><init>()V

    .line 131
    invoke-virtual {v0}, Lcom/digikala/dms/helper/webservice/WebApi$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 132
    .local v0, "type":Ljava/lang/reflect/Type;
    const-string/jumbo v1, "tekenTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRateRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v9, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    const-string v3, "Driver/GetRate"

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v1, v9

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    return-object v9
.end method

.method public static makeConfirmBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 14
    .param p0, "batchId"    # Ljava/lang/String;
    .param p1, "requestTag"    # Ljava/lang/String;
    .param p3, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 145
    .local p2, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Ljava/lang/Boolean;>;"
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "CheckPackIdLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DriverConfirm     :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Driver/DriverConfirm?packId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/digikala/dms/helper/webservice/WebApi$5;

    invoke-direct {v1}, Lcom/digikala/dms/helper/webservice/WebApi$5;-><init>()V

    .line 155
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApi$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 150
    return-object v0
.end method

.method public static makeDynamicShippingCost(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 16
    .param p0, "batchId"    # Ljava/lang/String;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 237
    .local p2, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/SerialItems;>;"
    .local p3, "responseListener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApi$9;

    invoke-direct {v0}, Lcom/digikala/dms/helper/webservice/WebApi$9;-><init>()V

    .line 238
    invoke-virtual {v0}, Lcom/digikala/dms/helper/webservice/WebApi$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 240
    .local v0, "paramType":Ljava/lang/reflect/Type;
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/gson/ExclusionStrategy;

    new-instance v3, Lcom/digikala/dms/helper/webservice/WebApi$10;

    invoke-direct {v3}, Lcom/digikala/dms/helper/webservice/WebApi$10;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 241
    invoke-virtual {v1, v2}, Lcom/google/gson/GsonBuilder;->setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 252
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v2, Lcom/digikala/dms/model/design/PartialDeliver;

    invoke-direct {v2}, Lcom/digikala/dms/model/design/PartialDeliver;-><init>()V

    .line 253
    .local v2, "partialDeliver":Lcom/digikala/dms/model/design/PartialDeliver;
    invoke-virtual {v2, p0}, Lcom/digikala/dms/model/design/PartialDeliver;->setPackId(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2, p1}, Lcom/digikala/dms/model/design/PartialDeliver;->setOrderId(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v2, p2}, Lcom/digikala/dms/model/design/PartialDeliver;->setSerialOrBatchItems(Ljava/util/ArrayList;)V

    .line 256
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "gggg":Ljava/lang/String;
    const-string v4, "makeDynamic_Params"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v4, Lcom/digikala/dms/helper/webservice/WebApi$11;

    const-string v7, "https://lg.digikala.com/dms-api/Driver/DynamicShippingCost"

    .line 260
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x1

    move-object v5, v4

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/digikala/dms/helper/webservice/WebApi$11;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 281
    .local v4, "request":Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;
    invoke-static {v4}, Lcom/digikala/dms/helper/webservice/VolleyHelper;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 282
    return-void
.end method

.method public static makeFinalizeBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 15
    .param p0, "batchId"    # Ljava/lang/String;
    .param p1, "requestTag"    # Ljava/lang/String;
    .param p3, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Lcom/digikala/dms/model/domain/Batch;",
            ">;"
        }
    .end annotation

    .line 581
    .local p2, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Ljava/lang/Boolean;>;"
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Driver/Finalize?packId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/digikala/dms/helper/webservice/WebApi$22;

    invoke-direct {v1}, Lcom/digikala/dms/helper/webservice/WebApi$22;-><init>()V

    .line 589
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApi$22;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v3, v0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 584
    return-object v0
.end method

.method public static makeFullDeliverRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 30
    .param p0, "batchId"    # Ljava/lang/String;
    .param p1, "shipmentId"    # Ljava/lang/String;
    .param p2, "cardTypeId"    # Ljava/lang/String;
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "PaymentMethod"    # Ljava/lang/String;
    .param p6, "signature"    # Ljava/lang/String;
    .param p7, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;
    .param p8, "gpsStatus"    # Ljava/lang/String;
    .param p9, "requestTag"    # Ljava/lang/String;
    .param p11, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/model/domain/LatLong;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 198
    .local p10, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    const-string v2, "Request"

    const-string v3, "Request"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "Request"

    const-string v3, "Request"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, ""

    .line 202
    .local v2, "lat":Ljava/lang/String;
    const-string v3, ""

    .line 203
    .local v3, "lng":Ljava/lang/String;
    if-eqz p7, :cond_2c

    .line 204
    invoke-virtual/range {p7 .. p7}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual/range {p7 .. p7}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 208
    :cond_2c
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v5, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "CheckPackIdLog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "full deliver:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v6, "PackId"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v6, "OrderId"

    move-object/from16 v14, p1

    invoke-virtual {v5, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v6, "Signature"

    move-object/from16 v15, p6

    invoke-virtual {v5, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v6, "Latitude"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v6, "Longitude"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v6, "CardTypeId"

    move-object/from16 v13, p2

    invoke-virtual {v5, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v6, "CardNumber"

    move-object/from16 v12, p3

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v6, "Description"

    move-object/from16 v11, p4

    invoke-virtual {v5, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v6, "GpsStatus"

    move-object/from16 v10, p8

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    if-eqz v1, :cond_8d

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8d

    .line 220
    const-string v6, "PaymentMethod"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_8d
    const-string v6, "fulldelivery"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "param:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v16, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    const/4 v7, 0x1

    const-string v8, "Driver/CustomerConfirm"

    new-instance v6, Lcom/digikala/dms/helper/webservice/WebApi$8;

    invoke-direct {v6}, Lcom/digikala/dms/helper/webservice/WebApi$8;-><init>()V

    .line 228
    invoke-virtual {v6}, Lcom/digikala/dms/helper/webservice/WebApi$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v17

    move-object/from16 v6, v16

    move-object v9, v5

    move-object/from16 v10, v17

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v6 .. v13}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 223
    return-object v16
.end method

.method public static makeGetBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 14
    .param p0, "deliveryId"    # Ljava/lang/String;
    .param p1, "requestTag"    # Ljava/lang/String;
    .param p3, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Lcom/digikala/dms/model/domain/Batch;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Lcom/digikala/dms/model/domain/Batch;",
            ">;"
        }
    .end annotation

    .line 112
    .local p2, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Lcom/digikala/dms/model/domain/Batch;>;"
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "TESSST"

    const-string v1, "makeGetBatchRequest called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Order/OrderList?userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/digikala/dms/helper/webservice/WebApi$3;

    invoke-direct {v1}, Lcom/digikala/dms/helper/webservice/WebApi$3;-><init>()V

    .line 121
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApi$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 116
    return-object v0
.end method

.method public static makeGetShipment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 15
    .param p0, "batchId"    # Ljava/lang/String;
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "requestTag"    # Ljava/lang/String;
    .param p4, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;>;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;>;"
        }
    .end annotation

    .line 163
    .local p3, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Ljava/util/ArrayList<Lcom/digikala/dms/model/domain/Shipment;>;>;"
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "CheckPackIdLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDetails     :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Order/OrderItem?orderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&PackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/digikala/dms/helper/webservice/WebApi$6;

    invoke-direct {v1}, Lcom/digikala/dms/helper/webservice/WebApi$6;-><init>()V

    .line 172
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApi$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, v0

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 167
    return-object v0
.end method

.method public static makeLeftShipmentRequest(Ljava/lang/String;Lcom/digikala/dms/model/design/ReturnedShipment;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 22
    .param p0, "batchId"    # Ljava/lang/String;
    .param p1, "returnedShipment"    # Lcom/digikala/dms/model/design/ReturnedShipment;
    .param p2, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;
    .param p3, "gpsStatus"    # Ljava/lang/String;
    .param p4, "requestTag"    # Ljava/lang/String;
    .param p6, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/model/design/ReturnedShipment;",
            "Lcom/digikala/dms/model/domain/LatLong;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 458
    .local p5, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Ljava/lang/Boolean;>;"
    move-object v0, p0

    const-string v1, "Request"

    const-string v2, "Request"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v1, "Request"

    const-string v2, "Request"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v1, "CheckPackIdLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FullReturn   :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v1, ""

    .line 463
    .local v1, "lat":Ljava/lang/String;
    const-string v2, ""

    .line 464
    .local v2, "lng":Ljava/lang/String;
    if-eqz p2, :cond_3f

    .line 465
    invoke-virtual/range {p2 .. p2}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-virtual/range {p2 .. p2}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 469
    :cond_3f
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 471
    .local v4, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "CheckPackIdLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missCall   :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v5, "PackId"

    invoke-virtual {v4, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v5, "OrderId"

    invoke-virtual/range {p1 .. p1}, Lcom/digikala/dms/model/design/ReturnedShipment;->getShipmentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v5, "UnprocessedReasonId"

    invoke-virtual/range {p1 .. p1}, Lcom/digikala/dms/model/design/ReturnedShipment;->getReasonId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v5, "Latitude"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v5, "Longitude"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v5, "GpsStatus"

    move-object/from16 v13, p3

    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v14, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    const/4 v6, 0x1

    const-string v7, "Driver/LeftOrder"

    new-instance v5, Lcom/digikala/dms/helper/webservice/WebApi$18;

    invoke-direct {v5}, Lcom/digikala/dms/helper/webservice/WebApi$18;-><init>()V

    .line 485
    invoke-virtual {v5}, Lcom/digikala/dms/helper/webservice/WebApi$18;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object v5, v14

    move-object v8, v4

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 480
    return-object v14
.end method

.method public static makeLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 20
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "requestTag"    # Ljava/lang/String;
    .param p5, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Lcom/digikala/dms/model/design/LoginResult;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Lcom/digikala/dms/model/design/LoginResult;",
            ">;"
        }
    .end annotation

    .line 75
    .local p4, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Lcom/digikala/dms/model/design/LoginResult;>;"
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApi$1;

    invoke-direct {v0}, Lcom/digikala/dms/helper/webservice/WebApi$1;-><init>()V

    .line 78
    invoke-virtual {v0}, Lcom/digikala/dms/helper/webservice/WebApi$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 79
    .local v0, "type":Ljava/lang/reflect/Type;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v9, v1

    .line 80
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Username"

    move-object v10, p0

    invoke-virtual {v9, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "Password"

    move-object v11, p1

    invoke-virtual {v9, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "VersionName"

    move-object/from16 v12, p2

    invoke-virtual {v9, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeLoginRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v13, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    const-string v3, "Account/Login"

    const/4 v2, 0x1

    move-object v1, v13

    move-object v4, v9

    move-object v5, v0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    return-object v13
.end method

.method public static makeLogoutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 15
    .param p0, "deliveryId"    # Ljava/lang/String;
    .param p1, "requestTag"    # Ljava/lang/String;
    .param p3, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 96
    .local p2, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Ljava/lang/Boolean;>;"
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account/Logout?userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/digikala/dms/helper/webservice/WebApi$2;

    invoke-direct {v1}, Lcom/digikala/dms/helper/webservice/WebApi$2;-><init>()V

    .line 104
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApi$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v3, v0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 99
    return-object v0
.end method

.method public static makeMissedCallRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 23
    .param p0, "batchId"    # Ljava/lang/String;
    .param p1, "shipmentId"    # Ljava/lang/String;
    .param p2, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;
    .param p3, "gpsStatus"    # Ljava/lang/String;
    .param p4, "requestTag"    # Ljava/lang/String;
    .param p6, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/model/domain/LatLong;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 424
    .local p5, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    const-string v1, "Request"

    const-string v2, "Request"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "Request"

    const-string v2, "Request"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v1, ""

    .line 428
    .local v1, "lat":Ljava/lang/String;
    const-string v2, ""

    .line 429
    .local v2, "lng":Ljava/lang/String;
    if-eqz p2, :cond_2a

    .line 430
    invoke-virtual/range {p2 .. p2}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual/range {p2 .. p2}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 434
    :cond_2a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 436
    .local v4, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "CheckPackIdLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missCall   :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v5, "PackId"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v5, "OrderId"

    move-object/from16 v13, p1

    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v5, "Latitude"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v5, "Longitude"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v5, "GpsStatus"

    move-object/from16 v14, p3

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance v15, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    const/4 v6, 0x1

    const-string v7, "Driver/MissCall"

    new-instance v5, Lcom/digikala/dms/helper/webservice/WebApi$17;

    invoke-direct {v5}, Lcom/digikala/dms/helper/webservice/WebApi$17;-><init>()V

    .line 450
    invoke-virtual {v5}, Lcom/digikala/dms/helper/webservice/WebApi$17;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object v5, v15

    move-object v8, v4

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 444
    return-object v15
.end method

.method public static makePartialDeliverRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 36
    .param p0, "batchId"    # Ljava/lang/String;
    .param p1, "shipmentId"    # Ljava/lang/String;
    .param p2, "cardTypeId"    # Ljava/lang/String;
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "PaymentMethod"    # Ljava/lang/String;
    .param p6, "FinalPayableAmount"    # Ljava/lang/Long;
    .param p8, "signature"    # Ljava/lang/String;
    .param p9, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;
    .param p10, "gpsStatus"    # Ljava/lang/String;
    .param p11, "requestTag"    # Ljava/lang/String;
    .param p13, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/model/domain/LatLong;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 288
    .local p7, "returnedProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/SerialItems;>;"
    .local p12, "responseListener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    const-string v2, "Request"

    const-string v3, "Request"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v2, "Request"

    const-string v3, "Request"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v2, Lcom/digikala/dms/helper/webservice/WebApi$12;

    invoke-direct {v2}, Lcom/digikala/dms/helper/webservice/WebApi$12;-><init>()V

    .line 292
    invoke-virtual {v2}, Lcom/digikala/dms/helper/webservice/WebApi$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 294
    .local v2, "paramType":Ljava/lang/reflect/Type;
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/gson/ExclusionStrategy;

    new-instance v5, Lcom/digikala/dms/helper/webservice/WebApi$13;

    invoke-direct {v5}, Lcom/digikala/dms/helper/webservice/WebApi$13;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 295
    invoke-virtual {v3, v4}, Lcom/google/gson/GsonBuilder;->setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    .line 305
    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 307
    .local v3, "gson":Lcom/google/gson/Gson;
    const-string v4, ""

    .line 308
    .local v4, "lat":Ljava/lang/String;
    const-string v5, ""

    .line 309
    .local v5, "lng":Ljava/lang/String;
    if-eqz p9, :cond_4d

    .line 310
    invoke-virtual/range {p9 .. p9}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual/range {p9 .. p9}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    .line 314
    :cond_4d
    new-instance v7, Lcom/digikala/dms/model/design/PartialDeliver;

    invoke-direct {v7}, Lcom/digikala/dms/model/design/PartialDeliver;-><init>()V

    .line 315
    .local v7, "partialDeliver":Lcom/digikala/dms/model/design/PartialDeliver;
    move-object/from16 v8, p0

    invoke-virtual {v7, v8}, Lcom/digikala/dms/model/design/PartialDeliver;->setPackId(Ljava/lang/String;)V

    .line 316
    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Lcom/digikala/dms/model/design/PartialDeliver;->setOrderId(Ljava/lang/String;)V

    .line 317
    move-object/from16 v10, p7

    invoke-virtual {v7, v10}, Lcom/digikala/dms/model/design/PartialDeliver;->setSerialOrBatchItems(Ljava/util/ArrayList;)V

    .line 318
    move-object/from16 v11, p8

    invoke-virtual {v7, v11}, Lcom/digikala/dms/model/design/PartialDeliver;->setSignature(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v7, v4}, Lcom/digikala/dms/model/design/PartialDeliver;->setLatitude(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v7, v5}, Lcom/digikala/dms/model/design/PartialDeliver;->setLongitude(Ljava/lang/String;)V

    .line 321
    move-object/from16 v12, p2

    invoke-virtual {v7, v12}, Lcom/digikala/dms/model/design/PartialDeliver;->setCardTypeId(Ljava/lang/String;)V

    .line 322
    move-object/from16 v13, p3

    invoke-virtual {v7, v13}, Lcom/digikala/dms/model/design/PartialDeliver;->setCardNumber(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v7, v0}, Lcom/digikala/dms/model/design/PartialDeliver;->setComment(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v7, v0}, Lcom/digikala/dms/model/design/PartialDeliver;->setComment(Ljava/lang/String;)V

    .line 325
    move-object/from16 v14, p10

    invoke-virtual {v7, v14}, Lcom/digikala/dms/model/design/PartialDeliver;->setGpsStatus(Ljava/lang/String;)V

    .line 326
    move-object/from16 v15, p6

    invoke-virtual {v7, v15}, Lcom/digikala/dms/model/design/PartialDeliver;->setFinalPayableAmount(Ljava/lang/Long;)V

    .line 327
    if-eqz v1, :cond_91

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_91

    .line 328
    invoke-virtual {v7, v1}, Lcom/digikala/dms/model/design/PartialDeliver;->setPaymentMethod(Ljava/lang/String;)V

    .line 331
    :cond_91
    invoke-virtual {v3, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "gggg":Ljava/lang/String;
    const-string v1, "param_partialDeliver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v1, Lcom/digikala/dms/helper/webservice/WebApi$14;

    const/16 v17, 0x1

    const-string v18, "https://lg.digikala.com/dms-api/Driver/HalfReturn"

    .line 336
    invoke-virtual {v3, v7, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v1

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    invoke-direct/range {v16 .. v21}, Lcom/digikala/dms/helper/webservice/WebApi$14;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 357
    .local v1, "request":Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;
    invoke-static {v1}, Lcom/digikala/dms/helper/webservice/VolleyHelper;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 358
    return-void
.end method

.method public static makeRejectShipmentRequest(Ljava/lang/String;Lcom/digikala/dms/model/design/ReturnedShipment;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 22
    .param p0, "batchId"    # Ljava/lang/String;
    .param p1, "returnedShipment"    # Lcom/digikala/dms/model/design/ReturnedShipment;
    .param p2, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;
    .param p3, "gpsStatus"    # Ljava/lang/String;
    .param p4, "requestTag"    # Ljava/lang/String;
    .param p6, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/model/design/ReturnedShipment;",
            "Lcom/digikala/dms/model/domain/LatLong;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 361
    .local p5, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Ljava/lang/Boolean;>;"
    move-object v0, p0

    const-string v1, "Request"

    const-string v2, "Request"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "Request"

    const-string v2, "Request"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, ""

    .line 365
    .local v1, "lat":Ljava/lang/String;
    const-string v2, ""

    .line 366
    .local v2, "lng":Ljava/lang/String;
    if-eqz p2, :cond_29

    .line 367
    invoke-virtual/range {p2 .. p2}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual/range {p2 .. p2}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 371
    :cond_29
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v4, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "CheckPackIdLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FullReturn   :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v5, "PackId"

    invoke-virtual {v4, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v5, "OrderId"

    invoke-virtual/range {p1 .. p1}, Lcom/digikala/dms/model/design/ReturnedShipment;->getShipmentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v5, "ReasonId"

    invoke-virtual/range {p1 .. p1}, Lcom/digikala/dms/model/design/ReturnedShipment;->getReasonId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v5, "Latitude"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v5, "Longitude"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v5, "GpsStatus"

    move-object/from16 v13, p3

    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v14, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    const/4 v6, 0x1

    const-string v7, "Driver/FullReturn"

    new-instance v5, Lcom/digikala/dms/helper/webservice/WebApi$15;

    invoke-direct {v5}, Lcom/digikala/dms/helper/webservice/WebApi$15;-><init>()V

    .line 385
    invoke-virtual {v5}, Lcom/digikala/dms/helper/webservice/WebApi$15;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object v5, v14

    move-object v8, v4

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 380
    return-object v14
.end method

.method public static makeSyncShipmentsWithBackOfficeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 23
    .param p0, "deliveryId"    # Ljava/lang/String;
    .param p1, "batchId"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/digikala/dms/model/domain/Shipment;",
            ">;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 495
    .local p2, "shipments":Ljava/util/List;, "Ljava/util/List<Lcom/digikala/dms/model/domain/Shipment;>;"
    .local p3, "responseListener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/gson/ExclusionStrategy;

    new-instance v2, Lcom/digikala/dms/helper/webservice/WebApi$19;

    invoke-direct {v2}, Lcom/digikala/dms/helper/webservice/WebApi$19;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 499
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 511
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lcom/digikala/dms/helper/webservice/WebApi$20;

    invoke-direct {v1}, Lcom/digikala/dms/helper/webservice/WebApi$20;-><init>()V

    .line 512
    invoke-virtual {v1}, Lcom/digikala/dms/helper/webservice/WebApi$20;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 515
    .local v1, "paramType":Ljava/lang/reflect/Type;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v2, "syncCandidateShipments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/SyncCandidateShipment;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_117

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/digikala/dms/model/domain/Shipment;

    .line 517
    .local v4, "shipment":Lcom/digikala/dms/model/domain/Shipment;
    new-instance v5, Lcom/digikala/dms/model/design/SyncCandidateShipment;

    invoke-direct {v5}, Lcom/digikala/dms/model/design/SyncCandidateShipment;-><init>()V

    .line 518
    .local v5, "syncCandidateShipment":Lcom/digikala/dms/model/design/SyncCandidateShipment;
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getOrderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setOrderId(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getConfirmTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setDeliveryDateTime(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getRejectReasonId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setReasonId(I)V

    .line 521
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setStatus(I)V

    .line 522
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setSignature(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getCardTypeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setCardTypeId(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getCardNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setCardNumber(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getComment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setComment(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getConfirmLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v6

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setLatitude(D)V

    .line 527
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getConfirmLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v6

    invoke-virtual {v6}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setLongitude(D)V

    .line 529
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getPaymentMethod()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b6

    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getPaymentMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b6

    .line 530
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getPaymentMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setPayableMethod(Ljava/lang/String;)V

    .line 535
    :cond_b6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v6, "returnedProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/NonRealmSerialItems;>;"
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getReturnedProducts()Lio/realm/RealmList;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/design/SerialItems;

    .line 537
    .local v8, "returnedProduct":Lcom/digikala/dms/model/design/SerialItems;
    new-instance v15, Lcom/digikala/dms/model/design/NonRealmSerialItems;

    invoke-virtual {v8}, Lcom/digikala/dms/model/design/SerialItems;->getSerialItem()Ljava/lang/String;

    move-result-object v10

    .line 538
    invoke-virtual {v8}, Lcom/digikala/dms/model/design/SerialItems;->getReasonId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/digikala/dms/model/design/SerialItems;->getItemBatchId()Ljava/lang/String;

    move-result-object v12

    .line 539
    invoke-virtual {v8}, Lcom/digikala/dms/model/design/SerialItems;->getOrderItemId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lcom/digikala/dms/model/design/SerialItems;->getCount()I

    move-result v14

    invoke-virtual {v8}, Lcom/digikala/dms/model/design/SerialItems;->getBasketId()Ljava/lang/String;

    move-result-object v16

    move-object v9, v15

    move-object/from16 v17, v3

    move-object v3, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/digikala/dms/model/design/NonRealmSerialItems;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 537
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .end local v8    # "returnedProduct":Lcom/digikala/dms/model/design/SerialItems;
    nop

    .line 536
    move-object/from16 v3, v17

    goto :goto_c3

    .line 541
    :cond_f9
    move-object/from16 v17, v3

    invoke-virtual {v5, v6}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setSerialOrBatchItems(Ljava/util/ArrayList;)V

    .line 542
    move-object/from16 v3, p0

    invoke-virtual {v5, v3}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setUserId(Ljava/lang/String;)V

    .line 543
    move-object/from16 v7, p1

    invoke-virtual {v5, v7}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setPackId(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v4}, Lcom/digikala/dms/model/domain/Shipment;->getFinalPayableAmount()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/digikala/dms/model/design/SyncCandidateShipment;->setFinalPayableAmount(Ljava/lang/Long;)V

    .line 546
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    .end local v4    # "shipment":Lcom/digikala/dms/model/domain/Shipment;
    .end local v5    # "syncCandidateShipment":Lcom/digikala/dms/model/design/SyncCandidateShipment;
    .end local v6    # "returnedProducts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/digikala/dms/model/design/NonRealmSerialItems;>;"
    nop

    .line 516
    move-object/from16 v3, v17

    goto/16 :goto_3c

    .line 550
    :cond_117
    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, "gggg":Ljava/lang/String;
    const-string v5, "gggg"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v5, Lcom/digikala/dms/helper/webservice/WebApi$21;

    const/4 v9, 0x1

    const-string v10, "https://lg.digikala.com/dms-api/Driver/Sync"

    .line 555
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v11

    move-object v8, v5

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/digikala/dms/helper/webservice/WebApi$21;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 577
    .local v5, "request":Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;
    invoke-static {v5}, Lcom/digikala/dms/helper/webservice/VolleyHelper;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 578
    return-void
.end method

.method public static postLocation(Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
    .registers 23
    .param p0, "packId"    # Ljava/lang/String;
    .param p1, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;
    .param p2, "datetime"    # Ljava/lang/String;
    .param p3, "battery"    # Ljava/lang/String;
    .param p4, "requestTag"    # Ljava/lang/String;
    .param p6, "fragment"    # Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/model/domain/LatLong;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;",
            ")",
            "Lcom/digikala/dms/helper/webservice/WebApiRequest<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 393
    .local p5, "webApiListener":Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;, "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p3

    const-string v1, "Request"

    const-string v2, "Request"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v1, "Request"

    const-string v2, "Request"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, ""

    .line 397
    .local v1, "lat":Ljava/lang/String;
    const-string v2, ""

    .line 398
    .local v2, "lng":Ljava/lang/String;
    if-eqz p1, :cond_2a

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 403
    :cond_2a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 404
    .local v4, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "packId"

    move-object/from16 v13, p0

    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v5, "latitude"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v5, "longitude"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v5, "datetime"

    move-object/from16 v14, p2

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v5, "battery"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v5, "battery_postLocation"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v15, Lcom/digikala/dms/helper/webservice/WebApiRequest;

    const/4 v6, 0x1

    const-string v7, "Driver/TrackLocation"

    new-instance v5, Lcom/digikala/dms/helper/webservice/WebApi$16;

    invoke-direct {v5}, Lcom/digikala/dms/helper/webservice/WebApi$16;-><init>()V

    .line 416
    invoke-virtual {v5}, Lcom/digikala/dms/helper/webservice/WebApi$16;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object v5, v15

    move-object v8, v4

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/digikala/dms/helper/webservice/WebApiRequest;-><init>(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/reflect/Type;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)V

    .line 411
    return-object v15
.end method

.method public static sendShipmentListByPriority(Lcom/digikala/dms/model/design/ShipmentPriority;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 12
    .param p0, "mShipmentPriority"    # Lcom/digikala/dms/model/design/ShipmentPriority;
    .param p2, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/design/ShipmentPriority;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 641
    .local p1, "responseListener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v0, "Request"

    const-string v1, "Request"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    new-instance v0, Lcom/digikala/dms/helper/webservice/WebApi$23;

    invoke-direct {v0}, Lcom/digikala/dms/helper/webservice/WebApi$23;-><init>()V

    .line 645
    invoke-virtual {v0}, Lcom/digikala/dms/helper/webservice/WebApi$23;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 647
    .local v0, "paramType":Ljava/lang/reflect/Type;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 648
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v8, Lcom/digikala/dms/helper/webservice/WebApi$24;

    const-string v4, "https://lg.digikala.com/dms-api/Driver/SetPriority"

    .line 651
    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    move-object v2, v8

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/digikala/dms/helper/webservice/WebApi$24;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 671
    .local v2, "request":Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;
    invoke-static {v2}, Lcom/digikala/dms/helper/webservice/VolleyHelper;->addToRequestQueue(Lcom/android/volley/Request;)V

    .line 672
    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass1 (com.digikala.dms.helper.webservice.WebApi$1)
.class final Lcom/digikala/dms/helper/webservice/WebApi$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Lcom/digikala/dms/model/design/LoginResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass10 (com.digikala.dms.helper.webservice.WebApi$10)
.class final Lcom/digikala/dms/helper/webservice/WebApi$10;
.super Ljava/lang/Object;
.source "WebApi.java"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeDynamicShippingCost(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 249
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .registers 4
    .param p1, "f"    # Lcom/google/gson/FieldAttributes;

    .line 244
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/realm/RealmObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass11 (com.digikala.dms.helper.webservice.WebApi$11)
.class final Lcom/digikala/dms/helper/webservice/WebApi$11;
.super Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeDynamicShippingCost(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 6
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .line 261
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    invoke-direct/range {p0 .. p5}, Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "AuthToken"

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDeliveryAuthToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v1, "AppVersion"

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v1, "Authorization"

    const-string v2, " Basic c3VwZXJub3ZhOnN1bW1lcmlzZ3JlYXQ="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-object v0
.end method

.method public setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
    .registers 6
    .param p1, "retryPolicy"    # Lcom/android/volley/RetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RetryPolicy;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 274
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3a98

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-super {p0, v0}, Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass12 (com.digikala.dms.helper.webservice.WebApi$12)
.class final Lcom/digikala/dms/helper/webservice/WebApi$12;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makePartialDeliverRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/model/design/PartialDeliver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 291
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass13 (com.digikala.dms.helper.webservice.WebApi$13)
.class final Lcom/digikala/dms/helper/webservice/WebApi$13;
.super Ljava/lang/Object;
.source "WebApi.java"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makePartialDeliverRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 303
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .registers 4
    .param p1, "f"    # Lcom/google/gson/FieldAttributes;

    .line 298
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/realm/RealmObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass14 (com.digikala.dms.helper.webservice.WebApi$14)
.class final Lcom/digikala/dms/helper/webservice/WebApi$14;
.super Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makePartialDeliverRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 6
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .line 337
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    invoke-direct/range {p0 .. p5}, Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 342
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "AuthToken"

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDeliveryAuthToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "AppVersion"

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v1, "Authorization"

    const-string v2, " Basic c3VwZXJub3ZhOnN1bW1lcmlzZ3JlYXQ="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-object v0
.end method

.method public setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
    .registers 6
    .param p1, "retryPolicy"    # Lcom/android/volley/RetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RetryPolicy;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 350
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3a98

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-super {p0, v0}, Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass15 (com.digikala.dms.helper.webservice.WebApi$15)
.class final Lcom/digikala/dms/helper/webservice/WebApi$15;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeRejectShipmentRequest(Ljava/lang/String;Lcom/digikala/dms/model/design/ReturnedShipment;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 384
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass16 (com.digikala.dms.helper.webservice.WebApi$16)
.class final Lcom/digikala/dms/helper/webservice/WebApi$16;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->postLocation(Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 415
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass17 (com.digikala.dms.helper.webservice.WebApi$17)
.class final Lcom/digikala/dms/helper/webservice/WebApi$17;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeMissedCallRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 449
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass18 (com.digikala.dms.helper.webservice.WebApi$18)
.class final Lcom/digikala/dms/helper/webservice/WebApi$18;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeLeftShipmentRequest(Ljava/lang/String;Lcom/digikala/dms/model/design/ReturnedShipment;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 484
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass19 (com.digikala.dms.helper.webservice.WebApi$19)
.class final Lcom/digikala/dms/helper/webservice/WebApi$19;
.super Ljava/lang/Object;
.source "WebApi.java"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeSyncShipmentsWithBackOfficeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 507
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .registers 4
    .param p1, "f"    # Lcom/google/gson/FieldAttributes;

    .line 502
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/realm/RealmObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass2 (com.digikala.dms.helper.webservice.WebApi$2)
.class final Lcom/digikala/dms/helper/webservice/WebApi$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeLogoutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass20 (com.digikala.dms.helper.webservice.WebApi$20)
.class final Lcom/digikala/dms/helper/webservice/WebApi$20;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeSyncShipmentsWithBackOfficeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/ArrayList<",
        "Lcom/digikala/dms/model/design/SyncCandidateShipment;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 511
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass21 (com.digikala.dms.helper.webservice.WebApi$21)
.class final Lcom/digikala/dms/helper/webservice/WebApi$21;
.super Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeSyncShipmentsWithBackOfficeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 6
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .line 556
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    invoke-direct/range {p0 .. p5}, Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 562
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "AuthToken"

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDeliveryAuthToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v1, "AppVersion"

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v1, "Authorization"

    const-string v2, " Basic c3VwZXJub3ZhOnN1bW1lcmlzZ3JlYXQ="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    return-object v0
.end method

.method public setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
    .registers 6
    .param p1, "retryPolicy"    # Lcom/android/volley/RetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RetryPolicy;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 570
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3a98

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-super {p0, v0}, Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass22 (com.digikala.dms.helper.webservice.WebApi$22)
.class final Lcom/digikala/dms/helper/webservice/WebApi$22;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeFinalizeBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 588
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass23 (com.digikala.dms.helper.webservice.WebApi$23)
.class final Lcom/digikala/dms/helper/webservice/WebApi$23;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->sendShipmentListByPriority(Lcom/digikala/dms/model/design/ShipmentPriority;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/model/design/ShipmentPriority;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 644
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass24 (com.digikala.dms.helper.webservice.WebApi$24)
.class final Lcom/digikala/dms/helper/webservice/WebApi$24;
.super Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->sendShipmentListByPriority(Lcom/digikala/dms/model/design/ShipmentPriority;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 6
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .line 653
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    invoke-direct/range {p0 .. p5}, Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 656
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 657
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "AuthToken"

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getDeliveryAuthToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v1, "AppVersion"

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v1, "Authorization"

    const-string v2, " Basic c3VwZXJub3ZhOnN1bW1lcmlzZ3JlYXQ="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    return-object v0
.end method

.method public setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;
    .registers 6
    .param p1, "retryPolicy"    # Lcom/android/volley/RetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RetryPolicy;",
            ")",
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 665
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3a98

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-super {p0, v0}, Lcom/digikala/dms/helper/webservice/MCXIAOKEJsonObjectRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass25 (com.digikala.dms.helper.webservice.WebApi$25)
.class final Lcom/digikala/dms/helper/webservice/WebApi$25;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 687
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass3 (com.digikala.dms.helper.webservice.WebApi$3)
.class final Lcom/digikala/dms/helper/webservice/WebApi$3;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeGetBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Lcom/digikala/dms/model/domain/Batch;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass4 (com.digikala.dms.helper.webservice.WebApi$4)
.class final Lcom/digikala/dms/helper/webservice/WebApi$4;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->getRateRequest(Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Lcom/digikala/dms/model/domain/Rate;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass5 (com.digikala.dms.helper.webservice.WebApi$5)
.class final Lcom/digikala/dms/helper/webservice/WebApi$5;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeConfirmBatchRequest(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass6 (com.digikala.dms.helper.webservice.WebApi$6)
.class final Lcom/digikala/dms/helper/webservice/WebApi$6;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeGetShipment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Ljava/util/ArrayList<",
        "Lcom/digikala/dms/model/domain/Shipment;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 171
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass7 (com.digikala.dms.helper.webservice.WebApi$7)
.class final Lcom/digikala/dms/helper/webservice/WebApi$7;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->getConstantValueResponse(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Lcom/digikala/dms/model/design/ConstantValue;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass8 (com.digikala.dms.helper.webservice.WebApi$8)
.class final Lcom/digikala/dms/helper/webservice/WebApi$8;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeFullDeliverRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiResponse<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

###### Class com.digikala.dms.helper.webservice.WebApi.AnonymousClass9 (com.digikala.dms.helper.webservice.WebApi$9)
.class final Lcom/digikala/dms/helper/webservice/WebApi$9;
.super Lcom/google/gson/reflect/TypeToken;
.source "WebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/webservice/WebApi;->makeDynamicShippingCost(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/digikala/dms/model/design/PartialDeliver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
