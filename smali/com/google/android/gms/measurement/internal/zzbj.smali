###### Class com.google.android.gms.measurement.internal.zzbj (com.google.android.gms.measurement.internal.zzbj)
.class final Lcom/google/android/gms/measurement/internal/zzbj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaol:Lcom/google/android/gms/internal/measurement/zzu;

.field private final synthetic zzaom:Landroid/content/ServiceConnection;

.field private final synthetic zzaon:Lcom/google/android/gms/measurement/internal/zzbi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbi;Lcom/google/android/gms/internal/measurement/zzu;Landroid/content/ServiceConnection;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbj;->zzaon:Lcom/google/android/gms/measurement/internal/zzbi;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbj;->zzaol:Lcom/google/android/gms/internal/measurement/zzu;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbj;->zzaom:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbj;->zzaon:Lcom/google/android/gms/measurement/internal/zzbi;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbi;->zzaok:Lcom/google/android/gms/measurement/internal/zzbh;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbj;->zzaon:Lcom/google/android/gms/measurement/internal/zzbi;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbi;->zza(Lcom/google/android/gms/measurement/internal/zzbi;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbj;->zzaol:Lcom/google/android/gms/internal/measurement/zzu;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbj;->zzaom:Landroid/content/ServiceConnection;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzu;)Landroid/os/Bundle;

    move-result-object v1

    .line 4
    nop

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 7
    if-eqz v1, :cond_140

    .line 8
    const-string v2, "install_begin_timestamp_seconds"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    .line 9
    cmp-long v2, v6, v4

    if-nez v2, :cond_3f

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Service response is missing Install Referrer install timestamp"

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 14
    goto/16 :goto_140

    .line 15
    :cond_3f
    const-string v2, "install_referrer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    if-eqz v2, :cond_130

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4f

    goto/16 :goto_130

    .line 19
    :cond_4f
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v10

    const-string v11, "InstallReferrer API result"

    invoke-virtual {v10, v11, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 21
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v10

    const-string v11, "?"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_75

    invoke-virtual {v11, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7a

    :cond_75
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7a
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    .line 22
    if-nez v2, :cond_95

    .line 23
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "No campaign params defined in install referrer result"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 24
    goto/16 :goto_140

    .line 25
    :cond_95
    const-string v10, "medium"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 26
    if-eqz v10, :cond_af

    const-string v11, "(not set)"

    .line 27
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_af

    const-string v11, "organic"

    .line 28
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_af

    const/4 v10, 0x1

    goto :goto_b0

    :cond_af
    const/4 v10, 0x0

    .line 29
    :goto_b0
    if-eqz v10, :cond_d3

    .line 30
    const-string v10, "referrer_click_timestamp_seconds"

    invoke-virtual {v1, v10, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    mul-long v10, v10, v8

    .line 31
    cmp-long v1, v10, v4

    if-nez v1, :cond_ce

    .line 32
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Install Referrer is missing click timestamp for ad campaign"

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 36
    goto :goto_140

    .line 37
    :cond_ce
    const-string v1, "click_timestamp"

    invoke-virtual {v2, v1, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    :cond_d3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbb;->zzanr:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbe;->get()J

    move-result-wide v4

    .line 39
    cmp-long v1, v6, v4

    if-nez v1, :cond_f8

    .line 40
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 41
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Campaign has already been logged"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 42
    goto :goto_140

    .line 43
    :cond_f8
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbb;->zzanr:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/measurement/internal/zzbe;->set(J)V

    .line 44
    nop

    .line 45
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 46
    nop

    .line 47
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v4, "Logging Install Referrer campaign from sdk with "

    const-string v5, "referrer API"

    .line 50
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const-string v1, "_cis"

    const-string v4, "referrer API"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgj()Lcom/google/android/gms/measurement/internal/zzcy;

    move-result-object v1

    const-string v4, "auto"

    const-string v5, "_cmp"

    .line 54
    invoke-virtual {v1, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzcy;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_140

    .line 17
    :cond_130
    :goto_130
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "No referrer defined in install referrer response"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 18
    nop

    .line 55
    :cond_140
    :goto_140
    if-eqz v3, :cond_14f

    .line 56
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzadp:Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 57
    :cond_14f
    return-void
.end method
