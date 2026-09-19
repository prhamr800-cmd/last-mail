###### Class io.realm.SyncSession (io.realm.SyncSession)
.class public Lio/realm/SyncSession;
.super Ljava/lang/Object;
.source "SyncSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/SyncSession$WaitForSessionWrapper;,
        Lio/realm/SyncSession$ErrorHandler;,
        Lio/realm/SyncSession$State;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final DIRECTION_DOWNLOAD:I = 0x1

.field private static final DIRECTION_UPLOAD:I = 0x2

.field private static final REFRESH_MARGIN_DELAY:J

.field private static final REFRESH_TOKENS_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final STATE_VALUE_ACTIVE:B = 0x1t

.field private static final STATE_VALUE_DYING:B = 0x2t

.field private static final STATE_VALUE_ERROR:B = 0x4t

.field private static final STATE_VALUE_INACTIVE:B = 0x3t

.field private static final STATE_VALUE_WAITING_FOR_ACCESS_TOKEN:B


# instance fields
.field private final configuration:Lio/realm/SyncConfiguration;

.field private final errorHandler:Lio/realm/SyncSession$ErrorHandler;

.field private volatile isClosed:Z

.field private final listenerIdToProgressListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lio/realm/internal/util/Pair<",
            "Lio/realm/ProgressListener;",
            "Lio/realm/Progress;",
            ">;>;"
        }
    .end annotation
.end field

.field private networkRequest:Lio/realm/RealmAsyncTask;

.field private onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final progressListenerId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final progressListenerToOsTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/realm/ProgressListener;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private refreshTokenNetworkRequest:Lio/realm/RealmAsyncTask;

.field private refreshTokenTask:Lio/realm/RealmAsyncTask;

.field private resolvedRealmURI:Ljava/net/URI;

.field private final waitCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final waitForChangesMutex:Ljava/lang/Object;

.field private final waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/realm/SyncSession$WaitForSessionWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 65
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lio/realm/SyncSession;->REFRESH_TOKENS_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/realm/SyncSession;->REFRESH_MARGIN_DELAY:J

    return-void
.end method

.method constructor <init>(Lio/realm/SyncConfiguration;)V
    .registers 5
    .param p1, "configuration"    # Lio/realm/SyncConfiguration;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    iput-boolean v1, p0, Lio/realm/SyncSession;->isClosed:Z

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/realm/SyncSession;->waitCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/realm/SyncSession;->waitForChangesMutex:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/SyncSession;->listenerIdToProgressListenerMap:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/realm/SyncSession;->progressListenerToOsTokenMap:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/realm/SyncSession;->progressListenerId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 132
    iput-object p1, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    .line 133
    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->getErrorHandler()Lio/realm/SyncSession$ErrorHandler;

    move-result-object v0

    iput-object v0, p0, Lio/realm/SyncSession;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    .line 134
    return-void
.end method

.method static synthetic access$100(Lio/realm/SyncSession;)Z
    .registers 2
    .param p0, "x0"    # Lio/realm/SyncSession;

    .line 64
    iget-boolean v0, p0, Lio/realm/SyncSession;->isClosed:Z

    return v0
.end method

.method static synthetic access$1000(Lio/realm/SyncSession;)Lio/realm/RealmAsyncTask;
    .registers 2
    .param p0, "x0"    # Lio/realm/SyncSession;

    .line 64
    iget-object v0, p0, Lio/realm/SyncSession;->refreshTokenNetworkRequest:Lio/realm/RealmAsyncTask;

    return-object v0
.end method

.method static synthetic access$200(Lio/realm/SyncSession;)Ljava/net/URI;
    .registers 2
    .param p0, "x0"    # Lio/realm/SyncSession;

    .line 64
    iget-object v0, p0, Lio/realm/SyncSession;->resolvedRealmURI:Ljava/net/URI;

    return-object v0
.end method

.method static synthetic access$300(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;
    .registers 2
    .param p0, "x0"    # Lio/realm/SyncSession;

    .line 64
    iget-object v0, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 64
    invoke-static {p0, p1, p2}, Lio/realm/SyncSession;->nativeRefreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;J)V
    .registers 4
    .param p0, "x0"    # Lio/realm/SyncSession;
    .param p1, "x1"    # Lio/realm/internal/network/AuthenticationServer;
    .param p2, "x2"    # J

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lio/realm/SyncSession;->scheduleRefreshAccessToken(Lio/realm/internal/network/AuthenticationServer;J)V

    return-void
.end method

.method static synthetic access$600(Lio/realm/SyncSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lio/realm/SyncSession;

    .line 64
    iget-object v0, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lio/realm/SyncSession;)Lio/realm/SyncSession$ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lio/realm/SyncSession;

    .line 64
    iget-object v0, p0, Lio/realm/SyncSession;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    return-object v0
.end method

.method static synthetic access$800(Lio/realm/SyncSession;)Lio/realm/RealmAsyncTask;
    .registers 2
    .param p0, "x0"    # Lio/realm/SyncSession;

    .line 64
    iget-object v0, p0, Lio/realm/SyncSession;->refreshTokenTask:Lio/realm/RealmAsyncTask;

    return-object v0
.end method

.method static synthetic access$900(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V
    .registers 2
    .param p0, "x0"    # Lio/realm/SyncSession;
    .param p1, "x1"    # Lio/realm/internal/network/AuthenticationServer;

    .line 64
    invoke-direct {p0, p1}, Lio/realm/SyncSession;->refreshAccessToken(Lio/realm/internal/network/AuthenticationServer;)V

    return-void
.end method

.method private addProgressListener(Lio/realm/ProgressMode;ILio/realm/ProgressListener;)V
    .registers 12
    .param p1, "mode"    # Lio/realm/ProgressMode;
    .param p2, "direction"    # I
    .param p3, "listener"    # Lio/realm/ProgressListener;

    .line 269
    invoke-direct {p0, p1, p3}, Lio/realm/SyncSession;->checkProgressListenerArguments(Lio/realm/ProgressMode;Lio/realm/ProgressListener;)V

    .line 270
    sget-object v0, Lio/realm/ProgressMode;->INDEFINITELY:Lio/realm/ProgressMode;

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 271
    .local v0, "isStreaming":Z
    :goto_a
    iget-object v1, p0, Lio/realm/SyncSession;->progressListenerId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    .line 275
    .local v1, "listenerId":J
    iget-object v3, p0, Lio/realm/SyncSession;->listenerIdToProgressListenerMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lio/realm/internal/util/Pair;

    const/4 v6, 0x0

    invoke-direct {v5, p3, v6}, Lio/realm/internal/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v3, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v3}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2, p2, v0}, Lio/realm/SyncSession;->nativeAddProgressListener(Ljava/lang/String;JIZ)J

    move-result-wide v3

    .line 277
    .local v3, "listenerToken":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_39

    .line 282
    iget-object v5, p0, Lio/realm/SyncSession;->listenerIdToProgressListenerMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 285
    :cond_39
    iget-object v5, p0, Lio/realm/SyncSession;->progressListenerToOsTokenMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :goto_42
    return-void
.end method

.method private authenticateRealm(Lio/realm/internal/network/AuthenticationServer;)V
    .registers 5
    .param p1, "authServer"    # Lio/realm/internal/network/AuthenticationServer;

    .line 530
    iget-object v0, p0, Lio/realm/SyncSession;->networkRequest:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_9

    .line 531
    iget-object v0, p0, Lio/realm/SyncSession;->networkRequest:Lio/realm/RealmAsyncTask;

    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 533
    :cond_9
    invoke-virtual {p0}, Lio/realm/SyncSession;->clearScheduledAccessTokenRefresh()V

    .line 535
    iget-object v0, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 537
    sget-object v0, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lio/realm/SyncSession$1;

    invoke-direct {v1, p0, p1}, Lio/realm/SyncSession$1;-><init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 581
    .local v0, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v1, Lio/realm/internal/async/RealmAsyncTaskImpl;

    sget-object v2, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v0, v2}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    iput-object v1, p0, Lio/realm/SyncSession;->networkRequest:Lio/realm/RealmAsyncTask;

    .line 582
    return-void
.end method

.method private checkIfNotOnMainThread(Ljava/lang/String;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 436
    new-instance v0, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v0}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    invoke-virtual {v0}, Lio/realm/internal/android/AndroidCapabilities;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_c

    .line 439
    return-void

    .line 437
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkProgressListenerArguments(Lio/realm/ProgressMode;Lio/realm/ProgressListener;)V
    .registers 5
    .param p1, "mode"    # Lio/realm/ProgressMode;
    .param p2, "listener"    # Lio/realm/ProgressListener;

    .line 291
    if-eqz p2, :cond_d

    .line 295
    if-eqz p1, :cond_5

    .line 298
    return-void

    .line 296
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'mode\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'listener\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeAddProgressListener(Ljava/lang/String;JIZ)J
.end method

.method private static native nativeGetState(Ljava/lang/String;)B
.end method

.method private static native nativeRefreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeRemoveProgressListener(Ljava/lang/String;J)V
.end method

.method private native nativeWaitForDownloadCompletion(ILjava/lang/String;)Z
.end method

.method private native nativeWaitForUploadCompletion(ILjava/lang/String;)Z
.end method

.method private notifyAllChangesSent(ILjava/lang/Long;Ljava/lang/String;)V
    .registers 6
    .param p1, "callbackId"    # I
    .param p2, "errorcode"    # Ljava/lang/Long;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/SyncSession$WaitForSessionWrapper;

    .line 318
    .local v0, "wrapper":Lio/realm/SyncSession$WaitForSessionWrapper;
    if-eqz v0, :cond_15

    .line 325
    iget-object v1, p0, Lio/realm/SyncSession;->waitCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 326
    invoke-virtual {v0, p2, p3}, Lio/realm/SyncSession$WaitForSessionWrapper;->handleResult(Ljava/lang/Long;Ljava/lang/String;)V

    .line 329
    :cond_15
    return-void
.end method

.method private refreshAccessToken(Lio/realm/internal/network/AuthenticationServer;)V
    .registers 5
    .param p1, "authServer"    # Lio/realm/internal/network/AuthenticationServer;

    .line 620
    invoke-virtual {p0}, Lio/realm/SyncSession;->clearScheduledAccessTokenRefresh()V

    .line 622
    sget-object v0, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lio/realm/SyncSession$3;

    invoke-direct {v1, p0, p1}, Lio/realm/SyncSession$3;-><init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 655
    .local v0, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v1, Lio/realm/internal/async/RealmAsyncTaskImpl;

    sget-object v2, Lio/realm/SyncManager;->NETWORK_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v0, v2}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    iput-object v1, p0, Lio/realm/SyncSession;->refreshTokenNetworkRequest:Lio/realm/RealmAsyncTask;

    .line 656
    return-void
.end method

.method private scheduleRefreshAccessToken(Lio/realm/internal/network/AuthenticationServer;J)V
    .registers 10
    .param p1, "authServer"    # Lio/realm/internal/network/AuthenticationServer;
    .param p2, "expireDateInMs"    # J

    .line 585
    iget-object v0, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p2, v0

    sget-wide v2, Lio/realm/SyncSession;->REFRESH_MARGIN_DELAY:J

    sub-long/2addr v0, v2

    .line 590
    .local v0, "refreshAfter":J
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_1f

    .line 592
    const-string v3, "Expires time already reached for the access token, refresh as soon as possible"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    sget-wide v0, Lio/realm/SyncSession;->REFRESH_MARGIN_DELAY:J

    .line 600
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling an access_token refresh in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iget-object v2, p0, Lio/realm/SyncSession;->refreshTokenTask:Lio/realm/RealmAsyncTask;

    if-eqz v2, :cond_43

    .line 603
    iget-object v2, p0, Lio/realm/SyncSession;->refreshTokenTask:Lio/realm/RealmAsyncTask;

    invoke-interface {v2}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 606
    :cond_43
    sget-object v2, Lio/realm/SyncSession;->REFRESH_TOKENS_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lio/realm/SyncSession$2;

    invoke-direct {v3, p0, p1}, Lio/realm/SyncSession$2;-><init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 614
    .local v2, "task":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    new-instance v3, Lio/realm/internal/async/RealmAsyncTaskImpl;

    sget-object v4, Lio/realm/SyncSession;->REFRESH_TOKENS_EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v3, v2, v4}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    iput-object v3, p0, Lio/realm/SyncSession;->refreshTokenTask:Lio/realm/RealmAsyncTask;

    .line 615
    return-void
.end method

.method private waitForChanges(I)V
    .registers 11
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 392
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_1e

    .line 393
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1e
    :goto_1e
    iget-boolean v1, p0, Lio/realm/SyncSession;->isClosed:Z

    if-nez v1, :cond_aa

    .line 396
    iget-object v1, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v1}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "realmPath":Ljava/lang/String;
    new-instance v2, Lio/realm/SyncSession$WaitForSessionWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/realm/SyncSession$WaitForSessionWrapper;-><init>(Lio/realm/SyncSession$1;)V

    .line 398
    .local v2, "wrapper":Lio/realm/SyncSession$WaitForSessionWrapper;
    iget-object v4, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 399
    iget-object v4, p0, Lio/realm/SyncSession;->waitCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    .line 400
    .local v4, "callbackId":I
    if-ne p1, v0, :cond_40

    .line 401
    invoke-direct {p0, v4, v1}, Lio/realm/SyncSession;->nativeWaitForDownloadCompletion(ILjava/lang/String;)Z

    move-result v0

    goto :goto_44

    .line 402
    :cond_40
    invoke-direct {p0, v4, v1}, Lio/realm/SyncSession;->nativeWaitForUploadCompletion(ILjava/lang/String;)Z

    move-result v0

    .line 403
    .local v0, "listenerRegistered":Z
    :goto_44
    if-nez v0, :cond_85

    .line 404
    iget-object v5, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 405
    const-string v3, ""

    .line 406
    .local v3, "errorMsg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_ac

    .line 410
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown direction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 408
    :pswitch_67
    const-string v3, "It was not possible upload all local changes."

    goto :goto_6c

    .line 407
    :pswitch_6a
    const-string v3, "It was not possible to download all remote changes."

    .line 413
    :goto_6c
    new-instance v5, Lio/realm/ObjectServerError;

    sget-object v6, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Has the SyncClient been started?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    throw v5

    .line 416
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_85
    :try_start_85
    invoke-virtual {v2}, Lio/realm/SyncSession$WaitForSessionWrapper;->waitForServerChanges()V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_88} :catch_a3

    .line 420
    nop

    .line 424
    :try_start_89
    iget-boolean v5, p0, Lio/realm/SyncSession;->isClosed:Z

    if-nez v5, :cond_96

    .line 425
    invoke-virtual {v2}, Lio/realm/SyncSession$WaitForSessionWrapper;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_96

    .line 426
    invoke-virtual {v2}, Lio/realm/SyncSession$WaitForSessionWrapper;->throwExceptionIfNeeded()V
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_9c

    .line 430
    :cond_96
    iget-object v5, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 431
    goto :goto_aa

    .line 430
    :catchall_9c
    move-exception v5

    iget-object v6, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v5

    .line 417
    :catch_a3
    move-exception v5

    .line 418
    .local v5, "e":Ljava/lang/InterruptedException;
    iget-object v6, p0, Lio/realm/SyncSession;->waitingForServerChanges:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 419
    throw v5

    .line 433
    .end local v0    # "listenerRegistered":Z
    .end local v1    # "realmPath":Ljava/lang/String;
    .end local v2    # "wrapper":Lio/realm/SyncSession$WaitForSessionWrapper;
    .end local v4    # "callbackId":I
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_aa
    :goto_aa
    return-void

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_67
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized addDownloadProgressListener(Lio/realm/ProgressMode;Lio/realm/ProgressListener;)V
    .registers 4
    .param p1, "mode"    # Lio/realm/ProgressMode;
    .param p2, "listener"    # Lio/realm/ProgressListener;

    monitor-enter p0

    .line 225
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, v0, p2}, Lio/realm/SyncSession;->addProgressListener(Lio/realm/ProgressMode;ILio/realm/ProgressListener;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 226
    monitor-exit p0

    return-void

    .line 224
    .end local p1    # "mode":Lio/realm/ProgressMode;
    .end local p2    # "listener":Lio/realm/ProgressListener;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addUploadProgressListener(Lio/realm/ProgressMode;Lio/realm/ProgressListener;)V
    .registers 4
    .param p1, "mode"    # Lio/realm/ProgressMode;
    .param p2, "listener"    # Lio/realm/ProgressListener;

    monitor-enter p0

    .line 239
    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, p1, v0, p2}, Lio/realm/SyncSession;->addProgressListener(Lio/realm/ProgressMode;ILio/realm/ProgressListener;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 240
    monitor-exit p0

    return-void

    .line 238
    .end local p1    # "mode":Lio/realm/ProgressMode;
    .end local p2    # "listener":Lio/realm/ProgressListener;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method clearScheduledAccessTokenRefresh()V
    .registers 3

    .line 659
    iget-object v0, p0, Lio/realm/SyncSession;->refreshTokenTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_9

    .line 660
    iget-object v0, p0, Lio/realm/SyncSession;->refreshTokenTask:Lio/realm/RealmAsyncTask;

    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 662
    :cond_9
    iget-object v0, p0, Lio/realm/SyncSession;->refreshTokenNetworkRequest:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_12

    .line 663
    iget-object v0, p0, Lio/realm/SyncSession;->refreshTokenNetworkRequest:Lio/realm/RealmAsyncTask;

    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 665
    :cond_12
    iget-object v0, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 666
    return-void
.end method

.method close()V
    .registers 2

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/SyncSession;->isClosed:Z

    .line 302
    iget-object v0, p0, Lio/realm/SyncSession;->networkRequest:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_c

    .line 303
    iget-object v0, p0, Lio/realm/SyncSession;->networkRequest:Lio/realm/RealmAsyncTask;

    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 305
    :cond_c
    invoke-virtual {p0}, Lio/realm/SyncSession;->clearScheduledAccessTokenRefresh()V

    .line 306
    return-void
.end method

.method public downloadAllServerChanges()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 343
    const-string v0, "downloadAllServerChanges() cannot be called from the main thread."

    invoke-direct {p0, v0}, Lio/realm/SyncSession;->checkIfNotOnMainThread(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lio/realm/SyncSession;->waitForChangesMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    const/4 v1, 0x1

    :try_start_9
    invoke-direct {p0, v1}, Lio/realm/SyncSession;->waitForChanges(I)V

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw v1
.end method

.method getAccessToken(Lio/realm/internal/network/AuthenticationServer;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "authServer"    # Lio/realm/internal/network/AuthenticationServer;
    .param p2, "refreshToken"    # Ljava/lang/String;

    .line 499
    invoke-virtual {p0}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v0

    iget-object v1, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v0, v1}, Lio/realm/SyncUser;->isRealmAuthenticated(Lio/realm/SyncConfiguration;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    .line 500
    invoke-virtual {p0}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v0

    iget-object v2, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v0, v2}, Lio/realm/SyncUser;->getAccessToken(Lio/realm/SyncConfiguration;)Lio/realm/internal/objectserver/Token;

    move-result-object v0

    .line 502
    .local v0, "accessToken":Lio/realm/internal/objectserver/Token;
    iget-object v2, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_26

    .line 503
    invoke-virtual {v0}, Lio/realm/internal/objectserver/Token;->expiresMs()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lio/realm/SyncSession;->scheduleRefreshAccessToken(Lio/realm/internal/network/AuthenticationServer;J)V

    .line 505
    :cond_26
    invoke-virtual {v0}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 509
    .end local v0    # "accessToken":Lio/realm/internal/objectserver/Token;
    :cond_2b
    invoke-static {p2}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 511
    const/4 v0, 0x0

    :try_start_32
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 512
    .local v2, "refreshTokenJSON":Lorg/json/JSONObject;
    const-string/jumbo v3, "userToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lio/realm/internal/objectserver/Token;->from(Lorg/json/JSONObject;)Lio/realm/internal/objectserver/Token;

    move-result-object v3

    .line 513
    .local v3, "newRefreshToken":Lio/realm/internal/objectserver/Token;
    invoke-virtual {v3}, Lio/realm/internal/objectserver/Token;->hashCode()I

    move-result v4

    invoke-virtual {p0}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/SyncUser;->getRefreshToken()Lio/realm/internal/objectserver/Token;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/objectserver/Token;->hashCode()I

    move-result v5

    if-eq v4, v5, :cond_6a

    .line 514
    const-string v4, "Session[%s]: Access token updated"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v6}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    invoke-virtual {p0}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/SyncUser;->setRefreshToken(Lio/realm/internal/objectserver/Token;)V
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_6a} :catch_6b

    .line 519
    .end local v2    # "refreshTokenJSON":Lorg/json/JSONObject;
    .end local v3    # "newRefreshToken":Lio/realm/internal/objectserver/Token;
    :cond_6a
    goto :goto_7b

    .line 517
    :catch_6b
    move-exception v2

    .line 518
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "Session[%s]: Can not parse the refresh_token into a valid JSONObject: "

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v4}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lio/realm/SyncSession;->onGoingAccessTokenQuery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_90

    invoke-static {}, Lio/realm/internal/SyncObjectServerFacade;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/network/NetworkStateReceiver;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 522
    invoke-direct {p0, p1}, Lio/realm/SyncSession;->authenticateRealm(Lio/realm/internal/network/AuthenticationServer;)V

    .line 525
    :cond_90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfiguration()Lio/realm/SyncConfiguration;
    .registers 2

    .line 142
    iget-object v0, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    return-object v0
.end method

.method public getServerUrl()Ljava/net/URI;
    .registers 2

    .line 161
    iget-object v0, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lio/realm/SyncSession$State;
    .registers 4

    .line 193
    iget-object v0, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/SyncSession;->nativeGetState(Ljava/lang/String;)B

    move-result v0

    .line 194
    .local v0, "state":B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 198
    invoke-static {v0}, Lio/realm/SyncSession$State;->fromByte(B)Lio/realm/SyncSession$State;

    move-result-object v1

    return-object v1

    .line 196
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find session, Realm was probably closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUser()Lio/realm/SyncUser;
    .registers 2

    .line 152
    iget-object v0, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getUser()Lio/realm/SyncUser;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized notifyProgressListener(JJJ)V
    .registers 10
    .param p1, "listenerId"    # J
    .param p3, "transferredBytes"    # J
    .param p5, "transferableBytes"    # J

    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lio/realm/SyncSession;->listenerIdToProgressListenerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/util/Pair;

    .line 203
    .local v0, "listener":Lio/realm/internal/util/Pair;, "Lio/realm/internal/util/Pair<Lio/realm/ProgressListener;Lio/realm/Progress;>;"
    if-eqz v0, :cond_26

    .line 204
    new-instance v1, Lio/realm/Progress;

    invoke-direct {v1, p3, p4, p5, p6}, Lio/realm/Progress;-><init>(JJ)V

    .line 205
    .local v1, "newProgressNotification":Lio/realm/Progress;
    iget-object v2, v0, Lio/realm/internal/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lio/realm/Progress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 206
    iput-object v1, v0, Lio/realm/internal/util/Pair;->second:Ljava/lang/Object;

    .line 207
    iget-object v2, v0, Lio/realm/internal/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lio/realm/ProgressListener;

    invoke-interface {v2, v1}, Lio/realm/ProgressListener;->onChange(Lio/realm/Progress;)V

    .line 209
    .end local v1    # "newProgressNotification":Lio/realm/Progress;
    :cond_25
    goto :goto_3d

    .line 210
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying unknown listener failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 212
    :goto_3d
    monitor-exit p0

    return-void

    .line 201
    .end local v0    # "listener":Lio/realm/internal/util/Pair;, "Lio/realm/internal/util/Pair<Lio/realm/ProgressListener;Lio/realm/Progress;>;"
    .end local p1    # "listenerId":J
    .end local p3    # "transferredBytes":J
    .end local p5    # "transferableBytes":J
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method notifySessionError(ILjava/lang/String;)V
    .registers 9
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lio/realm/SyncSession;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    if-nez v0, :cond_5

    .line 167
    return-void

    .line 169
    :cond_5
    invoke-static {p1}, Lio/realm/ErrorCode;->fromInt(I)Lio/realm/ErrorCode;

    move-result-object v0

    .line 170
    .local v0, "errCode":Lio/realm/ErrorCode;
    sget-object v1, Lio/realm/ErrorCode;->CLIENT_RESET:Lio/realm/ErrorCode;

    if-ne v0, v1, :cond_2c

    .line 172
    iget-object v1, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v1}, Lio/realm/SyncConfiguration;->getEncryptionKey()[B

    move-result-object v1

    iget-object v2, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v2}, Lio/realm/SyncConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lio/realm/SyncConfiguration;->forRecovery(Ljava/lang/String;[BLio/realm/internal/RealmProxyMediator;)Lio/realm/RealmConfiguration;

    move-result-object v1

    .line 173
    .local v1, "backupRealmConfiguration":Lio/realm/RealmConfiguration;
    iget-object v2, p0, Lio/realm/SyncSession;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    new-instance v3, Lio/realm/ClientResetRequiredError;

    const-string v4, "A Client Reset is required. Read more here: https://realm.io/docs/realm-object-server/#client-recovery-from-a-backup."

    iget-object v5, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-direct {v3, v0, v4, v5, v1}, Lio/realm/ClientResetRequiredError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;Lio/realm/SyncConfiguration;Lio/realm/RealmConfiguration;)V

    invoke-interface {v2, p0, v3}, Lio/realm/SyncSession$ErrorHandler;->onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V

    .line 176
    .end local v1    # "backupRealmConfiguration":Lio/realm/RealmConfiguration;
    goto :goto_36

    .line 177
    :cond_2c
    iget-object v1, p0, Lio/realm/SyncSession;->errorHandler:Lio/realm/SyncSession$ErrorHandler;

    new-instance v2, Lio/realm/ObjectServerError;

    invoke-direct {v2, v0, p2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Lio/realm/SyncSession$ErrorHandler;->onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V

    .line 179
    :goto_36
    return-void
.end method

.method public declared-synchronized removeProgressListener(Lio/realm/ProgressListener;)V
    .registers 7
    .param p1, "listener"    # Lio/realm/ProgressListener;

    monitor-enter p0

    .line 249
    if-nez p1, :cond_5

    .line 250
    monitor-exit p0

    return-void

    .line 254
    :cond_5
    :try_start_5
    iget-object v0, p0, Lio/realm/SyncSession;->progressListenerToOsTokenMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 255
    .local v0, "token":Ljava/lang/Long;
    if-eqz v0, :cond_47

    .line 256
    iget-object v1, p0, Lio/realm/SyncSession;->listenerIdToProgressListenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 257
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lio/realm/internal/util/Pair<Lio/realm/ProgressListener;Lio/realm/Progress;>;>;>;"
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 259
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lio/realm/internal/util/Pair<Lio/realm/ProgressListener;Lio/realm/Progress;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/util/Pair;

    iget-object v3, v3, Lio/realm/internal/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lio/realm/ProgressListener;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 261
    goto :goto_3a

    .line 263
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lio/realm/internal/util/Pair<Lio/realm/ProgressListener;Lio/realm/Progress;>;>;"
    :cond_39
    goto :goto_19

    .line 264
    :cond_3a
    :goto_3a
    iget-object v2, p0, Lio/realm/SyncSession;->configuration:Lio/realm/SyncConfiguration;

    invoke-virtual {v2}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lio/realm/SyncSession;->nativeRemoveProgressListener(Ljava/lang/String;J)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_49

    .line 266
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lio/realm/internal/util/Pair<Lio/realm/ProgressListener;Lio/realm/Progress;>;>;>;"
    :cond_47
    monitor-exit p0

    return-void

    .line 248
    .end local v0    # "token":Ljava/lang/Long;
    .end local p1    # "listener":Lio/realm/ProgressListener;
    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setResolvedRealmURI(Ljava/net/URI;)V
    .registers 2
    .param p1, "resolvedRealmURI"    # Ljava/net/URI;

    .line 382
    iput-object p1, p0, Lio/realm/SyncSession;->resolvedRealmURI:Ljava/net/URI;

    .line 383
    return-void
.end method

.method public uploadAllLocalChanges()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 368
    const-string/jumbo v0, "uploadAllLocalChanges() cannot be called from the main thread."

    invoke-direct {p0, v0}, Lio/realm/SyncSession;->checkIfNotOnMainThread(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lio/realm/SyncSession;->waitForChangesMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    const/4 v1, 0x2

    :try_start_a
    invoke-direct {p0, v1}, Lio/realm/SyncSession;->waitForChanges(I)V

    .line 378
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v1
.end method

###### Class io.realm.SyncSession.AnonymousClass1 (io.realm.SyncSession$1)
.class Lio/realm/SyncSession$1;
.super Lio/realm/internal/network/ExponentialBackoffTask;
.source "SyncSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncSession;->authenticateRealm(Lio/realm/internal/network/AuthenticationServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/network/ExponentialBackoffTask<",
        "Lio/realm/internal/network/AuthenticateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncSession;

.field final synthetic val$authServer:Lio/realm/internal/network/AuthenticationServer;


# direct methods
.method constructor <init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V
    .registers 3
    .param p1, "this$0"    # Lio/realm/SyncSession;

    .line 537
    iput-object p1, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    iput-object p2, p0, Lio/realm/SyncSession$1;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-direct {p0}, Lio/realm/internal/network/ExponentialBackoffTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic execute()Lio/realm/internal/network/AuthServerResponse;
    .registers 2

    .line 537
    invoke-virtual {p0}, Lio/realm/SyncSession$1;->execute()Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method protected execute()Lio/realm/internal/network/AuthenticateResponse;
    .registers 5

    .line 540
    iget-object v0, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$100(Lio/realm/SyncSession;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_33

    .line 541
    iget-object v0, p0, Lio/realm/SyncSession$1;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    iget-object v1, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    .line 542
    invoke-virtual {v1}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/SyncUser;->getRefreshToken()Lio/realm/internal/objectserver/Token;

    move-result-object v1

    iget-object v2, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    .line 543
    invoke-static {v2}, Lio/realm/SyncSession;->access$200(Lio/realm/SyncSession;)Ljava/net/URI;

    move-result-object v2

    iget-object v3, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    .line 544
    invoke-virtual {v3}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v3

    .line 541
    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/network/AuthenticationServer;->loginToRealm(Lio/realm/internal/objectserver/Token;Ljava/net/URI;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v0

    return-object v0

    .line 547
    :cond_33
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onError(Lio/realm/internal/network/AuthServerResponse;)V
    .registers 2

    .line 537
    check-cast p1, Lio/realm/internal/network/AuthenticateResponse;

    invoke-virtual {p0, p1}, Lio/realm/SyncSession$1;->onError(Lio/realm/internal/network/AuthenticateResponse;)V

    return-void
.end method

.method protected onError(Lio/realm/internal/network/AuthenticateResponse;)V
    .registers 6
    .param p1, "response"    # Lio/realm/internal/network/AuthenticateResponse;

    .line 568
    iget-object v0, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$600(Lio/realm/SyncSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 569
    const-string v0, "Session[%s]: Failed to get access token (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {v3}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 570
    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 569
    invoke-static {v0, v2}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$100(Lio/realm/SyncSession;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 572
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_56

    .line 576
    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ObjectServerError;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_56

    .line 577
    iget-object v0, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$700(Lio/realm/SyncSession;)Lio/realm/SyncSession$ErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/realm/SyncSession$ErrorHandler;->onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V

    .line 579
    :cond_56
    return-void
.end method

.method protected bridge synthetic onSuccess(Lio/realm/internal/network/AuthServerResponse;)V
    .registers 2

    .line 537
    check-cast p1, Lio/realm/internal/network/AuthenticateResponse;

    invoke-virtual {p0, p1}, Lio/realm/SyncSession$1;->onSuccess(Lio/realm/internal/network/AuthenticateResponse;)V

    return-void
.end method

.method protected onSuccess(Lio/realm/internal/network/AuthenticateResponse;)V
    .registers 7
    .param p1, "response"    # Lio/realm/internal/network/AuthenticateResponse;

    .line 552
    const-string v0, "Session[%s]: Access token acquired"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {v2}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$100(Lio/realm/SyncSession;)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_79

    .line 554
    iget-object v0, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object v0

    .line 555
    .local v0, "realmUrl":Ljava/net/URI;
    iget-object v1, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-virtual {v1}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v1

    iget-object v2, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {v2}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v2

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getAccessToken()Lio/realm/internal/objectserver/Token;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lio/realm/SyncUser;->addRealm(Lio/realm/SyncConfiguration;Lio/realm/internal/objectserver/Token;)V

    .line 556
    iget-object v1, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {v1}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getAccessToken()Lio/realm/internal/objectserver/Token;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lio/realm/SyncSession;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 557
    iget-object v1, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    iget-object v2, p0, Lio/realm/SyncSession$1;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getAccessToken()Lio/realm/internal/objectserver/Token;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/objectserver/Token;->expiresMs()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lio/realm/SyncSession;->access$500(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;J)V

    goto :goto_79

    .line 561
    :cond_70
    iget-object v1, p0, Lio/realm/SyncSession$1;->this$0:Lio/realm/SyncSession;

    invoke-static {v1}, Lio/realm/SyncSession;->access$600(Lio/realm/SyncSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 564
    .end local v0    # "realmUrl":Ljava/net/URI;
    :cond_79
    :goto_79
    return-void
.end method

###### Class io.realm.SyncSession.AnonymousClass2 (io.realm.SyncSession$2)
.class Lio/realm/SyncSession$2;
.super Ljava/lang/Object;
.source "SyncSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncSession;->scheduleRefreshAccessToken(Lio/realm/internal/network/AuthenticationServer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncSession;

.field final synthetic val$authServer:Lio/realm/internal/network/AuthenticationServer;


# direct methods
.method constructor <init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V
    .registers 3
    .param p1, "this$0"    # Lio/realm/SyncSession;

    .line 606
    iput-object p1, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    iput-object p2, p0, Lio/realm/SyncSession$2;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 609
    iget-object v0, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$100(Lio/realm/SyncSession;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$800(Lio/realm/SyncSession;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_25

    .line 610
    iget-object v0, p0, Lio/realm/SyncSession$2;->this$0:Lio/realm/SyncSession;

    iget-object v1, p0, Lio/realm/SyncSession$2;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-static {v0, v1}, Lio/realm/SyncSession;->access$900(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V

    .line 612
    :cond_25
    return-void
.end method

###### Class io.realm.SyncSession.AnonymousClass3 (io.realm.SyncSession$3)
.class Lio/realm/SyncSession$3;
.super Lio/realm/internal/network/ExponentialBackoffTask;
.source "SyncSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/SyncSession;->refreshAccessToken(Lio/realm/internal/network/AuthenticationServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/network/ExponentialBackoffTask<",
        "Lio/realm/internal/network/AuthenticateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/SyncSession;

.field final synthetic val$authServer:Lio/realm/internal/network/AuthenticationServer;


# direct methods
.method constructor <init>(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;)V
    .registers 3
    .param p1, "this$0"    # Lio/realm/SyncSession;

    .line 622
    iput-object p1, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    iput-object p2, p0, Lio/realm/SyncSession$3;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-direct {p0}, Lio/realm/internal/network/ExponentialBackoffTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic execute()Lio/realm/internal/network/AuthServerResponse;
    .registers 2

    .line 622
    invoke-virtual {p0}, Lio/realm/SyncSession$3;->execute()Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method protected execute()Lio/realm/internal/network/AuthenticateResponse;
    .registers 5

    .line 625
    iget-object v0, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$100(Lio/realm/SyncSession;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_33

    .line 626
    iget-object v0, p0, Lio/realm/SyncSession$3;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    iget-object v1, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-virtual {v1}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/SyncUser;->getRefreshToken()Lio/realm/internal/objectserver/Token;

    move-result-object v1

    iget-object v2, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v2}, Lio/realm/SyncSession;->access$200(Lio/realm/SyncSession;)Ljava/net/URI;

    move-result-object v2

    iget-object v3, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-virtual {v3}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/network/AuthenticationServer;->refreshUser(Lio/realm/internal/objectserver/Token;Ljava/net/URI;Ljava/net/URL;)Lio/realm/internal/network/AuthenticateResponse;

    move-result-object v0

    return-object v0

    .line 628
    :cond_33
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onError(Lio/realm/internal/network/AuthServerResponse;)V
    .registers 2

    .line 622
    check-cast p1, Lio/realm/internal/network/AuthenticateResponse;

    invoke-virtual {p0, p1}, Lio/realm/SyncSession$3;->onError(Lio/realm/internal/network/AuthenticateResponse;)V

    return-void
.end method

.method protected onError(Lio/realm/internal/network/AuthenticateResponse;)V
    .registers 5
    .param p1, "response"    # Lio/realm/internal/network/AuthenticateResponse;

    .line 649
    iget-object v0, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$100(Lio/realm/SyncSession;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 650
    iget-object v0, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v0}, Lio/realm/SyncSession;->access$600(Lio/realm/SyncSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecoverable error, while refreshing the access Token ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getError()Lio/realm/ObjectServerError;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ObjectServerError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") reschedule will not happen"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    :cond_3f
    return-void
.end method

.method protected bridge synthetic onSuccess(Lio/realm/internal/network/AuthServerResponse;)V
    .registers 2

    .line 622
    check-cast p1, Lio/realm/internal/network/AuthenticateResponse;

    invoke-virtual {p0, p1}, Lio/realm/SyncSession$3;->onSuccess(Lio/realm/internal/network/AuthenticateResponse;)V

    return-void
.end method

.method protected onSuccess(Lio/realm/internal/network/AuthenticateResponse;)V
    .registers 8
    .param p1, "response"    # Lio/realm/internal/network/AuthenticateResponse;

    .line 633
    iget-object v0, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    monitor-enter v0

    .line 634
    :try_start_3
    iget-object v1, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v1}, Lio/realm/SyncSession;->access$100(Lio/realm/SyncSession;)Z

    move-result v1

    if-nez v1, :cond_8a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_8a

    iget-object v1, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v1}, Lio/realm/SyncSession;->access$1000(Lio/realm/SyncSession;)Lio/realm/RealmAsyncTask;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/RealmAsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_8a

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access Token refreshed successfully, Sync URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v2}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    iget-object v1, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v1}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object v1

    .line 637
    .local v1, "realmUrl":Ljava/net/URI;
    iget-object v2, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v2}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getAccessToken()Lio/realm/internal/objectserver/Token;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/objectserver/Token;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/realm/SyncSession;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 639
    iget-object v2, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-virtual {v2}, Lio/realm/SyncSession;->getUser()Lio/realm/SyncUser;

    move-result-object v2

    iget-object v3, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    invoke-static {v3}, Lio/realm/SyncSession;->access$300(Lio/realm/SyncSession;)Lio/realm/SyncConfiguration;

    move-result-object v3

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getAccessToken()Lio/realm/internal/objectserver/Token;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/realm/SyncUser;->addRealm(Lio/realm/SyncConfiguration;Lio/realm/internal/objectserver/Token;)V

    .line 641
    iget-object v2, p0, Lio/realm/SyncSession$3;->this$0:Lio/realm/SyncSession;

    iget-object v3, p0, Lio/realm/SyncSession$3;->val$authServer:Lio/realm/internal/network/AuthenticationServer;

    invoke-virtual {p1}, Lio/realm/internal/network/AuthenticateResponse;->getAccessToken()Lio/realm/internal/objectserver/Token;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/internal/objectserver/Token;->expiresMs()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lio/realm/SyncSession;->access$500(Lio/realm/SyncSession;Lio/realm/internal/network/AuthenticationServer;J)V

    .line 644
    .end local v1    # "realmUrl":Ljava/net/URI;
    :cond_8a
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw v1
.end method

###### Class io.realm.SyncSession.ErrorHandler (io.realm.SyncSession$ErrorHandler)
.class public interface abstract Lio/realm/SyncSession$ErrorHandler;
.super Ljava/lang/Object;
.source "SyncSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorHandler"
.end annotation


# virtual methods
.method public abstract onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V
.end method

###### Class io.realm.SyncSession.State (io.realm.SyncSession$State)
.class public final enum Lio/realm/SyncSession$State;
.super Ljava/lang/Enum;
.source "SyncSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/SyncSession$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/SyncSession$State;

.field public static final enum ACTIVE:Lio/realm/SyncSession$State;

.field public static final enum DYING:Lio/realm/SyncSession$State;

.field public static final enum ERROR:Lio/realm/SyncSession$State;

.field public static final enum INACTIVE:Lio/realm/SyncSession$State;

.field public static final enum WAITING_FOR_ACCESS_TOKEN:Lio/realm/SyncSession$State;


# instance fields
.field final value:B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 107
    new-instance v0, Lio/realm/SyncSession$State;

    const-string v1, "WAITING_FOR_ACCESS_TOKEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/SyncSession$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/SyncSession$State;->WAITING_FOR_ACCESS_TOKEN:Lio/realm/SyncSession$State;

    .line 108
    new-instance v0, Lio/realm/SyncSession$State;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lio/realm/SyncSession$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/SyncSession$State;->ACTIVE:Lio/realm/SyncSession$State;

    .line 109
    new-instance v0, Lio/realm/SyncSession$State;

    const-string v1, "DYING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lio/realm/SyncSession$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/SyncSession$State;->DYING:Lio/realm/SyncSession$State;

    .line 110
    new-instance v0, Lio/realm/SyncSession$State;

    const-string v1, "INACTIVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lio/realm/SyncSession$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/SyncSession$State;->INACTIVE:Lio/realm/SyncSession$State;

    .line 111
    new-instance v0, Lio/realm/SyncSession$State;

    const-string v1, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lio/realm/SyncSession$State;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/realm/SyncSession$State;->ERROR:Lio/realm/SyncSession$State;

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Lio/realm/SyncSession$State;

    sget-object v1, Lio/realm/SyncSession$State;->WAITING_FOR_ACCESS_TOKEN:Lio/realm/SyncSession$State;

    aput-object v1, v0, v2

    sget-object v1, Lio/realm/SyncSession$State;->ACTIVE:Lio/realm/SyncSession$State;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/SyncSession$State;->DYING:Lio/realm/SyncSession$State;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/SyncSession$State;->INACTIVE:Lio/realm/SyncSession$State;

    aput-object v1, v0, v5

    sget-object v1, Lio/realm/SyncSession$State;->ERROR:Lio/realm/SyncSession$State;

    aput-object v1, v0, v6

    sput-object v0, Lio/realm/SyncSession$State;->$VALUES:[Lio/realm/SyncSession$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .param p3, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput-byte p3, p0, Lio/realm/SyncSession$State;->value:B

    .line 117
    return-void
.end method

.method static fromByte(B)Lio/realm/SyncSession$State;
    .registers 6
    .param p0, "value"    # B

    .line 120
    invoke-static {}, Lio/realm/SyncSession$State;->values()[Lio/realm/SyncSession$State;

    move-result-object v0

    .line 121
    .local v0, "stateCodes":[Lio/realm/SyncSession$State;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 122
    .local v3, "state":Lio/realm/SyncSession$State;
    iget-byte v4, v3, Lio/realm/SyncSession$State;->value:B

    if-ne v4, p0, :cond_f

    .line 123
    return-object v3

    .line 121
    .end local v3    # "state":Lio/realm/SyncSession$State;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 127
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/SyncSession$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lio/realm/SyncSession$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/SyncSession$State;

    return-object v0
.end method

.method public static values()[Lio/realm/SyncSession$State;
    .registers 1

    .line 106
    sget-object v0, Lio/realm/SyncSession$State;->$VALUES:[Lio/realm/SyncSession$State;

    invoke-virtual {v0}, [Lio/realm/SyncSession$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/SyncSession$State;

    return-object v0
.end method

###### Class io.realm.SyncSession.WaitForSessionWrapper (io.realm.SyncSession$WaitForSessionWrapper)
.class Lio/realm/SyncSession$WaitForSessionWrapper;
.super Ljava/lang/Object;
.source "SyncSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/SyncSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WaitForSessionWrapper"
.end annotation


# instance fields
.field private errorCode:Ljava/lang/Long;

.field private errorMessage:Ljava/lang/String;

.field private volatile resultReceived:Z

.field private final waiter:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->waiter:Ljava/util/concurrent/CountDownLatch;

    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->resultReceived:Z

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorCode:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/SyncSession$1;)V
    .registers 2
    .param p1, "x0"    # Lio/realm/SyncSession$1;

    .line 670
    invoke-direct {p0}, Lio/realm/SyncSession$WaitForSessionWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResult(Ljava/lang/Long;Ljava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # Ljava/lang/Long;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 693
    iput-object p1, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorCode:Ljava/lang/Long;

    .line 694
    iput-object p2, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorMessage:Ljava/lang/String;

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->resultReceived:Z

    .line 696
    iget-object v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->waiter:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 697
    return-void
.end method

.method public isSuccess()Z
    .registers 2

    .line 700
    iget-boolean v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->resultReceived:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorCode:Ljava/lang/Long;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public throwExceptionIfNeeded()V
    .registers 7

    .line 708
    iget-boolean v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->resultReceived:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorCode:Ljava/lang/Long;

    if-nez v0, :cond_9

    goto :goto_26

    .line 709
    :cond_9
    new-instance v0, Lio/realm/ObjectServerError;

    sget-object v1, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorCode:Ljava/lang/Long;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->errorMessage:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 710
    const-string v4, "Internal error (%d): %s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_26
    :goto_26
    return-void
.end method

.method public waitForServerChanges()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 681
    iget-boolean v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->resultReceived:Z

    if-nez v0, :cond_9

    .line 682
    iget-object v0, p0, Lio/realm/SyncSession$WaitForSessionWrapper;->waiter:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 684
    :cond_9
    return-void
.end method
