###### Class com.google.android.gms.internal.measurement.zzsj (com.google.android.gms.internal.measurement.zzsj)
.class public Lcom/google/android/gms/internal/measurement/zzsj;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final zzbqy:Landroid/net/Uri;

.field public static final zzbqz:Ljava/util/regex/Pattern;

.field public static final zzbra:Ljava/util/regex/Pattern;

.field private static final zzbrb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static zzbrc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbrd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbre:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbrf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbrg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static zzbrh:Ljava/lang/Object;

.field private static zzbri:Z

.field private static zzbrj:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 69
    const-string v0, "content://com.google.android.gsf.gservices"

    .line 70
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->CONTENT_URI:Landroid/net/Uri;

    .line 71
    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbqy:Landroid/net/Uri;

    .line 73
    const-string v0, "^(1|true|t|on|yes|y)$"

    .line 74
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbqz:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "^(0|false|f|off|no|n)$"

    .line 76
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbra:Ljava/util/regex/Pattern;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrd:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbre:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrf:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrg:Ljava/util/HashMap;

    .line 82
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrj:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    .line 17
    const-class p2, Lcom/google/android/gms/internal/measurement/zzsj;

    monitor-enter p2

    .line 18
    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzsj;->zza(Landroid/content/ContentResolver;)V

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrh:Ljava/lang/Object;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrc:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 21
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrc:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 22
    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object p0, v2

    :goto_1d
    monitor-exit p2

    return-object p0

    .line 23
    :cond_1f
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrj:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_24
    const/4 v6, 0x1

    if-ge v5, v3, :cond_63

    aget-object v7, v1, v5

    .line 24
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 25
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbri:Z

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 26
    :cond_3b
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrj:[Ljava/lang/String;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrc:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzsj;->zza(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 28
    sput-boolean v6, Lcom/google/android/gms/internal/measurement/zzsj;->zzbri:Z

    .line 29
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrc:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 30
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrc:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 31
    if-eqz p0, :cond_5b

    goto :goto_5c

    :cond_5b
    move-object p0, v2

    :goto_5c
    monitor-exit p2

    return-object p0

    .line 32
    :cond_5e
    monitor-exit p2

    return-object v2

    .line 33
    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 34
    :cond_63
    monitor-exit p2
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_ab

    .line 35
    sget-object v8, Lcom/google/android/gms/internal/measurement/zzsj;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v11, v6, [Ljava/lang/String;

    aput-object p1, v11, v4

    const/4 v12, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 36
    if-nez p0, :cond_7a

    .line 37
    if-eqz p0, :cond_79

    .line 38
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 39
    :cond_79
    return-object v2

    .line 40
    :cond_7a
    :try_start_7a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_89

    .line 41
    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzsj;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_a4

    .line 42
    if-eqz p0, :cond_88

    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 44
    :cond_88
    return-object v2

    .line 45
    :cond_89
    :try_start_89
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 46
    if-eqz p2, :cond_97

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 47
    nop

    .line 48
    move-object p2, v2

    :cond_97
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzsj;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_89 .. :try_end_9a} :catchall_a4

    .line 49
    if-eqz p2, :cond_9d

    goto :goto_9e

    .line 50
    :cond_9d
    move-object p2, v2

    :goto_9e
    if-eqz p0, :cond_a3

    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_a3
    return-object p2

    .line 53
    :catchall_a4
    move-exception p1

    if-eqz p0, :cond_aa

    .line 54
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_aa
    throw p1

    .line 34
    :catchall_ab
    move-exception p0

    :try_start_ac
    monitor-exit p2
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw p0
.end method

.method private static varargs zza(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsj;->zzbqy:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 60
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 61
    if-nez p0, :cond_13

    return-object p1

    .line 62
    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 63
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2c

    goto :goto_13

    .line 64
    :cond_27
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 65
    nop

    .line 67
    return-object p1

    .line 66
    :catchall_2c
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private static zza(Landroid/content/ContentResolver;)V
    .registers 5

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrc:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrc:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrh:Ljava/lang/Object;

    .line 6
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzsj;->zzbri:Z

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzsk;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/zzsk;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 8
    :cond_27
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 9
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrc:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 10
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrd:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 11
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbre:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrf:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 13
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrg:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 14
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrh:Ljava/lang/Object;

    .line 15
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzsj;->zzbri:Z

    .line 16
    :cond_51
    return-void
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 55
    const-class v0, Lcom/google/android/gms/internal/measurement/zzsj;

    monitor-enter v0

    .line 56
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrh:Ljava/lang/Object;

    if-ne p0, v1, :cond_c

    .line 57
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrc:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method static synthetic zzti()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzsj;->zzbrb:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
