###### Class com.digikala.dms.helper.LocationHelper (com.digikala.dms.helper.LocationHelper)
.class public Lcom/digikala/dms/helper/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digikala/dms/helper/LocationHelper$OnLocationReceivedListener;
    }
.end annotation


# static fields
.field private static final sConnectionCallbacks:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private static sGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private static final sOnConnectionFailedListener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private static sOnLocationReceivedListener:Lcom/digikala/dms/helper/LocationHelper$OnLocationReceivedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/digikala/dms/helper/LocationHelper$1;

    invoke-direct {v0}, Lcom/digikala/dms/helper/LocationHelper$1;-><init>()V

    sput-object v0, Lcom/digikala/dms/helper/LocationHelper;->sConnectionCallbacks:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 52
    new-instance v0, Lcom/digikala/dms/helper/LocationHelper$2;

    invoke-direct {v0}, Lcom/digikala/dms/helper/LocationHelper$2;-><init>()V

    sput-object v0, Lcom/digikala/dms/helper/LocationHelper;->sOnConnectionFailedListener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 1

    .line 23
    sget-object v0, Lcom/digikala/dms/helper/LocationHelper;->sGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$100()Lcom/digikala/dms/helper/LocationHelper$OnLocationReceivedListener;
    .registers 1

    .line 23
    sget-object v0, Lcom/digikala/dms/helper/LocationHelper;->sOnLocationReceivedListener:Lcom/digikala/dms/helper/LocationHelper$OnLocationReceivedListener;

    return-object v0
.end method

.method public static declared-synchronized connectToGoogleApi()V
    .registers 2

    const-class v0, Lcom/digikala/dms/helper/LocationHelper;

    monitor-enter v0

    .line 75
    :try_start_3
    sget-object v1, Lcom/digikala/dms/helper/LocationHelper;->sGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 78
    goto :goto_f

    .line 74
    :catchall_9
    move-exception v1

    goto :goto_11

    .line 76
    :catch_b
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_f
    monitor-exit v0

    return-void

    .line 74
    :goto_11
    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized createGoogleApiClient(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 5
    .param p0, "connectionCallbacks"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
    .param p1, "onConnectionFailedListener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    const-class v0, Lcom/digikala/dms/helper/LocationHelper;

    monitor-enter v0

    .line 91
    :try_start_3
    sget-object v1, Lcom/digikala/dms/helper/LocationHelper;->sGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v1, :cond_28

    .line 92
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 95
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    sput-object v1, Lcom/digikala/dms/helper/LocationHelper;->sGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    .line 98
    :cond_28
    monitor-exit v0

    return-void

    .line 90
    .end local p0    # "connectionCallbacks":Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
    .end local p1    # "onConnectionFailedListener":Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
    :catchall_2a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized disconnectFromGoogleApi()V
    .registers 2

    const-class v0, Lcom/digikala/dms/helper/LocationHelper;

    monitor-enter v0

    .line 85
    :try_start_3
    sget-object v1, Lcom/digikala/dms/helper/LocationHelper;->sGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/digikala/dms/helper/LocationHelper;->sGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 86
    sget-object v1, Lcom/digikala/dms/helper/LocationHelper;->sGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 88
    :cond_14
    monitor-exit v0

    return-void

    .line 84
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLocation()Lcom/digikala/dms/model/domain/LatLong;
    .registers 1

    .line 104
    invoke-static {}, Lcom/digikala/dms/helper/UserTracking;->getLatLong()Lcom/digikala/dms/model/domain/LatLong;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized setOnLocationReceivedListener(Lcom/digikala/dms/helper/LocationHelper$OnLocationReceivedListener;)V
    .registers 4
    .param p0, "onLocationReceivedListener"    # Lcom/digikala/dms/helper/LocationHelper$OnLocationReceivedListener;

    const-class v0, Lcom/digikala/dms/helper/LocationHelper;

    monitor-enter v0

    .line 66
    :try_start_3
    sput-object p0, Lcom/digikala/dms/helper/LocationHelper;->sOnLocationReceivedListener:Lcom/digikala/dms/helper/LocationHelper$OnLocationReceivedListener;

    .line 67
    sget-object v1, Lcom/digikala/dms/helper/LocationHelper;->sConnectionCallbacks:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    sget-object v2, Lcom/digikala/dms/helper/LocationHelper;->sOnConnectionFailedListener:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-static {v1, v2}, Lcom/digikala/dms/helper/LocationHelper;->createGoogleApiClient(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 68
    monitor-exit v0

    return-void

    .line 65
    .end local p0    # "onLocationReceivedListener":Lcom/digikala/dms/helper/LocationHelper$OnLocationReceivedListener;
    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

###### Class com.digikala.dms.helper.LocationHelper.AnonymousClass1 (com.digikala.dms.helper.LocationHelper$1)
.class final Lcom/digikala/dms/helper/LocationHelper$1;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/helper/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 31
    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/digikala/dms/core/App;->getApplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_21

    .line 39
    return-void

    .line 41
    :cond_21
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-static {}, Lcom/digikala/dms/helper/LocationHelper;->access$000()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    .line 42
    .local v0, "mLastLocation":Landroid/location/Location;
    if-eqz v0, :cond_41

    .line 43
    invoke-static {}, Lcom/digikala/dms/helper/LocationHelper;->access$100()Lcom/digikala/dms/helper/LocationHelper$OnLocationReceivedListener;

    move-result-object v1

    new-instance v2, Lcom/digikala/dms/model/domain/LatLong;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/digikala/dms/model/domain/LatLong;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/digikala/dms/helper/LocationHelper$OnLocationReceivedListener;->locationReceived(Lcom/digikala/dms/model/domain/LatLong;)V

    .line 45
    :cond_41
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2
    .param p1, "i"    # I

    .line 50
    return-void
.end method

###### Class com.digikala.dms.helper.LocationHelper.AnonymousClass2 (com.digikala.dms.helper.LocationHelper$2)
.class final Lcom/digikala/dms/helper/LocationHelper$2;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/helper/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .line 57
    return-void
.end method

###### Class com.digikala.dms.helper.LocationHelper.OnLocationReceivedListener (com.digikala.dms.helper.LocationHelper$OnLocationReceivedListener)
.class public interface abstract Lcom/digikala/dms/helper/LocationHelper$OnLocationReceivedListener;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digikala/dms/helper/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLocationReceivedListener"
.end annotation


# virtual methods
.method public abstract locationReceived(Lcom/digikala/dms/model/domain/LatLong;)V
.end method
