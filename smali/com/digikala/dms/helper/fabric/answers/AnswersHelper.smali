###### Class com.digikala.dms.helper.fabric.answers.AnswersHelper (com.digikala.dms.helper.fabric.answers.AnswersHelper)
.class public Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;
.super Ljava/lang/Object;
.source "AnswersHelper.java"


# static fields
.field private static final EVENT_CHECK_GOOGLE_PLAY_SERVICES:Ljava/lang/String; = "location_service_stop"

.field private static final EVENT_FINALIZE_TRIP_BACKGROUND:Ljava/lang/String; = "Finalize_Trip_Background"

.field private static final EVENT_FINALIZE_TRIP_STATUS:Ljava/lang/String; = "Finalize_Trip_Status"

.field private static final EVENT_LOCATION_SERVICE_START:Ljava/lang/String; = "location_service_start"

.field private static final EVENT_LOCATION_SERVICE_STOP:Ljava/lang/String; = "location_service_stop"

.field private static final EVENT_LOG_IN:Ljava/lang/String; = "Log_In"

.field private static final EVENT_LOG_OUT:Ljava/lang/String; = "Log_Out"

.field private static final EVENT_MAP_FRAGMENT:Ljava/lang/String; = "Map_Fragment"

.field private static final EVENT_SEARCH_WITH_BARCODE:Ljava/lang/String; = "Search_With_Barcode"

.field private static final EVENT_SETTING_ACTIVITY:Ljava/lang/String; = "Setting_Activity"

.field private static final KEY_CUSTOM_ATTRIBUTE_BATCH_SIZE:Ljava/lang/String; = "Batch Size"

.field private static final KEY_CUSTOM_ATTRIBUTE_COURIER_ID:Ljava/lang/String; = "Courier Id"

.field private static final KEY_CUSTOM_ATTRIBUTE_CUSTOMER_RATE:Ljava/lang/String; = "Customer Rate"

.field private static final KEY_CUSTOM_ATTRIBUTE_DC_ID:Ljava/lang/String; = "dc_id"

.field private static final KEY_CUSTOM_ATTRIBUTE_EARLY:Ljava/lang/String; = "Early Minutes"

.field private static final KEY_CUSTOM_ATTRIBUTE_EXPANDED_BOTTOM_SHEET_NO:Ljava/lang/String; = "Expanded Bottom Sheet No"

.field private static final KEY_CUSTOM_ATTRIBUTE_EXPANDED_BOTTOM_SHEET_RATIO:Ljava/lang/String; = "Expanded Bottom Sheet Ratio"

.field private static final KEY_CUSTOM_ATTRIBUTE_LATE:Ljava/lang/String; = "Late Minutes"

.field private static final KEY_CUSTOM_ATTRIBUTE_LOCATION:Ljava/lang/String; = "Lat-Long"

.field private static final KEY_CUSTOM_ATTRIBUTE_NOT_SYNCED_SHIPMENTS_NO:Ljava/lang/String; = "Not-Synced Shipments No"

.field private static final KEY_CUSTOM_ATTRIBUTE_NOT_SYNCED_SHIPMENTS_RATIO:Ljava/lang/String; = "Not-Synced Shipments Ratio"

.field private static final KEY_CUSTOM_ATTRIBUTE_ONTIME:Ljava/lang/String; = "On-time"

.field private static final KEY_CUSTOM_ATTRIBUTE_PAYMENT_TYPE:Ljava/lang/String; = "Payment Type"

.field private static final KEY_CUSTOM_ATTRIBUTE_PRODUCT_ID:Ljava/lang/String; = "Product ID"

.field private static final KEY_CUSTOM_ATTRIBUTE_REASON:Ljava/lang/String; = "Reason"

.field private static final KEY_CUSTOM_ATTRIBUTE_REASON_ID:Ljava/lang/String; = "Reason ID"

.field private static final KEY_CUSTOM_ATTRIBUTE_RESPONSE_ERROR_MESSAGE:Ljava/lang/String; = "Error Message"

.field private static final KEY_CUSTOM_ATTRIBUTE_RESPONSE_REQUEST:Ljava/lang/String; = "Numbers"

.field private static final KEY_CUSTOM_ATTRIBUTE_RESPONSE_REQUEST_STATUS:Ljava/lang/String; = "Status"

.field private static final KEY_CUSTOM_ATTRIBUTE_SETTLED_BOTTOM_SHEET_NO:Ljava/lang/String; = "Settled Bottom Sheet No"

.field private static final KEY_CUSTOM_ATTRIBUTE_SETTLED_BOTTOM_SHEET_RATIO:Ljava/lang/String; = "Settled Bottom Sheet Ratio"

.field private static final KEY_CUSTOM_ATTRIBUTE_STATUS:Ljava/lang/String; = "Status"

.field private static final KEY_CUSTOM_ATTRIBUTE_SYNCED_SHIPMENTS_NO:Ljava/lang/String; = "Synced Shipments No"

.field private static final KEY_CUSTOM_ATTRIBUTE_SYNCED_SHIPMENTS_RATIO:Ljava/lang/String; = "Synced Shipments Ratio"

.field private static final KEY_CUSTOM_ATTRIBUTE_TIME_INTERVAL:Ljava/lang/String; = "time_interval"

.field private static final NAME_EVENT_ALL_SHIPMENT:Ljava/lang/String; = "All Shipment"

.field private static final NAME_EVENT_CONFIRM_BATCH:Ljava/lang/String; = "Confirm Batch"

.field private static final NAME_EVENT_CONFIRM_PRIORITY:Ljava/lang/String; = "Confirm priority"

.field private static final NAME_EVENT_DELIVERED_SHIPMENT:Ljava/lang/String; = "Delivered Shipment"

.field private static final NAME_EVENT_FINALIZE_TRIP:Ljava/lang/String; = "Finalize Trip"

.field private static final NAME_EVENT_RESPONSE_REQUEST_NUMBER:Ljava/lang/String; = "Response Request Number"

.field private static final NAME_EVENT_RETURN_SHIPMENT:Ljava/lang/String; = "Return Shipment"

.field private static final PARAM_ERROR:Ljava/lang/String; = "Error"

.field private static final PARAM_STATUS:Ljava/lang/String; = "Status"

.field private static final PARAM_USER_ID:Ljava/lang/String; = "User_Id"

.field public static final RESPONSE_ERROR:Ljava/lang/String; = "Response Error"

.field public static final RESPONSE_SUCCESS:Ljava/lang/String; = "Response Success"

.field public static final VALUE_REQUEST:Ljava/lang/String; = "Request"

.field public static final VALUE_RESPONSE:Ljava/lang/String; = "Response"

.field public static final VALUE_STATE_DELIVERED_FULL:Ljava/lang/String; = "Fully Delivered"

.field public static final VALUE_STATE_DELIVERED_PARTIAL:Ljava/lang/String; = "Partially Delivered"

.field public static final VALUE_STATE_LEFT:Ljava/lang/String; = "Left"

.field public static final VALUE_STATE_MISSED_CALL:Ljava/lang/String; = "Missed Call"

.field public static final VALUE_STATE_RETURNED:Ljava/lang/String; = "Returned"

.field public static final VALUE_STATUS_CHANGE_LANGUAGE:Ljava/lang/String; = "Change Language"

.field public static final VALUE_STATUS_ERROR:Ljava/lang/String; = "Error"

.field public static final VALUE_STATUS_FOUND_ITEM:Ljava/lang/String; = "Found Item"

.field public static final VALUE_STATUS_FOUND_LOCATION:Ljava/lang/String; = "Found Location"

.field public static final VALUE_STATUS_LOCK_SCREEN_OFF:Ljava/lang/String; = "OFF Lock Screen"

.field public static final VALUE_STATUS_LOCK_SCREEN_ON:Ljava/lang/String; = "ON Lock Screen"

.field public static final VALUE_STATUS_NOT_FOUND_ITEM:Ljava/lang/String; = "Not Found Item"

.field public static final VALUE_STATUS_NOT_FOUND_LOCATION:Ljava/lang/String; = "Not Found Location"

.field public static final VALUE_STATUS_SUCCESS:Ljava/lang/String; = "Success"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateRatioPercent(II)Ljava/lang/String;
    .registers 7
    .param p0, "portion"    # I
    .param p1, "total"    # I

    .line 193
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

    .line 314
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "location_service_stop"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Status"

    .line 315
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 314
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 319
    goto :goto_1b

    .line 317
    :catch_17
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public static finalizeTripBackgroundEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;

    .line 269
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_10

    .line 270
    const/4 v0, 0x0

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 273
    :cond_10
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Finalize_Trip_Background"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Status"

    .line 274
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Error"

    .line 275
    invoke-virtual {v1, v2, p1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 273
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 279
    goto :goto_33

    .line 277
    :catch_2f
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_33
    return-void
.end method

.method public static finalizeTripStatusEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "error"    # Ljava/lang/String;

    .line 252
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_10

    .line 253
    const/4 v0, 0x0

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 256
    :cond_10
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Finalize_Trip_Status"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Status"

    .line 257
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Error"

    .line 258
    invoke-virtual {v1, v2, p1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 256
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 262
    goto :goto_33

    .line 260
    :catch_2f
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_33
    return-void
.end method

.method public static locationServiceStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "deliveryId"    # Ljava/lang/String;
    .param p1, "timeInterval"    # Ljava/lang/String;
    .param p2, "distributionCenter"    # Ljava/lang/String;

    .line 290
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "location_service_start"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Courier Id"

    .line 291
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string/jumbo v2, "time_interval"

    .line 292
    invoke-virtual {v1, v2, p1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "dc_id"

    .line 293
    invoke-virtual {v1, v2, p2}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 290
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 297
    goto :goto_2c

    .line 295
    :catch_28
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public static locationServiceStop(Ljava/lang/String;)V
    .registers 4
    .param p0, "status"    # Ljava/lang/String;

    .line 303
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "location_service_stop"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Status"

    .line 304
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 303
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 308
    goto :goto_1b

    .line 306
    :catch_17
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public static logCloseShipment(Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;I)V
    .registers 21
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "timeScope"    # Ljava/lang/String;
    .param p2, "latLong"    # Lcom/digikala/dms/model/domain/LatLong;
    .param p3, "paymentType"    # Ljava/lang/String;
    .param p4, "customerRate"    # I

    .line 118
    move-object/from16 v1, p0

    move/from16 v2, p4

    new-instance v0, Lcom/digikala/dms/model/design/TimeTracker;

    invoke-direct {v0}, Lcom/digikala/dms/model/design/TimeTracker;-><init>()V

    move-object v3, v0

    .line 120
    .local v3, "timeTracker":Lcom/digikala/dms/model/design/TimeTracker;
    :try_start_a
    invoke-static/range {p1 .. p1}, Lcom/digikala/dms/model/design/TimeTracker;->getDeliveryTimeTracker(Ljava/lang/String;)Lcom/digikala/dms/model/design/TimeTracker;

    move-result-object v0

    move-object v3, v0

    .line 121
    invoke-virtual {v3}, Lcom/digikala/dms/model/design/TimeTracker;->getState()I

    move-result v0

    if-nez v0, :cond_18

    .line 122
    const-string v0, "YES"

    goto :goto_1a

    .line 124
    :cond_18
    const-string v0, "NO"
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1b

    .line 129
    .local v0, "stateOnTime":Ljava/lang/String;
    :goto_1a
    goto :goto_21

    .line 126
    .end local v0    # "stateOnTime":Ljava/lang/String;
    :catch_1b
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    const-string v0, "UnKnown"

    .line 131
    .local v0, "stateOnTime":Ljava/lang/String;
    :goto_21
    const/4 v4, -0x1

    const-wide v5, 0x4046800000000000L    # 45.0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v2, v4, :cond_c5

    .line 132
    const-string v4, "answer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v4

    new-instance v10, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v11, "Delivered Shipment"

    invoke-direct {v10, v11}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v11, "Status"

    .line 134
    invoke-virtual {v10, v11, v1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v10

    check-cast v10, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v11, "On-time"

    .line 135
    invoke-virtual {v10, v11, v0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v10

    check-cast v10, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v11, "Late Minutes"

    .line 136
    invoke-virtual {v3}, Lcom/digikala/dms/model/design/TimeTracker;->getState()I

    move-result v12

    if-ne v12, v8, :cond_6d

    invoke-virtual {v3}, Lcom/digikala/dms/model/design/TimeTracker;->getDiffTime()I

    move-result v12

    goto :goto_6e

    :cond_6d
    const/4 v12, 0x0

    :goto_6e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v10

    check-cast v10, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v11, "Early Minutes"

    .line 137
    invoke-virtual {v3}, Lcom/digikala/dms/model/design/TimeTracker;->getState()I

    move-result v12

    if-ne v12, v7, :cond_85

    invoke-virtual {v3}, Lcom/digikala/dms/model/design/TimeTracker;->getDiffTime()I

    move-result v12

    goto :goto_86

    :cond_85
    const/4 v12, 0x0

    :goto_86
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v10

    check-cast v10, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v11, "Lat-Long"

    if-eqz p2, :cond_a3

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v12

    add-double/2addr v12, v5

    invoke-virtual/range {p2 .. p2}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    goto :goto_a5

    :cond_a3
    const-string v12, "Unavailable Location"

    :goto_a5
    invoke-virtual {v10, v11, v12}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v10

    check-cast v10, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v11, "Payment Type"

    .line 139
    move-object/from16 v12, p3

    invoke-virtual {v10, v11, v12}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v10

    check-cast v10, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v11, "Customer Rate"

    .line 140
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v10

    check-cast v10, Lcom/crashlytics/android/answers/CustomEvent;

    .line 133
    invoke-virtual {v4, v10}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    goto :goto_c7

    .line 144
    :cond_c5
    move-object/from16 v12, p3

    :goto_c7
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v4

    new-instance v10, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v11, "All Shipment"

    invoke-direct {v10, v11}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v11, "Status"

    .line 145
    invoke-virtual {v10, v11, v1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v10

    check-cast v10, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v11, "On-time"

    .line 146
    invoke-virtual {v10, v11, v0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v10

    check-cast v10, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v11, "Late Minutes"

    .line 147
    invoke-virtual {v3}, Lcom/digikala/dms/model/design/TimeTracker;->getState()I

    move-result v13

    if-ne v13, v8, :cond_ef

    invoke-virtual {v3}, Lcom/digikala/dms/model/design/TimeTracker;->getDiffTime()I

    move-result v8

    goto :goto_f0

    :cond_ef
    const/4 v8, 0x0

    :goto_f0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v11, v8}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v8

    check-cast v8, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v10, "Early Minutes"

    .line 148
    invoke-virtual {v3}, Lcom/digikala/dms/model/design/TimeTracker;->getState()I

    move-result v11

    if-ne v11, v7, :cond_107

    invoke-virtual {v3}, Lcom/digikala/dms/model/design/TimeTracker;->getDiffTime()I

    move-result v9

    nop

    :cond_107
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v10, v7}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v7

    check-cast v7, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v8, "Lat-Long"

    if-eqz p2, :cond_124

    .line 149
    invoke-virtual/range {p2 .. p2}, Lcom/digikala/dms/model/domain/LatLong;->getLatitude()D

    move-result-wide v9

    add-double/2addr v9, v5

    invoke-virtual/range {p2 .. p2}, Lcom/digikala/dms/model/domain/LatLong;->getLongitude()D

    move-result-wide v5

    add-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    goto :goto_126

    :cond_124
    const-string v5, "Unavailable Location"

    :goto_126
    invoke-virtual {v7, v8, v5}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v5

    check-cast v5, Lcom/crashlytics/android/answers/CustomEvent;

    .line 144
    invoke-virtual {v4, v5}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 151
    return-void
.end method

.method public static logConfirmBatchEvent(Ljava/lang/String;III)V
    .registers 8
    .param p0, "deliveryId"    # Ljava/lang/String;
    .param p1, "batchSize"    # I
    .param p2, "settledBottomSheetNo"    # I
    .param p3, "expandedBottomSheetNo"    # I

    .line 96
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Confirm Batch"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Courier Id"

    .line 97
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Batch Size"

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Settled Bottom Sheet No"

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Expanded Bottom Sheet No"

    .line 100
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Settled Bottom Sheet Ratio"

    .line 101
    invoke-static {p2, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->calculateRatioPercent(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Expanded Bottom Sheet Ratio"

    .line 102
    invoke-static {p3, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->calculateRatioPercent(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 96
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 104
    return-void
.end method

.method public static logFinalizeTripEvent(Ljava/lang/String;III)V
    .registers 8
    .param p0, "courierId"    # Ljava/lang/String;
    .param p1, "batchSize"    # I
    .param p2, "syncedShipmentsNo"    # I
    .param p3, "notSyncedShipmentsNo"    # I

    .line 177
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Finalize Trip"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Courier Id"

    .line 178
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Batch Size"

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Synced Shipments No"

    .line 180
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Not-Synced Shipments No"

    .line 181
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Synced Shipments Ratio"

    .line 182
    invoke-static {p2, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->calculateRatioPercent(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Not-Synced Shipments Ratio"

    .line 183
    invoke-static {p3, p1}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->calculateRatioPercent(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 177
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 185
    return-void
.end method

.method public static logInEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "status"    # Ljava/lang/String;

    .line 209
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Log_In"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "User_Id"

    .line 210
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Status"

    .line 211
    invoke-virtual {v1, v2, p1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 209
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 213
    return-void
.end method

.method public static logNumberRequestAndResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Response Request Number"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Numbers"

    .line 200
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Status"

    .line 201
    invoke-virtual {v1, v2, p1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 199
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 204
    return-void
.end method

.method public static logOutEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "status"    # Ljava/lang/String;

    .line 218
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Log_Out"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "User_Id"

    .line 219
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Status"

    .line 220
    invoke-virtual {v1, v2, p1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 218
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 222
    return-void
.end method

.method public static logReturnShipment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "productId"    # Ljava/lang/String;
    .param p1, "reasonId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 161
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Return Shipment"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Product ID"

    .line 162
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Reason ID"

    .line 163
    invoke-virtual {v1, v2, p1}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Reason"

    .line 164
    invoke-virtual {v1, v2, p2}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 161
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 166
    return-void
.end method

.method public static mapFragmentEvent(Ljava/lang/String;)V
    .registers 4
    .param p0, "status"    # Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Map_Fragment"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Status"

    .line 244
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 243
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 246
    return-void
.end method

.method public static searchWithBarcodeEvent(Ljava/lang/String;)V
    .registers 4
    .param p0, "status"    # Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Search_With_Barcode"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Status"

    .line 236
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 235
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 238
    return-void
.end method

.method public static settingActivityEvent(Ljava/lang/String;)V
    .registers 4
    .param p0, "status"    # Ljava/lang/String;

    .line 227
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "Setting_Activity"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "Status"

    .line 228
    invoke-virtual {v1, v2, p0}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 227
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 230
    return-void
.end method
