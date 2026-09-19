###### Class com.digikala.dms.core.GpsLocationReceiver (com.digikala.dms.core.GpsLocationReceiver)
.class public Lcom/digikala/dms/core/GpsLocationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationReceiver.java"


# instance fields
.field gps_enabled:Z

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/core/GpsLocationReceiver;->gps_enabled:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 18
    if-eqz p2, :cond_4a

    if-eqz p1, :cond_4a

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 22
    nop

    .line 23
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/digikala/dms/core/GpsLocationReceiver;->mLocationManager:Landroid/location/LocationManager;

    .line 25
    iget-object v0, p0, Lcom/digikala/dms/core/GpsLocationReceiver;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/digikala/dms/core/GpsLocationReceiver;->gps_enabled:Z

    .line 26
    iget-boolean v0, p0, Lcom/digikala/dms/core/GpsLocationReceiver;->gps_enabled:Z

    if-nez v0, :cond_3d

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/digikala/dms/core/NoGpsAccessActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v0, "pushIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    .end local v0    # "pushIntent":Landroid/content/Intent;
    goto :goto_4a

    .line 31
    :cond_3d
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 32
    invoke-static {}, Lcom/digikala/dms/core/NoGpsAccessActivity;->getInstance()Lcom/digikala/dms/core/NoGpsAccessActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digikala/dms/core/NoGpsAccessActivity;->finish()V

    .line 39
    :cond_4a
    :goto_4a
    return-void
.end method
