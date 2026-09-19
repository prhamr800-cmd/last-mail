###### Class io.fabric.sdk.android.services.settings.Settings (io.fabric.sdk.android.services.settings.Settings)
.class public Lio/fabric/sdk/android/services/settings/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/settings/Settings$SettingsAccess;,
        Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;
    }
.end annotation


# static fields
.field public static final SETTINGS_CACHE_FILENAME:Ljava/lang/String; = "com.crashlytics.settings.json"

.field private static final SETTINGS_URL_FORMAT:Ljava/lang/String; = "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"


# instance fields
.field private initialized:Z

.field private settingsController:Lio/fabric/sdk/android/services/settings/SettingsController;

.field private final settingsData:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/fabric/sdk/android/services/settings/SettingsData;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsDataLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/settings/Settings;->settingsData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/settings/Settings;->settingsDataLatch:Ljava/util/concurrent/CountDownLatch;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/settings/Settings;->initialized:Z

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lio/fabric/sdk/android/services/settings/Settings$1;)V
    .registers 2
    .param p1, "x0"    # Lio/fabric/sdk/android/services/settings/Settings$1;

    .line 36
    invoke-direct {p0}, Lio/fabric/sdk/android/services/settings/Settings;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/fabric/sdk/android/services/settings/Settings;
    .registers 1

    .line 55
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->access$100()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    return-object v0
.end method

.method private setSettingsData(Lio/fabric/sdk/android/services/settings/SettingsData;)V
    .registers 3
    .param p1, "settingsData"    # Lio/fabric/sdk/android/services/settings/SettingsData;

    .line 178
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/Settings;->settingsData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/Settings;->settingsDataLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 180
    return-void
.end method


# virtual methods
.method public awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;
    .registers 5

    .line 141
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/Settings;->settingsDataLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 142
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/Settings;->settingsData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/settings/SettingsData;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 143
    :catch_e
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Interrupted while waiting for settings data."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v0    # "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearSettings()V
    .registers 3

    .line 116
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/Settings;->settingsData:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public declared-synchronized initialize(Lio/fabric/sdk/android/Kit;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/Settings;
    .registers 34
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;
    .param p2, "idManager"    # Lio/fabric/sdk/android/services/common/IdManager;
    .param p3, "httpRequestFactory"    # Lio/fabric/sdk/android/services/network/HttpRequestFactory;
    .param p4, "versionCode"    # Ljava/lang/String;
    .param p5, "versionName"    # Ljava/lang/String;
    .param p6, "urlEndpoint"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 71
    :try_start_5
    iget-boolean v2, v1, Lio/fabric/sdk/android/services/settings/Settings;->initialized:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9e

    if-eqz v2, :cond_b

    .line 72
    monitor-exit p0

    return-object v1

    .line 75
    :cond_b
    :try_start_b
    iget-object v2, v1, Lio/fabric/sdk/android/services/settings/Settings;->settingsController:Lio/fabric/sdk/android/services/settings/SettingsController;

    const/4 v9, 0x1

    if-nez v2, :cond_9a

    .line 76
    invoke-virtual/range {p1 .. p1}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v10, v2

    .line 77
    .local v10, "context":Landroid/content/Context;
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 78
    .local v11, "appIdentifier":Ljava/lang/String;
    new-instance v2, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v2}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    invoke-virtual {v2, v10}, Lio/fabric/sdk/android/services/common/ApiKey;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 79
    .local v13, "apiKey":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    .line 80
    .local v25, "installerPackageName":Ljava/lang/String;
    new-instance v5, Lio/fabric/sdk/android/services/common/SystemCurrentTimeProvider;

    invoke-direct {v5}, Lio/fabric/sdk/android/services/common/SystemCurrentTimeProvider;-><init>()V

    .line 81
    .local v5, "currentTimeProvider":Lio/fabric/sdk/android/services/common/CurrentTimeProvider;
    new-instance v6, Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;

    invoke-direct {v6}, Lio/fabric/sdk/android/services/settings/DefaultSettingsJsonTransform;-><init>()V

    .line 82
    .local v6, "settingsJsonTransform":Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;
    new-instance v7, Lio/fabric/sdk/android/services/settings/DefaultCachedSettingsIo;

    invoke-direct {v7, v0}, Lio/fabric/sdk/android/services/settings/DefaultCachedSettingsIo;-><init>(Lio/fabric/sdk/android/Kit;)V

    .line 83
    .local v7, "cachedSettingsIo":Lio/fabric/sdk/android/services/settings/CachedSettingsIo;
    invoke-static {v10}, Lio/fabric/sdk/android/services/common/CommonUtils;->getAppIconHashOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 84
    .local v24, "iconHash":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v11, v4, v12

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 86
    .local v3, "settingsUrl":Ljava/lang/String;
    new-instance v8, Lio/fabric/sdk/android/services/settings/DefaultSettingsSpiCall;

    move-object/from16 v2, p3

    move-object/from16 v4, p6

    invoke-direct {v8, v0, v4, v3, v2}, Lio/fabric/sdk/android/services/settings/DefaultSettingsSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V

    .line 89
    .local v8, "settingsSpiCall":Lio/fabric/sdk/android/services/settings/SettingsSpiCall;
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getModelName()Ljava/lang/String;

    move-result-object v14

    .line 90
    .local v14, "deviceModel":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getOsBuildVersionString()Ljava/lang/String;

    move-result-object v15

    .line 91
    .local v15, "osBuildVersion":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getOsDisplayVersionString()Ljava/lang/String;

    move-result-object v16

    .line 92
    .local v16, "osDisplayVersion":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getAdvertisingId()Ljava/lang/String;

    move-result-object v17

    .line 93
    .local v17, "advertisingId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getAppInstallIdentifier()Ljava/lang/String;

    move-result-object v18

    .line 94
    .local v18, "installationId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/IdManager;->getAndroidId()Ljava/lang/String;

    move-result-object v19

    .line 95
    .local v19, "androidId":Ljava/lang/String;
    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v10}, Lio/fabric/sdk/android/services/common/CommonUtils;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v12, v21

    invoke-static {v12}, Lio/fabric/sdk/android/services/common/CommonUtils;->createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 97
    .local v20, "instanceId":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    move-result-object v12

    invoke-virtual {v12}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->getId()I

    move-result v23

    .line 100
    .local v23, "deliveryMechanismId":I
    new-instance v26, Lio/fabric/sdk/android/services/settings/SettingsRequest;

    move-object/from16 v12, v26

    move-object/from16 v21, p5

    move-object/from16 v22, p4

    invoke-direct/range {v12 .. v24}, Lio/fabric/sdk/android/services/settings/SettingsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v4, v26

    .line 104
    .local v4, "settingsRequest":Lio/fabric/sdk/android/services/settings/SettingsRequest;
    new-instance v12, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;

    move-object v2, v12

    move-object/from16 v21, v3

    .end local v3    # "settingsUrl":Ljava/lang/String;
    .local v21, "settingsUrl":Ljava/lang/String;
    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lio/fabric/sdk/android/services/settings/DefaultSettingsController;-><init>(Lio/fabric/sdk/android/Kit;Lio/fabric/sdk/android/services/settings/SettingsRequest;Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;Lio/fabric/sdk/android/services/settings/CachedSettingsIo;Lio/fabric/sdk/android/services/settings/SettingsSpiCall;)V

    iput-object v12, v1, Lio/fabric/sdk/android/services/settings/Settings;->settingsController:Lio/fabric/sdk/android/services/settings/SettingsController;

    .line 108
    .end local v4    # "settingsRequest":Lio/fabric/sdk/android/services/settings/SettingsRequest;
    .end local v5    # "currentTimeProvider":Lio/fabric/sdk/android/services/common/CurrentTimeProvider;
    .end local v6    # "settingsJsonTransform":Lio/fabric/sdk/android/services/settings/SettingsJsonTransform;
    .end local v7    # "cachedSettingsIo":Lio/fabric/sdk/android/services/settings/CachedSettingsIo;
    .end local v8    # "settingsSpiCall":Lio/fabric/sdk/android/services/settings/SettingsSpiCall;
    .end local v10    # "context":Landroid/content/Context;
    .end local v11    # "appIdentifier":Ljava/lang/String;
    .end local v13    # "apiKey":Ljava/lang/String;
    .end local v14    # "deviceModel":Ljava/lang/String;
    .end local v15    # "osBuildVersion":Ljava/lang/String;
    .end local v16    # "osDisplayVersion":Ljava/lang/String;
    .end local v17    # "advertisingId":Ljava/lang/String;
    .end local v18    # "installationId":Ljava/lang/String;
    .end local v19    # "androidId":Ljava/lang/String;
    .end local v20    # "instanceId":Ljava/lang/String;
    .end local v21    # "settingsUrl":Ljava/lang/String;
    .end local v23    # "deliveryMechanismId":I
    .end local v24    # "iconHash":Ljava/lang/String;
    .end local v25    # "installerPackageName":Ljava/lang/String;
    :cond_9a
    iput-boolean v9, v1, Lio/fabric/sdk/android/services/settings/Settings;->initialized:Z
    :try_end_9c
    .catchall {:try_start_b .. :try_end_9c} :catchall_9e

    .line 109
    monitor-exit p0

    return-object v1

    .line 70
    .end local p1    # "kit":Lio/fabric/sdk/android/Kit;
    .end local p2    # "idManager":Lio/fabric/sdk/android/services/common/IdManager;
    .end local p3    # "httpRequestFactory":Lio/fabric/sdk/android/services/network/HttpRequestFactory;
    .end local p4    # "versionCode":Ljava/lang/String;
    .end local p5    # "versionName":Ljava/lang/String;
    .end local p6    # "urlEndpoint":Ljava/lang/String;
    :catchall_9e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadSettingsData()Z
    .registers 3

    monitor-enter p0

    .line 155
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/Settings;->settingsController:Lio/fabric/sdk/android/services/settings/SettingsController;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/settings/SettingsController;->loadSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v0

    .line 156
    .local v0, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/settings/Settings;->setSettingsData(Lio/fabric/sdk/android/services/settings/SettingsData;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_11

    .line 157
    if-eqz v0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit p0

    return v1

    .line 154
    .end local v0    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadSettingsSkippingCache()Z
    .registers 6

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/Settings;->settingsController:Lio/fabric/sdk/android/services/settings/SettingsController;

    sget-object v1, Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;->SKIP_CACHE_LOOKUP:Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/settings/SettingsController;->loadSettingsData(Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;)Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v0

    .line 167
    .local v0, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/settings/Settings;->setSettingsData(Lio/fabric/sdk/android/services/settings/SettingsData;)V

    .line 169
    if-nez v0, :cond_1a

    .line 170
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to force reload of settings from Crashlytics."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_21

    .line 174
    :cond_1a
    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    monitor-exit p0

    return v1

    .line 164
    .end local v0    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSettingsController(Lio/fabric/sdk/android/services/settings/SettingsController;)V
    .registers 2
    .param p1, "settingsController"    # Lio/fabric/sdk/android/services/settings/SettingsController;

    .line 125
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/Settings;->settingsController:Lio/fabric/sdk/android/services/settings/SettingsController;

    .line 126
    return-void
.end method

.method public withSettings(Lio/fabric/sdk/android/services/settings/Settings$SettingsAccess;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/fabric/sdk/android/services/settings/Settings$SettingsAccess<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 129
    .local p1, "access":Lio/fabric/sdk/android/services/settings/Settings$SettingsAccess;, "Lio/fabric/sdk/android/services/settings/Settings$SettingsAccess<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/settings/Settings;->settingsData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/settings/SettingsData;

    .line 130
    .local v0, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    if-nez v0, :cond_c

    move-object v1, p2

    goto :goto_10

    :cond_c
    invoke-interface {p1, v0}, Lio/fabric/sdk/android/services/settings/Settings$SettingsAccess;->usingSettings(Lio/fabric/sdk/android/services/settings/SettingsData;)Ljava/lang/Object;

    move-result-object v1

    :goto_10
    return-object v1
.end method

###### Class io.fabric.sdk.android.services.settings.Settings.AnonymousClass1 (io.fabric.sdk.android.services.settings.Settings$1)
.class synthetic Lio/fabric/sdk/android/services/settings/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.fabric.sdk.android.services.settings.Settings.LazyHolder (io.fabric.sdk.android.services.settings.Settings$LazyHolder)
.class Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lio/fabric/sdk/android/services/settings/Settings;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lio/fabric/sdk/android/services/settings/Settings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/settings/Settings;-><init>(Lio/fabric/sdk/android/services/settings/Settings$1;)V

    sput-object v0, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->INSTANCE:Lio/fabric/sdk/android/services/settings/Settings;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lio/fabric/sdk/android/services/settings/Settings;
    .registers 1

    .line 46
    sget-object v0, Lio/fabric/sdk/android/services/settings/Settings$LazyHolder;->INSTANCE:Lio/fabric/sdk/android/services/settings/Settings;

    return-object v0
.end method

###### Class io.fabric.sdk.android.services.settings.Settings.SettingsAccess (io.fabric.sdk.android.services.settings.Settings$SettingsAccess)
.class public interface abstract Lio/fabric/sdk/android/services/settings/Settings$SettingsAccess;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingsAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract usingSettings(Lio/fabric/sdk/android/services/settings/SettingsData;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/settings/SettingsData;",
            ")TT;"
        }
    .end annotation
.end method
