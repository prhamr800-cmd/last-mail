###### Class com.google.android.gms.measurement.internal.zzdz (com.google.android.gms.measurement.internal.zzdz)
.class public final Lcom/google/android/gms/measurement/internal/zzdz;
.super Lcom/google/android/gms/measurement/internal/zzf;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private final zzaso:Lcom/google/android/gms/measurement/internal/zzeo;

.field private zzasp:Lcom/google/android/gms/measurement/internal/zzah;

.field private volatile zzasq:Ljava/lang/Boolean;

.field private final zzasr:Lcom/google/android/gms/measurement/internal/zzw;

.field private final zzass:Lcom/google/android/gms/measurement/internal/zzff;

.field private final zzast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzasu:Lcom/google/android/gms/measurement/internal/zzw;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzbu;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbu;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzast:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbu;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzff;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzass:Lcom/google/android/gms/measurement/internal/zzff;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzeo;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzaso:Lcom/google/android/gms/measurement/internal/zzeo;

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzea;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzea;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;Lcom/google/android/gms/measurement/internal/zzcr;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasr:Lcom/google/android/gms/measurement/internal/zzw;

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzeg;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;Lcom/google/android/gms/measurement/internal/zzcr;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasu:Lcom/google/android/gms/measurement/internal/zzw;

    .line 7
    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 234
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasp:Lcom/google/android/gms/measurement/internal/zzah;

    if-eqz v0, :cond_1e

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasp:Lcom/google/android/gms/measurement/internal/zzah;

    .line 236
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    nop

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 239
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzdj()V

    .line 240
    :cond_1e
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzdz;Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzah;
    .registers 2

    .line 295
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasp:Lcom/google/android/gms/measurement/internal/zzah;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzdz;)Lcom/google/android/gms/measurement/internal/zzeo;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzaso:Lcom/google/android/gms/measurement/internal/zzeo;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzdz;Landroid/content/ComponentName;)V
    .registers 2

    .line 294
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdz;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzdz;)V
    .registers 1

    .line 296
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzlj()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/measurement/internal/zzdz;)V
    .registers 1

    .line 297
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzcz()V

    return-void
.end method

.method private final zzcy()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzass:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzff;->start()V

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasr:Lcom/google/android/gms/measurement/internal/zzw;

    .line 131
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzag;->zzakm:Lcom/google/android/gms/measurement/internal/zzag$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag$zza;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzw;->zzh(J)V

    .line 133
    return-void
.end method

.method private final zzcz()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->isConnected()Z

    move-result v0

    if-nez v0, :cond_a

    .line 243
    return-void

    .line 244
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->disconnect()V

    .line 246
    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/measurement/internal/zzdz;)Lcom/google/android/gms/measurement/internal/zzah;
    .registers 1

    .line 298
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasp:Lcom/google/android/gms/measurement/internal/zzah;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/measurement/internal/zzdz;)V
    .registers 1

    .line 299
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzcy()V

    return-void
.end method

.method private final zzf(Ljava/lang/Runnable;)V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 249
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 250
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzast:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_28

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 252
    return-void

    .line 253
    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzast:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasu:Lcom/google/android/gms/measurement/internal/zzw;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzw;->zzh(J)V

    .line 255
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzdj()V

    .line 256
    return-void
.end method

.method private final zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 271
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjq()Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzak;->zzbu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object p1

    return-object p1
.end method

.method private final zzlh()Z
    .registers 2

    .line 106
    nop

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method private final zzlj()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzast:Ljava/util/List;

    .line 260
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzast:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 262
    :try_start_2c
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    .line 263
    goto :goto_20

    .line 264
    :catch_30
    move-exception v1

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    goto :goto_20

    .line 267
    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzast:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasu:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->cancel()V

    .line 269
    return-void
.end method


# virtual methods
.method public final disconnect()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 225
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzaso:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeo;->zzlk()V

    .line 227
    :try_start_b
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzaso:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_18} :catch_19

    .line 229
    goto :goto_1a

    .line 230
    :catch_19
    move-exception v0

    .line 231
    :goto_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasp:Lcom/google/android/gms/measurement/internal/zzah;

    .line 232
    return-void
.end method

.method public final getAppInstanceId(Lcom/google/android/gms/internal/measurement/zzef;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzed;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzed;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;Lcom/google/android/gms/measurement/internal/zzi;Lcom/google/android/gms/internal/measurement/zzef;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .line 285
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final isConnected()Z
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasp:Lcom/google/android/gms/measurement/internal/zzah;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected final resetAnalyticsData()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgg()V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v0

    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzlh()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgn()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->resetAnalyticsData()V

    .line 104
    :cond_1b
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzeb;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/measurement/internal/zzah;)V
    .registers 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 219
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasp:Lcom/google/android/gms/measurement/internal/zzah;

    .line 221
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzcy()V

    .line 222
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzlj()V

    .line 223
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzi;)V
    .registers 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgg()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzlh()Z

    move-result v0

    .line 21
    nop

    .line 22
    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/16 v4, 0x64

    :goto_14
    const/16 v5, 0x3e9

    if-ge v3, v5, :cond_ac

    if-ne v4, v2, :cond_ac

    .line 23
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    nop

    .line 25
    if-eqz v0, :cond_35

    .line 26
    nop

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgn()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzr(I)Ljava/util/List;

    move-result-object v5

    .line 28
    if-eqz v5, :cond_35

    .line 29
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_36

    .line 31
    :cond_35
    const/4 v5, 0x0

    :goto_36
    if-eqz p2, :cond_3d

    if-ge v5, v2, :cond_3d

    .line 32
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_3d
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_44
    if-ge v7, v6, :cond_a7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 34
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v9, :cond_67

    .line 35
    :try_start_52
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzae;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_57} :catch_58

    .line 36
    goto :goto_44

    .line 37
    :catch_58
    move-exception v8

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v10, "Failed to send event to the service"

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    goto :goto_44

    .line 40
    :cond_67
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzfr;

    if-eqz v9, :cond_80

    .line 41
    :try_start_6b
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfr;Lcom/google/android/gms/measurement/internal/zzi;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_70} :catch_71

    .line 42
    goto :goto_44

    .line 43
    :catch_71
    move-exception v8

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v10, "Failed to send attribute to the service"

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    goto :goto_44

    .line 46
    :cond_80
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzm;

    if-eqz v9, :cond_99

    .line 47
    :try_start_84
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzm;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzi;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_89} :catch_8a

    .line 48
    goto :goto_44

    .line 49
    :catch_8a
    move-exception v8

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v9

    const-string v10, "Failed to send conditional property to the service"

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    goto :goto_44

    .line 52
    :cond_99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v8

    const-string v9, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 53
    goto :goto_44

    .line 54
    :cond_a7
    add-int/lit8 v3, v3, 0x1

    .line 22
    move v4, v5

    goto/16 :goto_14

    .line 55
    :cond_ac
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/measurement/internal/zzdv;)V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 126
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzef;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzef;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;Lcom/google/android/gms/measurement/internal/zzdv;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public final zza(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzec;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzec;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzm;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v7

    .line 78
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzek;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzek;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfr;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v8

    .line 83
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzel;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzel;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzfr;",
            ">;>;Z)V"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzen;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzen;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzi;Z)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public final bridge synthetic zzaf()V
    .registers 1

    .line 275
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/measurement/internal/zzfr;)V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzlh()Z

    move-result v0

    .line 88
    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgn()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzfr;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 90
    const/4 v0, 0x1

    goto :goto_1a

    .line 89
    :cond_19
    const/4 v0, 0x0

    .line 90
    :goto_1a
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzem;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzem;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;ZLcom/google/android/gms/measurement/internal/zzfr;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public final bridge synthetic zzbx()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 284
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzbx()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;)V
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzlh()Z

    move-result v2

    .line 60
    const/4 v0, 0x1

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgn()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Lcom/google/android/gms/measurement/internal/zzae;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 61
    const/4 v3, 0x1

    goto :goto_1e

    .line 60
    :cond_1c
    const/4 v1, 0x0

    .line 61
    const/4 v3, 0x0

    :goto_1e
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v5

    .line 62
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzei;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzei;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;ZZLcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzi;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 68
    nop

    .line 69
    nop

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgn()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    .line 71
    const/4 v5, 0x1

    goto :goto_1d

    .line 70
    :cond_1b
    const/4 v0, 0x0

    .line 71
    const/4 v5, 0x0

    :goto_1d
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {v6, p1}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 72
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v7

    .line 73
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzej;

    const/4 v4, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzej;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;ZZLcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzi;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method final zzdj()V
    .registers 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzdz;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 137
    return-void

    .line 138
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasq:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_136

    .line 139
    nop

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbb;->zzjx()Ljava/lang/Boolean;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 144
    nop

    .line 192
    const/4 v0, 0x1

    goto/16 :goto_130

    .line 145
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzgk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzak;->zzje()I

    move-result v0

    if-ne v0, v2, :cond_41

    .line 147
    nop

    .line 148
    nop

    .line 186
    :goto_3d
    const/4 v0, 0x1

    :goto_3e
    const/4 v3, 0x1

    goto/16 :goto_10b

    .line 149
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v3

    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0xbdfcb8

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    .line 153
    nop

    .line 154
    const/16 v3, 0x9

    if-eq v0, v3, :cond_fa

    const/16 v3, 0x12

    if-eq v0, v3, :cond_e9

    packed-switch v0, :pswitch_data_1aa

    .line 183
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "Unexpected service status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    nop

    .line 185
    nop

    .line 186
    :goto_80
    const/4 v0, 0x0

    :goto_81
    const/4 v3, 0x0

    goto/16 :goto_10b

    .line 175
    :pswitch_84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Service disabled"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 176
    nop

    .line 177
    nop

    .line 178
    goto :goto_80

    .line 167
    :pswitch_94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjn()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzml()I

    move-result v0

    const/16 v3, 0x38a4

    if-ge v0, v3, :cond_af

    .line 169
    nop

    .line 170
    goto :goto_d5

    .line 171
    :cond_af
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbb;->zzjx()Ljava/lang/Boolean;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_c2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c0

    goto :goto_c2

    .line 173
    :cond_c0
    const/4 v0, 0x0

    goto :goto_c4

    .line 172
    :cond_c2
    :goto_c2
    nop

    .line 173
    const/4 v0, 0x1

    .line 174
    :goto_c4
    goto :goto_81

    .line 159
    :pswitch_c5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 160
    nop

    .line 161
    nop

    .line 162
    nop

    .line 186
    :goto_d5
    const/4 v0, 0x0

    goto/16 :goto_3e

    .line 155
    :pswitch_d8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 156
    nop

    .line 157
    nop

    .line 158
    goto/16 :goto_3d

    .line 163
    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 164
    nop

    .line 165
    nop

    .line 166
    goto/16 :goto_3d

    .line 179
    :cond_fa
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v3, "Service invalid"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 180
    nop

    .line 181
    nop

    .line 182
    goto/16 :goto_80

    .line 186
    :goto_10b
    if-nez v0, :cond_126

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzo;->zzif()Z

    move-result v4

    if-eqz v4, :cond_126

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    const-string v4, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 188
    nop

    .line 189
    const/4 v3, 0x0

    :cond_126
    if-eqz v3, :cond_12f

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzbb;->zzg(Z)V

    .line 191
    :cond_12f
    nop

    .line 192
    :goto_130
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasq:Ljava/lang/Boolean;

    .line 193
    :cond_136
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasq:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzaso:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeo;->zzll()V

    return-void

    .line 195
    :cond_144
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzo;->zzif()Z

    move-result v0

    if-nez v0, :cond_1a8

    .line 196
    nop

    .line 197
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 198
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 199
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 200
    const/high16 v4, 0x10000

    .line 201
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_179

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_179

    .line 203
    const/4 v1, 0x1

    goto :goto_17a

    .line 202
    :cond_179
    nop

    .line 203
    :goto_17a
    if-eqz v1, :cond_19b

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance v1, Landroid/content/ComponentName;

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    .line 208
    nop

    .line 209
    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzaso:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Landroid/content/Intent;)V

    .line 212
    return-void

    .line 213
    :cond_19b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 216
    :cond_1a8
    return-void

    nop

    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_c5
        :pswitch_94
        :pswitch_84
    .end packed-switch
.end method

.method public final bridge synthetic zzgf()V
    .registers 1

    .line 272
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgf()V

    return-void
.end method

.method public final bridge synthetic zzgg()V
    .registers 1

    .line 273
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgg()V

    return-void
.end method

.method public final bridge synthetic zzgh()V
    .registers 1

    .line 274
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgh()V

    return-void
.end method

.method public final bridge synthetic zzgi()Lcom/google/android/gms/measurement/internal/zza;
    .registers 2

    .line 276
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgi()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgj()Lcom/google/android/gms/measurement/internal/zzcy;
    .registers 2

    .line 277
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgj()Lcom/google/android/gms/measurement/internal/zzcy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgk()Lcom/google/android/gms/measurement/internal/zzak;
    .registers 2

    .line 278
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgl()Lcom/google/android/gms/measurement/internal/zzdz;
    .registers 2

    .line 279
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgl()Lcom/google/android/gms/measurement/internal/zzdz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgm()Lcom/google/android/gms/measurement/internal/zzdw;
    .registers 2

    .line 280
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgm()Lcom/google/android/gms/measurement/internal/zzdw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgn()Lcom/google/android/gms/measurement/internal/zzam;
    .registers 2

    .line 281
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgn()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgo()Lcom/google/android/gms/measurement/internal/zzez;
    .registers 2

    .line 282
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgo()Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgp()Lcom/google/android/gms/measurement/internal/zzy;
    .registers 2

    .line 283
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgp()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgq()Lcom/google/android/gms/measurement/internal/zzao;
    .registers 2

    .line 286
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgq()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 287
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgs()Lcom/google/android/gms/measurement/internal/zzbp;
    .registers 2

    .line 288
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgt()Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 2

    .line 289
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgu()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2

    .line 290
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgu()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgv()Lcom/google/android/gms/measurement/internal/zzo;
    .registers 2

    .line 291
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgv()Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgw()Lcom/google/android/gms/measurement/internal/zzl;
    .registers 2

    .line 292
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzgw()Lcom/google/android/gms/measurement/internal/zzl;

    move-result-object v0

    return-object v0
.end method

.method protected final zzgy()Z
    .registers 2

    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzld()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzee;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzee;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method protected final zzlg()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzcl()V

    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzdz;->zzl(Z)Lcom/google/android/gms/measurement/internal/zzi;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzeh;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzeh;-><init>(Lcom/google/android/gms/measurement/internal/zzdz;Lcom/google/android/gms/measurement/internal/zzi;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzdz;->zzf(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method final zzli()Ljava/lang/Boolean;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdz;->zzasq:Ljava/lang/Boolean;

    return-object v0
.end method
