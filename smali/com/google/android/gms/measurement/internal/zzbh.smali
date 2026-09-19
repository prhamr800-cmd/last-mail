###### Class com.google.android.gms.measurement.internal.zzbh (com.google.android.gms.measurement.internal.zzbh)
.class public final Lcom/google/android/gms/measurement/internal/zzbh;
.super Ljava/lang/Object;


# instance fields
.field final zzadp:Lcom/google/android/gms/measurement/internal/zzbu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 3
    return-void
.end method

.method private final zzke()Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 63
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    .line 64
    if-nez v1, :cond_1d

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to retrieve Package Manager to check Play Store compatibility"

    .line 68
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 69
    return v0

    .line 70
    :cond_1d
    const-string v2, "com.android.vending"

    const/16 v3, 0x80

    .line 71
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 72
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2e

    .line 73
    const v2, 0x4d17ab4

    if-lt v1, v2, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0

    .line 74
    :catch_2e
    move-exception v1

    .line 75
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Failed to retrieve Play Store version"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    return v0
.end method


# virtual methods
.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzu;)Landroid/os/Bundle;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 79
    const/4 v0, 0x0

    if-nez p2, :cond_1c

    .line 80
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Attempting to use Install Referrer Service while it is not initialized"

    .line 83
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 84
    return-object v0

    .line 85
    :cond_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :try_start_26
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/zzu;->zza(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 88
    if-nez p1, :cond_3c

    .line 89
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string p2, "Install Referrer Service returned a null response"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_3e

    .line 90
    return-object v0

    .line 91
    :cond_3c
    nop

    .line 98
    return-object p1

    .line 92
    :catch_3e
    move-exception p1

    .line 93
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 94
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 95
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v1, "Exception occurred while retrieving the Install Referrer"

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-object v0
.end method

.method protected final zzcg(Ljava/lang/String;)V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 4
    if-eqz p1, :cond_104

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_104

    .line 10
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbh;->zzke()Z

    move-result v0

    if-nez v0, :cond_29

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Install Referrer Reporter is not available"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Install Referrer Reporter is initializing"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzbi;-><init>(Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 19
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.vending"

    const-string v3, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 22
    if-nez v1, :cond_75

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Failed to obtain Package Manager to verify binding conditions"

    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 27
    return-void

    .line 28
    :cond_75
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_f4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f4

    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 31
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_f3

    .line 32
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 33
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 34
    if-eqz v1, :cond_e4

    const-string v1, "com.android.vending"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbh;->zzke()Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 37
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 38
    :try_start_a9
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 40
    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Install Referrer Service is"

    .line 44
    if-eqz p1, :cond_c9

    const-string p1, "available"

    goto :goto_cb

    :cond_c9
    const-string p1, "not available"

    :goto_cb
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ce} :catch_cf

    .line 45
    return-void

    .line 46
    :catch_cf
    move-exception p1

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Exception occurred while binding to Install Referrer Service"

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void

    .line 53
    :cond_e4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Play Store missing or incompatible. Version 8.3.73 or later required"

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 57
    :cond_f3
    return-void

    .line 58
    :cond_f4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Play Service for fetching Install Referrer is unavailable on device"

    .line 61
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 62
    return-void

    .line 5
    :cond_104
    :goto_104
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjm()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Install Referrer Reporter was called with invalid app package name"

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 9
    return-void
.end method
