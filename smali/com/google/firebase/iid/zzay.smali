###### Class com.google.firebase.iid.zzay (com.google.firebase.iid.zzay)
.class final Lcom/google/firebase/iid/zzay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzan:Lcom/google/firebase/iid/zzan;

.field private final zzaq:Lcom/google/firebase/iid/zzba;

.field private final zzdh:J

.field private final zzdi:Landroid/os/PowerManager$WakeLock;

.field private final zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/zzan;Lcom/google/firebase/iid/zzba;J)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/iid/zzay;->zzan:Lcom/google/firebase/iid/zzan;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/iid/zzay;->zzaq:Lcom/google/firebase/iid/zzba;

    .line 5
    iput-wide p4, p0, Lcom/google/firebase/iid/zzay;->zzdh:J

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzay;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 7
    const-string p2, "fiid-sync"

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/zzay;->zzdi:Landroid/os/PowerManager$WakeLock;

    .line 8
    iget-object p1, p0, Lcom/google/firebase/iid/zzay;->zzdi:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 9
    return-void
.end method

.method private final zzam()Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzo()Z

    move-result v0

    if-nez v0, :cond_d

    .line 28
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzp()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_f

    .line 29
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 30
    :catch_f
    move-exception v0

    .line 31
    const-string v1, "FirebaseInstanceId"

    const-string v2, "Build channel failed: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2c
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method private final zzan()Z
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzj()Lcom/google/firebase/iid/zzax;

    move-result-object v0

    .line 34
    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/google/firebase/iid/zzay;->zzan:Lcom/google/firebase/iid/zzan;

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzan;->zzad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/iid/zzax;->zzj(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 35
    return v1

    .line 36
    :cond_16
    const/4 v2, 0x0

    :try_start_17
    iget-object v3, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzk()Ljava/lang/String;

    move-result-object v3

    .line 37
    if-nez v3, :cond_27

    .line 38
    const-string v0, "FirebaseInstanceId"

    const-string v1, "Token retrieval failed: null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v2

    .line 40
    :cond_27
    const-string v4, "FirebaseInstanceId"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 41
    const-string v4, "FirebaseInstanceId"

    const-string v5, "Token successfully retrieved"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_37
    if-eqz v0, :cond_43

    if-eqz v0, :cond_62

    iget-object v0, v0, Lcom/google/firebase/iid/zzax;->zzbq:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 43
    :cond_43
    nop

    .line 44
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzay;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v5, "token"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-static {v0, v4}, Lcom/google/firebase/iid/zzav;->zzc(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.firebase.iid.TOKEN_REFRESH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {v0, v3}, Lcom/google/firebase/iid/zzav;->zzb(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_62} :catch_63
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_62} :catch_63

    .line 50
    :cond_62
    return v1

    .line 51
    :catch_63
    move-exception v0

    .line 52
    const-string v1, "FirebaseInstanceId"

    const-string v3, "Token retrieval failed: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7b

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    :cond_7b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_80
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v2
.end method


# virtual methods
.method final getContext()Landroid/content/Context;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzh()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdi:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 11
    :try_start_5
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V

    .line 12
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 13
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_5c

    .line 14
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdi:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 15
    return-void

    .line 16
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzay;->zzao()Z

    move-result v0

    if-nez v0, :cond_33

    .line 17
    new-instance v0, Lcom/google/firebase/iid/zzaz;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzaz;-><init>(Lcom/google/firebase/iid/zzay;)V

    .line 18
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzaz;->zzap()V
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_5c

    .line 19
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdi:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 20
    return-void

    .line 21
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/google/firebase/iid/zzay;->zzam()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-direct {p0}, Lcom/google/firebase/iid/zzay;->zzan()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzaq:Lcom/google/firebase/iid/zzba;

    iget-object v2, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0, v2}, Lcom/google/firebase/iid/zzba;->zzc(Lcom/google/firebase/iid/FirebaseInstanceId;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 22
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Z)V

    goto :goto_56

    .line 23
    :cond_4f
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdj:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-wide v1, p0, Lcom/google/firebase/iid/zzay;->zzdh:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(J)V
    :try_end_56
    .catchall {:try_start_33 .. :try_end_56} :catchall_5c

    .line 24
    :goto_56
    iget-object v0, p0, Lcom/google/firebase/iid/zzay;->zzdi:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 25
    return-void

    .line 26
    :catchall_5c
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/iid/zzay;->zzdi:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method final zzao()Z
    .registers 3

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzay;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 57
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 58
    :goto_15
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method
