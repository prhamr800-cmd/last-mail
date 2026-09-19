###### Class com.digikala.dms.core.GpsService (com.digikala.dms.core.GpsService)
.class public Lcom/digikala/dms/core/GpsService;
.super Landroid/app/Service;
.source "GpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/core/GpsService$LocationListener;
    }
.end annotation


# static fields
.field private static final LOCATION_DISTANCE:F = 10.0f

.field private static final LOCATION_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MyLocationService"


# instance fields
.field mLocationListeners:[Lcom/digikala/dms/core/GpsService$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private userTracking:Lcom/digikala/dms/helper/UserTracking;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digikala/dms/core/GpsService;->mLocationManager:Landroid/location/LocationManager;

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/digikala/dms/core/GpsService$LocationListener;

    new-instance v1, Lcom/digikala/dms/core/GpsService$LocationListener;

    const-string v2, "passive"

    invoke-direct {v1, p0, v2}, Lcom/digikala/dms/core/GpsService$LocationListener;-><init>(Lcom/digikala/dms/core/GpsService;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/digikala/dms/core/GpsService;->mLocationListeners:[Lcom/digikala/dms/core/GpsService$LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/core/GpsService;)Lcom/digikala/dms/helper/UserTracking;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/core/GpsService;

    .line 25
    iget-object v0, p0, Lcom/digikala/dms/core/GpsService;->userTracking:Lcom/digikala/dms/helper/UserTracking;

    return-object v0
.end method

.method static synthetic access$002(Lcom/digikala/dms/core/GpsService;Lcom/digikala/dms/helper/UserTracking;)Lcom/digikala/dms/helper/UserTracking;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/core/GpsService;
    .param p1, "x1"    # Lcom/digikala/dms/helper/UserTracking;

    .line 25
    iput-object p1, p0, Lcom/digikala/dms/core/GpsService;->userTracking:Lcom/digikala/dms/helper/UserTracking;

    return-object p1
.end method

.method static synthetic access$100(Lcom/digikala/dms/core/GpsService;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/core/GpsService;

    .line 25
    iget-object v0, p0, Lcom/digikala/dms/core/GpsService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/digikala/dms/core/GpsService;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/core/GpsService;
    .param p1, "x1"    # Landroid/location/LocationManager;

    .line 25
    iput-object p1, p0, Lcom/digikala/dms/core/GpsService;->mLocationManager:Landroid/location/LocationManager;

    return-object p1
.end method

.method public static getBatteryLevel(Landroid/content/Context;)F
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 130
    .local v0, "batteryStatus":Landroid/content/Intent;
    const/4 v1, -0x1

    .line 131
    .local v1, "batteryLevel":I
    const/4 v2, 0x1

    .line 132
    .local v2, "batteryScale":I
    if-eqz v0, :cond_1c

    .line 133
    const-string v3, "level"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 134
    const-string v3, "scale"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 136
    :cond_1c
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    return v3
.end method

.method private initializeLocationManager()V
    .registers 3

    .line 186
    const-string v0, "MyLocationService"

    const-string v1, "initializeLocationManager - LOCATION_INTERVAL: 1000 LOCATION_DISTANCE: 10.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/digikala/dms/core/GpsService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_19

    .line 188
    invoke-virtual {p0}, Lcom/digikala/dms/core/GpsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/digikala/dms/core/GpsService;->mLocationManager:Landroid/location/LocationManager;

    .line 190
    :cond_19
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 8

    .line 140
    invoke-direct {p0}, Lcom/digikala/dms/core/GpsService;->initializeLocationManager()V

    .line 143
    :try_start_3
    iget-object v0, p0, Lcom/digikala/dms/core/GpsService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/digikala/dms/core/GpsService;->mLocationListeners:[Lcom/digikala/dms/core/GpsService$LocationListener;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_13} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_13} :catch_14

    goto :goto_38

    .line 151
    :catch_14
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MyLocationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network provider does not exist, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 149
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_30
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "MyLocationService"

    const-string v2, "fail to request location update, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :goto_38
    nop

    .line 155
    :goto_39
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .line 160
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 161
    const-string v0, "GPSService"

    const-string v1, "ondestroy!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/digikala/dms/core/GpsService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3a

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/digikala/dms/core/GpsService;->mLocationListeners:[Lcom/digikala/dms/core/GpsService$LocationListener;

    array-length v1, v1

    if-ge v0, v1, :cond_3a

    .line 165
    :try_start_14
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_25

    .line 166
    return-void

    .line 168
    :cond_25
    iget-object v1, p0, Lcom/digikala/dms/core/GpsService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/digikala/dms/core/GpsService;->mLocationListeners:[Lcom/digikala/dms/core/GpsService$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_2f

    .line 171
    goto :goto_37

    .line 169
    :catch_2f
    move-exception v1

    .line 170
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "MyLocationService"

    const-string v3, "fail to remove location listener, ignore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 179
    .end local v0    # "i":I
    :cond_3a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.techtrainner"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "yourvalue"

    const-string v2, "torestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Lcom/digikala/dms/core/GpsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 77
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/digikala/dms/core/GpsService$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/digikala/dms/core/GpsService$1;-><init>(Lcom/digikala/dms/core/GpsService;Landroid/content/Intent;Landroid/os/Handler;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    const/4 v1, 0x1

    return v1
.end method

###### Class com.digikala.dms.core.GpsService.AnonymousClass1 (com.digikala.dms.core.GpsService$1)
.class Lcom/digikala/dms/core/GpsService$1;
.super Ljava/lang/Object;
.source "GpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/core/GpsService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/core/GpsService;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/digikala/dms/core/GpsService;Landroid/content/Intent;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/core/GpsService;

    .line 77
    iput-object p1, p0, Lcom/digikala/dms/core/GpsService$1;->this$0:Lcom/digikala/dms/core/GpsService;

    iput-object p2, p0, Lcom/digikala/dms/core/GpsService$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/digikala/dms/core/GpsService$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "gps_enabled":Z
    const-string v1, "GPSService"

    const-string v2, "onStartCommand!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/digikala/dms/core/GpsService$1;->val$intent:Landroid/content/Intent;

    if-eqz v1, :cond_ba

    iget-object v1, p0, Lcom/digikala/dms/core/GpsService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_ba

    .line 83
    invoke-static {}, Lcom/digikala/dms/util/Util;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "datetime":Ljava/lang/String;
    iget-object v2, p0, Lcom/digikala/dms/core/GpsService$1;->this$0:Lcom/digikala/dms/core/GpsService;

    invoke-virtual {v2}, Lcom/digikala/dms/core/GpsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "packId":Ljava/lang/String;
    invoke-static {}, Lcom/digikala/dms/helper/LocationHelper;->getLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v10

    .line 86
    .local v10, "latLong":Lcom/digikala/dms/model/domain/LatLong;
    const-string v2, "Track_request"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v2, "latLongGpsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/digikala/dms/core/GpsService$1;->this$0:Lcom/digikala/dms/core/GpsService;

    new-instance v3, Lcom/digikala/dms/helper/UserTracking;

    const/4 v4, 0x1

    invoke-direct {v3, v9, v4, v4}, Lcom/digikala/dms/helper/UserTracking;-><init>(Ljava/lang/String;II)V

    invoke-static {v2, v3}, Lcom/digikala/dms/core/GpsService;->access$002(Lcom/digikala/dms/core/GpsService;Lcom/digikala/dms/helper/UserTracking;)Lcom/digikala/dms/helper/UserTracking;

    .line 90
    iget-object v2, p0, Lcom/digikala/dms/core/GpsService$1;->this$0:Lcom/digikala/dms/core/GpsService;

    invoke-static {v2}, Lcom/digikala/dms/core/GpsService;->access$000(Lcom/digikala/dms/core/GpsService;)Lcom/digikala/dms/helper/UserTracking;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/helper/UserTracking;->start()V

    .line 93
    iget-object v2, p0, Lcom/digikala/dms/core/GpsService$1;->this$0:Lcom/digikala/dms/core/GpsService;

    .line 94
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 93
    invoke-static {v2, v3}, Lcom/digikala/dms/core/GpsService;->access$102(Lcom/digikala/dms/core/GpsService;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 96
    iget-object v2, p0, Lcom/digikala/dms/core/GpsService$1;->this$0:Lcom/digikala/dms/core/GpsService;

    invoke-static {v2}, Lcom/digikala/dms/core/GpsService;->access$100(Lcom/digikala/dms/core/GpsService;)Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 98
    if-eqz v0, :cond_9a

    .line 99
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v2

    if-eqz v2, :cond_9a

    .line 100
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/core/NoGpsAccessActivity;->finish()V

    .line 105
    :cond_9a
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/core/GpsService;->getBatteryLevel(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, "battery":Ljava/lang/String;
    const-string v6, ""

    new-instance v7, Lcom/digikala/dms/core/GpsService$1$1;

    invoke-direct {v7, p0}, Lcom/digikala/dms/core/GpsService$1$1;-><init>(Lcom/digikala/dms/core/GpsService$1;)V

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, v10

    move-object v4, v1

    move-object v5, v11

    invoke-static/range {v2 .. v8}, Lcom/digikala/dms/helper/webservice/WebApi;->postLocation(Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 119
    .end local v1    # "datetime":Ljava/lang/String;
    .end local v9    # "packId":Ljava/lang/String;
    .end local v10    # "latLong":Lcom/digikala/dms/model/domain/LatLong;
    .end local v11    # "battery":Ljava/lang/String;
    :cond_ba
    iget-object v1, p0, Lcom/digikala/dms/core/GpsService$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method

###### Class com.digikala.dms.core.GpsService.AnonymousClass1.C00081 (com.digikala.dms.core.GpsService$1$1)
.class Lcom/digikala/dms/core/GpsService$1$1;
.super Ljava/lang/Object;
.source "GpsService.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/core/GpsService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/digikala/dms/core/GpsService$1;


# direct methods
.method constructor <init>(Lcom/digikala/dms/core/GpsService$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/core/GpsService$1;

    .line 106
    iput-object p1, p0, Lcom/digikala/dms/core/GpsService$1$1;->this$1:Lcom/digikala/dms/core/GpsService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 114
    const-string v0, "Track_Errorresponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/Boolean;

    .line 109
    const-string v0, "Track_response"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 106
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/core/GpsService$1$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.digikala.dms.core.GpsService.LocationListener (com.digikala.dms.core.GpsService$LocationListener)
.class Lcom/digikala/dms/core/GpsService$LocationListener;
.super Ljava/lang/Object;
.source "GpsService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/core/GpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/digikala/dms/core/GpsService;


# direct methods
.method public constructor <init>(Lcom/digikala/dms/core/GpsService;Ljava/lang/String;)V
    .registers 5
    .param p2, "provider"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/digikala/dms/core/GpsService$LocationListener;->this$0:Lcom/digikala/dms/core/GpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string p1, "MyLocationService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance p1, Landroid/location/Location;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/digikala/dms/core/GpsService$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 39
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;

    .line 43
    const-string v0, "MyLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/digikala/dms/core/GpsService$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 45
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 49
    const-string v0, "MyLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 54
    const-string v0, "MyLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 59
    const-string v0, "MyLocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method
