###### Class com.digikala.dms.core.App (com.digikala.dms.core.App)
.class public Lcom/digikala/dms/core/App;
.super Landroid/support/multidex/MultiDexApplication;
.source "App.java"


# static fields
.field private static firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private static mInstance:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static declared-synchronized getApplication()Landroid/content/Context;
    .registers 2

    const-class v0, Lcom/digikala/dms/core/App;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Lcom/digikala/dms/core/App;->mInstance:Landroid/app/Application;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getfirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .registers 1

    .line 90
    sget-object v0, Lcom/digikala/dms/core/App;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method private setLocale(Ljava/lang/String;)V
    .registers 6
    .param p1, "language"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 73
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 74
    .local v1, "config":Landroid/content/res/Configuration;
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 75
    invoke-virtual {p0}, Lcom/digikala/dms/core/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 76
    return-void
.end method

.method private setPreferenceLocale()V
    .registers 2

    .line 79
    invoke-static {p0}, Lcom/digikala/dms/util/Util;->getLanguageFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "appLanguage":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/digikala/dms/core/App;->setLocale(Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 85
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    invoke-direct {p0}, Lcom/digikala/dms/core/App;->setPreferenceLocale()V

    .line 87
    return-void
.end method

.method public onCreate()V
    .registers 4

    .line 34
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 36
    sput-object p0, Lcom/digikala/dms/core/App;->mInstance:Landroid/app/Application;

    .line 38
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sput-object v0, Lcom/digikala/dms/core/App;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 40
    invoke-static {p0}, Lcom/digikala/dms/helper/fabric/crashlytics/CrashlyticsHelper;->init(Landroid/content/Context;)V

    .line 41
    invoke-static {p0}, Lcom/digikala/dms/helper/fabric/appsee/AppseeHelper;->init(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lcom/digikala/dms/helper/webservice/VolleyHelper;->init(Landroid/content/Context;)V

    .line 43
    invoke-static {p0}, Lcom/digikala/dms/core/SnowplowHelper;->init(Landroid/app/Application;)V

    .line 49
    invoke-direct {p0}, Lcom/digikala/dms/core/App;->setPreferenceLocale()V

    .line 50
    invoke-static {p0}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    .line 53
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 54
    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/digikala/dms/core/DMSRealmMigration;

    invoke-direct {v1}, Lcom/digikala/dms/core/DMSRealmMigration;-><init>()V

    .line 55
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->migration(Lio/realm/RealmMigration;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 58
    .local v0, "realmConfiguration":Lio/realm/RealmConfiguration;
    invoke-static {v0}, Lio/realm/Realm;->setDefaultConfiguration(Lio/realm/RealmConfiguration;)V

    .line 59
    return-void
.end method
