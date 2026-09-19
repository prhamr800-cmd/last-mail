###### Class com.digikala.dms.helper.fabric.crashlytics.CrashlyticsHelper (com.digikala.dms.helper.fabric.crashlytics.CrashlyticsHelper)
.class public Lcom/digikala/dms/helper/fabric/crashlytics/CrashlyticsHelper;
.super Ljava/lang/Object;
.source "CrashlyticsHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 19
    return-void
.end method

.method public static logUser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 28
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->setUserName(Ljava/lang/String;)V

    .line 30
    return-void
.end method
