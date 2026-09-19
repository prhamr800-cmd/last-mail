###### Class com.google.android.gms.measurement.internal.zzaz (com.google.android.gms.measurement.internal.zzaz)
.class Lcom/google/android/gms/measurement/internal/zzaz;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final zzabi:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private zzabj:Z

.field private zzabk:Z

.field private final zzang:Lcom/google/android/gms/measurement/internal/zzfk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const-class v0, Lcom/google/android/gms/measurement/internal/zzaz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaz;->zzabi:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfk;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 4
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzaz;)Lcom/google/android/gms/measurement/internal/zzfk;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 7
    nop

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlt()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzfb()Z

    move-result p1

    .line 12
    iget-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzabk:Z

    if-eq p2, p1, :cond_3f

    .line 13
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzabk:Z

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzba;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Lcom/google/android/gms/measurement/internal/zzaz;Z)V

    .line 16
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzbp;->zzc(Ljava/lang/Runnable;)V

    .line 17
    :cond_3f
    return-void

    .line 18
    :cond_40
    nop

    .line 19
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public final unregister()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 42
    nop

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 45
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzabj:Z

    .line 46
    if-nez v0, :cond_1d

    .line 47
    return-void

    .line 48
    :cond_1d
    nop

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzca(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzabj:Z

    .line 52
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzabk:Z

    .line 53
    nop

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    nop

    .line 56
    :try_start_3a
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 57
    return-void

    .line 58
    :catch_3e
    move-exception v0

    .line 59
    nop

    .line 60
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjg()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public final zzey()V
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlx()V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgs()Lcom/google/android/gms/measurement/internal/zzbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->zzaf()V

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzabj:Z

    if-eqz v0, :cond_13

    .line 26
    return-void

    .line 27
    :cond_13
    nop

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    nop

    .line 30
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzlt()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzfb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzabk:Z

    .line 33
    nop

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzang:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zzgt()Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaq;->zzjo()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    const-string v1, "Registering connectivity change receiver. Network connected"

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzabk:Z

    .line 36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->zzabj:Z

    .line 38
    return-void
.end method
