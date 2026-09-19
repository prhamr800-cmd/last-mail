###### Class com.google.android.gms.common.wrappers.InstantApps (com.google.android.gms.common.wrappers.InstantApps)
.class public Lcom/google/android/gms/common/wrappers/InstantApps;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static zzht:Landroid/content/Context;

.field private static zzhu:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isInstantApp(Landroid/content/Context;)Z
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const-class v0, Lcom/google/android/gms/common/wrappers/InstantApps;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzht:Landroid/content/Context;

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhu:Ljava/lang/Boolean;

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzht:Landroid/content/Context;

    if-ne v2, v1, :cond_1b

    .line 4
    sget-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhu:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_57

    monitor-exit v0

    return p0

    .line 5
    :cond_1b
    const/4 v2, 0x0

    :try_start_1c
    sput-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhu:Ljava/lang/Boolean;

    .line 6
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhu:Ljava/lang/Boolean;
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_57

    goto :goto_4d

    .line 8
    :cond_33
    nop

    .line 9
    :try_start_34
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhu:Ljava/lang/Boolean;
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_34 .. :try_end_44} :catch_45
    .catchall {:try_start_34 .. :try_end_44} :catchall_57

    .line 12
    goto :goto_4d

    .line 13
    :catch_45
    move-exception p0

    .line 14
    const/4 p0, 0x0

    :try_start_47
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhu:Ljava/lang/Boolean;

    .line 15
    :goto_4d
    sput-object v1, Lcom/google/android/gms/common/wrappers/InstantApps;->zzht:Landroid/content/Context;

    .line 16
    sget-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhu:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_57

    monitor-exit v0

    return p0

    .line 1
    :catchall_57
    move-exception p0

    monitor-exit v0

    throw p0
.end method
