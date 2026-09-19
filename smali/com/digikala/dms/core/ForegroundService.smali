###### Class com.digikala.dms.core.ForegroundService (com.digikala.dms.core.ForegroundService)
.class public Lcom/digikala/dms/core/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "ForegroundServiceChannel"

.field private static final LOCATION_DISTANCE:F = 10.0f

.field private static final LOCATION_INTERVAL:I = 0x3e8


# instance fields
.field private mLocationManager:Landroid/location/LocationManager;

.field private userTracking:Lcom/digikala/dms/helper/UserTracking;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/digikala/dms/core/ForegroundService;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/digikala/dms/core/ForegroundService;)Lcom/digikala/dms/helper/UserTracking;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/core/ForegroundService;

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/core/ForegroundService;->userTracking:Lcom/digikala/dms/helper/UserTracking;

    return-object v0
.end method

.method static synthetic access$002(Lcom/digikala/dms/core/ForegroundService;Lcom/digikala/dms/helper/UserTracking;)Lcom/digikala/dms/helper/UserTracking;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/core/ForegroundService;
    .param p1, "x1"    # Lcom/digikala/dms/helper/UserTracking;

    .line 28
    iput-object p1, p0, Lcom/digikala/dms/core/ForegroundService;->userTracking:Lcom/digikala/dms/helper/UserTracking;

    return-object p1
.end method

.method static synthetic access$100(Lcom/digikala/dms/core/ForegroundService;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/core/ForegroundService;

    .line 28
    iget-object v0, p0, Lcom/digikala/dms/core/ForegroundService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/digikala/dms/core/ForegroundService;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/digikala/dms/core/ForegroundService;
    .param p1, "x1"    # Landroid/location/LocationManager;

    .line 28
    iput-object p1, p0, Lcom/digikala/dms/core/ForegroundService;->mLocationManager:Landroid/location/LocationManager;

    return-object p1
.end method

.method private createNotificationChannel()V
    .registers 5

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1b

    .line 136
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "ForegroundServiceChannel"

    const-string v2, "Foreground Service Channel"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 142
    .local v0, "serviceChannel":Landroid/app/NotificationChannel;
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/digikala/dms/core/ForegroundService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 143
    .local v1, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 145
    .end local v0    # "serviceChannel":Landroid/app/NotificationChannel;
    .end local v1    # "manager":Landroid/app/NotificationManager;
    :cond_1b
    return-void
.end method

.method public static getBatteryLevel(Landroid/content/Context;)F
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, "batteryStatus":Landroid/content/Intent;
    const/4 v1, -0x1

    .line 126
    .local v1, "batteryLevel":I
    const/4 v2, 0x1

    .line 127
    .local v2, "batteryScale":I
    if-eqz v0, :cond_1c

    .line 128
    const-string v3, "level"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 129
    const-string v3, "scale"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 131
    :cond_1c
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    return v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 113
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 114
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 43
    const-string v0, "inputExtra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "input":Ljava/lang/String;
    invoke-direct {p0}, Lcom/digikala/dms/core/ForegroundService;->createNotificationChannel()V

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/digikala/dms/view/activity/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v1, "notificationIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 49
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v4, "ForegroundServiceChannel"

    invoke-direct {v3, p0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v4, "Foreground Service"

    .line 50
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 55
    .local v3, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/digikala/dms/core/ForegroundService;->startForeground(ILandroid/app/Notification;)V

    .line 58
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 59
    .local v4, "handler":Landroid/os/Handler;
    new-instance v5, Lcom/digikala/dms/core/ForegroundService$1;

    invoke-direct {v5, p0, p1, v4}, Lcom/digikala/dms/core/ForegroundService$1;-><init>(Lcom/digikala/dms/core/ForegroundService;Landroid/content/Intent;Landroid/os/Handler;)V

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    const/4 v5, 0x2

    return v5
.end method

###### Class com.digikala.dms.core.ForegroundService.AnonymousClass1 (com.digikala.dms.core.ForegroundService$1)
.class Lcom/digikala/dms/core/ForegroundService$1;
.super Ljava/lang/Object;
.source "ForegroundService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/core/ForegroundService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/core/ForegroundService;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/digikala/dms/core/ForegroundService;Landroid/content/Intent;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/digikala/dms/core/ForegroundService;

    .line 59
    iput-object p1, p0, Lcom/digikala/dms/core/ForegroundService$1;->this$0:Lcom/digikala/dms/core/ForegroundService;

    iput-object p2, p0, Lcom/digikala/dms/core/ForegroundService$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/digikala/dms/core/ForegroundService$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "gps_enabled":Z
    const-string v1, "ForegroundService"

    const-string v2, "onStartCommand!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/digikala/dms/core/ForegroundService$1;->val$intent:Landroid/content/Intent;

    if-eqz v1, :cond_ba

    iget-object v1, p0, Lcom/digikala/dms/core/ForegroundService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_ba

    .line 65
    invoke-static {}, Lcom/digikala/dms/util/Util;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "datetime":Ljava/lang/String;
    iget-object v2, p0, Lcom/digikala/dms/core/ForegroundService$1;->this$0:Lcom/digikala/dms/core/ForegroundService;

    invoke-virtual {v2}, Lcom/digikala/dms/core/ForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/util/Util;->getBatchId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "packId":Ljava/lang/String;
    invoke-static {}, Lcom/digikala/dms/helper/LocationHelper;->getLocation()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v10

    .line 68
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

    .line 69
    const-string v2, "latLongGpsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/digikala/dms/core/ForegroundService$1;->this$0:Lcom/digikala/dms/core/ForegroundService;

    new-instance v3, Lcom/digikala/dms/helper/UserTracking;

    const/4 v4, 0x1

    invoke-direct {v3, v9, v4, v4}, Lcom/digikala/dms/helper/UserTracking;-><init>(Ljava/lang/String;II)V

    invoke-static {v2, v3}, Lcom/digikala/dms/core/ForegroundService;->access$002(Lcom/digikala/dms/core/ForegroundService;Lcom/digikala/dms/helper/UserTracking;)Lcom/digikala/dms/helper/UserTracking;

    .line 72
    iget-object v2, p0, Lcom/digikala/dms/core/ForegroundService$1;->this$0:Lcom/digikala/dms/core/ForegroundService;

    invoke-static {v2}, Lcom/digikala/dms/core/ForegroundService;->access$000(Lcom/digikala/dms/core/ForegroundService;)Lcom/digikala/dms/helper/UserTracking;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/helper/UserTracking;->start()V

    .line 75
    iget-object v2, p0, Lcom/digikala/dms/core/ForegroundService$1;->this$0:Lcom/digikala/dms/core/ForegroundService;

    .line 76
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 75
    invoke-static {v2, v3}, Lcom/digikala/dms/core/ForegroundService;->access$102(Lcom/digikala/dms/core/ForegroundService;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 78
    iget-object v2, p0, Lcom/digikala/dms/core/ForegroundService$1;->this$0:Lcom/digikala/dms/core/ForegroundService;

    invoke-static {v2}, Lcom/digikala/dms/core/ForegroundService;->access$100(Lcom/digikala/dms/core/ForegroundService;)Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 80
    if-eqz v0, :cond_9a

    .line 81
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v2

    if-eqz v2, :cond_9a

    .line 82
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/digikala/dms/core/NoGpsAccessActivity;->finish()V

    .line 87
    :cond_9a
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/digikala/dms/core/ForegroundService;->getBatteryLevel(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, "battery":Ljava/lang/String;
    const-string v6, ""

    new-instance v7, Lcom/digikala/dms/core/ForegroundService$1$1;

    invoke-direct {v7, p0}, Lcom/digikala/dms/core/ForegroundService$1$1;-><init>(Lcom/digikala/dms/core/ForegroundService$1;)V

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, v10

    move-object v4, v1

    move-object v5, v11

    invoke-static/range {v2 .. v8}, Lcom/digikala/dms/helper/webservice/WebApi;->postLocation(Ljava/lang/String;Lcom/digikala/dms/model/domain/LatLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;Lcom/digikala/dms/helper/webservice/WebApiRequest$LoadRequests;)Lcom/digikala/dms/helper/webservice/WebApiRequest;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/digikala/dms/helper/webservice/WebApiRequest;->send()V

    .line 101
    .end local v1    # "datetime":Ljava/lang/String;
    .end local v9    # "packId":Ljava/lang/String;
    .end local v10    # "latLong":Lcom/digikala/dms/model/domain/LatLong;
    .end local v11    # "battery":Ljava/lang/String;
    :cond_ba
    iget-object v1, p0, Lcom/digikala/dms/core/ForegroundService$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method

###### Class com.digikala.dms.core.ForegroundService.AnonymousClass1.C00071 (com.digikala.dms.core.ForegroundService$1$1)
.class Lcom/digikala/dms/core/ForegroundService$1$1;
.super Ljava/lang/Object;
.source "ForegroundService.java"

# interfaces
.implements Lcom/digikala/dms/helper/webservice/WebApiRequest$WebApiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/core/ForegroundService$1;->run()V
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
.field final synthetic this$1:Lcom/digikala/dms/core/ForegroundService$1;


# direct methods
.method constructor <init>(Lcom/digikala/dms/core/ForegroundService$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/digikala/dms/core/ForegroundService$1;

    .line 88
    iput-object p1, p0, Lcom/digikala/dms/core/ForegroundService$1$1;->this$1:Lcom/digikala/dms/core/ForegroundService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 96
    const-string v0, "Track_Errorresponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onResponse(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/Boolean;

    .line 91
    const-string v0, "Track_response"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 88
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/digikala/dms/core/ForegroundService$1$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method
