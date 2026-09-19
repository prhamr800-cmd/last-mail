###### Class com.google.android.gms.internal.measurement.zzst (com.google.android.gms.internal.measurement.zzst)
.class final Lcom/google/android/gms/internal/measurement/zzst;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzsq;


# static fields
.field static zzbru:Lcom/google/android/gms/internal/measurement/zzst;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "GservicesLoader.class"
    .end annotation
.end field


# instance fields
.field private final zzri:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzst;->zzri:Landroid/content/Context;

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzst;->zzri:Landroid/content/Context;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzst;->zzri:Landroid/content/Context;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzsv;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/zzsv;-><init>(Lcom/google/android/gms/internal/measurement/zzst;Landroid/os/Handler;)V

    .line 12
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 13
    return-void
.end method

.method static zzad(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzst;
    .registers 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzst;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzst;->zzbru:Lcom/google/android/gms/internal/measurement/zzst;

    if-nez v1, :cond_21

    .line 3
    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 4
    invoke-static {p0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 5
    :goto_12
    if-eqz v1, :cond_1a

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzst;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzst;-><init>(Landroid/content/Context;)V

    goto :goto_1f

    :cond_1a
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzst;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzst;-><init>()V

    :goto_1f
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzst;->zzbru:Lcom/google/android/gms/internal/measurement/zzst;

    .line 6
    :cond_21
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzst;->zzbru:Lcom/google/android/gms/internal/measurement/zzst;

    monitor-exit v0

    return-object p0

    .line 7
    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method private final zzfq(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzst;->zzri:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 18
    return-object v1

    .line 19
    :cond_6
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzsu;-><init>(Lcom/google/android/gms/internal/measurement/zzst;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzsr;->zza(Lcom/google/android/gms/internal/measurement/zzss;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    .line 20
    :catch_12
    move-exception v0

    .line 21
    const-string v2, "GservicesLoader"

    const-string v3, "Unable to read GServices for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2b

    :cond_26
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2b
    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    return-object v1
.end method


# virtual methods
.method public final synthetic zzfp(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzst;->zzfq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzfr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzst;->zzri:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzsj;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzsu (com.google.android.gms.internal.measurement.zzsu)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzsu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzss;


# instance fields
.field private final zzbrv:Lcom/google/android/gms/internal/measurement/zzst;

.field private final zzbrw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzst;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsu;->zzbrv:Lcom/google/android/gms/internal/measurement/zzst;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzsu;->zzbrw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzto()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsu;->zzbrv:Lcom/google/android/gms/internal/measurement/zzst;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsu;->zzbrw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzst;->zzfr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
