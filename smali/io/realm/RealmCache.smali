###### Class io.realm.RealmCache (io.realm.RealmCache)
.class final Lio/realm/RealmCache;
.super Ljava/lang/Object;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmCache$CreateRealmRunnable;,
        Lio/realm/RealmCache$RealmCacheType;,
        Lio/realm/RealmCache$RefAndCount;,
        Lio/realm/RealmCache$Callback0;,
        Lio/realm/RealmCache$Callback;
    }
.end annotation


# static fields
.field private static final ASYNC_CALLBACK_NULL_MSG:Ljava/lang/String; = "The callback cannot be null."

.field private static final ASYNC_NOT_ALLOWED_MSG:Ljava/lang/String; = "Realm instances cannot be loaded asynchronously on a non-looper thread."

.field private static final DIFFERENT_KEY_MESSAGE:Ljava/lang/String; = "Wrong key used to decrypt Realm."

.field private static final WRONG_REALM_CLASS_MESSAGE:Ljava/lang/String; = "The type of Realm class must be Realm or DynamicRealm."

.field private static final cachesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/RealmCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final leakedCaches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/realm/RealmCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configuration:Lio/realm/RealmConfiguration;

.field private final isLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final realmPath:Ljava/lang/String;

.field private final refAndCountMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/realm/RealmCache$RealmCacheType;",
            "Lio/realm/RealmCache$RefAndCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    .line 210
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lio/realm/RealmCache;->leakedCaches:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/realm/RealmCache;->isLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 216
    iput-object p1, p0, Lio/realm/RealmCache;->realmPath:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lio/realm/RealmCache$RealmCacheType;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    .line 218
    invoke-static {}, Lio/realm/RealmCache$RealmCacheType;->values()[Lio/realm/RealmCache$RealmCacheType;

    move-result-object v0

    array-length v2, v0

    :goto_1b
    if-ge v1, v2, :cond_2d

    aget-object v3, v0, v1

    .line 219
    .local v3, "type":Lio/realm/RealmCache$RealmCacheType;
    iget-object v4, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    new-instance v5, Lio/realm/RealmCache$RefAndCount;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lio/realm/RealmCache$RefAndCount;-><init>(Lio/realm/RealmCache$1;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v3    # "type":Lio/realm/RealmCache$RealmCacheType;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 221
    :cond_2d
    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/io/File;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/io/File;

    .line 56
    invoke-static {p0, p1}, Lio/realm/RealmCache;->copyFileIfNeeded(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method private static copyAssetFileIfNeeded(Lio/realm/RealmConfiguration;)V
    .registers 5
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;

    .line 498
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->hasAssetFile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 499
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getRealmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getRealmFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_15

    .line 500
    :cond_14
    const/4 v0, 0x0

    .line 501
    .local v0, "realmFileFromAsset":Ljava/io/File;
    :goto_15
    nop

    .line 502
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v1

    .line 501
    invoke-static {v1}, Lio/realm/internal/ObjectServerFacade;->getFacade(Z)Lio/realm/internal/ObjectServerFacade;

    move-result-object v1

    .line 502
    invoke-virtual {v1, p0}, Lio/realm/internal/ObjectServerFacade;->getSyncServerCertificateAssetName(Lio/realm/RealmConfiguration;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "syncServerCertificateAssetName":Ljava/lang/String;
    invoke-static {v1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 505
    .local v2, "certFileExists":Z
    if-nez v0, :cond_2c

    if-eqz v2, :cond_34

    .line 506
    :cond_2c
    new-instance v3, Lio/realm/RealmCache$1;

    invoke-direct {v3, v0, p0, v2, v1}, Lio/realm/RealmCache$1;-><init>(Ljava/io/File;Lio/realm/RealmConfiguration;ZLjava/lang/String;)V

    invoke-static {p0, v3}, Lio/realm/internal/OsObjectStore;->callWithLock(Lio/realm/RealmConfiguration;Ljava/lang/Runnable;)Z

    .line 524
    :cond_34
    return-void
.end method

.method private static copyFileIfNeeded(Ljava/lang/String;Ljava/io/File;)V
    .registers 10
    .param p0, "assetFileName"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .line 527
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 528
    return-void

    .line 531
    :cond_7
    const/4 v0, 0x0

    .line 532
    .local v0, "exceptionWhenClose":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 533
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 535
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_a
    sget-object v3, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 536
    if-eqz v1, :cond_4b

    .line 541
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 542
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 544
    .local v3, "buf":[B
    :goto_21
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "bytesRead":I
    const/4 v6, -0x1

    if-le v4, v6, :cond_2e

    .line 545
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2d} :catch_66
    .catchall {:try_start_a .. :try_end_2d} :catchall_64

    goto :goto_21

    .line 551
    .end local v3    # "buf":[B
    .end local v5    # "bytesRead":I
    :cond_2e
    if-eqz v1, :cond_36

    .line 553
    :try_start_30
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    .line 556
    goto :goto_36

    .line 554
    :catch_34
    move-exception v3

    .line 555
    .local v3, "e":Ljava/io/IOException;
    move-object v0, v3

    .line 558
    .end local v3    # "e":Ljava/io/IOException;
    :cond_36
    :goto_36
    nop

    .line 560
    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_3f

    .line 561
    :catch_3b
    move-exception v3

    .line 563
    .restart local v3    # "e":Ljava/io/IOException;
    if-nez v0, :cond_3f

    .line 564
    move-object v0, v3

    .line 566
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3f
    :goto_3f
    nop

    .line 571
    if-nez v0, :cond_43

    .line 574
    return-void

    .line 572
    :cond_43
    new-instance v3, Lio/realm/exceptions/RealmFileException;

    sget-object v4, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    invoke-direct {v3, v4, v0}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/Throwable;)V

    throw v3

    .line 537
    :cond_4b
    :try_start_4b
    new-instance v3, Lio/realm/exceptions/RealmFileException;

    sget-object v4, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid input stream to the asset file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;)V

    throw v3
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_64} :catch_66
    .catchall {:try_start_4b .. :try_end_64} :catchall_64

    .line 551
    :catchall_64
    move-exception v3

    goto :goto_80

    .line 547
    :catch_66
    move-exception v3

    .line 548
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_67
    new-instance v4, Lio/realm/exceptions/RealmFileException;

    sget-object v5, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not resolve the path to the asset file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_80
    .catchall {:try_start_67 .. :try_end_80} :catchall_64

    .line 551
    .end local v3    # "e":Ljava/io/IOException;
    :goto_80
    if-eqz v1, :cond_88

    .line 553
    :try_start_82
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    .line 556
    goto :goto_88

    .line 554
    :catch_86
    move-exception v4

    .line 555
    .local v4, "e":Ljava/io/IOException;
    move-object v0, v4

    .line 558
    .end local v4    # "e":Ljava/io/IOException;
    :cond_88
    :goto_88
    if-eqz v2, :cond_92

    .line 560
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    .line 566
    goto :goto_92

    .line 561
    :catch_8e
    move-exception v4

    .line 563
    .restart local v4    # "e":Ljava/io/IOException;
    if-nez v0, :cond_92

    .line 564
    move-object v0, v4

    .line 566
    .end local v4    # "e":Ljava/io/IOException;
    :cond_92
    :goto_92
    throw v3
.end method

.method static createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;
    .registers 4
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 280
    .local p1, "realmClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/realm/RealmCache;->getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;

    move-result-object v0

    .line 282
    .local v0, "cache":Lio/realm/RealmCache;
    invoke-direct {v0, p0, p1}, Lio/realm/RealmCache;->doCreateRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object v1

    return-object v1
.end method

.method static createRealmOrGetFromCacheAsync(Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)Lio/realm/RealmAsyncTask;
    .registers 5
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Lio/realm/BaseRealm$InstanceCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    .line 248
    .local p1, "callback":Lio/realm/BaseRealm$InstanceCallback;, "Lio/realm/BaseRealm$InstanceCallback<TT;>;"
    .local p2, "realmClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/realm/RealmCache;->getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;

    move-result-object v0

    .line 249
    .local v0, "cache":Lio/realm/RealmCache;
    invoke-direct {v0, p0, p1, p2}, Lio/realm/RealmCache;->doCreateRealmOrGetFromCacheAsync(Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)Lio/realm/RealmAsyncTask;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized doCreateRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;
    .registers 7
    .param p1, "configuration"    # Lio/realm/RealmConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .local p2, "realmClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v0, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-static {p2}, Lio/realm/RealmCache$RealmCacheType;->valueOf(Ljava/lang/Class;)Lio/realm/RealmCache$RealmCacheType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmCache$RefAndCount;

    .line 290
    .local v0, "refAndCount":Lio/realm/RealmCache$RefAndCount;
    invoke-direct {p0}, Lio/realm/RealmCache;->getTotalGlobalRefCount()I

    move-result v1

    if-nez v1, :cond_52

    .line 291
    invoke-static {p1}, Lio/realm/RealmCache;->copyAssetFileIfNeeded(Lio/realm/RealmConfiguration;)V

    .line 292
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->realmExists()Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_b7

    .line 294
    .local v1, "fileExists":Z
    const/4 v2, 0x0

    .line 296
    .local v2, "sharedRealm":Lio/realm/internal/OsSharedRealm;
    :try_start_1b
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 300
    if-nez v1, :cond_43

    .line 301
    invoke-static {p1}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/internal/OsSharedRealm;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_4b

    move-object v2, v3

    .line 303
    :try_start_28
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/realm/internal/ObjectServerFacade;->downloadRemoteChanges(Lio/realm/RealmConfiguration;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2f} :catch_30
    .catchall {:try_start_28 .. :try_end_2f} :catchall_4b

    .line 314
    goto :goto_43

    .line 304
    :catch_30
    move-exception v3

    .line 307
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_31
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 308
    const/4 v2, 0x0

    .line 312
    invoke-static {p1}, Lio/realm/BaseRealm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    .line 313
    throw v3

    .line 317
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_39
    if-eqz v1, :cond_43

    .line 319
    invoke-static {p1}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/internal/OsSharedRealm;

    move-result-object v3

    move-object v2, v3

    .line 320
    invoke-static {v2}, Lio/realm/internal/Table;->migratePrimaryKeyTableIfNeeded(Lio/realm/internal/OsSharedRealm;)V
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_4b

    .line 324
    :cond_43
    :goto_43
    if-eqz v2, :cond_48

    .line 325
    :try_start_45
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 330
    :cond_48
    iput-object p1, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    .line 331
    .end local v1    # "fileExists":Z
    .end local v2    # "sharedRealm":Lio/realm/internal/OsSharedRealm;
    goto :goto_55

    .line 324
    .restart local v1    # "fileExists":Z
    .restart local v2    # "sharedRealm":Lio/realm/internal/OsSharedRealm;
    :catchall_4b
    move-exception v3

    if-eqz v2, :cond_51

    .line 325
    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->close()V

    :cond_51
    throw v3

    .line 333
    .end local v1    # "fileExists":Z
    .end local v2    # "sharedRealm":Lio/realm/internal/OsSharedRealm;
    :cond_52
    invoke-direct {p0, p1}, Lio/realm/RealmCache;->validateConfiguration(Lio/realm/RealmConfiguration;)V

    .line 336
    :goto_55
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$600(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_90

    .line 340
    const-class v1, Lio/realm/Realm;

    if-ne p2, v1, :cond_68

    .line 342
    invoke-static {p0}, Lio/realm/Realm;->createInstance(Lio/realm/RealmCache;)Lio/realm/Realm;

    move-result-object v1

    goto :goto_70

    .line 343
    :cond_68
    const-class v1, Lio/realm/DynamicRealm;

    if-ne p2, v1, :cond_88

    .line 344
    invoke-static {p0}, Lio/realm/DynamicRealm;->createInstance(Lio/realm/RealmCache;)Lio/realm/DynamicRealm;

    move-result-object v1

    .line 346
    .local v1, "realm":Lio/realm/BaseRealm;
    :goto_70
    nop

    .line 350
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$600(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 351
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 354
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$808(Lio/realm/RealmCache$RefAndCount;)I

    goto :goto_90

    .line 346
    .end local v1    # "realm":Lio/realm/BaseRealm;
    :cond_88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_90
    :goto_90
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 358
    .local v1, "refCount":Ljava/lang/Integer;
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 361
    invoke-static {v0}, Lio/realm/RealmCache$RefAndCount;->access$600(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/BaseRealm;
    :try_end_b5
    .catchall {:try_start_45 .. :try_end_b5} :catchall_b7

    monitor-exit p0

    return-object v2

    .line 287
    .end local v0    # "refAndCount":Lio/realm/RealmCache$RefAndCount;
    .end local v1    # "refCount":Ljava/lang/Integer;
    .end local p1    # "configuration":Lio/realm/RealmConfiguration;
    .end local p2    # "realmClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :catchall_b7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized doCreateRealmOrGetFromCacheAsync(Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)Lio/realm/RealmAsyncTask;
    .registers 9
    .param p1, "configuration"    # Lio/realm/RealmConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/realm/BaseRealm;",
            ">(",
            "Lio/realm/RealmConfiguration;",
            "Lio/realm/BaseRealm$InstanceCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/realm/RealmAsyncTask;"
        }
    .end annotation

    .local p2, "callback":Lio/realm/BaseRealm$InstanceCallback;, "Lio/realm/BaseRealm$InstanceCallback<TT;>;"
    .local p3, "realmClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 254
    :try_start_1
    new-instance v0, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v0}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    .line 255
    .local v0, "capabilities":Lio/realm/internal/Capabilities;
    const-string v1, "Realm instances cannot be loaded asynchronously on a non-looper thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 257
    if-eqz p2, :cond_2a

    .line 263
    new-instance v1, Lio/realm/RealmCache$CreateRealmRunnable;

    new-instance v2, Lio/realm/internal/android/AndroidRealmNotifier;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lio/realm/internal/android/AndroidRealmNotifier;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Capabilities;)V

    invoke-direct {v1, v2, p1, p2, p3}, Lio/realm/RealmCache$CreateRealmRunnable;-><init>(Lio/realm/internal/RealmNotifier;Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)V

    .line 265
    .local v1, "createRealmRunnable":Lio/realm/RealmCache$CreateRealmRunnable;, "Lio/realm/RealmCache$CreateRealmRunnable<TT;>;"
    sget-object v2, Lio/realm/BaseRealm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    invoke-virtual {v2, v1}, Lio/realm/internal/async/RealmThreadPoolExecutor;->submitTransaction(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 266
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {v1, v2}, Lio/realm/RealmCache$CreateRealmRunnable;->setFuture(Ljava/util/concurrent/Future;)V

    .line 268
    new-instance v3, Lio/realm/internal/async/RealmAsyncTaskImpl;

    sget-object v4, Lio/realm/BaseRealm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    invoke-direct {v3, v2, v4}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_32

    monitor-exit p0

    return-object v3

    .line 258
    .end local v1    # "createRealmRunnable":Lio/realm/RealmCache$CreateRealmRunnable;, "Lio/realm/RealmCache$CreateRealmRunnable<TT;>;"
    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_2a
    :try_start_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The callback cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 253
    .end local v0    # "capabilities":Lio/realm/internal/Capabilities;
    .end local p1    # "configuration":Lio/realm/RealmConfiguration;
    .end local p2    # "callback":Lio/realm/BaseRealm$InstanceCallback;, "Lio/realm/BaseRealm$InstanceCallback<TT;>;"
    .end local p3    # "realmClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized doInvokeWithGlobalRefCount(Lio/realm/RealmCache$Callback;)V
    .registers 3
    .param p1, "callback"    # Lio/realm/RealmCache$Callback;

    monitor-enter p0

    .line 476
    :try_start_1
    invoke-direct {p0}, Lio/realm/RealmCache;->getTotalGlobalRefCount()I

    move-result v0

    invoke-interface {p1, v0}, Lio/realm/RealmCache$Callback;->onResult(I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 477
    monitor-exit p0

    return-void

    .line 475
    .end local p1    # "callback":Lio/realm/RealmCache$Callback;
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;
    .registers 7
    .param p0, "realmPath"    # Ljava/lang/String;
    .param p1, "createIfNotExist"    # Z

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "cacheToReturn":Lio/realm/RealmCache;
    sget-object v1, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    monitor-enter v1

    .line 226
    :try_start_4
    sget-object v2, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 228
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lio/realm/RealmCache;>;>;"
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/RealmCache;

    .line 230
    .local v3, "cache":Lio/realm/RealmCache;
    if-nez v3, :cond_22

    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2b

    .line 233
    :cond_22
    iget-object v4, v3, Lio/realm/RealmCache;->realmPath:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 234
    move-object v0, v3

    .line 236
    .end local v3    # "cache":Lio/realm/RealmCache;
    :cond_2b
    :goto_2b
    goto :goto_a

    .line 238
    :cond_2c
    if-nez v0, :cond_40

    if-eqz p1, :cond_40

    .line 239
    new-instance v3, Lio/realm/RealmCache;

    invoke-direct {v3, p0}, Lio/realm/RealmCache;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 240
    sget-object v3, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lio/realm/RealmCache;>;>;"
    :cond_40
    monitor-exit v1

    .line 243
    return-object v0

    .line 242
    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_42

    throw v2
.end method

.method static getLocalThreadCount(Lio/realm/RealmConfiguration;)I
    .registers 8
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;

    .line 577
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/realm/RealmCache;->getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;

    move-result-object v0

    .line 578
    .local v0, "cache":Lio/realm/RealmCache;
    if-nez v0, :cond_c

    .line 579
    return v1

    .line 583
    :cond_c
    const/4 v2, 0x0

    .line 584
    .local v2, "totalRefCount":I
    iget-object v3, v0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-virtual {v3}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/RealmCache$RefAndCount;

    .line 585
    .local v4, "refAndCount":Lio/realm/RealmCache$RefAndCount;
    invoke-static {v4}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 586
    .local v5, "localCount":Ljava/lang/Integer;
    if-eqz v5, :cond_34

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_35

    :cond_34
    const/4 v6, 0x0

    :goto_35
    add-int/2addr v2, v6

    .line 587
    .end local v4    # "refAndCount":Lio/realm/RealmCache$RefAndCount;
    .end local v5    # "localCount":Ljava/lang/Integer;
    goto :goto_17

    .line 588
    :cond_37
    return v2
.end method

.method private getTotalGlobalRefCount()I
    .registers 5

    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, "totalRefCount":I
    iget-object v1, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/RealmCache$RefAndCount;

    .line 601
    .local v2, "refAndCount":Lio/realm/RealmCache$RefAndCount;
    invoke-static {v2}, Lio/realm/RealmCache$RefAndCount;->access$800(Lio/realm/RealmCache$RefAndCount;)I

    move-result v3

    add-int/2addr v0, v3

    .line 602
    .end local v2    # "refAndCount":Lio/realm/RealmCache$RefAndCount;
    goto :goto_b

    .line 604
    :cond_1d
    return v0
.end method

.method static invokeWithGlobalRefCount(Lio/realm/RealmConfiguration;Lio/realm/RealmCache$Callback;)V
    .registers 5
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;
    .param p1, "callback"    # Lio/realm/RealmCache$Callback;

    .line 465
    sget-object v0, Lio/realm/RealmCache;->cachesList:Ljava/util/List;

    monitor-enter v0

    .line 466
    :try_start_3
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/realm/RealmCache;->getCache(Ljava/lang/String;Z)Lio/realm/RealmCache;

    move-result-object v1

    .line 467
    .local v1, "cache":Lio/realm/RealmCache;
    if-nez v1, :cond_13

    .line 468
    invoke-interface {p1, v2}, Lio/realm/RealmCache$Callback;->onResult(I)V

    .line 469
    monitor-exit v0

    return-void

    .line 471
    :cond_13
    invoke-direct {v1, p1}, Lio/realm/RealmCache;->doInvokeWithGlobalRefCount(Lio/realm/RealmCache$Callback;)V

    .line 472
    .end local v1    # "cache":Lio/realm/RealmCache;
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private validateConfiguration(Lio/realm/RealmConfiguration;)V
    .registers 7
    .param p1, "newConfiguration"    # Lio/realm/RealmConfiguration;

    .line 425
    iget-object v0, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0, p1}, Lio/realm/RealmConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 427
    return-void

    .line 431
    :cond_9
    iget-object v0, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 436
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v0

    .line 437
    .local v0, "newMigration":Lio/realm/RealmMigration;
    iget-object v1, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v1

    .line 438
    .local v1, "oldMigration":Lio/realm/RealmMigration;
    if-eqz v1, :cond_5e

    if-eqz v0, :cond_5e

    .line 440
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 442
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getMigration()Lio/realm/RealmMigration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_5e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configurations cannot be different if used to open the same file. \nCached configuration: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nNew configuration: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 432
    .end local v0    # "newMigration":Lio/realm/RealmMigration;
    .end local v1    # "oldMigration":Lio/realm/RealmMigration;
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong key used to decrypt Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getConfiguration()Lio/realm/RealmConfiguration;
    .registers 2

    .line 592
    iget-object v0, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    return-object v0
.end method

.method declared-synchronized invokeWithLock(Lio/realm/RealmCache$Callback0;)V
    .registers 2
    .param p1, "callback"    # Lio/realm/RealmCache$Callback0;

    monitor-enter p0

    .line 485
    :try_start_1
    invoke-interface {p1}, Lio/realm/RealmCache$Callback0;->onCall()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 486
    monitor-exit p0

    return-void

    .line 484
    .end local p1    # "callback":Lio/realm/RealmCache$Callback0;
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method leak()V
    .registers 3

    .line 612
    iget-object v0, p0, Lio/realm/RealmCache;->isLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 613
    sget-object v0, Lio/realm/RealmCache;->leakedCaches:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_e
    return-void
.end method

.method declared-synchronized release(Lio/realm/BaseRealm;)V
    .registers 9
    .param p1, "realm"    # Lio/realm/BaseRealm;

    monitor-enter p0

    .line 371
    :try_start_1
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "canonicalPath":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/RealmCache;->refAndCountMap:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lio/realm/RealmCache$RealmCacheType;->valueOf(Ljava/lang/Class;)Lio/realm/RealmCache$RealmCacheType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmCache$RefAndCount;

    .line 373
    .local v1, "refAndCount":Lio/realm/RealmCache$RefAndCount;
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 374
    .local v2, "refCount":Ljava/lang/Integer;
    const/4 v3, 0x0

    if-nez v2, :cond_27

    .line 375
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, v4

    .line 378
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-gtz v4, :cond_3c

    .line 379
    const-string v4, "%s has been closed already. refCount is %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v2, v6, v5

    invoke-static {v4, v6}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_a8

    .line 380
    monitor-exit p0

    return-void

    .line 384
    :cond_3c
    :try_start_3c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .line 386
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9f

    .line 389
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 390
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$600(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 393
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$810(Lio/realm/RealmCache$RefAndCount;)I

    .line 394
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$800(Lio/realm/RealmCache$RefAndCount;)I

    move-result v3

    if-ltz v3, :cond_83

    .line 401
    invoke-virtual {p1}, Lio/realm/BaseRealm;->doClose()V

    .line 404
    invoke-direct {p0}, Lio/realm/RealmCache;->getTotalGlobalRefCount()I

    move-result v3

    if-nez v3, :cond_a6

    .line 408
    iput-object v4, p0, Lio/realm/RealmCache;->configuration:Lio/realm/RealmConfiguration;

    .line 409
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v3

    invoke-static {v3}, Lio/realm/internal/ObjectServerFacade;->getFacade(Z)Lio/realm/internal/ObjectServerFacade;

    move-result-object v3

    .line 410
    invoke-virtual {p1}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/realm/internal/ObjectServerFacade;->realmClosed(Lio/realm/RealmConfiguration;)V

    goto :goto_a6

    .line 396
    :cond_83
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Global reference counter of Realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " got corrupted."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 414
    :cond_9f
    invoke-static {v1}, Lio/realm/RealmCache$RefAndCount;->access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_a6
    .catchall {:try_start_3c .. :try_end_a6} :catchall_a8

    .line 416
    :cond_a6
    :goto_a6
    monitor-exit p0

    return-void

    .line 370
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v1    # "refAndCount":Lio/realm/RealmCache$RefAndCount;
    .end local v2    # "refCount":Ljava/lang/Integer;
    .end local p1    # "realm":Lio/realm/BaseRealm;
    :catchall_a8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class io.realm.RealmCache.AnonymousClass1 (io.realm.RealmCache$1)
.class Lio/realm/RealmCache$1;
.super Ljava/lang/Object;
.source "RealmCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/RealmCache;->copyAssetFileIfNeeded(Lio/realm/RealmConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$certFileExists:Z

.field final synthetic val$configuration:Lio/realm/RealmConfiguration;

.field final synthetic val$realmFileFromAsset:Ljava/io/File;

.field final synthetic val$syncServerCertificateAssetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Lio/realm/RealmConfiguration;ZLjava/lang/String;)V
    .registers 5

    .line 506
    iput-object p1, p0, Lio/realm/RealmCache$1;->val$realmFileFromAsset:Ljava/io/File;

    iput-object p2, p0, Lio/realm/RealmCache$1;->val$configuration:Lio/realm/RealmConfiguration;

    iput-boolean p3, p0, Lio/realm/RealmCache$1;->val$certFileExists:Z

    iput-object p4, p0, Lio/realm/RealmCache$1;->val$syncServerCertificateAssetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 509
    iget-object v0, p0, Lio/realm/RealmCache$1;->val$realmFileFromAsset:Ljava/io/File;

    if-eqz v0, :cond_f

    .line 510
    iget-object v0, p0, Lio/realm/RealmCache$1;->val$configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getAssetFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmCache$1;->val$realmFileFromAsset:Ljava/io/File;

    invoke-static {v0, v1}, Lio/realm/RealmCache;->access$900(Ljava/lang/String;Ljava/io/File;)V

    .line 514
    :cond_f
    iget-boolean v0, p0, Lio/realm/RealmCache$1;->val$certFileExists:Z

    if-eqz v0, :cond_2d

    .line 515
    iget-object v0, p0, Lio/realm/RealmCache$1;->val$configuration:Lio/realm/RealmConfiguration;

    .line 516
    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v0

    .line 515
    invoke-static {v0}, Lio/realm/internal/ObjectServerFacade;->getFacade(Z)Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmCache$1;->val$configuration:Lio/realm/RealmConfiguration;

    .line 516
    invoke-virtual {v0, v1}, Lio/realm/internal/ObjectServerFacade;->getSyncServerCertificateFilePath(Lio/realm/RealmConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "syncServerCertificateFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    .local v1, "certificateFile":Ljava/io/File;
    iget-object v2, p0, Lio/realm/RealmCache$1;->val$syncServerCertificateAssetName:Ljava/lang/String;

    invoke-static {v2, v1}, Lio/realm/RealmCache;->access$900(Ljava/lang/String;Ljava/io/File;)V

    .line 521
    .end local v0    # "syncServerCertificateFilePath":Ljava/lang/String;
    .end local v1    # "certificateFile":Ljava/io/File;
    :cond_2d
    return-void
.end method

###### Class io.realm.RealmCache.Callback (io.realm.RealmCache$Callback)
.class interface abstract Lio/realm/RealmCache$Callback;
.super Ljava/lang/Object;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onResult(I)V
.end method

###### Class io.realm.RealmCache.Callback0 (io.realm.RealmCache$Callback0)
.class interface abstract Lio/realm/RealmCache$Callback0;
.super Ljava/lang/Object;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback0"
.end annotation


# virtual methods
.method public abstract onCall()V
.end method

###### Class io.realm.RealmCache.CreateRealmRunnable (io.realm.RealmCache$CreateRealmRunnable)
.class Lio/realm/RealmCache$CreateRealmRunnable;
.super Ljava/lang/Object;
.source "RealmCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateRealmRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/realm/BaseRealm;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/BaseRealm$InstanceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/BaseRealm$InstanceCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final canReleaseBackgroundInstanceLatch:Ljava/util/concurrent/CountDownLatch;

.field private final configuration:Lio/realm/RealmConfiguration;

.field private future:Ljava/util/concurrent/Future;

.field private final notifier:Lio/realm/internal/RealmNotifier;

.field private final realmClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/internal/RealmNotifier;Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)V
    .registers 7
    .param p1, "notifier"    # Lio/realm/internal/RealmNotifier;
    .param p2, "configuration"    # Lio/realm/RealmConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/RealmNotifier;",
            "Lio/realm/RealmConfiguration;",
            "Lio/realm/BaseRealm$InstanceCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lio/realm/RealmCache$CreateRealmRunnable;, "Lio/realm/RealmCache$CreateRealmRunnable<TT;>;"
    .local p3, "callback":Lio/realm/BaseRealm$InstanceCallback;, "Lio/realm/BaseRealm$InstanceCallback<TT;>;"
    .local p4, "realmClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable;->canReleaseBackgroundInstanceLatch:Ljava/util/concurrent/CountDownLatch;

    .line 101
    iput-object p2, p0, Lio/realm/RealmCache$CreateRealmRunnable;->configuration:Lio/realm/RealmConfiguration;

    .line 102
    iput-object p4, p0, Lio/realm/RealmCache$CreateRealmRunnable;->realmClass:Ljava/lang/Class;

    .line 103
    iput-object p3, p0, Lio/realm/RealmCache$CreateRealmRunnable;->callback:Lio/realm/BaseRealm$InstanceCallback;

    .line 104
    iput-object p1, p0, Lio/realm/RealmCache$CreateRealmRunnable;->notifier:Lio/realm/internal/RealmNotifier;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/Future;
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmCache$CreateRealmRunnable;

    .line 90
    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic access$100(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmCache$CreateRealmRunnable;

    .line 90
    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable;->canReleaseBackgroundInstanceLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200(Lio/realm/RealmCache$CreateRealmRunnable;)Lio/realm/RealmConfiguration;
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmCache$CreateRealmRunnable;

    .line 90
    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable;->configuration:Lio/realm/RealmConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/lang/Class;
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmCache$CreateRealmRunnable;

    .line 90
    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable;->realmClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$400(Lio/realm/RealmCache$CreateRealmRunnable;)Lio/realm/BaseRealm$InstanceCallback;
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmCache$CreateRealmRunnable;

    .line 90
    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable;->callback:Lio/realm/BaseRealm$InstanceCallback;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 113
    .local p0, "this":Lio/realm/RealmCache$CreateRealmRunnable;, "Lio/realm/RealmCache$CreateRealmRunnable<TT;>;"
    const/4 v0, 0x0

    .line 116
    .local v0, "instance":Lio/realm/BaseRealm;, "TT;"
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lio/realm/RealmCache$CreateRealmRunnable;->configuration:Lio/realm/RealmConfiguration;

    iget-object v3, p0, Lio/realm/RealmCache$CreateRealmRunnable;->realmClass:Ljava/lang/Class;

    invoke-static {v2, v3}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object v2

    move-object v0, v2

    .line 117
    iget-object v2, p0, Lio/realm/RealmCache$CreateRealmRunnable;->notifier:Lio/realm/internal/RealmNotifier;

    new-instance v3, Lio/realm/RealmCache$CreateRealmRunnable$1;

    invoke-direct {v3, p0}, Lio/realm/RealmCache$CreateRealmRunnable$1;-><init>(Lio/realm/RealmCache$CreateRealmRunnable;)V

    invoke-virtual {v2, v3}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 151
    .local v2, "results":Z
    if-nez v2, :cond_1d

    .line 152
    iget-object v3, p0, Lio/realm/RealmCache$CreateRealmRunnable;->canReleaseBackgroundInstanceLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 156
    :cond_1d
    iget-object v3, p0, Lio/realm/RealmCache$CreateRealmRunnable;->canReleaseBackgroundInstanceLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 157
    const-string v3, "Timeout for creating Realm instance in foreground thread in `CreateRealmRunnable` "

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_30} :catch_57
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_30} :catch_38
    .catchall {:try_start_2 .. :try_end_30} :catchall_36

    .line 175
    .end local v2    # "results":Z
    :cond_30
    if-eqz v0, :cond_62

    .line 176
    :goto_32
    invoke-virtual {v0}, Lio/realm/BaseRealm;->close()V

    goto :goto_62

    .line 175
    :catchall_36
    move-exception v1

    goto :goto_63

    .line 161
    :catch_38
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_39
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/realm/internal/ObjectServerFacade;->wasDownloadInterrupted(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 166
    const-string v3, "`CreateRealmRunnable` failed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lio/realm/RealmCache$CreateRealmRunnable;->notifier:Lio/realm/internal/RealmNotifier;

    new-instance v3, Lio/realm/RealmCache$CreateRealmRunnable$2;

    invoke-direct {v3, p0, v2}, Lio/realm/RealmCache$CreateRealmRunnable$2;-><init>(Lio/realm/RealmCache$CreateRealmRunnable;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    .line 175
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_54
    if-eqz v0, :cond_62

    goto :goto_32

    .line 159
    :catch_57
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "`CreateRealmRunnable` has been interrupted."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_39 .. :try_end_5f} :catchall_36

    .line 175
    .end local v2    # "e":Ljava/lang/InterruptedException;
    if-eqz v0, :cond_62

    goto :goto_32

    .line 179
    :cond_62
    :goto_62
    return-void

    .line 175
    :goto_63
    if-eqz v0, :cond_68

    .line 176
    invoke-virtual {v0}, Lio/realm/BaseRealm;->close()V

    :cond_68
    throw v1
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .registers 2
    .param p1, "future"    # Ljava/util/concurrent/Future;

    .line 108
    .local p0, "this":Lio/realm/RealmCache$CreateRealmRunnable;, "Lio/realm/RealmCache$CreateRealmRunnable<TT;>;"
    iput-object p1, p0, Lio/realm/RealmCache$CreateRealmRunnable;->future:Ljava/util/concurrent/Future;

    .line 109
    return-void
.end method

###### Class io.realm.RealmCache.CreateRealmRunnable.AnonymousClass1 (io.realm.RealmCache$CreateRealmRunnable$1)
.class Lio/realm/RealmCache$CreateRealmRunnable$1;
.super Ljava/lang/Object;
.source "RealmCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/RealmCache$CreateRealmRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/RealmCache$CreateRealmRunnable;


# direct methods
.method constructor <init>(Lio/realm/RealmCache$CreateRealmRunnable;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/RealmCache$CreateRealmRunnable;

    .line 117
    .local p0, "this":Lio/realm/RealmCache$CreateRealmRunnable$1;, "Lio/realm/RealmCache$CreateRealmRunnable$1;"
    iput-object p1, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 126
    .local p0, "this":Lio/realm/RealmCache$CreateRealmRunnable$1;, "Lio/realm/RealmCache$CreateRealmRunnable$1;"
    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-static {v0}, Lio/realm/RealmCache$CreateRealmRunnable;->access$000(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-static {v0}, Lio/realm/RealmCache$CreateRealmRunnable;->access$000(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_56

    .line 130
    :cond_15
    const/4 v0, 0x0

    .line 131
    .local v0, "instanceToReturn":Lio/realm/BaseRealm;, "TT;"
    const/4 v1, 0x0

    .line 136
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_17
    iget-object v2, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-static {v2}, Lio/realm/RealmCache$CreateRealmRunnable;->access$200(Lio/realm/RealmCache$CreateRealmRunnable;)Lio/realm/RealmConfiguration;

    move-result-object v2

    iget-object v3, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-static {v3}, Lio/realm/RealmCache$CreateRealmRunnable;->access$300(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object v2
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_27} :catch_34
    .catchall {:try_start_17 .. :try_end_27} :catchall_29

    move-object v0, v2

    goto :goto_36

    .line 140
    :catchall_29
    move-exception v2

    iget-object v3, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-static {v3}, Lio/realm/RealmCache$CreateRealmRunnable;->access$100(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v2

    .line 137
    :catch_34
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Throwable;
    move-object v1, v2

    .line 140
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_36
    iget-object v2, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-static {v2}, Lio/realm/RealmCache$CreateRealmRunnable;->access$100(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 141
    nop

    .line 142
    if-eqz v0, :cond_4c

    .line 143
    iget-object v2, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-static {v2}, Lio/realm/RealmCache$CreateRealmRunnable;->access$400(Lio/realm/RealmCache$CreateRealmRunnable;)Lio/realm/BaseRealm$InstanceCallback;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/realm/BaseRealm$InstanceCallback;->onSuccess(Lio/realm/BaseRealm;)V

    goto :goto_55

    .line 147
    :cond_4c
    iget-object v2, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-static {v2}, Lio/realm/RealmCache$CreateRealmRunnable;->access$400(Lio/realm/RealmCache$CreateRealmRunnable;)Lio/realm/BaseRealm$InstanceCallback;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/BaseRealm$InstanceCallback;->onError(Ljava/lang/Throwable;)V

    .line 149
    :goto_55
    return-void

    .line 127
    .end local v0    # "instanceToReturn":Lio/realm/BaseRealm;, "TT;"
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_56
    :goto_56
    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable$1;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-static {v0}, Lio/realm/RealmCache$CreateRealmRunnable;->access$100(Lio/realm/RealmCache$CreateRealmRunnable;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 128
    return-void
.end method

###### Class io.realm.RealmCache.CreateRealmRunnable.AnonymousClass2 (io.realm.RealmCache$CreateRealmRunnable$2)
.class Lio/realm/RealmCache$CreateRealmRunnable$2;
.super Ljava/lang/Object;
.source "RealmCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/RealmCache$CreateRealmRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/RealmCache$CreateRealmRunnable;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/realm/RealmCache$CreateRealmRunnable;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "this$0"    # Lio/realm/RealmCache$CreateRealmRunnable;

    .line 167
    .local p0, "this":Lio/realm/RealmCache$CreateRealmRunnable$2;, "Lio/realm/RealmCache$CreateRealmRunnable$2;"
    iput-object p1, p0, Lio/realm/RealmCache$CreateRealmRunnable$2;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    iput-object p2, p0, Lio/realm/RealmCache$CreateRealmRunnable$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 170
    .local p0, "this":Lio/realm/RealmCache$CreateRealmRunnable$2;, "Lio/realm/RealmCache$CreateRealmRunnable$2;"
    iget-object v0, p0, Lio/realm/RealmCache$CreateRealmRunnable$2;->this$0:Lio/realm/RealmCache$CreateRealmRunnable;

    invoke-static {v0}, Lio/realm/RealmCache$CreateRealmRunnable;->access$400(Lio/realm/RealmCache$CreateRealmRunnable;)Lio/realm/BaseRealm$InstanceCallback;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmCache$CreateRealmRunnable$2;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lio/realm/BaseRealm$InstanceCallback;->onError(Ljava/lang/Throwable;)V

    .line 171
    return-void
.end method

###### Class io.realm.RealmCache.RealmCacheType (io.realm.RealmCache$RealmCacheType)
.class final enum Lio/realm/RealmCache$RealmCacheType;
.super Ljava/lang/Enum;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RealmCacheType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/RealmCache$RealmCacheType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/RealmCache$RealmCacheType;

.field public static final enum DYNAMIC_REALM:Lio/realm/RealmCache$RealmCacheType;

.field public static final enum TYPED_REALM:Lio/realm/RealmCache$RealmCacheType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 76
    new-instance v0, Lio/realm/RealmCache$RealmCacheType;

    const-string v1, "TYPED_REALM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/RealmCache$RealmCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/RealmCache$RealmCacheType;->TYPED_REALM:Lio/realm/RealmCache$RealmCacheType;

    .line 77
    new-instance v0, Lio/realm/RealmCache$RealmCacheType;

    const-string v1, "DYNAMIC_REALM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/realm/RealmCache$RealmCacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/RealmCache$RealmCacheType;->DYNAMIC_REALM:Lio/realm/RealmCache$RealmCacheType;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Lio/realm/RealmCache$RealmCacheType;

    sget-object v1, Lio/realm/RealmCache$RealmCacheType;->TYPED_REALM:Lio/realm/RealmCache$RealmCacheType;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/RealmCache$RealmCacheType;->DYNAMIC_REALM:Lio/realm/RealmCache$RealmCacheType;

    aput-object v1, v0, v3

    sput-object v0, Lio/realm/RealmCache$RealmCacheType;->$VALUES:[Lio/realm/RealmCache$RealmCacheType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static valueOf(Ljava/lang/Class;)Lio/realm/RealmCache$RealmCacheType;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/BaseRealm;",
            ">;)",
            "Lio/realm/RealmCache$RealmCacheType;"
        }
    .end annotation

    .line 80
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/BaseRealm;>;"
    const-class v0, Lio/realm/Realm;

    if-ne p0, v0, :cond_7

    .line 81
    sget-object v0, Lio/realm/RealmCache$RealmCacheType;->TYPED_REALM:Lio/realm/RealmCache$RealmCacheType;

    return-object v0

    .line 82
    :cond_7
    const-class v0, Lio/realm/DynamicRealm;

    if-ne p0, v0, :cond_e

    .line 83
    sget-object v0, Lio/realm/RealmCache$RealmCacheType;->DYNAMIC_REALM:Lio/realm/RealmCache$RealmCacheType;

    return-object v0

    .line 86
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmCache$RealmCacheType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    const-class v0, Lio/realm/RealmCache$RealmCacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/RealmCache$RealmCacheType;

    return-object v0
.end method

.method public static values()[Lio/realm/RealmCache$RealmCacheType;
    .registers 1

    .line 75
    sget-object v0, Lio/realm/RealmCache$RealmCacheType;->$VALUES:[Lio/realm/RealmCache$RealmCacheType;

    invoke-virtual {v0}, [Lio/realm/RealmCache$RealmCacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/RealmCache$RealmCacheType;

    return-object v0
.end method

###### Class io.realm.RealmCache.RefAndCount (io.realm.RealmCache$RefAndCount)
.class Lio/realm/RealmCache$RefAndCount;
.super Ljava/lang/Object;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefAndCount"
.end annotation


# instance fields
.field private globalCount:I

.field private final localCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final localRealm:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/BaseRealm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/realm/RealmCache$RefAndCount;->localRealm:Ljava/lang/ThreadLocal;

    .line 70
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/realm/RealmCache$RefAndCount;->localCount:Ljava/lang/ThreadLocal;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/RealmCache$1;)V
    .registers 2
    .param p1, "x0"    # Lio/realm/RealmCache$1;

    .line 66
    invoke-direct {p0}, Lio/realm/RealmCache$RefAndCount;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmCache$RefAndCount;

    .line 66
    iget-object v0, p0, Lio/realm/RealmCache$RefAndCount;->localRealm:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$700(Lio/realm/RealmCache$RefAndCount;)Ljava/lang/ThreadLocal;
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmCache$RefAndCount;

    .line 66
    iget-object v0, p0, Lio/realm/RealmCache$RefAndCount;->localCount:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$800(Lio/realm/RealmCache$RefAndCount;)I
    .registers 2
    .param p0, "x0"    # Lio/realm/RealmCache$RefAndCount;

    .line 66
    iget v0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return v0
.end method

.method static synthetic access$808(Lio/realm/RealmCache$RefAndCount;)I
    .registers 3
    .param p0, "x0"    # Lio/realm/RealmCache$RefAndCount;

    .line 66
    iget v0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return v0
.end method

.method static synthetic access$810(Lio/realm/RealmCache$RefAndCount;)I
    .registers 3
    .param p0, "x0"    # Lio/realm/RealmCache$RefAndCount;

    .line 66
    iget v0, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/realm/RealmCache$RefAndCount;->globalCount:I

    return v0
.end method
