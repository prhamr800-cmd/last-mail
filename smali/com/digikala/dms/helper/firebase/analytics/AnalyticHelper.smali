###### Class com.digikala.dms.helper.firebase.analytics.AnalyticHelper (com.digikala.dms.helper.firebase.analytics.AnalyticHelper)
.class public Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;
.super Ljava/lang/Object;
.source "AnalyticHelper.java"


# static fields
.field private static final EVENT_CHECK_GOOGLE_PLAY_SERVICES:Ljava/lang/String; = "location_service_stop"

.field private static final EVENT_CLOSE_SHIPMENT:Ljava/lang/String; = "Close_Shipment"

.field private static final EVENT_CONFIRM_BATCH:Ljava/lang/String; = "Confirm_Batch"

.field private static final EVENT_DELIVERED_SHIPMENT:Ljava/lang/String; = "Delivered_Shipment"

.field private static final EVENT_FINALIZE_TRIP:Ljava/lang/String; = "Finalize_Trip"

.field private static final EVENT_FINALIZE_TRIP_BACKGROUND:Ljava/lang/String; = "Finalize_Trip_Background"

.field private static final EVENT_FINALIZE_TRIP_STATUS:Ljava/lang/String; = "Finalize_Trip_Status"

.field private static final EVENT_LOCATION_SERVICE_START:Ljava/lang/String; = "location_service_start"

.field private static final EVENT_LOCATION_SERVICE_STOP:Ljava/lang/String; = "location_service_stop"

.field private static final EVENT_LOG_IN:Ljava/lang/String; = "Log_In"

.field private static final EVENT_LOG_OUT:Ljava/lang/String; = "Log_Out"

.field private static final EVENT_MAP_FRAGMENT:Ljava/lang/String; = "Map_Fragment"

.field private static final EVENT_RESPONSE_REQUEST:Ljava/lang/String; = "Response_Request"

.field private static final EVENT_RETURN_SHIPMENT:Ljava/lang/String; = "Return_Shipment"

.field private static final EVENT_SEARCH_WITH_BARCODE:Ljava/lang/String; = "Search_With_Barcode"

.field private static final EVENT_SETTING_ACTIVITY:Ljava/lang/String; = "Setting_Activity"

.field private static final PARAM_BATCH_SIZE_NUMBER:Ljava/lang/String; = "Batch_Size_Number"

.field private static final PARAM_CUSTOMER_RATE:Ljava/lang/String; = "Customer_Rate"

.field private static final PARAM_DC_ID:Ljava/lang/String; = "User_Id"

.field private static final PARAM_EARLY_MINUTES:Ljava/lang/String; = "Early_Minutes"

.field private static final PARAM_ERROR:Ljava/lang/String; = "Error"

.field private static final PARAM_LATE_MINUTES:Ljava/lang/String; = "Late_Minutes"

.field private static final PARAM_LOCATION:Ljava/lang/String; = "Location"

.field private static final PARAM_NOT_SYNCED_SHIPMENTS_NO:Ljava/lang/String; = "Not_Synced_Shipments_No"

.field private static final PARAM_NOT_SYNCED_SHIPMENTS_RATIO:Ljava/lang/String; = "Not_Synced_Shipments_Ratio"

.field private static final PARAM_On_TIME:Ljava/lang/String; = "On_Time"

.field private static final PARAM_PRODUCT_ID:Ljava/lang/String; = "Product_ID"

.field private static final PARAM_REASON:Ljava/lang/String; = "Reason"

.field private static final PARAM_REASON_ID:Ljava/lang/String; = "Reason_ID"

.field private static final PARAM_RESPONSE_REQUEST_TYPE:Ljava/lang/String; = "TYPE"

.field private static final PARAM_STATUS:Ljava/lang/String; = "Status"

.field private static final PARAM_SYNCED_SHIPMENTS_NO:Ljava/lang/String; = "Synced_Shipments_No"

.field private static final PARAM_SYNCED_SHIPMENTS_RATIO:Ljava/lang/String; = "Synced_Shipments_Ratio"

.field private static final PARAM_TIME_INTERVAL:Ljava/lang/String; = "time_interval"

.field private static final PARAM_USER_ID:Ljava/lang/String; = "User_Id"

.field public static final VALUE_REQUEST:Ljava/lang/String; = "Request"

.field public static final VALUE_RESPONSE:Ljava/lang/String; = "Response"

.field public static final VALUE_RESPONSE_ERROR:Ljava/lang/String; = "Response Error"

.field public static final VALUE_RESPONSE_SUCCESS:Ljava/lang/String; = "Response Success"

.field public static final VALUE_STATUS_CHANGE_LANGUAGE:Ljava/lang/String; = "Change Language"

.field public static final VALUE_STATUS_DELIVERED_FULL:Ljava/lang/String; = "Fully Delivered"

.field public static final VALUE_STATUS_DELIVERED_PARTIAL:Ljava/lang/String; = "Partially Delivered"

.field public static final VALUE_STATUS_ERROR:Ljava/lang/String; = "Error"

.field public static final VALUE_STATUS_FOUND_ITEM:Ljava/lang/String; = "Found Item"

.field public static final VALUE_STATUS_FOUND_LOCATION:Ljava/lang/String; = "Found Location"

.field public static final VALUE_STATUS_LEFT:Ljava/lang/String; = "Left"

.field public static final VALUE_STATUS_LOCK_SCREEN_OFF:Ljava/lang/String; = "OFF Lock Screen"

.field public static final VALUE_STATUS_LOCK_SCREEN_ON:Ljava/lang/String; = "ON Lock Screen"

.field public static final VALUE_STATUS_MISSED_CALL:Ljava/lang/String; = "Missed Call"

.field public static final VALUE_STATUS_NOT_FOUND_ITEM:Ljava/lang/String; = "Not Found Item"

.field public static final VALUE_STATUS_NOT_FOUND_LOCATION:Ljava/lang/String; = "Not Found Location"

.field public static final VALUE_STATUS_RETURNED:Ljava/lang/String; = "Returned"

.field public static final VALUE_STATUS_SUCCESS:Ljava/lang/String; = "Success"

.field private static firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    invoke-static {}, Lcom/digikala/dms/core/App;->getfirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateRatioPercent(II)Ljava/lang/String;
    .registers 7
    .param p0, "portion"    # I
    .param p1, "total"    # I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v1, p0, 0x64

    int-to-double v1, v1

    int-to-double v3, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkGooglePlayServices(Ljava/lang/String;)V
    .registers 4
    .param p0, "status"    # Ljava/lang/String;

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "Status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "location_service_stop"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 292
    return-void
.end method

.method public static closeShipmentEvent(Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;)V
    .registers 7
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "Status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "Location"

    if-eqz p1, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    :cond_2f
    const-string v2, "Unavailable Location"

    .line 148
    :goto_31
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Close_Shipment"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method public static confirmBatchEvent(Ljava/lang/String;I)V
    .registers 5
    .param p0, "deliveryId"    # Ljava/lang/String;
    .param p1, "batchSizeNo"    # I

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "User_Id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "Batch_Size_Number"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Confirm_Batch"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    return-void
.end method

.method public static deliveredShipmentEvent(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;I)V
    .registers 11
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "timeScope"    # Ljava/lang/String;
    .param p2, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;
    .param p3, "customerRate"    # I

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "timeTracker":Lcom/digikala/dms/model/design/TimeTracker;
    :try_start_1
    invoke-static {p1}, Lcom/digikala/dms/model/design/TimeTracker;->getDeliveryTimeTracker(Ljava/lang/String;)Lcom/digikala/dms/model/design/TimeTracker;

    move-result-object v1

    move-object v0, v1

    .line 161
    invoke-virtual {v0}, Lcom/digikala/dms/model/design/TimeTracker;->getState()I

    move-result v1

    if-nez v1, :cond_f

    .line 162
    const-string v1, "YES"

    goto :goto_11

    .line 164
    :cond_f
    const-string v1, "NO"
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    .line 169
    .local v1, "stateOnTime":Ljava/lang/String;
    :goto_11
    goto :goto_19

    .line 166
    .end local v1    # "stateOnTime":Ljava/lang/String;
    :catch_12
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    const-string v2, "UnKnown"

    move-object v1, v2

    .line 171
    .local v1, "stateOnTime":Ljava/lang/String;
    :goto_19
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "Status"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v3, "On_Time"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "Late_Minutes"

    invoke-virtual {v0}, Lcom/digikala/dms/model/design/TimeTracker;->getState()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_37

    invoke-virtual {v0}, Lcom/digikala/dms/model/design/TimeTracker;->getDiffTime()I

    move-result v4

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    :goto_38
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v3, "Early_Minutes"

    invoke-virtual {v0}, Lcom/digikala/dms/model/design/TimeTracker;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_49

    invoke-virtual {v0}, Lcom/digikala/dms/model/design/TimeTracker;->getDiffTime()I

    move-result v6

    nop

    :cond_49
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v3, "Location"

    if-eqz p2, :cond_71

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-virtual {p2}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_73

    :cond_71
    const-string v4, "Unavailable Location"

    .line 177
    :goto_73
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "Customer_Rate"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    sget-object v3, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v4, "Delivered_Shipment"

    invoke-virtual {v3, v4, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_82} :catch_83

    .line 184
    .end local v0    # "timeTracker":Lcom/digikala/dms/model/design/TimeTracker;
    .end local v1    # "stateOnTime":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_87

    .line 182
    :catch_83
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_87
    return-void
.end method

.method public static finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_13

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 255
    :cond_13
    const-string v1, "Status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "Error"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1e

    .line 260
    goto :goto_29

    .line 257
    :catch_1e
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    const-string v2, "Error"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_29
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Finalize_Trip_Background"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 263
    return-void
.end method

.method public static finalizeTripEvent(Ljava/lang/String;III)V
    .registers 7
    .param p0, "courierId"    # Ljava/lang/String;
    .param p1, "batchSize"    # I
    .param p2, "syncedShipmentsNo"    # I
    .param p3, "notSyncedShipmentsNo"    # I

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "User_Id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "Batch_Size_Number"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v1, "Synced_Shipments_No"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string v1, "Not_Synced_Shipments_No"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v1, "Synced_Shipments_Ratio"

    invoke-static {p2, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->calculateRatioPercent(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "Not_Synced_Shipments_Ratio"

    invoke-static {p3, p1}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->calculateRatioPercent(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Finalize_Trip"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method public static finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;

    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_13

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 237
    :cond_13
    const-string v1, "Status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "Error"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1e

    .line 242
    goto :goto_29

    .line 239
    :catch_1e
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    const-string v2, "Error"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_29
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Finalize_Trip_Status"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 245
    return-void
.end method

.method public static locationServiceStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "courierId"    # Ljava/lang/String;
    .param p1, "timeInterval"    # Ljava/lang/String;
    .param p2, "dc_id"    # Ljava/lang/String;

    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 272
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "User_Id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v1, "time_interval"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "User_Id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "location_service_start"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method public static locationServiceStop(Ljava/lang/String;)V
    .registers 4
    .param p0, "status"    # Ljava/lang/String;

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "Status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "location_service_stop"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 285
    return-void
.end method

.method public static logInEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "status"    # Ljava/lang/String;

    .line 91
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "User_Id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "Status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Log_In"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 99
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_1b

    .line 97
    :catch_17
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public static logOutEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "status"    # Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "User_Id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "Status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Log_Out"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method public static mapFragmentEvent(Ljava/lang/String;)V
    .registers 4
    .param p0, "status"    # Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "Status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Map_Fragment"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public static responseRequestEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_13

    .line 192
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object p2, v1

    .line 195
    :cond_13
    const-string v1, "TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "Status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "Error"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_23

    .line 201
    goto :goto_2e

    .line 198
    :catch_23
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const-string v2, "Error"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2e
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Response_Request"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method public static returnShipment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "reasonId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "Product_ID"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "Reason_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "Reason"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Return_Shipment"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method public static searchWithBarcodeEvent(Ljava/lang/String;)V
    .registers 4
    .param p0, "status"    # Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "Status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Search_With_Barcode"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public static settingActivityEvent(Ljava/lang/String;)V
    .registers 4
    .param p0, "status"    # Ljava/lang/String;

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "Status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Setting_Activity"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 117
    return-void
.end method
