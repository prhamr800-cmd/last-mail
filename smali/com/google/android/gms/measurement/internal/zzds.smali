###### Class com.google.android.gms.measurement.internal.zzds (com.google.android.gms.measurement.internal.zzds)
.class final Lcom/google/android/gms/measurement/internal/zzds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/MainThread;
.end annotation


# instance fields
.field private final synthetic zzarr:Lcom/google/android/gms/measurement/internal/zzcy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzcy;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzcy;Lcom/google/android/gms/measurement/internal/zzcz;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzds;-><init>(Lcom/google/android/gms/measurement/internal/zzcy;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 8

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6
    if-eqz v0, :cond_bd

    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 8
    if-eqz v1, :cond_bd

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 9
    if-nez p2, :cond_46

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzd(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 12
    const-string v0, "gs"

    goto :goto_3d

    .line 13
    :cond_3b
    const-string v0, "auto"

    .line 14
    :goto_3d
    if-eqz v2, :cond_46

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    const-string v4, "_cmp"

    invoke-virtual {v3, v0, v4, v2}, Lcom/google/android/gms/measurement/internal/zzcy;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    :cond_46
    const-string v0, "referrer"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 18
    return-void

    .line 19
    :cond_53
    const-string v1, "gclid"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8b

    const-string/jumbo v1, "utm_campaign"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string/jumbo v1, "utm_source"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string/jumbo v1, "utm_medium"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string/jumbo v1, "utm_term"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    const-string/jumbo v1, "utm_content"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 26
    :cond_89
    const/4 v1, 0x1

    goto :goto_8c

    .line 25
    :cond_8b
    const/4 v1, 0x0

    .line 26
    :goto_8c
    if-nez v1, :cond_9e

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Activity created with data \'referrer\' param without gclid and at least one utm field"

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 30
    return-void

    .line 31
    :cond_9e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v3, "Activity created with referrer"

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    nop

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    const-string v3, "auto"

    const-string v4, "_ldl"

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzcy;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bd} :catch_be

    .line 35
    :cond_bd
    goto :goto_ce

    .line 36
    :catch_be
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    :goto_ce
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdw;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdw;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 41
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdw;->onActivityPaused(Landroid/app/Activity;)V

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzgo()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzez;J)V

    .line 46
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdw;->onActivityResumed(Landroid/app/Activity;)V

    .line 49
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzgo()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfd;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfd;-><init>(Lcom/google/android/gms/measurement/internal/zzez;J)V

    .line 52
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzds;->zzarr:Lcom/google/android/gms/measurement/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdw;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 2
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 3
    return-void
.end method
