###### Class com.google.android.gms.internal.measurement.zzsm (com.google.android.gms.internal.measurement.zzsm)
.class public final Lcom/google/android/gms/internal/measurement/zzsm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzsq;


# static fields
.field static final zzbrm:Ljava/util/Map;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "ConfigurationContentLoader.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/measurement/zzsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbrr:[Ljava/lang/String;


# instance fields
.field private final uri:Landroid/net/Uri;

.field private final zzbrn:Landroid/content/ContentResolver;

.field private final zzbro:Ljava/lang/Object;

.field private volatile zzbrp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrm:Ljava/util/Map;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrr:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbro:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrq:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrn:Landroid/content/ContentResolver;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzsm;->uri:Landroid/net/Uri;

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrn:Landroid/content/ContentResolver;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzso;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzso;-><init>(Lcom/google/android/gms/internal/measurement/zzsm;Landroid/os/Handler;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7
    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/zzsm;
    .registers 5

    .line 8
    const-class v0, Lcom/google/android/gms/internal/measurement/zzsm;

    monitor-enter v0

    .line 9
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrm:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzsm;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 10
    if-nez v1, :cond_1e

    .line 11
    :try_start_d
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzsm;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzsm;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_1d
    .catchall {:try_start_d .. :try_end_12} :catchall_20

    .line 12
    :try_start_12
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrm:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_17} :catch_1a
    .catchall {:try_start_12 .. :try_end_17} :catchall_20

    .line 13
    nop

    .line 15
    move-object v1, v2

    goto :goto_1e

    .line 14
    :catch_1a
    move-exception p0

    move-object v1, v2

    goto :goto_1e

    :catch_1d
    move-exception p0

    .line 15
    :cond_1e
    :goto_1e
    :try_start_1e
    monitor-exit v0

    return-object v1

    .line 16
    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_20

    throw p0
.end method

.method private final zztm()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzsn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzsn;-><init>(Lcom/google/android/gms/internal/measurement/zzsm;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzsr;->zza(Lcom/google/android/gms/internal/measurement/zzss;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 37
    :catch_c
    move-exception v0

    .line 38
    const-string v0, "ConfigurationContentLoader"

    const-string v1, "PhenotypeFlag unable to load ContentProvider, using default values"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic zzfp(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 40
    nop

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzsm;->zztk()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 42
    return-object p1
.end method

.method public final zztk()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrp:Ljava/util/Map;

    .line 18
    if-nez v0, :cond_16

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbro:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrp:Ljava/util/Map;

    .line 21
    if-nez v0, :cond_11

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzsm;->zztm()Ljava/util/Map;

    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrp:Ljava/util/Map;

    .line 24
    :cond_11
    monitor-exit v1

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0

    .line 25
    :cond_16
    :goto_16
    if-eqz v0, :cond_19

    return-object v0

    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zztl()V
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbro:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrp:Ljava/util/Map;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzsx;->zztq()V

    .line 29
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_27

    .line 30
    nop

    .line 31
    monitor-enter p0

    .line 32
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzsp;

    .line 33
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzsp;->zztp()V

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_24

    throw v0

    .line 29
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method final synthetic zztn()Ljava/util/Map;
    .registers 7

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrn:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzsm;->uri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzsm;->zzbrr:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 44
    if-nez v0, :cond_14

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 46
    :cond_14
    :try_start_14
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 47
    if-nez v1, :cond_22

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_4c

    .line 49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 50
    return-object v1

    .line 51
    :cond_22
    const/16 v2, 0x100

    if-gt v1, v2, :cond_2c

    .line 52
    :try_start_26
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    goto :goto_33

    .line 53
    :cond_2c
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 54
    :goto_33
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 55
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_4c

    goto :goto_33

    .line 56
    :cond_47
    nop

    .line 57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 58
    return-object v2

    .line 59
    :catchall_4c
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

###### Class com.google.android.gms.internal.measurement.zzsn (com.google.android.gms.internal.measurement.zzsn)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzsn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzss;


# instance fields
.field private final zzbrs:Lcom/google/android/gms/internal/measurement/zzsm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzsm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzsn;->zzbrs:Lcom/google/android/gms/internal/measurement/zzsm;

    return-void
.end method


# virtual methods
.method public final zzto()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzsn;->zzbrs:Lcom/google/android/gms/internal/measurement/zzsm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzsm;->zztn()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
