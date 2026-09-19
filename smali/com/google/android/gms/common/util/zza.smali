###### Class com.google.android.gms.common.util.zza (com.google.android.gms.common.util.zza)
.class public final Lcom/google/android/gms/common/util/zza;
.super Ljava/lang/Object;


# static fields
.field private static final filter:Landroid/content/IntentFilter;

.field private static zzgt:J

.field private static zzgu:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/util/zza;->filter:Landroid/content/IntentFilter;

    .line 25
    const/high16 v0, 0x7fc00000    # Float.NaN

    sput v0, Lcom/google/android/gms/common/util/zza;->zzgu:F

    return-void
.end method

.method public static zzg(Landroid/content/Context;)I
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 1
    const/4 v0, -0x1

    if-eqz p0, :cond_4c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_4c

    .line 3
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/common/util/zza;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 4
    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 5
    const/4 v1, 0x0

    goto :goto_20

    .line 4
    :cond_1a
    const-string v3, "plugged"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5
    :goto_20
    and-int/lit8 v1, v1, 0x7

    const/4 v3, 0x1

    if-eqz v1, :cond_27

    .line 6
    const/4 v1, 0x1

    goto :goto_29

    .line 5
    :cond_27
    nop

    .line 6
    const/4 v1, 0x0

    :goto_29
    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 7
    if-nez p0, :cond_34

    .line 8
    return v0

    .line 9
    :cond_34
    nop

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 11
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    goto :goto_44

    .line 12
    :cond_40
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    .line 13
    :goto_44
    if-eqz p0, :cond_48

    const/4 v2, 0x1

    nop

    :cond_48
    shl-int/lit8 p0, v2, 0x1

    or-int/2addr p0, v1

    return p0

    .line 2
    :cond_4c
    :goto_4c
    return v0
.end method

.method public static declared-synchronized zzh(Landroid/content/Context;)F
    .registers 7

    const-class v0, Lcom/google/android/gms/common/util/zza;

    monitor-enter v0

    .line 14
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/google/android/gms/common/util/zza;->zzgt:J

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-gez v5, :cond_1e

    sget v1, Lcom/google/android/gms/common/util/zza;->zzgu:F

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 16
    sget p0, Lcom/google/android/gms/common/util/zza;->zzgu:F
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_47

    monitor-exit v0

    return p0

    .line 17
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/common/util/zza;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    .line 18
    if-eqz p0, :cond_3d

    .line 19
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 20
    const-string v3, "scale"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 21
    int-to-float v1, v1

    int-to-float p0, p0

    div-float/2addr v1, p0

    sput v1, Lcom/google/android/gms/common/util/zza;->zzgu:F

    .line 22
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/gms/common/util/zza;->zzgt:J

    .line 23
    sget p0, Lcom/google/android/gms/common/util/zza;->zzgu:F
    :try_end_45
    .catchall {:try_start_1e .. :try_end_45} :catchall_47

    monitor-exit v0

    return p0

    .line 13
    :catchall_47
    move-exception p0

    monitor-exit v0

    throw p0
.end method
