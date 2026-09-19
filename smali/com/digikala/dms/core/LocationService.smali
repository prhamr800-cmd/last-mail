###### Class com.digikala.dms.core.LocationService (com.digikala.dms.core.LocationService)
.class public Lcom/digikala/dms/core/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private userTracking:Lcom/digikala/dms/helper/UserTracking;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/digikala/dms/helper/UserTracking;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/core/LocationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 56
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 57
    iget-object v0, p0, Lcom/digikala/dms/core/LocationService;->userTracking:Lcom/digikala/dms/helper/UserTracking;

    invoke-virtual {v0}, Lcom/digikala/dms/helper/UserTracking;->stopTracking()V

    .line 59
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 35
    sget-object v0, Lcom/digikala/dms/core/LocationService;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_driver_id"

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "driverId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_time_interval"

    .line 40
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, "timeInterval":I
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_distribution_center_id"

    .line 42
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 44
    .local v2, "distributionCenterId":I
    new-instance v3, Lcom/digikala/dms/helper/UserTracking;

    invoke-direct {v3, v0, v1, v2}, Lcom/digikala/dms/helper/UserTracking;-><init>(Ljava/lang/String;II)V

    iput-object v3, p0, Lcom/digikala/dms/core/LocationService;->userTracking:Lcom/digikala/dms/helper/UserTracking;

    .line 45
    .end local v0    # "driverId":Ljava/lang/String;
    .end local v1    # "timeInterval":I
    .end local v2    # "distributionCenterId":I
    goto :goto_3c

    .line 46
    :cond_35
    new-instance v0, Lcom/digikala/dms/helper/UserTracking;

    invoke-direct {v0}, Lcom/digikala/dms/helper/UserTracking;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/core/LocationService;->userTracking:Lcom/digikala/dms/helper/UserTracking;

    .line 48
    :goto_3c
    iget-object v0, p0, Lcom/digikala/dms/core/LocationService;->userTracking:Lcom/digikala/dms/helper/UserTracking;

    invoke-virtual {v0}, Lcom/digikala/dms/helper/UserTracking;->start()V

    .line 50
    const/4 v0, 0x1

    return v0
.end method
