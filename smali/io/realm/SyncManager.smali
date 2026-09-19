###### Class io.realm.SyncManager (io.realm.SyncManager)
.class public Lio/realm/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/SyncManager$Debug;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "MS_CANNOT_BE_FINAL"
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field public static APP_ID:Ljava/lang/String;

.field private static CERTIFICATE_FACTORY:Ljava/security/cert/CertificateFactory;

.field public static NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field

.field private static ROS_CERTIFICATES_CHAIN:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SESSION_NO_OP_ERROR_HANDLER:Lio/realm/SyncSession$ErrorHandler;

.field private static TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

.field private static authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/realm/AuthenticationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile authServer:Lio/realm/internal/network/AuthenticationServer;

.field static volatile defaultSessionErrorHandler:Lio/realm/SyncSession$ErrorHandler;

.field private static networkListener:Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

.field private static sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/SyncSession;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile userStore:Lio/realm/UserStore;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lio/realm/SyncManager;->APP_ID:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 101
    new-instance v0, Lio/realm/SyncManager$1;

    invoke-direct {v0}, Lio/realm/SyncManager$1;-><init>()V

    sput-object v0, Lio/realm/SyncManager;->SESSION_NO_OP_ERROR_HANDLER:Lio/realm/SyncSession$ErrorHandler;

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/realm/SyncManager;->authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 130
    new-instance v0, Lio/realm/internal/network/OkHttpAuthenticationServer;

    invoke-direct {v0}, Lio/realm/internal/network/OkHttpAuthenticationServer;-><init>()V

    sput-object v0, Lio/realm/SyncManager;->authServer:Lio/realm/internal/network/AuthenticationServer;

    .line 133
    new-instance v0, Lio/realm/SyncManager$2;

    invoke-direct {v0}, Lio/realm/SyncManager$2;-><init>()V

    sput-object v0, Lio/realm/SyncManager;->networkListener:Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    .line 146
    sget-object v0, Lio/realm/SyncManager;->SESSION_NO_OP_ERROR_HANDLER:Lio/realm/SyncSession$ErrorHandler;

    sput-object v0, Lio/realm/SyncManager;->defaultSessionErrorHandler:Lio/realm/SyncSession$ErrorHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 67
    invoke-static {}, Lio/realm/SyncManager;->notifyNetworkIsBack()V

    return-void
.end method

.method public static addAuthenticationListener(Lio/realm/AuthenticationListener;)V
    .registers 3
    .param p0, "listener"    # Lio/realm/AuthenticationListener;

    .line 178
    if-eqz p0, :cond_8

    .line 181
    sget-object v0, Lio/realm/SyncManager;->authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    return-void

    .line 179
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'listener\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized bindSessionWithConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "sessionPath"    # Ljava/lang/String;
    .param p1, "refreshToken"    # Ljava/lang/String;

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 416
    :try_start_3
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/SyncSession;

    .line 417
    .local v1, "syncSession":Lio/realm/SyncSession;
    if-nez v1, :cond_25

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matching Java SyncSession could not be found for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_34

    goto :goto_31

    .line 421
    :cond_25
    :try_start_25
    sget-object v2, Lio/realm/SyncManager;->authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-virtual {v1, v2, p1}, Lio/realm/SyncSession;->getAccessToken(Lio/realm/internal/network/AuthenticationServer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_2d
    .catchall {:try_start_25 .. :try_end_2b} :catchall_34

    monitor-exit v0

    return-object v2

    .line 422
    :catch_2d
    move-exception v2

    .line 423
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_2e
    invoke-static {v2}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_34

    .line 426
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_31
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 415
    .end local v1    # "syncSession":Lio/realm/SyncSession;
    .end local p0    # "sessionPath":Ljava/lang/String;
    .end local p1    # "refreshToken":Ljava/lang/String;
    :catchall_34
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static buildCertificateFromPEM(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p0, "pem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 529
    const/4 v0, 0x0

    .line 531
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 532
    sget-object v1, Lio/realm/SyncManager;->CERTIFICATE_FACTORY:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    .line 534
    nop

    .line 535
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 532
    return-object v1

    .line 534
    :catchall_1a
    move-exception v1

    if-eqz v0, :cond_20

    .line 535
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_20
    throw v1
.end method

.method static getAllSessions(Lio/realm/SyncUser;)Ljava/util/List;
    .registers 6
    .param p0, "syncUser"    # Lio/realm/SyncUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/SyncUser;",
            ")",
            "Ljava/util/List<",
            "Lio/realm/SyncSession;",
            ">;"
        }
    .end annotation

    .line 306
    if-eqz p0, :cond_34

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "allSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/realm/SyncSession;>;"
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/SyncSession;

    .line 311
    .local v2, "syncSession":Lio/realm/SyncSession;
    invoke-virtual {v2}, Lio/realm/SyncSession;->getState()Lio/realm/SyncSession$State;

    move-result-object v3

    sget-object v4, Lio/realm/SyncSession$State;->ERROR:Lio/realm/SyncSession$State;

    if-eq v3, v4, :cond_32

    invoke-virtual {v2}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v3

    invoke-virtual {v3, p0}, Lio/realm/SyncUser;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 312
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v2    # "syncSession":Lio/realm/SyncSession;
    :cond_32
    goto :goto_11

    .line 315
    :cond_33
    return-object v0

    .line 307
    .end local v0    # "allSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/realm/SyncSession;>;"
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-empty \'syncUser\' is required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getAuthServer()Lio/realm/internal/network/AuthenticationServer;
    .registers 1

    .line 319
    sget-object v0, Lio/realm/SyncManager;->authServer:Lio/realm/internal/network/AuthenticationServer;

    return-object v0
.end method

.method public static declared-synchronized getOrCreateSession(Lio/realm/SyncConfiguration;Ljava/net/URI;)Lio/realm/SyncSession;
    .registers 6
    .param p0, "syncConfiguration"    # Lio/realm/SyncConfiguration;
    .param p1, "resolvedRealmURL"    # Ljava/net/URI;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 253
    if-eqz p0, :cond_46

    .line 257
    :try_start_5
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/SyncSession;

    .line 258
    .local v1, "session":Lio/realm/SyncSession;
    if-nez v1, :cond_44

    .line 259
    new-instance v2, Lio/realm/SyncSession;

    invoke-direct {v2, p0}, Lio/realm/SyncSession;-><init>(Lio/realm/SyncConfiguration;)V

    move-object v1, v2

    .line 260
    sget-object v2, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v2, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 262
    const-string v2, "first session created add network listener"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    sget-object v2, Lio/realm/SyncManager;->networkListener:Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    invoke-static {v2}, Lio/realm/internal/network/NetworkStateReceiver;->addListener(Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;)V

    .line 265
    :cond_38
    if-eqz p1, :cond_44

    .line 266
    invoke-virtual {v1, p1}, Lio/realm/SyncSession;->setResolvedRealmURI(Ljava/net/URI;)V

    .line 272
    sget-object v2, Lio/realm/SyncManager;->authServer:Lio/realm/internal/network/AuthenticationServer;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lio/realm/SyncSession;->getAccessToken(Lio/realm/internal/network/AuthenticationServer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_4e

    .line 276
    :cond_44
    monitor-exit v0

    return-object v1

    .line 254
    .end local v1    # "session":Lio/realm/SyncSession;
    :cond_46
    :try_start_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A non-empty \'syncConfiguration\' is required."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    .line 252
    .end local p0    # "syncConfiguration":Lio/realm/SyncConfiguration;
    .end local p1    # "resolvedRealmURL":Ljava/net/URI;
    :catchall_4e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getSession(Lio/realm/SyncConfiguration;)Lio/realm/SyncSession;
    .registers 6
    .param p0, "syncConfiguration"    # Lio/realm/SyncConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 222
    if-eqz p0, :cond_35

    .line 226
    :try_start_5
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/SyncSession;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_3d

    .line 227
    .local v1, "session":Lio/realm/SyncSession;
    if-eqz v1, :cond_15

    .line 232
    monitor-exit v0

    return-object v1

    .line 228
    :cond_15
    :try_start_15
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SyncSession found using the path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nplease ensure to call this method after you\'ve open the Realm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    .end local v1    # "session":Lio/realm/SyncSession;
    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A non-empty \'syncConfiguration\' is required."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_3d

    .line 221
    .end local p0    # "syncConfiguration":Lio/realm/SyncConfiguration;
    :catchall_3d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getUserStore()Lio/realm/UserStore;
    .registers 1

    .line 331
    sget-object v0, Lio/realm/SyncManager;->userStore:Lio/realm/UserStore;

    return-object v0
.end method

.method static init(Ljava/lang/String;Lio/realm/UserStore;)V
    .registers 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "userStore"    # Lio/realm/UserStore;

    .line 150
    sput-object p0, Lio/realm/SyncManager;->APP_ID:Ljava/lang/String;

    .line 151
    sput-object p1, Lio/realm/SyncManager;->userStore:Lio/realm/UserStore;

    .line 152
    return-void
.end method

.method protected static native nativeInitializeSyncManager(Ljava/lang/String;)V
.end method

.method private static native nativeReconnect()V
.end method

.method private static native nativeReset()V
.end method

.method private static native nativeSimulateSyncError(Ljava/lang/String;ILjava/lang/String;Z)V
.end method

.method private static declared-synchronized notifyErrorHandler(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "errorCode"    # I
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 354
    :try_start_3
    invoke-static {p2}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 356
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/SyncSession;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_54

    .line 358
    .local v2, "syncSession":Lio/realm/SyncSession;
    :try_start_1f
    invoke-virtual {v2, p0, p1}, Lio/realm/SyncSession;->notifySessionError(ILjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_54

    .line 361
    goto :goto_27

    .line 359
    :catch_23
    move-exception v3

    .line 360
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_24
    invoke-static {v3}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;)V

    .line 362
    .end local v2    # "syncSession":Lio/realm/SyncSession;
    .end local v3    # "exception":Ljava/lang/Exception;
    :goto_27
    goto :goto_13

    .line 364
    :cond_28
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/SyncSession;
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_54

    .line 365
    .local v1, "syncSession":Lio/realm/SyncSession;
    if-eqz v1, :cond_3b

    .line 367
    :try_start_32
    invoke-virtual {v1, p0, p1}, Lio/realm/SyncSession;->notifySessionError(ILjava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_54

    .line 370
    :goto_35
    goto :goto_52

    .line 368
    :catch_36
    move-exception v2

    .line 369
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_37
    invoke-static {v2}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;)V

    goto :goto_35

    .line 372
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find the SyncSession corresponding to the path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_37 .. :try_end_52} :catchall_54

    .line 375
    .end local v1    # "syncSession":Lio/realm/SyncSession;
    :cond_52
    :goto_52
    monitor-exit v0

    return-void

    .line 353
    .end local p0    # "errorCode":I
    .end local p1    # "errorMessage":Ljava/lang/String;
    .end local p2    # "path":Ljava/lang/String;
    :catchall_54
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized notifyNetworkIsBack()V
    .registers 2

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 379
    :try_start_3
    invoke-static {}, Lio/realm/SyncManager;->nativeReconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 382
    goto :goto_d

    .line 378
    :catchall_7
    move-exception v1

    goto :goto_f

    .line 380
    :catch_9
    move-exception v1

    .line 381
    .local v1, "exception":Ljava/lang/Exception;
    :try_start_a
    invoke-static {v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7

    .line 383
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_d
    monitor-exit v0

    return-void

    .line 378
    :goto_f
    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized notifyProgressListener(Ljava/lang/String;JJJ)V
    .registers 16
    .param p0, "localRealmPath"    # Ljava/lang/String;
    .param p1, "listenerId"    # J
    .param p3, "transferedBytes"    # J
    .param p5, "transferableBytes"    # J

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 393
    :try_start_3
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/SyncSession;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    .line 394
    .local v1, "session":Lio/realm/SyncSession;
    if-eqz v1, :cond_19

    .line 396
    move-object v2, v1

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    :try_start_11
    invoke-virtual/range {v2 .. v8}, Lio/realm/SyncSession;->notifyProgressListener(JJJ)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_1b

    .line 399
    goto :goto_19

    .line 397
    :catch_15
    move-exception v2

    .line 398
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_16
    invoke-static {v2}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    .line 401
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    .line 392
    .end local v1    # "session":Lio/realm/SyncSession;
    .end local p0    # "localRealmPath":Ljava/lang/String;
    .end local p1    # "listenerId":J
    .end local p3    # "transferedBytes":J
    .end local p5    # "transferableBytes":J
    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static notifyUserLoggedIn(Lio/realm/SyncUser;)V
    .registers 3
    .param p0, "user"    # Lio/realm/SyncUser;

    .line 336
    sget-object v0, Lio/realm/SyncManager;->authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/AuthenticationListener;

    .line 337
    .local v1, "authListener":Lio/realm/AuthenticationListener;
    invoke-interface {v1, p0}, Lio/realm/AuthenticationListener;->loggedIn(Lio/realm/SyncUser;)V

    .line 338
    .end local v1    # "authListener":Lio/realm/AuthenticationListener;
    goto :goto_6

    .line 339
    :cond_16
    return-void
.end method

.method static notifyUserLoggedOut(Lio/realm/SyncUser;)V
    .registers 3
    .param p0, "user"    # Lio/realm/SyncUser;

    .line 343
    sget-object v0, Lio/realm/SyncManager;->authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/AuthenticationListener;

    .line 344
    .local v1, "authListener":Lio/realm/AuthenticationListener;
    invoke-interface {v1, p0}, Lio/realm/AuthenticationListener;->loggedOut(Lio/realm/SyncUser;)V

    .line 345
    .end local v1    # "authListener":Lio/realm/AuthenticationListener;
    goto :goto_6

    .line 346
    :cond_16
    return-void
.end method

.method public static removeAuthenticationListener(Lio/realm/AuthenticationListener;)V
    .registers 2
    .param p0, "listener"    # Lio/realm/AuthenticationListener;

    .line 191
    if-nez p0, :cond_3

    .line 192
    return-void

    .line 194
    :cond_3
    sget-object v0, Lio/realm/SyncManager;->authListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method private static declared-synchronized removeSession(Lio/realm/SyncConfiguration;)V
    .registers 5
    .param p0, "syncConfiguration"    # Lio/realm/SyncConfiguration;

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 286
    if-eqz p0, :cond_2d

    .line 289
    :try_start_5
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-virtual {p0}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/SyncSession;

    .line 290
    .local v1, "syncSession":Lio/realm/SyncSession;
    if-eqz v1, :cond_16

    .line 291
    invoke-virtual {v1}, Lio/realm/SyncSession;->close()V

    .line 293
    :cond_16
    sget-object v2, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 294
    const-string v2, "last session dropped, remove network listener"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    sget-object v2, Lio/realm/SyncManager;->networkListener:Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;

    invoke-static {v2}, Lio/realm/internal/network/NetworkStateReceiver;->removeListener(Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_35

    .line 297
    :cond_2b
    monitor-exit v0

    return-void

    .line 287
    .end local v1    # "syncSession":Lio/realm/SyncSession;
    :cond_2d
    :try_start_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A non-empty \'syncConfiguration\' is required."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    .line 285
    .end local p0    # "syncConfiguration":Lio/realm/SyncConfiguration;
    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized reset()V
    .registers 2

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 547
    :try_start_3
    invoke-static {}, Lio/realm/SyncManager;->nativeReset()V

    .line 548
    sget-object v1, Lio/realm/SyncManager;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 549
    monitor-exit v0

    return-void

    .line 546
    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static setAuthServerImpl(Lio/realm/internal/network/AuthenticationServer;)V
    .registers 1
    .param p0, "authServerImpl"    # Lio/realm/internal/network/AuthenticationServer;

    .line 326
    sput-object p0, Lio/realm/SyncManager;->authServer:Lio/realm/internal/network/AuthenticationServer;

    .line 327
    return-void
.end method

.method public static setDefaultSessionErrorHandler(Lio/realm/SyncSession$ErrorHandler;)V
    .registers 2
    .param p0, "errorHandler"    # Lio/realm/SyncSession$ErrorHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 203
    if-nez p0, :cond_7

    .line 204
    sget-object v0, Lio/realm/SyncManager;->SESSION_NO_OP_ERROR_HANDLER:Lio/realm/SyncSession$ErrorHandler;

    sput-object v0, Lio/realm/SyncManager;->defaultSessionErrorHandler:Lio/realm/SyncSession$ErrorHandler;

    goto :goto_9

    .line 206
    :cond_7
    sput-object p0, Lio/realm/SyncManager;->defaultSessionErrorHandler:Lio/realm/SyncSession$ErrorHandler;

    .line 208
    :goto_9
    return-void
.end method

.method public static setUserStore(Lio/realm/UserStore;)V
    .registers 3
    .param p0, "userStore"    # Lio/realm/UserStore;

    .line 163
    if-eqz p0, :cond_5

    .line 166
    sput-object p0, Lio/realm/SyncManager;->userStore:Lio/realm/UserStore;

    .line 167
    return-void

    .line 164
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'userStore\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static simulateClientReset(Lio/realm/SyncSession;)V
    .registers 5
    .param p0, "session"    # Lio/realm/SyncSession;

    .line 560
    invoke-virtual {p0}, Lio/realm/SyncSession;->getConfiguration()Lio/realm/SyncConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/realm/ErrorCode;->DIVERGING_HISTORIES:Lio/realm/ErrorCode;

    .line 561
    invoke-virtual {v1}, Lio/realm/ErrorCode;->intValue()I

    move-result v1

    const-string v2, "Simulate Client Reset"

    .line 560
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lio/realm/SyncManager;->nativeSimulateSyncError(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 564
    return-void
.end method

.method static declared-synchronized sslVerifyCallback(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12
    .param p0, "serverAddress"    # Ljava/lang/String;
    .param p1, "pemData"    # Ljava/lang/String;
    .param p2, "depth"    # I

    const-class v0, Lio/realm/SyncManager;

    monitor-enter v0

    .line 458
    const/4 v1, 0x0

    :try_start_4
    sget-object v2, Lio/realm/SyncManager;->ROS_CERTIFICATES_CHAIN:Ljava/util/HashMap;

    if-nez v2, :cond_1d

    .line 459
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lio/realm/SyncManager;->ROS_CERTIFICATES_CHAIN:Ljava/util/HashMap;

    .line 460
    invoke-static {}, Lio/realm/SyncManager;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    sput-object v2, Lio/realm/SyncManager;->TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    .line 461
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    sput-object v2, Lio/realm/SyncManager;->CERTIFICATE_FACTORY:Ljava/security/cert/CertificateFactory;

    .line 464
    :cond_1d
    sget-object v2, Lio/realm/SyncManager;->ROS_CERTIFICATES_CHAIN:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 465
    sget-object v2, Lio/realm/SyncManager;->ROS_CERTIFICATES_CHAIN:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_2f
    sget-object v2, Lio/realm/SyncManager;->ROS_CERTIFICATES_CHAIN:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    const/4 v2, 0x1

    if-nez p2, :cond_c2

    .line 473
    sget-object v3, Lio/realm/SyncManager;->ROS_CERTIFICATES_CHAIN:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 474
    .local v3, "pemChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 475
    .local v4, "n":I
    new-array v5, v4, [Ljava/security/cert/X509Certificate;

    .line 476
    .local v5, "chain":[Ljava/security/cert/X509Certificate;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 479
    .local v7, "pem":Ljava/lang/String;
    add-int/lit8 v4, v4, -0x1

    invoke-static {v7}, Lio/realm/SyncManager;->buildCertificateFromPEM(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v8

    aput-object v8, v5, v4
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_63} :catch_c6
    .catchall {:try_start_4 .. :try_end_63} :catchall_c4

    .line 480
    .end local v7    # "pem":Ljava/lang/String;
    goto :goto_4f

    .line 484
    :cond_64
    :try_start_64
    sget-object v6, Lio/realm/SyncManager;->TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    const-string v7, "RSA"

    invoke-interface {v6, v5, v7}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 486
    sget-object v6, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    aget-object v7, v5, v1

    invoke-virtual {v6, p0, v7}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v6
    :try_end_73
    .catch Ljava/security/cert/CertificateException; {:try_start_64 .. :try_end_73} :catch_9d
    .catchall {:try_start_64 .. :try_end_73} :catchall_9b

    .line 487
    .local v6, "isValid":Z
    if-eqz v6, :cond_7d

    .line 488
    nop

    .line 498
    :try_start_76
    sget-object v7, Lio/realm/SyncManager;->ROS_CERTIFICATES_CHAIN:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7b} :catch_c6
    .catchall {:try_start_76 .. :try_end_7b} :catchall_c4

    .line 488
    monitor-exit v0

    return v2

    .line 490
    :cond_7d
    :try_start_7d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not verify the hostname for the host: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v2, v7}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_93
    .catch Ljava/security/cert/CertificateException; {:try_start_7d .. :try_end_93} :catch_9d
    .catchall {:try_start_7d .. :try_end_93} :catchall_9b

    .line 491
    nop

    .line 498
    :try_start_94
    sget-object v2, Lio/realm/SyncManager;->ROS_CERTIFICATES_CHAIN:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_99} :catch_c6
    .catchall {:try_start_94 .. :try_end_99} :catchall_c4

    .line 491
    monitor-exit v0

    return v1

    .line 498
    .end local v6    # "isValid":Z
    :catchall_9b
    move-exception v2

    goto :goto_bc

    .line 493
    :catch_9d
    move-exception v2

    .line 494
    .local v2, "e":Ljava/security/cert/CertificateException;
    :try_start_9e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not validate SSL chain certificate for the host: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b4
    .catchall {:try_start_9e .. :try_end_b4} :catchall_9b

    .line 495
    nop

    .line 498
    :try_start_b5
    sget-object v6, Lio/realm/SyncManager;->ROS_CERTIFICATES_CHAIN:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_ba} :catch_c6
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_c4

    .line 495
    monitor-exit v0

    return v1

    .line 498
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :goto_bc
    :try_start_bc
    sget-object v6, Lio/realm/SyncManager;->ROS_CERTIFICATES_CHAIN:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c2} :catch_c6
    .catchall {:try_start_bc .. :try_end_c2} :catchall_c4

    .line 503
    .end local v3    # "pemChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "n":I
    .end local v5    # "chain":[Ljava/security/cert/X509Certificate;
    :cond_c2
    monitor-exit v0

    return v2

    .line 457
    .end local p0    # "serverAddress":Ljava/lang/String;
    .end local p1    # "pemData":Ljava/lang/String;
    .end local p2    # "depth":I
    :catchall_c4
    move-exception p0

    goto :goto_df

    .line 505
    .restart local p0    # "serverAddress":Ljava/lang/String;
    .restart local p1    # "pemData":Ljava/lang/String;
    .restart local p2    # "depth":I
    :catch_c6
    move-exception v2

    .line 506
    .local v2, "e":Ljava/lang/Exception;
    :try_start_c7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during certificate validation for host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_dd
    .catchall {:try_start_c7 .. :try_end_dd} :catchall_c4

    .line 507
    monitor-exit v0

    return v1

    .line 457
    .end local v2    # "e":Ljava/lang/Exception;
    .end local p0    # "serverAddress":Ljava/lang/String;
    .end local p1    # "pemData":Ljava/lang/String;
    .end local p2    # "depth":I
    :goto_df
    monitor-exit v0

    throw p0
.end method

.method private static systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 5

    .line 515
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 516
    .local v0, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v1, 0x0

    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 517
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 518
    .local v1, "trustManagers":[Ljavax/net/ssl/TrustManager;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    const/4 v2, 0x0

    aget-object v3, v1, v2

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_22

    .line 522
    aget-object v2, v1, v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    return-object v2

    .line 519
    :cond_22
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected default trust managers:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3d
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3d} :catch_3d

    .line 523
    .end local v0    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v1    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_3d
    move-exception v0

    .line 524
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

###### Class io.realm.SyncManager.AnonymousClass1 (io.realm.SyncManager$1)
.class Lio/realm/SyncManager$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lio/realm/SyncSession$ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V
    .registers 9
    .param p1, "session"    # Lio/realm/SyncSession;
    .param p2, "error"    # Lio/realm/ObjectServerError;

    .line 104
    invoke-virtual {p2}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v0

    sget-object v1, Lio/realm/ErrorCode;->CLIENT_RESET:Lio/realm/ErrorCode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client Reset required for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/SyncSession;->getConfiguration()Lio/realm/SyncConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    return-void

    .line 109
    :cond_28
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Session Error[%s]: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 110
    invoke-virtual {p1}, Lio/realm/SyncSession;->getConfiguration()Lio/realm/SyncConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    .line 111
    invoke-virtual {p2}, Lio/realm/ObjectServerError;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 109
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "errorMsg":Ljava/lang/String;
    sget-object v1, Lio/realm/SyncManager$3;->$SwitchMap$io$realm$ErrorCode$Category:[I

    invoke-virtual {p2}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ErrorCode;->getCategory()Lio/realm/ErrorCode$Category;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ErrorCode$Category;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_84

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported error category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ErrorCode;->getCategory()Lio/realm/ErrorCode$Category;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :pswitch_76
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    goto :goto_82

    .line 114
    :pswitch_7c
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    nop

    .line 122
    :goto_82
    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_76
    .end packed-switch
.end method

###### Class io.realm.SyncManager.AnonymousClass2 (io.realm.SyncManager$2)
.class Lio/realm/SyncManager$2;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lio/realm/internal/network/NetworkStateReceiver$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "connectionAvailable"    # Z

    .line 136
    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 137
    const-string v1, "NetworkListener: Connection available"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lio/realm/SyncManager;->access$000()V

    goto :goto_15

    .line 141
    :cond_e
    const-string v1, "NetworkListener: Connection lost"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :goto_15
    return-void
.end method

###### Class io.realm.SyncManager.AnonymousClass3 (io.realm.SyncManager$3)
.class synthetic Lio/realm/SyncManager$3;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$realm$ErrorCode$Category:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 112
    invoke-static {}, Lio/realm/ErrorCode$Category;->values()[Lio/realm/ErrorCode$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/realm/SyncManager$3;->$SwitchMap$io$realm$ErrorCode$Category:[I

    :try_start_9
    sget-object v0, Lio/realm/SyncManager$3;->$SwitchMap$io$realm$ErrorCode$Category:[I

    sget-object v1, Lio/realm/ErrorCode$Category;->FATAL:Lio/realm/ErrorCode$Category;

    invoke-virtual {v1}, Lio/realm/ErrorCode$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lio/realm/SyncManager$3;->$SwitchMap$io$realm$ErrorCode$Category:[I

    sget-object v1, Lio/realm/ErrorCode$Category;->RECOVERABLE:Lio/realm/ErrorCode$Category;

    invoke-virtual {v1}, Lio/realm/ErrorCode$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method

###### Class io.realm.SyncManager.Debug (io.realm.SyncManager$Debug)
.class public Lio/realm/SyncManager$Debug;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Debug"
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "MS_SHOULD_BE_FINAL"
    }
.end annotation


# static fields
.field public static separatedDirForSyncManager:Z

.field public static skipOnlineChecking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lio/realm/SyncManager$Debug;->skipOnlineChecking:Z

    .line 83
    sput-boolean v0, Lio/realm/SyncManager$Debug;->separatedDirForSyncManager:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
