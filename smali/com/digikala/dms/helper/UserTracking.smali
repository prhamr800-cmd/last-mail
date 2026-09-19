###### Class com.digikala.dms.helper.UserTracking (com.digikala.dms.helper.UserTracking)
.class public Lcom/digikala/dms/helper/UserTracking;
.super Ljava/lang/Object;
.source "UserTracking.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static PERMISSIONS_Location:[Ljava/lang/String; = null

.field private static final REQUEST_LOCATION_:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field public static final TAG_REQUEST:Ljava/lang/String;

.field private static locationForService:Landroid/location/Location;

.field private static mLastLocation:Landroid/location/Location;


# instance fields
.field private fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field gps_enabled:Z

.field private mContext:Landroid/content/Context;

.field private mDeliveryId:Ljava/lang/String;

.field private mDistributionPointId:I

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private mTimeInterval:I

.field private networkOrGPS:Ljava/lang/String;

.field network_enabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 58
    const-class v0, Lcom/digikala/dms/helper/UserTracking;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/UserTracking;->TAG:Ljava/lang/String;

    .line 59
    const-class v0, Lcom/digikala/dms/helper/UserTracking;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/helper/UserTracking;->TAG_REQUEST:Ljava/lang/String;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/digikala/dms/helper/UserTracking;->PERMISSIONS_Location:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/helper/UserTracking;->gps_enabled:Z

    .line 81
    iput-boolean v0, p0, Lcom/digikala/dms/helper/UserTracking;->network_enabled:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "deliveryId"    # Ljava/lang/String;
    .param p2, "timeInterval"    # I
    .param p3, "distributionCenterId"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/digikala/dms/helper/UserTracking;->gps_enabled:Z

    .line 81
    iput-boolean v0, p0, Lcom/digikala/dms/helper/UserTracking;->network_enabled:Z

    .line 89
    iput-object p1, p0, Lcom/digikala/dms/helper/UserTracking;->mDeliveryId:Ljava/lang/String;

    .line 90
    if-nez p2, :cond_f

    const/16 v0, 0x1b58

    goto :goto_10

    :cond_f
    move v0, p2

    :goto_10
    iput v0, p0, Lcom/digikala/dms/helper/UserTracking;->mTimeInterval:I

    .line 91
    iput p3, p0, Lcom/digikala/dms/helper/UserTracking;->mDistributionPointId:I

    .line 95
    return-void
.end method

.method static synthetic access$002(Landroid/location/Location;)Landroid/location/Location;
    .registers 1
    .param p0, "x0"    # Landroid/location/Location;

    .line 53
    sput-object p0, Lcom/digikala/dms/helper/UserTracking;->locationForService:Landroid/location/Location;

    return-object p0
.end method

.method private connectToGoogleApiClient()V
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_11

    .line 127
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 128
    :cond_11
    return-void
.end method

.method private createLocationRequest()V
    .registers 4

    .line 147
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 148
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget v1, p0, Lcom/digikala/dms/helper/UserTracking;->mTimeInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 149
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget v1, p0, Lcom/digikala/dms/helper/UserTracking;->mTimeInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 150
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 151
    return-void
.end method

.method private disconnectGoogleApiClient()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 132
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 133
    :cond_11
    return-void
.end method

.method static getLatLong()Lcom/digikala/dms/model/domain/LatLong;
    .registers 5

    .line 265
    sget-object v0, Lcom/digikala/dms/helper/UserTracking;->locationForService:Landroid/location/Location;

    if-eqz v0, :cond_16

    .line 266
    new-instance v0, Lcom/digikala/dms/model/domain/LatLong;

    sget-object v1, Lcom/digikala/dms/helper/UserTracking;->locationForService:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    sget-object v3, Lcom/digikala/dms/helper/UserTracking;->locationForService:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/digikala/dms/model/domain/LatLong;-><init>(DD)V

    goto :goto_2d

    .line 267
    :cond_16
    sget-object v0, Lcom/digikala/dms/helper/UserTracking;->mLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_2c

    .line 268
    new-instance v0, Lcom/digikala/dms/model/domain/LatLong;

    sget-object v1, Lcom/digikala/dms/helper/UserTracking;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    sget-object v3, Lcom/digikala/dms/helper/UserTracking;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/digikala/dms/model/domain/LatLong;-><init>(DD)V

    goto :goto_2d

    .line 270
    :cond_2c
    const/4 v0, 0x0

    .line 273
    .local v0, "latLong":Lcom/digikala/dms/model/domain/LatLong;
    :goto_2d
    return-object v0
.end method

.method private setGoogleApi()V
    .registers 3

    .line 136
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 142
    invoke-direct {p0}, Lcom/digikala/dms/helper/UserTracking;->connectToGoogleApiClient()V

    .line 143
    return-void
.end method

.method private startLocationUpdates()V
    .registers 8

    .line 155
    invoke-direct {p0}, Lcom/digikala/dms/helper/UserTracking;->createLocationRequest()V

    .line 157
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 158
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 159
    return-void

    .line 161
    :cond_1c
    iget-boolean v0, p0, Lcom/digikala/dms/helper/UserTracking;->gps_enabled:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/digikala/dms/helper/UserTracking;->network_enabled:Z

    if-nez v0, :cond_25

    .line 162
    nop

    .line 168
    :cond_25
    :try_start_25
    iget-boolean v0, p0, Lcom/digikala/dms/helper/UserTracking;->network_enabled:Z

    if-eqz v0, :cond_2e

    .line 169
    const-string v0, "network"

    iput-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->networkOrGPS:Ljava/lang/String;

    goto :goto_32

    .line 172
    :cond_2e
    const-string v0, "gps"

    iput-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->networkOrGPS:Ljava/lang/String;

    .line 174
    :goto_32
    iget-object v1, p0, Lcom/digikala/dms/helper/UserTracking;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/digikala/dms/helper/UserTracking;->networkOrGPS:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/digikala/dms/helper/UserTracking$1;

    invoke-direct {v6, p0}, Lcom/digikala/dms/helper/UserTracking$1;-><init>(Lcom/digikala/dms/helper/UserTracking;)V

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_41} :catch_42

    .line 208
    goto :goto_46

    .line 206
    :catch_42
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method private startTracking()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 111
    invoke-direct {p0}, Lcom/digikala/dms/helper/UserTracking;->startLocationUpdates()V

    .line 113
    :cond_f
    return-void
.end method

.method private stopLocationUpdates()V
    .registers 1

    .line 213
    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 217
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 218
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 219
    return-void

    .line 222
    :cond_19
    invoke-direct {p0}, Lcom/digikala/dms/helper/UserTracking;->startTracking()V

    .line 223
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2
    .param p1, "i"    # I

    .line 228
    return-void
.end method

.method public start()V
    .registers 3

    .line 98
    invoke-direct {p0}, Lcom/digikala/dms/helper/UserTracking;->setGoogleApi()V

    .line 100
    nop

    .line 101
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mLocationManager:Landroid/location/LocationManager;

    .line 103
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/digikala/dms/helper/UserTracking;->gps_enabled:Z

    .line 104
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/digikala/dms/helper/UserTracking;->network_enabled:Z

    .line 107
    return-void
.end method

.method public stopTracking()V
    .registers 2

    .line 116
    const-string v0, "stopTracking"

    invoke-static {v0}, Lcom/digikala/dms/helper/fabric/answers/AnswersHelper;->locationServiceStop(Ljava/lang/String;)V

    .line 117
    const-string v0, "stopTracking"

    invoke-static {v0}, Lcom/digikala/dms/helper/firebase/analytics/AnalyticHelper;->locationServiceStop(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/digikala/dms/helper/UserTracking;->stopLocationUpdates()V

    .line 119
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 120
    iget-object v0, p0, Lcom/digikala/dms/helper/UserTracking;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 123
    :cond_1a
    return-void
.end method

###### Class com.digikala.dms.helper.UserTracking.AnonymousClass1 (com.digikala.dms.helper.UserTracking$1)
.class Lcom/digikala/dms/helper/UserTracking$1;
.super Ljava/lang/Object;
.source "UserTracking.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/digikala/dms/helper/UserTracking;->startLocationUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digikala/dms/helper/UserTracking;


# direct methods
.method constructor <init>(Lcom/digikala/dms/helper/UserTracking;)V
    .registers 2
    .param p1, "this$0"    # Lcom/digikala/dms/helper/UserTracking;

    .line 174
    iput-object p1, p0, Lcom/digikala/dms/helper/UserTracking$1;->this$0:Lcom/digikala/dms/helper/UserTracking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .line 177
    invoke-static {p1}, Lcom/digikala/dms/helper/UserTracking;->access$002(Landroid/location/Location;)Landroid/location/Location;

    .line 178
    const-string v0, "lattlong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 194
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 189
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 184
    return-void
.end method
