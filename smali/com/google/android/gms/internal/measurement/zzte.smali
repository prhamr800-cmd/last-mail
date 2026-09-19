###### Class com.google.android.gms.internal.measurement.zzte (com.google.android.gms.internal.measurement.zzte)
.class public final Lcom/google/android/gms/internal/measurement/zzte;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzsq;


# static fields
.field static final zzbsk:Ljava/util/Map;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "SharedPreferencesLoader.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzte;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbro:Ljava/lang/Object;

.field private volatile zzbrp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private final zzbrq:Ljava/util/List;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzsp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbsl:Landroid/content/SharedPreferences;

.field private final zzbsm:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzte;->zzbsk:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/measurement/zztf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zztf;-><init>(Lcom/google/android/gms/internal/measurement/zzte;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbsm:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbro:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbrq:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbsl:Landroid/content/SharedPreferences;

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbsl:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbsm:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 30
    return-void
.end method

.method static zzi(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzte;
    .registers 6

    .line 1
    nop

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzsl;->zztj()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    const-string v0, "direct_boot:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzsl;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    goto :goto_15

    .line 5
    :cond_14
    const/4 v0, 0x1

    .line 6
    :goto_15
    if-nez v0, :cond_19

    .line 7
    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_19
    const-class v0, Lcom/google/android/gms/internal/measurement/zzte;

    monitor-enter v0

    .line 9
    :try_start_1c
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzte;->zzbsk:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzte;

    .line 10
    if-nez v1, :cond_53

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzte;

    .line 12
    const-string v2, "direct_boot:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_47

    .line 13
    nop

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzsl;->zztj()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 16
    :cond_3c
    const/16 v2, 0xc

    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_4b

    .line 19
    :cond_47
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 20
    :goto_4b
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzte;-><init>(Landroid/content/SharedPreferences;)V

    .line 21
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbsk:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_53
    monitor-exit v0

    return-object v1

    .line 23
    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_1c .. :try_end_57} :catchall_55

    throw p0
.end method


# virtual methods
.method final synthetic zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 40
    nop

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbro:Ljava/lang/Object;

    monitor-enter p1

    .line 42
    const/4 p2, 0x0

    :try_start_5
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbrp:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzsx;->zztq()V

    .line 44
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_28

    .line 45
    nop

    .line 46
    monitor-enter p0

    .line 47
    :try_start_d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbrq:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzsp;

    .line 48
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzsp;->zztp()V

    .line 49
    goto :goto_13

    .line 50
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_25

    throw p1

    .line 44
    :catchall_28
    move-exception p2

    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p2
.end method

.method public final zzfp(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbrp:Ljava/util/Map;

    .line 32
    if-nez v0, :cond_18

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbro:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbrp:Ljava/util/Map;

    .line 35
    if-nez v0, :cond_13

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbsl:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzte;->zzbrp:Ljava/util/Map;

    .line 38
    :cond_13
    monitor-exit v1

    goto :goto_18

    :catchall_15
    move-exception p1

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p1

    .line 39
    :cond_18
    :goto_18
    if-eqz v0, :cond_1f

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zztf (com.google.android.gms.internal.measurement.zztf)
.class final synthetic Lcom/google/android/gms/internal/measurement/zztf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final zzbsn:Lcom/google/android/gms/internal/measurement/zzte;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzte;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztf;->zzbsn:Lcom/google/android/gms/internal/measurement/zzte;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zztf;->zzbsn:Lcom/google/android/gms/internal/measurement/zzte;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzte;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
