###### Class io.realm.PermissionManager (io.realm.PermissionManager)
.class public Lio/realm/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/PermissionManager$RevokeOfferCallback;,
        Lio/realm/PermissionManager$OffersCallback;,
        Lio/realm/PermissionManager$AcceptOfferCallback;,
        Lio/realm/PermissionManager$MakeOfferCallback;,
        Lio/realm/PermissionManager$ApplyPermissionsCallback;,
        Lio/realm/PermissionManager$PermissionsCallback;,
        Lio/realm/PermissionManager$PermissionManagerBaseCallback;,
        Lio/realm/PermissionManager$RevokeOfferAsyncTask;,
        Lio/realm/PermissionManager$GetOffersAsyncTask;,
        Lio/realm/PermissionManager$PermissionManagerTask;,
        Lio/realm/PermissionManager$AcceptOfferAsyncTask;,
        Lio/realm/PermissionManager$MakeOfferAsyncTask;,
        Lio/realm/PermissionManager$ApplyPermissionTask;,
        Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;,
        Lio/realm/PermissionManager$GetPermissionsAsyncTask;,
        Lio/realm/PermissionManager$RealmType;,
        Lio/realm/PermissionManager$Cache;
    }
.end annotation


# static fields
.field private static cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadLocal<",
            "Lio/realm/PermissionManager$Cache;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final cacheLock:Ljava/lang/Object;


# instance fields
.field private activeTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/RealmAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private clientReset:Z

.field private closed:Z

.field private defaultPermissionRealm:Lio/realm/Realm;

.field final defaultPermissionRealmConfig:Lio/realm/SyncConfiguration;

.field private volatile defaultPermissionRealmError:Lio/realm/ObjectServerError;

.field private defaultPermissionRealmOpenTask:Lio/realm/RealmAsyncTask;

.field private defaultPermissions:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private delayedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/PermissionManager$PermissionManagerTask;",
            ">;"
        }
    .end annotation
.end field

.field private final errorLock:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private managementRealm:Lio/realm/Realm;

.field final managementRealmConfig:Lio/realm/SyncConfiguration;

.field private volatile managementRealmError:Lio/realm/ObjectServerError;

.field private managementRealmOpenTask:Lio/realm/RealmAsyncTask;

.field private offers:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;"
        }
    .end annotation
.end field

.field private openInProgress:Z

.field private permissionRealm:Lio/realm/Realm;

.field final permissionRealmConfig:Lio/realm/SyncConfiguration;

.field private volatile permissionRealmError:Lio/realm/ObjectServerError;

.field private permissionRealmOpenTask:Lio/realm/RealmAsyncTask;

.field private final threadId:J

.field private final user:Lio/realm/SyncUser;

.field private userPermissions:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/realm/PermissionManager;->cache:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/realm/PermissionManager;->cacheLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lio/realm/SyncUser;)V
    .registers 6
    .param p1, "user"    # Lio/realm/SyncUser;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/PermissionManager;->openInProgress:Z

    .line 134
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lio/realm/PermissionManager;->handler:Landroid/os/Handler;

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/realm/PermissionManager;->delayedTasks:Ljava/util/List;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/realm/PermissionManager;->activeTasks:Ljava/util/List;

    .line 153
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lio/realm/PermissionManager;->errorLock:Ljava/lang/Object;

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lio/realm/PermissionManager;->permissionRealmError:Lio/realm/ObjectServerError;

    .line 155
    iput-object v1, p0, Lio/realm/PermissionManager;->managementRealmError:Lio/realm/ObjectServerError;

    .line 156
    iput-object v1, p0, Lio/realm/PermissionManager;->defaultPermissionRealmError:Lio/realm/ObjectServerError;

    .line 161
    iput-boolean v0, p0, Lio/realm/PermissionManager;->clientReset:Z

    .line 179
    iput-object p1, p0, Lio/realm/PermissionManager;->user:Lio/realm/SyncUser;

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/PermissionManager;->threadId:J

    .line 181
    new-instance v1, Lio/realm/SyncConfiguration$Builder;

    sget-object v2, Lio/realm/PermissionManager$RealmType;->MANAGEMENT_REALM:Lio/realm/PermissionManager$RealmType;

    .line 182
    invoke-virtual {p1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v3

    invoke-static {v2, v3}, Lio/realm/PermissionManager;->getRealmUrl(Lio/realm/PermissionManager$RealmType;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lio/realm/SyncConfiguration$Builder;-><init>(Lio/realm/SyncUser;Ljava/lang/String;)V

    new-instance v2, Lio/realm/PermissionManager$2;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$2;-><init>(Lio/realm/PermissionManager;)V

    .line 183
    invoke-virtual {v1, v2}, Lio/realm/SyncConfiguration$Builder;->errorHandler(Lio/realm/SyncSession$ErrorHandler;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lio/realm/internal/permissions/ManagementModule;

    invoke-direct {v2}, Lio/realm/internal/permissions/ManagementModule;-><init>()V

    new-array v3, v0, [Ljava/lang/Object;

    .line 191
    invoke-virtual {v1, v2, v3}, Lio/realm/SyncConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->IMMEDIATELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 192
    invoke-virtual {v1, v2}, Lio/realm/SyncConfiguration$Builder;->sessionStopPolicy(Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lio/realm/SyncConfiguration$Builder;->build()Lio/realm/SyncConfiguration;

    move-result-object v1

    iput-object v1, p0, Lio/realm/PermissionManager;->managementRealmConfig:Lio/realm/SyncConfiguration;

    .line 195
    new-instance v1, Lio/realm/SyncConfiguration$Builder;

    sget-object v2, Lio/realm/PermissionManager$RealmType;->PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    .line 196
    invoke-virtual {p1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v3

    invoke-static {v2, v3}, Lio/realm/PermissionManager;->getRealmUrl(Lio/realm/PermissionManager$RealmType;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lio/realm/SyncConfiguration$Builder;-><init>(Lio/realm/SyncUser;Ljava/lang/String;)V

    new-instance v2, Lio/realm/PermissionManager$3;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$3;-><init>(Lio/realm/PermissionManager;)V

    .line 197
    invoke-virtual {v1, v2}, Lio/realm/SyncConfiguration$Builder;->errorHandler(Lio/realm/SyncSession$ErrorHandler;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lio/realm/internal/permissions/PermissionModule;

    invoke-direct {v2}, Lio/realm/internal/permissions/PermissionModule;-><init>()V

    new-array v3, v0, [Ljava/lang/Object;

    .line 206
    invoke-virtual {v1, v2, v3}, Lio/realm/SyncConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lio/realm/SyncConfiguration$Builder;->waitForInitialRemoteData()Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->IMMEDIATELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 209
    invoke-virtual {v1, v2}, Lio/realm/SyncConfiguration$Builder;->sessionStopPolicy(Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lio/realm/SyncConfiguration$Builder;->build()Lio/realm/SyncConfiguration;

    move-result-object v1

    iput-object v1, p0, Lio/realm/PermissionManager;->permissionRealmConfig:Lio/realm/SyncConfiguration;

    .line 212
    new-instance v1, Lio/realm/SyncConfiguration$Builder;

    sget-object v2, Lio/realm/PermissionManager$RealmType;->DEFAULT_PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    .line 213
    invoke-virtual {p1}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v3

    invoke-static {v2, v3}, Lio/realm/PermissionManager;->getRealmUrl(Lio/realm/PermissionManager$RealmType;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lio/realm/SyncConfiguration$Builder;-><init>(Lio/realm/SyncUser;Ljava/lang/String;)V

    new-instance v2, Lio/realm/PermissionManager$4;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$4;-><init>(Lio/realm/PermissionManager;)V

    .line 214
    invoke-virtual {v1, v2}, Lio/realm/SyncConfiguration$Builder;->errorHandler(Lio/realm/SyncSession$ErrorHandler;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lio/realm/internal/permissions/PermissionModule;

    invoke-direct {v2}, Lio/realm/internal/permissions/PermissionModule;-><init>()V

    new-array v0, v0, [Ljava/lang/Object;

    .line 223
    invoke-virtual {v1, v2, v0}, Lio/realm/SyncConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lio/realm/SyncConfiguration$Builder;->waitForInitialRemoteData()Lio/realm/SyncConfiguration$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lio/realm/SyncConfiguration$Builder;->readOnly()Lio/realm/SyncConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->IMMEDIATELY:Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    .line 226
    invoke-virtual {v0, v1}, Lio/realm/SyncConfiguration$Builder;->sessionStopPolicy(Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;)Lio/realm/SyncConfiguration$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lio/realm/SyncConfiguration$Builder;->build()Lio/realm/SyncConfiguration;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealmConfig:Lio/realm/SyncConfiguration;

    .line 228
    return-void
.end method

.method static synthetic access$100(Lio/realm/PermissionManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->errorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lio/realm/PermissionManager;)Lio/realm/Realm;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealm:Lio/realm/Realm;

    return-object v0
.end method

.method static synthetic access$1002(Lio/realm/PermissionManager;Lio/realm/Realm;)Lio/realm/Realm;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/Realm;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->defaultPermissionRealm:Lio/realm/Realm;

    return-object p1
.end method

.method static synthetic access$1102(Lio/realm/PermissionManager;Lio/realm/RealmAsyncTask;)Lio/realm/RealmAsyncTask;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/RealmAsyncTask;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->defaultPermissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    return-object p1
.end method

.method static synthetic access$1200(Lio/realm/PermissionManager;)Lio/realm/RealmResults;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->userPermissions:Lio/realm/RealmResults;

    return-object v0
.end method

.method static synthetic access$1202(Lio/realm/PermissionManager;Lio/realm/RealmResults;)Lio/realm/RealmResults;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/RealmResults;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->userPermissions:Lio/realm/RealmResults;

    return-object p1
.end method

.method static synthetic access$1400(Lio/realm/PermissionManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->activeTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lio/realm/PermissionManager;)Lio/realm/RealmResults;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissions:Lio/realm/RealmResults;

    return-object v0
.end method

.method static synthetic access$1502(Lio/realm/PermissionManager;Lio/realm/RealmResults;)Lio/realm/RealmResults;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/RealmResults;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->defaultPermissions:Lio/realm/RealmResults;

    return-object p1
.end method

.method static synthetic access$200(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealmError:Lio/realm/ObjectServerError;

    return-object v0
.end method

.method static synthetic access$202(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/ObjectServerError;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->managementRealmError:Lio/realm/ObjectServerError;

    return-object p1
.end method

.method static synthetic access$2600(Lio/realm/PermissionManager;)Z
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-boolean v0, p0, Lio/realm/PermissionManager;->closed:Z

    return v0
.end method

.method static synthetic access$2700(Lio/realm/PermissionManager;)Z
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-boolean v0, p0, Lio/realm/PermissionManager;->clientReset:Z

    return v0
.end method

.method static synthetic access$2702(Lio/realm/PermissionManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lio/realm/PermissionManager;->clientReset:Z

    return p1
.end method

.method static synthetic access$2800(Lio/realm/PermissionManager;)Lio/realm/SyncUser;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->user:Lio/realm/SyncUser;

    return-object v0
.end method

.method static synthetic access$2900(Lio/realm/PermissionManager;)Lio/realm/RealmResults;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->offers:Lio/realm/RealmResults;

    return-object v0
.end method

.method static synthetic access$2902(Lio/realm/PermissionManager;Lio/realm/RealmResults;)Lio/realm/RealmResults;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/RealmResults;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->offers:Lio/realm/RealmResults;

    return-object p1
.end method

.method static synthetic access$300(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealmError:Lio/realm/ObjectServerError;

    return-object v0
.end method

.method static synthetic access$302(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/ObjectServerError;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->permissionRealmError:Lio/realm/ObjectServerError;

    return-object p1
.end method

.method static synthetic access$3200(Lio/realm/PermissionManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealmError:Lio/realm/ObjectServerError;

    return-object v0
.end method

.method static synthetic access$402(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/ObjectServerError;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->defaultPermissionRealmError:Lio/realm/ObjectServerError;

    return-object p1
.end method

.method static synthetic access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealm:Lio/realm/Realm;

    return-object v0
.end method

.method static synthetic access$502(Lio/realm/PermissionManager;Lio/realm/Realm;)Lio/realm/Realm;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/Realm;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->managementRealm:Lio/realm/Realm;

    return-object p1
.end method

.method static synthetic access$602(Lio/realm/PermissionManager;Lio/realm/RealmAsyncTask;)Lio/realm/RealmAsyncTask;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/RealmAsyncTask;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->managementRealmOpenTask:Lio/realm/RealmAsyncTask;

    return-object p1
.end method

.method static synthetic access$700(Lio/realm/PermissionManager;)V
    .registers 1
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfRealmsAreOpenedAndRunDelayedTasks()V

    return-void
.end method

.method static synthetic access$800(Lio/realm/PermissionManager;)Lio/realm/Realm;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;

    .line 62
    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealm:Lio/realm/Realm;

    return-object v0
.end method

.method static synthetic access$802(Lio/realm/PermissionManager;Lio/realm/Realm;)Lio/realm/Realm;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/Realm;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->permissionRealm:Lio/realm/Realm;

    return-object p1
.end method

.method static synthetic access$902(Lio/realm/PermissionManager;Lio/realm/RealmAsyncTask;)Lio/realm/RealmAsyncTask;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager;
    .param p1, "x1"    # Lio/realm/RealmAsyncTask;

    .line 62
    iput-object p1, p0, Lio/realm/PermissionManager;->permissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    return-object p1
.end method

.method private activateTask(Lio/realm/PermissionManager$PermissionManagerTask;)V
    .registers 3
    .param p1, "task"    # Lio/realm/PermissionManager$PermissionManagerTask;

    .line 381
    iget-object v0, p0, Lio/realm/PermissionManager;->activeTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lio/realm/PermissionManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method

.method private addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;
    .registers 3
    .param p1, "task"    # Lio/realm/PermissionManager$PermissionManagerTask;

    .line 354
    invoke-direct {p0}, Lio/realm/PermissionManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 355
    invoke-direct {p0, p1}, Lio/realm/PermissionManager;->activateTask(Lio/realm/PermissionManager$PermissionManagerTask;)V

    goto :goto_10

    .line 357
    :cond_a
    invoke-direct {p0, p1}, Lio/realm/PermissionManager;->delayTask(Lio/realm/PermissionManager$PermissionManagerTask;)V

    .line 358
    invoke-direct {p0}, Lio/realm/PermissionManager;->openRealms()V

    .line 361
    :goto_10
    return-object p1
.end method

.method private checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V
    .registers 4
    .param p1, "callback"    # Lio/realm/PermissionManager$PermissionManagerBaseCallback;

    .line 457
    if-eqz p1, :cond_3

    .line 460
    return-void

    .line 458
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'callback\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIfRealmsAreOpenedAndRunDelayedTasks()V
    .registers 3

    .line 446
    iget-object v0, p0, Lio/realm/PermissionManager;->errorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    iget-object v1, p0, Lio/realm/PermissionManager;->permissionRealm:Lio/realm/Realm;

    if-nez v1, :cond_b

    iget-object v1, p0, Lio/realm/PermissionManager;->permissionRealmError:Lio/realm/ObjectServerError;

    if-eqz v1, :cond_21

    :cond_b
    iget-object v1, p0, Lio/realm/PermissionManager;->defaultPermissionRealm:Lio/realm/Realm;

    if-nez v1, :cond_13

    iget-object v1, p0, Lio/realm/PermissionManager;->defaultPermissionRealmError:Lio/realm/ObjectServerError;

    if-eqz v1, :cond_21

    :cond_13
    iget-object v1, p0, Lio/realm/PermissionManager;->managementRealm:Lio/realm/Realm;

    if-nez v1, :cond_1b

    iget-object v1, p0, Lio/realm/PermissionManager;->managementRealmError:Lio/realm/ObjectServerError;

    if-eqz v1, :cond_21

    .line 450
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/realm/PermissionManager;->openInProgress:Z

    .line 451
    invoke-direct {p0}, Lio/realm/PermissionManager;->runDelayedTasks()V

    .line 453
    :cond_21
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private checkIfValid()V
    .registers 6

    .line 468
    iget-wide v0, p0, Lio/realm/PermissionManager;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    .line 473
    iget-boolean v0, p0, Lio/realm/PermissionManager;->closed:Z

    if-nez v0, :cond_13

    .line 476
    return-void

    .line 474
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PermissionManager has been closed. No further actions are possible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PermissionManager was accessed from the wrong thread. It can only be accessed on the thread it was created on."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private delayTask(Lio/realm/PermissionManager$PermissionManagerTask;)V
    .registers 3
    .param p1, "task"    # Lio/realm/PermissionManager$PermissionManagerTask;

    .line 366
    iget-object v0, p0, Lio/realm/PermissionManager;->delayedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    return-void
.end method

.method static getInstance(Lio/realm/SyncUser;)Lio/realm/PermissionManager;
    .registers 6
    .param p0, "syncUser"    # Lio/realm/SyncUser;

    .line 81
    sget-object v0, Lio/realm/PermissionManager;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    invoke-virtual {p0}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "userId":Ljava/lang/String;
    sget-object v2, Lio/realm/PermissionManager;->cache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ThreadLocal;

    .line 84
    .local v2, "threadLocalCache":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lio/realm/PermissionManager$Cache;>;"
    if-nez v2, :cond_1c

    .line 85
    new-instance v3, Lio/realm/PermissionManager$1;

    invoke-direct {v3}, Lio/realm/PermissionManager$1;-><init>()V

    move-object v2, v3

    .line 91
    sget-object v3, Lio/realm/PermissionManager;->cache:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/PermissionManager$Cache;

    .line 94
    .local v3, "c":Lio/realm/PermissionManager$Cache;
    iget-object v4, v3, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_31

    .line 95
    new-instance v4, Lio/realm/PermissionManager;

    invoke-direct {v4, p0}, Lio/realm/PermissionManager;-><init>(Lio/realm/SyncUser;)V

    iput-object v4, v3, Lio/realm/PermissionManager$Cache;->pm:Lio/realm/PermissionManager;

    .line 97
    :cond_31
    iget-object v4, v3, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    iget-object v4, v3, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    .line 98
    iget-object v4, v3, Lio/realm/PermissionManager$Cache;->pm:Lio/realm/PermissionManager;

    monitor-exit v0

    return-object v4

    .line 99
    .end local v1    # "userId":Ljava/lang/String;
    .end local v2    # "threadLocalCache":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lio/realm/PermissionManager$Cache;>;"
    .end local v3    # "c":Lio/realm/PermissionManager$Cache;
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private static getRealmUrl(Lio/realm/PermissionManager$RealmType;Ljava/net/URL;)Ljava/lang/String;
    .registers 12
    .param p0, "type"    # Lio/realm/PermissionManager$RealmType;
    .param p1, "authUrl"    # Ljava/net/URL;

    .line 552
    const-string v0, "realm"

    .line 553
    .local v0, "scheme":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 554
    const-string v0, "realms"

    .line 557
    :cond_10
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/realm/PermissionManager$RealmType;->isGlobalRealm()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "/"

    goto :goto_20

    :cond_1e
    const-string v2, "/~/"

    :goto_20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/PermissionManager$RealmType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, "path":Ljava/lang/String;
    new-instance v9, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_47
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_47} :catch_48

    return-object v1

    .line 559
    .end local v6    # "path":Ljava/lang/String;
    :catch_48
    move-exception v1

    .line 560
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create URL to the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Realm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private isReady()Z
    .registers 2

    .line 463
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealm:Lio/realm/Realm;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealm:Lio/realm/Realm;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private openRealms()V
    .registers 3

    .line 389
    iget-boolean v0, p0, Lio/realm/PermissionManager;->openInProgress:Z

    if-nez v0, :cond_2e

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/PermissionManager;->openInProgress:Z

    .line 391
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealmConfig:Lio/realm/SyncConfiguration;

    new-instance v1, Lio/realm/PermissionManager$5;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$5;-><init>(Lio/realm/PermissionManager;)V

    invoke-static {v0, v1}, Lio/realm/Realm;->getInstanceAsync(Lio/realm/RealmConfiguration;Lio/realm/Realm$Callback;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager;->managementRealmOpenTask:Lio/realm/RealmAsyncTask;

    .line 408
    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealmConfig:Lio/realm/SyncConfiguration;

    new-instance v1, Lio/realm/PermissionManager$6;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$6;-><init>(Lio/realm/PermissionManager;)V

    invoke-static {v0, v1}, Lio/realm/Realm;->getInstanceAsync(Lio/realm/RealmConfiguration;Lio/realm/Realm$Callback;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager;->permissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    .line 425
    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealmConfig:Lio/realm/SyncConfiguration;

    new-instance v1, Lio/realm/PermissionManager$7;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$7;-><init>(Lio/realm/PermissionManager;)V

    invoke-static {v0, v1}, Lio/realm/Realm;->getInstanceAsync(Lio/realm/RealmConfiguration;Lio/realm/Realm$Callback;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    .line 443
    :cond_2e
    return-void
.end method

.method private runDelayedTasks()V
    .registers 3

    .line 372
    iget-object v0, p0, Lio/realm/PermissionManager;->delayedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/PermissionManager$PermissionManagerTask;

    .line 373
    .local v1, "delayedTask":Lio/realm/PermissionManager$PermissionManagerTask;
    invoke-direct {p0, v1}, Lio/realm/PermissionManager;->activateTask(Lio/realm/PermissionManager$PermissionManagerTask;)V

    .line 374
    .end local v1    # "delayedTask":Lio/realm/PermissionManager$PermissionManagerTask;
    goto :goto_6

    .line 375
    :cond_16
    iget-object v0, p0, Lio/realm/PermissionManager;->delayedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 376
    return-void
.end method


# virtual methods
.method public acceptOffer(Ljava/lang/String;Lio/realm/PermissionManager$AcceptOfferCallback;)Lio/realm/RealmAsyncTask;
    .registers 5
    .param p1, "offerToken"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/realm/PermissionManager$AcceptOfferCallback;

    .line 314
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValid()V

    .line 315
    invoke-direct {p0, p2}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 316
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 319
    new-instance v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-direct {v0, p0, p0, p1, p2}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Ljava/lang/String;Lio/realm/PermissionManager$AcceptOfferCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0

    .line 317
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty \'offerToken\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyPermissions(Lio/realm/permissions/PermissionRequest;Lio/realm/PermissionManager$ApplyPermissionsCallback;)Lio/realm/RealmAsyncTask;
    .registers 4
    .param p1, "request"    # Lio/realm/permissions/PermissionRequest;
    .param p2, "callback"    # Lio/realm/PermissionManager$ApplyPermissionsCallback;

    .line 273
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValid()V

    .line 274
    invoke-direct {p0, p2}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 275
    new-instance v0, Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-direct {v0, p0, p0, p1, p2}, Lio/realm/PermissionManager$ApplyPermissionTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/permissions/PermissionRequest;Lio/realm/PermissionManager$ApplyPermissionsCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 5

    .line 484
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValid()V

    .line 487
    sget-object v0, Lio/realm/PermissionManager;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_6
    sget-object v1, Lio/realm/PermissionManager;->cache:Ljava/util/Map;

    iget-object v2, p0, Lio/realm/PermissionManager;->user:Lio/realm/SyncUser;

    invoke-virtual {v2}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/PermissionManager$Cache;

    .line 489
    .local v1, "cache":Lio/realm/PermissionManager$Cache;
    iget-object v2, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_34

    .line 490
    iget-object v2, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    iget-object v2, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    .line 491
    monitor-exit v0

    return-void

    .line 495
    :cond_34
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    .line 496
    const/4 v2, 0x0

    iput-object v2, v1, Lio/realm/PermissionManager$Cache;->pm:Lio/realm/PermissionManager;

    .line 497
    .end local v1    # "cache":Lio/realm/PermissionManager$Cache;
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_83

    .line 498
    iput-boolean v3, p0, Lio/realm/PermissionManager;->closed:Z

    .line 499
    iget-object v0, p0, Lio/realm/PermissionManager;->delayedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 502
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealmOpenTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_51

    .line 503
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealmOpenTask:Lio/realm/RealmAsyncTask;

    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 504
    iput-object v2, p0, Lio/realm/PermissionManager;->managementRealmOpenTask:Lio/realm/RealmAsyncTask;

    .line 506
    :cond_51
    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_5c

    .line 507
    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 508
    iput-object v2, p0, Lio/realm/PermissionManager;->permissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    .line 510
    :cond_5c
    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_67

    .line 511
    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 512
    iput-object v2, p0, Lio/realm/PermissionManager;->defaultPermissionRealmOpenTask:Lio/realm/RealmAsyncTask;

    .line 516
    :cond_67
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealm:Lio/realm/Realm;

    if-eqz v0, :cond_70

    .line 517
    iget-object v0, p0, Lio/realm/PermissionManager;->managementRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 520
    :cond_70
    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealm:Lio/realm/Realm;

    if-eqz v0, :cond_79

    .line 521
    iget-object v0, p0, Lio/realm/PermissionManager;->permissionRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 523
    :cond_79
    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealm:Lio/realm/Realm;

    if-eqz v0, :cond_82

    .line 524
    iget-object v0, p0, Lio/realm/PermissionManager;->defaultPermissionRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 526
    :cond_82
    return-void

    .line 497
    :catchall_83
    move-exception v1

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v1
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 544
    iget-boolean v0, p0, Lio/realm/PermissionManager;->closed:Z

    if-nez v0, :cond_c

    .line 545
    const-string v0, "PermissionManager was not correctly closed before being finalized."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    :cond_c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 548
    return-void
.end method

.method public getCreatedOffers(Lio/realm/PermissionManager$OffersCallback;)Lio/realm/RealmAsyncTask;
    .registers 3
    .param p1, "callback"    # Lio/realm/PermissionManager$OffersCallback;

    .line 344
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValid()V

    .line 345
    invoke-direct {p0, p1}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 346
    new-instance v0, Lio/realm/PermissionManager$GetOffersAsyncTask;

    invoke-direct {v0, p0, p0, p1}, Lio/realm/PermissionManager$GetOffersAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/PermissionManager$OffersCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPermissions(Lio/realm/PermissionManager$PermissionsCallback;)Lio/realm/RealmAsyncTask;
    .registers 3
    .param p1, "callback"    # Lio/realm/PermissionManager$PermissionsCallback;

    .line 254
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValid()V

    .line 255
    invoke-direct {p0, p1}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 256
    new-instance v0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;

    invoke-direct {v0, p0, p0, p1}, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionsCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions(Lio/realm/PermissionManager$PermissionsCallback;)Lio/realm/RealmAsyncTask;
    .registers 3
    .param p1, "callback"    # Lio/realm/PermissionManager$PermissionsCallback;

    .line 238
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValid()V

    .line 239
    invoke-direct {p0, p1}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 240
    new-instance v0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    invoke-direct {v0, p0, p0, p1}, Lio/realm/PermissionManager$GetPermissionsAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionsCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .registers 6

    .line 535
    iget-wide v0, p0, Lio/realm/PermissionManager;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 539
    iget-boolean v0, p0, Lio/realm/PermissionManager;->closed:Z

    return v0

    .line 536
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PermissionManager was accessed from the wrong thread. It can only be accessed on the thread it was created on."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeOffer(Lio/realm/permissions/PermissionOffer;Lio/realm/PermissionManager$MakeOfferCallback;)Lio/realm/RealmAsyncTask;
    .registers 6
    .param p1, "offer"    # Lio/realm/permissions/PermissionOffer;
    .param p2, "callback"    # Lio/realm/PermissionManager$MakeOfferCallback;

    .line 297
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValid()V

    .line 298
    invoke-direct {p0, p2}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 299
    invoke-virtual {p1}, Lio/realm/permissions/PermissionOffer;->isOfferCreated()Z

    move-result v0

    if-nez v0, :cond_16

    .line 302
    new-instance v0, Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-direct {v0, p0, p0, p1, p2}, Lio/realm/PermissionManager$MakeOfferAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/permissions/PermissionOffer;Lio/realm/PermissionManager$MakeOfferCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0

    .line 300
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offer has already been created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public revokeOffer(Ljava/lang/String;Lio/realm/PermissionManager$RevokeOfferCallback;)Lio/realm/RealmAsyncTask;
    .registers 4
    .param p1, "offerToken"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/realm/PermissionManager$RevokeOfferCallback;

    .line 331
    invoke-direct {p0}, Lio/realm/PermissionManager;->checkIfValid()V

    .line 332
    invoke-direct {p0, p2}, Lio/realm/PermissionManager;->checkCallbackNotNull(Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 333
    new-instance v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-direct {v0, p0, p0, p1, p2}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Ljava/lang/String;Lio/realm/PermissionManager$RevokeOfferCallback;)V

    invoke-direct {p0, v0}, Lio/realm/PermissionManager;->addTask(Lio/realm/PermissionManager$PermissionManagerTask;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.PermissionManager.AnonymousClass1 (io.realm.PermissionManager$1)
.class Lio/realm/PermissionManager$1;
.super Ljava/lang/ThreadLocal;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager;->getInstance(Lio/realm/SyncUser;)Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lio/realm/PermissionManager$Cache;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/realm/PermissionManager$Cache;
    .registers 3

    .line 88
    new-instance v0, Lio/realm/PermissionManager$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/PermissionManager$Cache;-><init>(Lio/realm/PermissionManager$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 85
    invoke-virtual {p0}, Lio/realm/PermissionManager$1;->initialValue()Lio/realm/PermissionManager$Cache;

    move-result-object v0

    return-object v0
.end method

###### Class io.realm.PermissionManager.AnonymousClass2 (io.realm.PermissionManager$2)
.class Lio/realm/PermissionManager$2;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/SyncSession$ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager;-><init>(Lio/realm/SyncUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/PermissionManager;

    .line 183
    iput-object p1, p0, Lio/realm/PermissionManager$2;->this$0:Lio/realm/PermissionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V
    .registers 5
    .param p1, "session"    # Lio/realm/SyncSession;
    .param p2, "error"    # Lio/realm/ObjectServerError;

    .line 186
    iget-object v0, p0, Lio/realm/PermissionManager$2;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$100(Lio/realm/PermissionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 187
    :try_start_7
    iget-object v1, p0, Lio/realm/PermissionManager$2;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1, p2}, Lio/realm/PermissionManager;->access$202(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;

    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

###### Class io.realm.PermissionManager.AnonymousClass3 (io.realm.PermissionManager$3)
.class Lio/realm/PermissionManager$3;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/SyncSession$ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager;-><init>(Lio/realm/SyncUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/PermissionManager;

    .line 197
    iput-object p1, p0, Lio/realm/PermissionManager$3;->this$0:Lio/realm/PermissionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V
    .registers 5
    .param p1, "session"    # Lio/realm/SyncSession;
    .param p2, "error"    # Lio/realm/ObjectServerError;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in __permission:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/realm/ObjectServerError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lio/realm/PermissionManager$3;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$100(Lio/realm/PermissionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 202
    :try_start_22
    iget-object v1, p0, Lio/realm/PermissionManager$3;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1, p2}, Lio/realm/PermissionManager;->access$302(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;

    .line 203
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v1
.end method

###### Class io.realm.PermissionManager.AnonymousClass4 (io.realm.PermissionManager$4)
.class Lio/realm/PermissionManager$4;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/SyncSession$ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager;-><init>(Lio/realm/SyncUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/PermissionManager;

    .line 214
    iput-object p1, p0, Lio/realm/PermissionManager$4;->this$0:Lio/realm/PermissionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/realm/SyncSession;Lio/realm/ObjectServerError;)V
    .registers 5
    .param p1, "session"    # Lio/realm/SyncSession;
    .param p2, "error"    # Lio/realm/ObjectServerError;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in __wildcardpermissions:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/realm/ObjectServerError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lio/realm/PermissionManager$4;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$100(Lio/realm/PermissionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 219
    :try_start_22
    iget-object v1, p0, Lio/realm/PermissionManager$4;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1, p2}, Lio/realm/PermissionManager;->access$402(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;

    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v1
.end method

###### Class io.realm.PermissionManager.AnonymousClass5 (io.realm.PermissionManager$5)
.class Lio/realm/PermissionManager$5;
.super Lio/realm/Realm$Callback;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager;->openRealms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/PermissionManager;

    .line 391
    iput-object p1, p0, Lio/realm/PermissionManager$5;->this$0:Lio/realm/PermissionManager;

    invoke-direct {p0}, Lio/realm/Realm$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 401
    iget-object v0, p0, Lio/realm/PermissionManager$5;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$100(Lio/realm/PermissionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 402
    :try_start_7
    iget-object v1, p0, Lio/realm/PermissionManager$5;->this$0:Lio/realm/PermissionManager;

    new-instance v2, Lio/realm/ObjectServerError;

    sget-object v3, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {v2, v3, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lio/realm/PermissionManager;->access$202(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;

    .line 403
    iget-object v1, p0, Lio/realm/PermissionManager$5;->this$0:Lio/realm/PermissionManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/realm/PermissionManager;->access$602(Lio/realm/PermissionManager;Lio/realm/RealmAsyncTask;)Lio/realm/RealmAsyncTask;

    .line 404
    iget-object v1, p0, Lio/realm/PermissionManager$5;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$700(Lio/realm/PermissionManager;)V

    .line 405
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public bridge synthetic onSuccess(Lio/realm/BaseRealm;)V
    .registers 2

    .line 391
    check-cast p1, Lio/realm/Realm;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$5;->onSuccess(Lio/realm/Realm;)V

    return-void
.end method

.method public onSuccess(Lio/realm/Realm;)V
    .registers 4
    .param p1, "realm"    # Lio/realm/Realm;

    .line 394
    iget-object v0, p0, Lio/realm/PermissionManager$5;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0, p1}, Lio/realm/PermissionManager;->access$502(Lio/realm/PermissionManager;Lio/realm/Realm;)Lio/realm/Realm;

    .line 395
    iget-object v0, p0, Lio/realm/PermissionManager$5;->this$0:Lio/realm/PermissionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/realm/PermissionManager;->access$602(Lio/realm/PermissionManager;Lio/realm/RealmAsyncTask;)Lio/realm/RealmAsyncTask;

    .line 396
    iget-object v0, p0, Lio/realm/PermissionManager$5;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$700(Lio/realm/PermissionManager;)V

    .line 397
    return-void
.end method

###### Class io.realm.PermissionManager.AnonymousClass6 (io.realm.PermissionManager$6)
.class Lio/realm/PermissionManager$6;
.super Lio/realm/Realm$Callback;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager;->openRealms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/PermissionManager;

    .line 408
    iput-object p1, p0, Lio/realm/PermissionManager$6;->this$0:Lio/realm/PermissionManager;

    invoke-direct {p0}, Lio/realm/Realm$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 418
    iget-object v0, p0, Lio/realm/PermissionManager$6;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$100(Lio/realm/PermissionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 419
    :try_start_7
    iget-object v1, p0, Lio/realm/PermissionManager$6;->this$0:Lio/realm/PermissionManager;

    new-instance v2, Lio/realm/ObjectServerError;

    sget-object v3, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {v2, v3, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lio/realm/PermissionManager;->access$302(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;

    .line 420
    iget-object v1, p0, Lio/realm/PermissionManager$6;->this$0:Lio/realm/PermissionManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/realm/PermissionManager;->access$902(Lio/realm/PermissionManager;Lio/realm/RealmAsyncTask;)Lio/realm/RealmAsyncTask;

    .line 421
    iget-object v1, p0, Lio/realm/PermissionManager$6;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$700(Lio/realm/PermissionManager;)V

    .line 422
    monitor-exit v0

    .line 423
    return-void

    .line 422
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public bridge synthetic onSuccess(Lio/realm/BaseRealm;)V
    .registers 2

    .line 408
    check-cast p1, Lio/realm/Realm;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$6;->onSuccess(Lio/realm/Realm;)V

    return-void
.end method

.method public onSuccess(Lio/realm/Realm;)V
    .registers 4
    .param p1, "realm"    # Lio/realm/Realm;

    .line 411
    iget-object v0, p0, Lio/realm/PermissionManager$6;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0, p1}, Lio/realm/PermissionManager;->access$802(Lio/realm/PermissionManager;Lio/realm/Realm;)Lio/realm/Realm;

    .line 412
    iget-object v0, p0, Lio/realm/PermissionManager$6;->this$0:Lio/realm/PermissionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/realm/PermissionManager;->access$902(Lio/realm/PermissionManager;Lio/realm/RealmAsyncTask;)Lio/realm/RealmAsyncTask;

    .line 413
    iget-object v0, p0, Lio/realm/PermissionManager$6;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$700(Lio/realm/PermissionManager;)V

    .line 414
    return-void
.end method

###### Class io.realm.PermissionManager.AnonymousClass7 (io.realm.PermissionManager$7)
.class Lio/realm/PermissionManager$7;
.super Lio/realm/Realm$Callback;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager;->openRealms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;)V
    .registers 2
    .param p1, "this$0"    # Lio/realm/PermissionManager;

    .line 425
    iput-object p1, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    invoke-direct {p0}, Lio/realm/Realm$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 435
    iget-object v0, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$100(Lio/realm/PermissionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 436
    :try_start_7
    iget-object v1, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    new-instance v2, Lio/realm/ObjectServerError;

    sget-object v3, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {v2, v3, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lio/realm/PermissionManager;->access$402(Lio/realm/PermissionManager;Lio/realm/ObjectServerError;)Lio/realm/ObjectServerError;

    .line 437
    iget-object v1, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/realm/PermissionManager;->access$1102(Lio/realm/PermissionManager;Lio/realm/RealmAsyncTask;)Lio/realm/RealmAsyncTask;

    .line 438
    iget-object v1, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$700(Lio/realm/PermissionManager;)V

    .line 439
    monitor-exit v0

    .line 440
    return-void

    .line 439
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public bridge synthetic onSuccess(Lio/realm/BaseRealm;)V
    .registers 2

    .line 425
    check-cast p1, Lio/realm/Realm;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$7;->onSuccess(Lio/realm/Realm;)V

    return-void
.end method

.method public onSuccess(Lio/realm/Realm;)V
    .registers 4
    .param p1, "realm"    # Lio/realm/Realm;

    .line 428
    iget-object v0, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0, p1}, Lio/realm/PermissionManager;->access$1002(Lio/realm/PermissionManager;Lio/realm/Realm;)Lio/realm/Realm;

    .line 429
    iget-object v0, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/realm/PermissionManager;->access$1102(Lio/realm/PermissionManager;Lio/realm/RealmAsyncTask;)Lio/realm/RealmAsyncTask;

    .line 430
    iget-object v0, p0, Lio/realm/PermissionManager$7;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$700(Lio/realm/PermissionManager;)V

    .line 431
    return-void
.end method

###### Class io.realm.PermissionManager.AcceptOfferAsyncTask (io.realm.PermissionManager$AcceptOfferAsyncTask)
.class Lio/realm/PermissionManager$AcceptOfferAsyncTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptOfferAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Lio/realm/permissions/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$AcceptOfferCallback;

.field public grantedPermissionResults:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private managedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

.field private final responseId:Ljava/lang/String;

.field final synthetic this$0:Lio/realm/PermissionManager;

.field private transactionTask:Lio/realm/RealmAsyncTask;

.field private final unmanagedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;


# direct methods
.method public constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Ljava/lang/String;Lio/realm/PermissionManager$AcceptOfferCallback;)V
    .registers 5
    .param p2, "permissionManager"    # Lio/realm/PermissionManager;
    .param p3, "offerToken"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/realm/PermissionManager$AcceptOfferCallback;

    .line 862
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    .line 863
    invoke-direct {p0, p2, p4}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 864
    new-instance p1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-direct {p1, p3}, Lio/realm/internal/permissions/PermissionOfferResponse;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->unmanagedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

    .line 865
    iget-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->unmanagedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p1}, Lio/realm/internal/permissions/PermissionOfferResponse;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->responseId:Ljava/lang/String;

    .line 866
    iput-object p4, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->callback:Lio/realm/PermissionManager$AcceptOfferCallback;

    .line 867
    return-void
.end method

.method static synthetic access$2300(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Lio/realm/internal/permissions/PermissionOfferResponse;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    .line 853
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->unmanagedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

    return-object v0
.end method

.method static synthetic access$2400(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Lio/realm/internal/permissions/PermissionOfferResponse;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    .line 853
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->managedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

    return-object v0
.end method

.method static synthetic access$2402(Lio/realm/PermissionManager$AcceptOfferAsyncTask;Lio/realm/internal/permissions/PermissionOfferResponse;)Lio/realm/internal/permissions/PermissionOfferResponse;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$AcceptOfferAsyncTask;
    .param p1, "x1"    # Lio/realm/internal/permissions/PermissionOfferResponse;

    .line 853
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->managedResponse:Lio/realm/internal/permissions/PermissionOfferResponse;

    return-object p1
.end method

.method static synthetic access$2500(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    .line 853
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->responseId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 947
    invoke-super {p0}, Lio/realm/PermissionManager$PermissionManagerTask;->cancel()V

    .line 948
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_f

    .line 949
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    .line 952
    :cond_f
    return-void
.end method

.method notifyCallbackWithSuccess(Ljava/lang/String;Lio/realm/permissions/Permission;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "permission"    # Lio/realm/permissions/Permission;

    .line 939
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->callback:Lio/realm/PermissionManager$AcceptOfferCallback;

    invoke-interface {v0, p1, p2}, Lio/realm/PermissionManager$AcceptOfferCallback;->onSuccess(Ljava/lang/String;Lio/realm/permissions/Permission;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_10

    .line 941
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 942
    nop

    .line 943
    return-void

    .line 941
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public run()V
    .registers 5

    .line 871
    invoke-virtual {p0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 872
    return-void

    .line 876
    :cond_7
    new-instance v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;

    invoke-direct {v0, p0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;-><init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)V

    .line 887
    .local v0, "transaction":Lio/realm/Realm$Transaction;
    new-instance v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;-><init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)V

    .line 925
    .local v1, "onSuccess":Lio/realm/Realm$Transaction$OnSuccess;
    new-instance v2, Lio/realm/PermissionManager$AcceptOfferAsyncTask$3;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$3;-><init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)V

    .line 934
    .local v2, "onError":Lio/realm/Realm$Transaction$OnError;
    iget-object v3, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v3}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object v3

    iput-object v3, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    .line 935
    return-void
.end method

###### Class io.realm.PermissionManager.AcceptOfferAsyncTask.AnonymousClass1 (io.realm.PermissionManager$AcceptOfferAsyncTask$1)
.class Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$AcceptOfferAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    .line 876
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .registers 3
    .param p1, "realm"    # Lio/realm/Realm;

    .line 879
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 880
    :cond_9
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->access$2300(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/realm/Realm;->insertOrUpdate(Lio/realm/RealmModel;)V

    .line 881
    return-void
.end method

###### Class io.realm.PermissionManager.AcceptOfferAsyncTask.AnonymousClass2 (io.realm.PermissionManager$AcceptOfferAsyncTask$2)
.class Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction$OnSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$AcceptOfferAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    .line 887
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .registers 5

    .line 890
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 894
    :cond_9
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    iget-object v1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    iget-object v1, v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v1

    const-class v2, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    iget-object v3, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-static {v3}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->access$2500(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirstAsync()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-static {v0, v1}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->access$2402(Lio/realm/PermissionManager$AcceptOfferAsyncTask;Lio/realm/internal/permissions/PermissionOfferResponse;)Lio/realm/internal/permissions/PermissionOfferResponse;

    .line 895
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->access$2400(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v0

    new-instance v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;-><init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;)V

    invoke-static {v0, v1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 920
    return-void
.end method

###### Class io.realm.PermissionManager.AcceptOfferAsyncTask.AnonymousClass2.AnonymousClass1 (io.realm.PermissionManager$AcceptOfferAsyncTask$2$1)
.class Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/internal/permissions/PermissionOfferResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;)V
    .registers 2
    .param p1, "this$2"    # Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    .line 895
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/internal/permissions/PermissionOfferResponse;)V
    .registers 4
    .param p1, "response"    # Lio/realm/internal/permissions/PermissionOfferResponse;

    .line 898
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 899
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->access$2400(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v0

    invoke-static {v0, p0}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 900
    return-void

    .line 902
    :cond_16
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    new-instance v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;

    invoke-direct {v1, p0, p1}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;-><init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;Lio/realm/internal/permissions/PermissionOfferResponse;)V

    invoke-virtual {v0, p1, v1}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->handleServerStatusChanges(Lio/realm/internal/permissions/BasePermissionApi;Ljava/lang/Runnable;)V

    .line 918
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 895
    check-cast p1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->onChange(Lio/realm/internal/permissions/PermissionOfferResponse;)V

    return-void
.end method

###### Class io.realm.PermissionManager.AcceptOfferAsyncTask.AnonymousClass2.AnonymousClass1.RunnableC00231 (io.realm.PermissionManager$AcceptOfferAsyncTask$2$1$1)
.class Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->onChange(Lio/realm/internal/permissions/PermissionOfferResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

.field final synthetic val$response:Lio/realm/internal/permissions/PermissionOfferResponse;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;Lio/realm/internal/permissions/PermissionOfferResponse;)V
    .registers 3
    .param p1, "this$3"    # Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    .line 902
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iput-object p2, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->val$response:Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 905
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    iget-object v1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iget-object v1, v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v1, v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    iget-object v1, v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$800(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v1

    const-class v2, Lio/realm/permissions/Permission;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "path"

    iget-object v3, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->val$response:Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v3}, Lio/realm/internal/permissions/PermissionOfferResponse;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAllAsync()Lio/realm/RealmResults;

    move-result-object v1

    iput-object v1, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->grantedPermissionResults:Lio/realm/RealmResults;

    .line 906
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->grantedPermissionResults:Lio/realm/RealmResults;

    new-instance v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;-><init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 916
    return-void
.end method

###### Class io.realm.PermissionManager.AcceptOfferAsyncTask.AnonymousClass2.AnonymousClass1.RunnableC00231.C00241 (io.realm.PermissionManager$AcceptOfferAsyncTask$2$1$1$1)
.class Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmResults<",
        "Lio/realm/permissions/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$4:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;)V
    .registers 2
    .param p1, "this$4"    # Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;

    .line 906
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;->this$4:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;)V"
        }
    .end annotation

    .line 909
    .local p1, "permissions":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/permissions/Permission;>;"
    invoke-virtual {p1}, Lio/realm/RealmResults;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 910
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;->this$4:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->grantedPermissionResults:Lio/realm/RealmResults;

    invoke-virtual {v0, p0}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 912
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;->this$4:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    iget-object v1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;->this$4:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;

    iget-object v1, v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;

    iget-object v1, v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;

    iget-object v1, v1, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-static {v1}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->access$2400(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/permissions/PermissionOfferResponse;->getRealmUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/RealmResults;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/permissions/Permission;

    invoke-virtual {v0, v1, v2}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->notifyCallbackWithSuccess(Ljava/lang/String;Lio/realm/permissions/Permission;)V

    .line 914
    :cond_34
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 906
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$AcceptOfferAsyncTask$2$1$1$1;->onChange(Lio/realm/RealmResults;)V

    return-void
.end method

###### Class io.realm.PermissionManager.AcceptOfferAsyncTask.AnonymousClass3 (io.realm.PermissionManager$AcceptOfferAsyncTask$3)
.class Lio/realm/PermissionManager$AcceptOfferAsyncTask$3;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction$OnError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$AcceptOfferAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$AcceptOfferAsyncTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    .line 925
    iput-object p1, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$3;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 928
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$3;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 929
    :cond_9
    iget-object v0, p0, Lio/realm/PermissionManager$AcceptOfferAsyncTask$3;->this$1:Lio/realm/PermissionManager$AcceptOfferAsyncTask;

    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {v1, v2, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/realm/PermissionManager$AcceptOfferAsyncTask;->notifyCallbackWithError(Lio/realm/ObjectServerError;)V

    .line 930
    return-void
.end method

###### Class io.realm.PermissionManager.AcceptOfferCallback (io.realm.PermissionManager$AcceptOfferCallback)
.class public interface abstract Lio/realm/PermissionManager$AcceptOfferCallback;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/PermissionManager$PermissionManagerBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AcceptOfferCallback"
.end annotation


# virtual methods
.method public abstract onSuccess(Ljava/lang/String;Lio/realm/permissions/Permission;)V
.end method

###### Class io.realm.PermissionManager.ApplyPermissionTask (io.realm.PermissionManager$ApplyPermissionTask)
.class Lio/realm/PermissionManager$ApplyPermissionTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplyPermissionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$ApplyPermissionsCallback;

.field private final changeRequestId:Ljava/lang/String;

.field private managedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

.field final synthetic this$0:Lio/realm/PermissionManager;

.field private transactionTask:Lio/realm/RealmAsyncTask;

.field private final unmanagedChangeRequest:Lio/realm/internal/permissions/PermissionChange;


# direct methods
.method public constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/permissions/PermissionRequest;Lio/realm/PermissionManager$ApplyPermissionsCallback;)V
    .registers 5
    .param p2, "manager"    # Lio/realm/PermissionManager;
    .param p3, "request"    # Lio/realm/permissions/PermissionRequest;
    .param p4, "callback"    # Lio/realm/PermissionManager$ApplyPermissionsCallback;

    .line 676
    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->this$0:Lio/realm/PermissionManager;

    .line 677
    invoke-direct {p0, p2, p4}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 678
    invoke-static {p3}, Lio/realm/internal/permissions/PermissionChange;->fromRequest(Lio/realm/permissions/PermissionRequest;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object p1

    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->unmanagedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

    .line 679
    iget-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->unmanagedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p1}, Lio/realm/internal/permissions/PermissionChange;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->changeRequestId:Ljava/lang/String;

    .line 680
    iput-object p4, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->callback:Lio/realm/PermissionManager$ApplyPermissionsCallback;

    .line 681
    return-void
.end method

.method static synthetic access$1700(Lio/realm/PermissionManager$ApplyPermissionTask;)Lio/realm/internal/permissions/PermissionChange;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$ApplyPermissionTask;

    .line 668
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->unmanagedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

    return-object v0
.end method

.method static synthetic access$1800(Lio/realm/PermissionManager$ApplyPermissionTask;)Lio/realm/internal/permissions/PermissionChange;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$ApplyPermissionTask;

    .line 668
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->managedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

    return-object v0
.end method

.method static synthetic access$1802(Lio/realm/PermissionManager$ApplyPermissionTask;Lio/realm/internal/permissions/PermissionChange;)Lio/realm/internal/permissions/PermissionChange;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$ApplyPermissionTask;
    .param p1, "x1"    # Lio/realm/internal/permissions/PermissionChange;

    .line 668
    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->managedChangeRequest:Lio/realm/internal/permissions/PermissionChange;

    return-object p1
.end method

.method static synthetic access$1900(Lio/realm/PermissionManager$ApplyPermissionTask;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$ApplyPermissionTask;

    .line 668
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->changeRequestId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 755
    invoke-super {p0}, Lio/realm/PermissionManager$PermissionManagerTask;->cancel()V

    .line 756
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->transactionTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_a

    .line 757
    invoke-virtual {p0}, Lio/realm/PermissionManager$ApplyPermissionTask;->cancel()V

    .line 759
    :cond_a
    return-void
.end method

.method notifyCallbackWithSuccess()V
    .registers 3

    .line 747
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->callback:Lio/realm/PermissionManager$ApplyPermissionsCallback;

    invoke-interface {v0}, Lio/realm/PermissionManager$ApplyPermissionsCallback;->onSuccess()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_10

    .line 749
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 750
    nop

    .line 751
    return-void

    .line 749
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public run()V
    .registers 5

    .line 685
    invoke-virtual {p0}, Lio/realm/PermissionManager$ApplyPermissionTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 686
    return-void

    .line 690
    :cond_7
    new-instance v0, Lio/realm/PermissionManager$ApplyPermissionTask$1;

    invoke-direct {v0, p0}, Lio/realm/PermissionManager$ApplyPermissionTask$1;-><init>(Lio/realm/PermissionManager$ApplyPermissionTask;)V

    .line 701
    .local v0, "transaction":Lio/realm/Realm$Transaction;
    new-instance v1, Lio/realm/PermissionManager$ApplyPermissionTask$2;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$ApplyPermissionTask$2;-><init>(Lio/realm/PermissionManager$ApplyPermissionTask;)V

    .line 733
    .local v1, "onSuccess":Lio/realm/Realm$Transaction$OnSuccess;
    new-instance v2, Lio/realm/PermissionManager$ApplyPermissionTask$3;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$ApplyPermissionTask$3;-><init>(Lio/realm/PermissionManager$ApplyPermissionTask;)V

    .line 742
    .local v2, "onError":Lio/realm/Realm$Transaction$OnError;
    iget-object v3, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v3}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object v3

    iput-object v3, p0, Lio/realm/PermissionManager$ApplyPermissionTask;->transactionTask:Lio/realm/RealmAsyncTask;

    .line 743
    return-void
.end method

###### Class io.realm.PermissionManager.ApplyPermissionTask.AnonymousClass1 (io.realm.PermissionManager$ApplyPermissionTask$1)
.class Lio/realm/PermissionManager$ApplyPermissionTask$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$ApplyPermissionTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$ApplyPermissionTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$ApplyPermissionTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$ApplyPermissionTask;

    .line 690
    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask$1;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .registers 3
    .param p1, "realm"    # Lio/realm/Realm;

    .line 693
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$1;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$ApplyPermissionTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 694
    :cond_9
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$1;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-static {v0}, Lio/realm/PermissionManager$ApplyPermissionTask;->access$1700(Lio/realm/PermissionManager$ApplyPermissionTask;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/realm/Realm;->insertOrUpdate(Lio/realm/RealmModel;)V

    .line 695
    return-void
.end method

###### Class io.realm.PermissionManager.ApplyPermissionTask.AnonymousClass2 (io.realm.PermissionManager$ApplyPermissionTask$2)
.class Lio/realm/PermissionManager$ApplyPermissionTask$2;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction$OnSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$ApplyPermissionTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$ApplyPermissionTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$ApplyPermissionTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$ApplyPermissionTask;

    .line 701
    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .registers 5

    .line 704
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$ApplyPermissionTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 707
    :cond_9
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    iget-object v1, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    iget-object v1, v1, Lio/realm/PermissionManager$ApplyPermissionTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v1

    const-class v2, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    iget-object v3, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    .line 708
    invoke-static {v3}, Lio/realm/PermissionManager$ApplyPermissionTask;->access$1900(Lio/realm/PermissionManager$ApplyPermissionTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 709
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirstAsync()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/permissions/PermissionChange;

    .line 707
    invoke-static {v0, v1}, Lio/realm/PermissionManager$ApplyPermissionTask;->access$1802(Lio/realm/PermissionManager$ApplyPermissionTask;Lio/realm/internal/permissions/PermissionChange;)Lio/realm/internal/permissions/PermissionChange;

    .line 713
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-static {v0}, Lio/realm/PermissionManager$ApplyPermissionTask;->access$1800(Lio/realm/PermissionManager$ApplyPermissionTask;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object v0

    new-instance v1, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;-><init>(Lio/realm/PermissionManager$ApplyPermissionTask$2;)V

    invoke-static {v0, v1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 728
    return-void
.end method

###### Class io.realm.PermissionManager.ApplyPermissionTask.AnonymousClass2.AnonymousClass1 (io.realm.PermissionManager$ApplyPermissionTask$2$1)
.class Lio/realm/PermissionManager$ApplyPermissionTask$2$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$ApplyPermissionTask$2;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/internal/permissions/PermissionChange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lio/realm/PermissionManager$ApplyPermissionTask$2;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$ApplyPermissionTask$2;)V
    .registers 2
    .param p1, "this$2"    # Lio/realm/PermissionManager$ApplyPermissionTask$2;

    .line 713
    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->this$2:Lio/realm/PermissionManager$ApplyPermissionTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/internal/permissions/PermissionChange;)V
    .registers 4
    .param p1, "permissionChange"    # Lio/realm/internal/permissions/PermissionChange;

    .line 716
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->this$2:Lio/realm/PermissionManager$ApplyPermissionTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$ApplyPermissionTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 717
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->this$2:Lio/realm/PermissionManager$ApplyPermissionTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-static {v0}, Lio/realm/PermissionManager$ApplyPermissionTask;->access$1800(Lio/realm/PermissionManager$ApplyPermissionTask;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object v0

    invoke-static {v0, p0}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 718
    return-void

    .line 720
    :cond_16
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->this$2:Lio/realm/PermissionManager$ApplyPermissionTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    new-instance v1, Lio/realm/PermissionManager$ApplyPermissionTask$2$1$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$ApplyPermissionTask$2$1$1;-><init>(Lio/realm/PermissionManager$ApplyPermissionTask$2$1;)V

    invoke-virtual {v0, p1, v1}, Lio/realm/PermissionManager$ApplyPermissionTask;->handleServerStatusChanges(Lio/realm/internal/permissions/BasePermissionApi;Ljava/lang/Runnable;)V

    .line 726
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 713
    check-cast p1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->onChange(Lio/realm/internal/permissions/PermissionChange;)V

    return-void
.end method

###### Class io.realm.PermissionManager.ApplyPermissionTask.AnonymousClass2.AnonymousClass1.RunnableC00251 (io.realm.PermissionManager$ApplyPermissionTask$2$1$1)
.class Lio/realm/PermissionManager$ApplyPermissionTask$2$1$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->onChange(Lio/realm/internal/permissions/PermissionChange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/realm/PermissionManager$ApplyPermissionTask$2$1;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$ApplyPermissionTask$2$1;)V
    .registers 2
    .param p1, "this$3"    # Lio/realm/PermissionManager$ApplyPermissionTask$2$1;

    .line 720
    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2$1$1;->this$3:Lio/realm/PermissionManager$ApplyPermissionTask$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 723
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$2$1$1;->this$3:Lio/realm/PermissionManager$ApplyPermissionTask$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$ApplyPermissionTask$2$1;->this$2:Lio/realm/PermissionManager$ApplyPermissionTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$ApplyPermissionTask$2;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$ApplyPermissionTask;->notifyCallbackWithSuccess()V

    .line 724
    return-void
.end method

###### Class io.realm.PermissionManager.ApplyPermissionTask.AnonymousClass3 (io.realm.PermissionManager$ApplyPermissionTask$3)
.class Lio/realm/PermissionManager$ApplyPermissionTask$3;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction$OnError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$ApplyPermissionTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$ApplyPermissionTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$ApplyPermissionTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$ApplyPermissionTask;

    .line 733
    iput-object p1, p0, Lio/realm/PermissionManager$ApplyPermissionTask$3;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 736
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$3;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$ApplyPermissionTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 737
    :cond_9
    iget-object v0, p0, Lio/realm/PermissionManager$ApplyPermissionTask$3;->this$1:Lio/realm/PermissionManager$ApplyPermissionTask;

    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {v1, v2, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/realm/PermissionManager$ApplyPermissionTask;->notifyCallbackWithError(Lio/realm/ObjectServerError;)V

    .line 738
    return-void
.end method

###### Class io.realm.PermissionManager.ApplyPermissionsCallback (io.realm.PermissionManager$ApplyPermissionsCallback)
.class public interface abstract Lio/realm/PermissionManager$ApplyPermissionsCallback;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/PermissionManager$PermissionManagerBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplyPermissionsCallback"
.end annotation


# virtual methods
.method public abstract onSuccess()V
.end method

###### Class io.realm.PermissionManager.Cache (io.realm.PermissionManager$Cache)
.class Lio/realm/PermissionManager$Cache;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field public instanceCounter:Ljava/lang/Integer;

.field public pm:Lio/realm/PermissionManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/PermissionManager$Cache;->pm:Lio/realm/PermissionManager;

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$Cache;->instanceCounter:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/PermissionManager$1;)V
    .registers 2
    .param p1, "x0"    # Lio/realm/PermissionManager$1;

    .line 67
    invoke-direct {p0}, Lio/realm/PermissionManager$Cache;-><init>()V

    return-void
.end method

###### Class io.realm.PermissionManager.GetDefaultPermissionsAsyncTask (io.realm.PermissionManager$GetDefaultPermissionsAsyncTask)
.class Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDefaultPermissionsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Lio/realm/RealmResults<",
        "Lio/realm/permissions/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$PermissionsCallback;

.field private loadingPermissions:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionsCallback;)V
    .registers 4
    .param p2, "permissionManager"    # Lio/realm/PermissionManager;
    .param p3, "callback"    # Lio/realm/PermissionManager$PermissionsCallback;

    .line 624
    iput-object p1, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    .line 625
    invoke-direct {p0, p2, p3}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 626
    iput-object p3, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->callback:Lio/realm/PermissionManager$PermissionsCallback;

    .line 627
    return-void
.end method

.method static synthetic access$1600(Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;)Lio/realm/RealmResults;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;

    .line 618
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->loadingPermissions:Lio/realm/RealmResults;

    return-object v0
.end method


# virtual methods
.method notifyCallbackWithSuccess(Lio/realm/RealmResults;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;)V"
        }
    .end annotation

    .line 659
    .local p1, "permissions":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/permissions/Permission;>;"
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->callback:Lio/realm/PermissionManager$PermissionsCallback;

    invoke-interface {v0, p1}, Lio/realm/PermissionManager$PermissionsCallback;->onSuccess(Lio/realm/RealmResults;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_10

    .line 661
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 662
    nop

    .line 663
    return-void

    .line 661
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public run()V
    .registers 3

    .line 631
    invoke-virtual {p0}, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 632
    :cond_7
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1500(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 633
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1500(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->notifyCallbackWithSuccess(Lio/realm/RealmResults;)V

    goto :goto_35

    .line 639
    :cond_19
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1000(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lio/realm/permissions/Permission;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAllAsync()Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->loadingPermissions:Lio/realm/RealmResults;

    .line 640
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->loadingPermissions:Lio/realm/RealmResults;

    new-instance v1, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;-><init>(Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 655
    :goto_35
    return-void
.end method

###### Class io.realm.PermissionManager.GetDefaultPermissionsAsyncTask.AnonymousClass1 (io.realm.PermissionManager$GetDefaultPermissionsAsyncTask$1)
.class Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmResults<",
        "Lio/realm/permissions/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;

    .line 640
    iput-object p1, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;)V"
        }
    .end annotation

    .line 644
    .local p1, "loadedPermissions":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/permissions/Permission;>;"
    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 645
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->access$1600(Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 646
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 647
    :cond_18
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1500(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    if-nez v0, :cond_29

    .line 648
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0, p1}, Lio/realm/PermissionManager;->access$1502(Lio/realm/PermissionManager;Lio/realm/RealmResults;)Lio/realm/RealmResults;

    .line 650
    :cond_29
    iget-object v0, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;

    iget-object v1, p0, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;

    iget-object v1, v1, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1500(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask;->notifyCallbackWithSuccess(Lio/realm/RealmResults;)V

    .line 652
    :cond_36
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 640
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$GetDefaultPermissionsAsyncTask$1;->onChange(Lio/realm/RealmResults;)V

    return-void
.end method

###### Class io.realm.PermissionManager.GetOffersAsyncTask (io.realm.PermissionManager$GetOffersAsyncTask)
.class Lio/realm/PermissionManager$GetOffersAsyncTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetOffersAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Lio/realm/RealmResults<",
        "Lio/realm/permissions/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$OffersCallback;

.field private loadingOffers:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/PermissionManager$OffersCallback;)V
    .registers 4
    .param p2, "permissionManager"    # Lio/realm/PermissionManager;
    .param p3, "callback"    # Lio/realm/PermissionManager$OffersCallback;

    .line 1171
    iput-object p1, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    .line 1172
    invoke-direct {p0, p2, p3}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 1173
    iput-object p3, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->callback:Lio/realm/PermissionManager$OffersCallback;

    .line 1174
    return-void
.end method


# virtual methods
.method notifyCallbackWithSuccess(Lio/realm/RealmResults;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;)V"
        }
    .end annotation

    .line 1202
    .local p1, "permissions":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/permissions/PermissionOffer;>;"
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->callback:Lio/realm/PermissionManager$OffersCallback;

    invoke-interface {v0, p1}, Lio/realm/PermissionManager$OffersCallback;->onSuccess(Lio/realm/RealmResults;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_10

    .line 1204
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1205
    nop

    .line 1206
    return-void

    .line 1204
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public run()V
    .registers 4

    .line 1178
    invoke-virtual {p0}, Lio/realm/PermissionManager$GetOffersAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1179
    :cond_7
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$2900(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1180
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$2900(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/PermissionManager$GetOffersAsyncTask;->notifyCallbackWithSuccess(Lio/realm/RealmResults;)V

    goto :goto_40

    .line 1183
    :cond_19
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "statusCode"

    const/4 v2, 0x0

    .line 1184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v0

    .line 1185
    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAllAsync()Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->loadingOffers:Lio/realm/RealmResults;

    .line 1186
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask;->loadingOffers:Lio/realm/RealmResults;

    new-instance v1, Lio/realm/PermissionManager$GetOffersAsyncTask$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$GetOffersAsyncTask$1;-><init>(Lio/realm/PermissionManager$GetOffersAsyncTask;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 1198
    :goto_40
    return-void
.end method

###### Class io.realm.PermissionManager.GetOffersAsyncTask.AnonymousClass1 (io.realm.PermissionManager$GetOffersAsyncTask$1)
.class Lio/realm/PermissionManager$GetOffersAsyncTask$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$GetOffersAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmResults<",
        "Lio/realm/permissions/PermissionOffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$GetOffersAsyncTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$GetOffersAsyncTask;

    .line 1186
    iput-object p1, p0, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;)V"
        }
    .end annotation

    .line 1189
    .local p1, "loadedOffers":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/permissions/PermissionOffer;>;"
    invoke-virtual {p1, p0}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 1190
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$GetOffersAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 1191
    :cond_c
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$2900(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 1192
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0, p1}, Lio/realm/PermissionManager;->access$2902(Lio/realm/PermissionManager;Lio/realm/RealmResults;)Lio/realm/RealmResults;

    .line 1194
    :cond_1d
    iget-object v0, p0, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;

    iget-object v1, p0, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetOffersAsyncTask;

    iget-object v1, v1, Lio/realm/PermissionManager$GetOffersAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$2900(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/PermissionManager$GetOffersAsyncTask;->notifyCallbackWithSuccess(Lio/realm/RealmResults;)V

    .line 1195
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 1186
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$GetOffersAsyncTask$1;->onChange(Lio/realm/RealmResults;)V

    return-void
.end method

###### Class io.realm.PermissionManager.GetPermissionsAsyncTask (io.realm.PermissionManager$GetPermissionsAsyncTask)
.class Lio/realm/PermissionManager$GetPermissionsAsyncTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPermissionsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Lio/realm/RealmResults<",
        "Lio/realm/permissions/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$PermissionsCallback;

.field private loadingPermissions:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionsCallback;)V
    .registers 4
    .param p2, "permissionManager"    # Lio/realm/PermissionManager;
    .param p3, "callback"    # Lio/realm/PermissionManager$PermissionsCallback;

    .line 572
    iput-object p1, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    .line 573
    invoke-direct {p0, p2, p3}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 574
    iput-object p3, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->callback:Lio/realm/PermissionManager$PermissionsCallback;

    .line 575
    return-void
.end method

.method static synthetic access$1300(Lio/realm/PermissionManager$GetPermissionsAsyncTask;)Lio/realm/RealmResults;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    .line 566
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->loadingPermissions:Lio/realm/RealmResults;

    return-object v0
.end method

.method static synthetic access$1302(Lio/realm/PermissionManager$GetPermissionsAsyncTask;Lio/realm/RealmResults;)Lio/realm/RealmResults;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$GetPermissionsAsyncTask;
    .param p1, "x1"    # Lio/realm/RealmResults;

    .line 566
    iput-object p1, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->loadingPermissions:Lio/realm/RealmResults;

    return-object p1
.end method


# virtual methods
.method notifyCallbackWithSuccess(Lio/realm/RealmResults;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;)V"
        }
    .end annotation

    .line 609
    .local p1, "permissions":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/permissions/Permission;>;"
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->callback:Lio/realm/PermissionManager$PermissionsCallback;

    invoke-interface {v0, p1}, Lio/realm/PermissionManager$PermissionsCallback;->onSuccess(Lio/realm/RealmResults;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_10

    .line 611
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 612
    nop

    .line 613
    return-void

    .line 611
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public run()V
    .registers 3

    .line 579
    invoke-virtual {p0}, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 580
    :cond_7
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1200(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 582
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1200(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->notifyCallbackWithSuccess(Lio/realm/RealmResults;)V

    goto :goto_35

    .line 587
    :cond_19
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$800(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lio/realm/permissions/Permission;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAllAsync()Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->loadingPermissions:Lio/realm/RealmResults;

    .line 588
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->loadingPermissions:Lio/realm/RealmResults;

    new-instance v1, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;-><init>(Lio/realm/PermissionManager$GetPermissionsAsyncTask;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 605
    :goto_35
    return-void
.end method

###### Class io.realm.PermissionManager.GetPermissionsAsyncTask.AnonymousClass1 (io.realm.PermissionManager$GetPermissionsAsyncTask$1)
.class Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$GetPermissionsAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmResults<",
        "Lio/realm/permissions/Permission;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$GetPermissionsAsyncTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    .line 588
    iput-object p1, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p1, "loadedPermissions":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/permissions/Permission;>;"
    const-string v0, "1stCallback: Size: %s, Permissions: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lio/realm/RealmResults;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    invoke-virtual {p1}, Lio/realm/RealmResults;->size()I

    move-result v0

    if-le v0, v4, :cond_60

    .line 594
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->access$1300(Lio/realm/PermissionManager$GetPermissionsAsyncTask;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 595
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->access$1302(Lio/realm/PermissionManager$GetPermissionsAsyncTask;Lio/realm/RealmResults;)Lio/realm/RealmResults;

    .line 596
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_42

    return-void

    .line 597
    :cond_42
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1200(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v0

    if-nez v0, :cond_53

    .line 598
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0, p1}, Lio/realm/PermissionManager;->access$1202(Lio/realm/PermissionManager;Lio/realm/RealmResults;)Lio/realm/RealmResults;

    .line 600
    :cond_53
    iget-object v0, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    iget-object v1, p0, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->this$1:Lio/realm/PermissionManager$GetPermissionsAsyncTask;

    iget-object v1, v1, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1200(Lio/realm/PermissionManager;)Lio/realm/RealmResults;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/PermissionManager$GetPermissionsAsyncTask;->notifyCallbackWithSuccess(Lio/realm/RealmResults;)V

    .line 602
    :cond_60
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 588
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$GetPermissionsAsyncTask$1;->onChange(Lio/realm/RealmResults;)V

    return-void
.end method

###### Class io.realm.PermissionManager.MakeOfferAsyncTask (io.realm.PermissionManager$MakeOfferAsyncTask)
.class Lio/realm/PermissionManager$MakeOfferAsyncTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeOfferAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$MakeOfferCallback;

.field private managedOffer:Lio/realm/permissions/PermissionOffer;

.field private final offerId:Ljava/lang/String;

.field final synthetic this$0:Lio/realm/PermissionManager;

.field private transactionTask:Lio/realm/RealmAsyncTask;

.field private final unmanagedOffer:Lio/realm/permissions/PermissionOffer;


# direct methods
.method public constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Lio/realm/permissions/PermissionOffer;Lio/realm/PermissionManager$MakeOfferCallback;)V
    .registers 5
    .param p2, "permissionManager"    # Lio/realm/PermissionManager;
    .param p3, "offer"    # Lio/realm/permissions/PermissionOffer;
    .param p4, "callback"    # Lio/realm/PermissionManager$MakeOfferCallback;

    .line 770
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    .line 771
    invoke-direct {p0, p2, p4}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 772
    iput-object p3, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->unmanagedOffer:Lio/realm/permissions/PermissionOffer;

    .line 773
    invoke-virtual {p3}, Lio/realm/permissions/PermissionOffer;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->offerId:Ljava/lang/String;

    .line 774
    iput-object p4, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->callback:Lio/realm/PermissionManager$MakeOfferCallback;

    .line 775
    return-void
.end method

.method static synthetic access$2000(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Lio/realm/permissions/PermissionOffer;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$MakeOfferAsyncTask;

    .line 762
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->unmanagedOffer:Lio/realm/permissions/PermissionOffer;

    return-object v0
.end method

.method static synthetic access$2100(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Lio/realm/permissions/PermissionOffer;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$MakeOfferAsyncTask;

    .line 762
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->managedOffer:Lio/realm/permissions/PermissionOffer;

    return-object v0
.end method

.method static synthetic access$2102(Lio/realm/PermissionManager$MakeOfferAsyncTask;Lio/realm/permissions/PermissionOffer;)Lio/realm/permissions/PermissionOffer;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$MakeOfferAsyncTask;
    .param p1, "x1"    # Lio/realm/permissions/PermissionOffer;

    .line 762
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->managedOffer:Lio/realm/permissions/PermissionOffer;

    return-object p1
.end method

.method static synthetic access$2200(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$MakeOfferAsyncTask;

    .line 762
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->offerId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 845
    invoke-super {p0}, Lio/realm/PermissionManager$PermissionManagerTask;->cancel()V

    .line 846
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    if-eqz v0, :cond_f

    .line 847
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    invoke-interface {v0}, Lio/realm/RealmAsyncTask;->cancel()V

    .line 848
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    .line 850
    :cond_f
    return-void
.end method

.method notifyCallbackWithSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/String;

    .line 837
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->callback:Lio/realm/PermissionManager$MakeOfferCallback;

    invoke-interface {v0, p1}, Lio/realm/PermissionManager$MakeOfferCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_10

    .line 839
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 840
    nop

    .line 841
    return-void

    .line 839
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public run()V
    .registers 5

    .line 779
    invoke-virtual {p0}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 780
    return-void

    .line 784
    :cond_7
    new-instance v0, Lio/realm/PermissionManager$MakeOfferAsyncTask$1;

    invoke-direct {v0, p0}, Lio/realm/PermissionManager$MakeOfferAsyncTask$1;-><init>(Lio/realm/PermissionManager$MakeOfferAsyncTask;)V

    .line 795
    .local v0, "transaction":Lio/realm/Realm$Transaction;
    new-instance v1, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;-><init>(Lio/realm/PermissionManager$MakeOfferAsyncTask;)V

    .line 823
    .local v1, "onSuccess":Lio/realm/Realm$Transaction$OnSuccess;
    new-instance v2, Lio/realm/PermissionManager$MakeOfferAsyncTask$3;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$MakeOfferAsyncTask$3;-><init>(Lio/realm/PermissionManager$MakeOfferAsyncTask;)V

    .line 832
    .local v2, "onError":Lio/realm/Realm$Transaction$OnError;
    iget-object v3, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v3}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object v3

    iput-object v3, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask;->transactionTask:Lio/realm/RealmAsyncTask;

    .line 833
    return-void
.end method

###### Class io.realm.PermissionManager.MakeOfferAsyncTask.AnonymousClass1 (io.realm.PermissionManager$MakeOfferAsyncTask$1)
.class Lio/realm/PermissionManager$MakeOfferAsyncTask$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$MakeOfferAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$MakeOfferAsyncTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$MakeOfferAsyncTask;

    .line 784
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .registers 3
    .param p1, "realm"    # Lio/realm/Realm;

    .line 787
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 788
    :cond_9
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->access$2000(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Lio/realm/permissions/PermissionOffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/realm/Realm;->insertOrUpdate(Lio/realm/RealmModel;)V

    .line 789
    return-void
.end method

###### Class io.realm.PermissionManager.MakeOfferAsyncTask.AnonymousClass2 (io.realm.PermissionManager$MakeOfferAsyncTask$2)
.class Lio/realm/PermissionManager$MakeOfferAsyncTask$2;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction$OnSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$MakeOfferAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$MakeOfferAsyncTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$MakeOfferAsyncTask;

    .line 795
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .registers 5

    .line 798
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 802
    :cond_9
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    iget-object v1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    iget-object v1, v1, Lio/realm/PermissionManager$MakeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v1

    const-class v2, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v2, "id"

    iget-object v3, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-static {v3}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->access$2200(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirstAsync()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/permissions/PermissionOffer;

    invoke-static {v0, v1}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->access$2102(Lio/realm/PermissionManager$MakeOfferAsyncTask;Lio/realm/permissions/PermissionOffer;)Lio/realm/permissions/PermissionOffer;

    .line 803
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->access$2100(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Lio/realm/permissions/PermissionOffer;

    move-result-object v0

    new-instance v1, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;-><init>(Lio/realm/PermissionManager$MakeOfferAsyncTask$2;)V

    invoke-static {v0, v1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 818
    return-void
.end method

###### Class io.realm.PermissionManager.MakeOfferAsyncTask.AnonymousClass2.AnonymousClass1 (io.realm.PermissionManager$MakeOfferAsyncTask$2$1)
.class Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/permissions/PermissionOffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lio/realm/PermissionManager$MakeOfferAsyncTask$2;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$MakeOfferAsyncTask$2;)V
    .registers 2
    .param p1, "this$2"    # Lio/realm/PermissionManager$MakeOfferAsyncTask$2;

    .line 803
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$MakeOfferAsyncTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/permissions/PermissionOffer;)V
    .registers 4
    .param p1, "permissionOffer"    # Lio/realm/permissions/PermissionOffer;

    .line 806
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$MakeOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 807
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$MakeOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->access$2100(Lio/realm/PermissionManager$MakeOfferAsyncTask;)Lio/realm/permissions/PermissionOffer;

    move-result-object v0

    invoke-static {v0, p0}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 808
    return-void

    .line 810
    :cond_16
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$MakeOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    new-instance v1, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;

    invoke-direct {v1, p0, p1}, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;-><init>(Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;Lio/realm/permissions/PermissionOffer;)V

    invoke-virtual {v0, p1, v1}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->handleServerStatusChanges(Lio/realm/internal/permissions/BasePermissionApi;Ljava/lang/Runnable;)V

    .line 816
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 803
    check-cast p1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;->onChange(Lio/realm/permissions/PermissionOffer;)V

    return-void
.end method

###### Class io.realm.PermissionManager.MakeOfferAsyncTask.AnonymousClass2.AnonymousClass1.RunnableC00261 (io.realm.PermissionManager$MakeOfferAsyncTask$2$1$1)
.class Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;->onChange(Lio/realm/permissions/PermissionOffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;

.field final synthetic val$permissionOffer:Lio/realm/permissions/PermissionOffer;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;Lio/realm/permissions/PermissionOffer;)V
    .registers 3
    .param p1, "this$3"    # Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;

    .line 810
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;

    iput-object p2, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;->val$permissionOffer:Lio/realm/permissions/PermissionOffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 813
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;->this$3:Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1;->this$2:Lio/realm/PermissionManager$MakeOfferAsyncTask$2;

    iget-object v0, v0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    iget-object v1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$2$1$1;->val$permissionOffer:Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v1}, Lio/realm/permissions/PermissionOffer;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->notifyCallbackWithSuccess(Ljava/lang/String;)V

    .line 814
    return-void
.end method

###### Class io.realm.PermissionManager.MakeOfferAsyncTask.AnonymousClass3 (io.realm.PermissionManager$MakeOfferAsyncTask$3)
.class Lio/realm/PermissionManager$MakeOfferAsyncTask$3;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction$OnError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$MakeOfferAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$MakeOfferAsyncTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$MakeOfferAsyncTask;

    .line 823
    iput-object p1, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$3;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 826
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$3;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 827
    :cond_9
    iget-object v0, p0, Lio/realm/PermissionManager$MakeOfferAsyncTask$3;->this$1:Lio/realm/PermissionManager$MakeOfferAsyncTask;

    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {v1, v2, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/realm/PermissionManager$MakeOfferAsyncTask;->notifyCallbackWithError(Lio/realm/ObjectServerError;)V

    .line 828
    return-void
.end method

###### Class io.realm.PermissionManager.MakeOfferCallback (io.realm.PermissionManager$MakeOfferCallback)
.class public interface abstract Lio/realm/PermissionManager$MakeOfferCallback;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/PermissionManager$PermissionManagerBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MakeOfferCallback"
.end annotation


# virtual methods
.method public abstract onSuccess(Ljava/lang/String;)V
.end method

###### Class io.realm.PermissionManager.OffersCallback (io.realm.PermissionManager$OffersCallback)
.class public interface abstract Lio/realm/PermissionManager$OffersCallback;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/PermissionManager$PermissionManagerBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OffersCallback"
.end annotation


# virtual methods
.method public abstract onSuccess(Lio/realm/RealmResults;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;)V"
        }
    .end annotation
.end method

###### Class io.realm.PermissionManager.PermissionManagerBaseCallback (io.realm.PermissionManager$PermissionManagerBaseCallback)
.class interface abstract Lio/realm/PermissionManager$PermissionManagerBaseCallback;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PermissionManagerBaseCallback"
.end annotation


# virtual methods
.method public abstract onError(Lio/realm/ObjectServerError;)V
.end method

###### Class io.realm.PermissionManager.PermissionManagerTask (io.realm.PermissionManager$PermissionManagerTask)
.class abstract Lio/realm/PermissionManager$PermissionManagerTask;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/RealmAsyncTask;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PermissionManagerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/RealmAsyncTask;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final ERROR_MESSAGE_CLIENT_RESET:Ljava/lang/String; = "The PermissionManager has been invalidated due to a server conflict. No further tasks can be scheduled. The app needs to be restarted to allow the PermissionManager to work again."


# instance fields
.field private final callback:Lio/realm/PermissionManager$PermissionManagerBaseCallback;

.field private volatile canceled:Z

.field private final permissionManager:Lio/realm/PermissionManager;


# direct methods
.method public constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V
    .registers 4
    .param p1, "permissionManager"    # Lio/realm/PermissionManager;
    .param p2, "callback"    # Lio/realm/PermissionManager$PermissionManagerBaseCallback;

    .line 970
    .local p0, "this":Lio/realm/PermissionManager$PermissionManagerTask;, "Lio/realm/PermissionManager$PermissionManagerTask<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/PermissionManager$PermissionManagerTask;->canceled:Z

    .line 971
    iput-object p2, p0, Lio/realm/PermissionManager$PermissionManagerTask;->callback:Lio/realm/PermissionManager$PermissionManagerBaseCallback;

    .line 972
    iput-object p1, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    .line 973
    return-void
.end method

.method private combineErrorCodes(Ljava/util/Map;)Lio/realm/ErrorCode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/ObjectServerError;",
            ">;)",
            "Lio/realm/ErrorCode;"
        }
    .end annotation

    .line 1142
    .local p0, "this":Lio/realm/PermissionManager$PermissionManagerTask;, "Lio/realm/PermissionManager$PermissionManagerTask<TT;>;"
    .local p1, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/realm/ObjectServerError;>;"
    const/4 v0, 0x0

    .line 1143
    .local v0, "finalErrorCode":Lio/realm/ErrorCode;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/ObjectServerError;

    .line 1144
    .local v2, "error":Lio/realm/ObjectServerError;
    invoke-virtual {v2}, Lio/realm/ObjectServerError;->getErrorCode()Lio/realm/ErrorCode;

    move-result-object v3

    .line 1145
    .local v3, "errorCode":Lio/realm/ErrorCode;
    if-nez v0, :cond_1d

    .line 1146
    move-object v0, v3

    .line 1147
    goto :goto_9

    .line 1149
    :cond_1d
    if-ne v3, v0, :cond_20

    .line 1150
    goto :goto_9

    .line 1155
    :cond_20
    sget-object v0, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    .line 1156
    nop

    .line 1158
    .end local v2    # "error":Lio/realm/ObjectServerError;
    .end local v3    # "errorCode":Lio/realm/ErrorCode;
    :cond_23
    return-object v0
.end method

.method private combineErrorMessage(Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/ObjectServerError;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1130
    .local p0, "this":Lio/realm/PermissionManager$PermissionManagerTask;, "Lio/realm/PermissionManager$PermissionManagerTask<TT;>;"
    .local p1, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/realm/ObjectServerError;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    move v0, v1

    .line 1131
    .local v0, "multipleErrors":Z
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_11

    const-string v2, "Multiple errors occurred: "

    goto :goto_13

    :cond_11
    const-string v2, "Error occurred in Realm: "

    :goto_13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v1, "errorMsg":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1133
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lio/realm/ObjectServerError;>;"
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1134
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1136
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/ObjectServerError;

    invoke-virtual {v4}, Lio/realm/ObjectServerError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lio/realm/ObjectServerError;>;"
    goto :goto_1e

    .line 1138
    :cond_49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private combineRealmErrors(Ljava/util/Map;)Lio/realm/ObjectServerError;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/ObjectServerError;",
            ">;)",
            "Lio/realm/ObjectServerError;"
        }
    .end annotation

    .line 1122
    .local p0, "this":Lio/realm/PermissionManager$PermissionManagerTask;, "Lio/realm/PermissionManager$PermissionManagerTask<TT;>;"
    .local p1, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/realm/ObjectServerError;>;"
    invoke-direct {p0, p1}, Lio/realm/PermissionManager$PermissionManagerTask;->combineErrorMessage(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, p1}, Lio/realm/PermissionManager$PermissionManagerTask;->combineErrorCodes(Ljava/util/Map;)Lio/realm/ErrorCode;

    move-result-object v1

    .line 1125
    .local v1, "errorCode":Lio/realm/ErrorCode;
    new-instance v2, Lio/realm/ObjectServerError;

    invoke-direct {v2, v1, v0}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 980
    .local p0, "this":Lio/realm/PermissionManager$PermissionManagerTask;, "Lio/realm/PermissionManager$PermissionManagerTask<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/PermissionManager$PermissionManagerTask;->canceled:Z

    .line 981
    return-void
.end method

.method protected final checkAndReportInvalidState()Z
    .registers 13

    .line 998
    .local p0, "this":Lio/realm/PermissionManager$PermissionManagerTask;, "Lio/realm/PermissionManager$PermissionManagerTask<TT;>;"
    invoke-virtual {p0}, Lio/realm/PermissionManager$PermissionManagerTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 999
    iget-object v0, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1000
    return v1

    .line 1003
    :cond_11
    iget-object v0, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$2600(Lio/realm/PermissionManager;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1004
    new-instance v0, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "PermissionManager has been closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    .line 1006
    .local v0, "error":Lio/realm/ObjectServerError;
    invoke-virtual {p0, v0}, Lio/realm/PermissionManager$PermissionManagerTask;->notifyCallbackWithError(Lio/realm/ObjectServerError;)V

    .line 1007
    return v1

    .line 1009
    .end local v0    # "error":Lio/realm/ObjectServerError;
    :cond_2b
    iget-object v0, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$2700(Lio/realm/PermissionManager;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1010
    new-instance v0, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->CLIENT_RESET:Lio/realm/ErrorCode;

    const-string v3, "The PermissionManager has been invalidated due to a server conflict. No further tasks can be scheduled. The app needs to be restarted to allow the PermissionManager to work again."

    invoke-direct {v0, v2, v3}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    .line 1011
    .restart local v0    # "error":Lio/realm/ObjectServerError;
    invoke-virtual {p0, v0}, Lio/realm/PermissionManager$PermissionManagerTask;->notifyCallbackWithError(Lio/realm/ObjectServerError;)V

    .line 1012
    return v1

    .line 1024
    .end local v0    # "error":Lio/realm/ObjectServerError;
    :cond_40
    iget-object v0, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$100(Lio/realm/PermissionManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1026
    :try_start_47
    iget-object v2, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v2}, Lio/realm/PermissionManager;->access$200(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_52

    const/4 v2, 0x1

    goto :goto_53

    :cond_52
    const/4 v2, 0x0

    .line 1027
    .local v2, "managementErrorHappened":Z
    :goto_53
    iget-object v4, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v4}, Lio/realm/PermissionManager;->access$300(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;

    move-result-object v4

    if-eqz v4, :cond_5d

    const/4 v4, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v4, 0x0

    .line 1028
    .local v4, "permissionErrorHappened":Z
    :goto_5e
    iget-object v5, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v5}, Lio/realm/PermissionManager;->access$400(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;

    move-result-object v5

    if-eqz v5, :cond_68

    const/4 v5, 0x1

    goto :goto_69

    :cond_68
    const/4 v5, 0x0

    .line 1029
    .local v5, "defaultPermissionErrorHappened":Z
    :goto_69
    iget-object v6, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v6}, Lio/realm/PermissionManager;->access$200(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;

    move-result-object v6

    .line 1030
    .local v6, "managementError":Lio/realm/ObjectServerError;
    iget-object v7, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v7}, Lio/realm/PermissionManager;->access$300(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;

    move-result-object v7

    .line 1031
    .local v7, "permissionError":Lio/realm/ObjectServerError;
    iget-object v8, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v8}, Lio/realm/PermissionManager;->access$400(Lio/realm/PermissionManager;)Lio/realm/ObjectServerError;

    move-result-object v8

    .line 1032
    .local v8, "defaultPermissionError":Lio/realm/ObjectServerError;
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_47 .. :try_end_7c} :catchall_108

    .line 1035
    if-nez v4, :cond_81

    if-nez v2, :cond_81

    .line 1036
    return v3

    .line 1049
    :cond_81
    if-eqz v2, :cond_9b

    instance-of v0, v6, Lio/realm/ClientResetRequiredError;

    if-eqz v0, :cond_9b

    .line 1050
    move-object v0, v6

    check-cast v0, Lio/realm/ClientResetRequiredError;

    .line 1051
    .local v0, "cr":Lio/realm/ClientResetRequiredError;
    iget-object v3, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v3}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    .line 1052
    invoke-virtual {v0}, Lio/realm/ClientResetRequiredError;->executeClientReset()V

    .line 1053
    iget-object v3, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v3, v1}, Lio/realm/PermissionManager;->access$2702(Lio/realm/PermissionManager;Z)Z

    .line 1056
    .end local v0    # "cr":Lio/realm/ClientResetRequiredError;
    :cond_9b
    if-eqz v4, :cond_b5

    instance-of v0, v7, Lio/realm/ClientResetRequiredError;

    if-eqz v0, :cond_b5

    .line 1057
    move-object v0, v7

    check-cast v0, Lio/realm/ClientResetRequiredError;

    .line 1058
    .restart local v0    # "cr":Lio/realm/ClientResetRequiredError;
    iget-object v3, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v3}, Lio/realm/PermissionManager;->access$800(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    .line 1059
    invoke-virtual {v0}, Lio/realm/ClientResetRequiredError;->executeClientReset()V

    .line 1060
    iget-object v3, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v3, v1}, Lio/realm/PermissionManager;->access$2702(Lio/realm/PermissionManager;Z)Z

    .line 1063
    .end local v0    # "cr":Lio/realm/ClientResetRequiredError;
    :cond_b5
    if-eqz v5, :cond_cf

    instance-of v0, v8, Lio/realm/ClientResetRequiredError;

    if-eqz v0, :cond_cf

    .line 1064
    move-object v0, v8

    check-cast v0, Lio/realm/ClientResetRequiredError;

    .line 1065
    .restart local v0    # "cr":Lio/realm/ClientResetRequiredError;
    iget-object v3, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v3}, Lio/realm/PermissionManager;->access$1000(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    .line 1066
    invoke-virtual {v0}, Lio/realm/ClientResetRequiredError;->executeClientReset()V

    .line 1067
    iget-object v3, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v3, v1}, Lio/realm/PermissionManager;->access$2702(Lio/realm/PermissionManager;Z)Z

    .line 1071
    .end local v0    # "cr":Lio/realm/ClientResetRequiredError;
    :cond_cf
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1072
    .local v0, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/realm/ObjectServerError;>;"
    iget-object v3, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v3}, Lio/realm/PermissionManager;->access$2700(Lio/realm/PermissionManager;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 1073
    const-string v3, "ClientReset"

    new-instance v9, Lio/realm/ObjectServerError;

    sget-object v10, Lio/realm/ErrorCode;->CLIENT_RESET:Lio/realm/ErrorCode;

    const-string v11, "The PermissionManager has been invalidated due to a server conflict. No further tasks can be scheduled. The app needs to be restarted to allow the PermissionManager to work again."

    invoke-direct {v9, v10, v11}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_100

    .line 1075
    :cond_eb
    if-eqz v2, :cond_f2

    const-string v3, "Management Realm"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :cond_f2
    if-eqz v4, :cond_f9

    const-string v3, "Permission Realm"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    :cond_f9
    if-eqz v5, :cond_100

    const-string v3, "Default Permission Realm"

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    :cond_100
    :goto_100
    invoke-direct {p0, v0}, Lio/realm/PermissionManager$PermissionManagerTask;->combineRealmErrors(Ljava/util/Map;)Lio/realm/ObjectServerError;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/realm/PermissionManager$PermissionManagerTask;->notifyCallbackWithError(Lio/realm/ObjectServerError;)V

    .line 1081
    return v1

    .line 1032
    .end local v0    # "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/realm/ObjectServerError;>;"
    .end local v2    # "managementErrorHappened":Z
    .end local v4    # "permissionErrorHappened":Z
    .end local v5    # "defaultPermissionErrorHappened":Z
    .end local v6    # "managementError":Lio/realm/ObjectServerError;
    .end local v7    # "permissionError":Lio/realm/ObjectServerError;
    .end local v8    # "defaultPermissionError":Lio/realm/ObjectServerError;
    :catchall_108
    move-exception v1

    :try_start_109
    monitor-exit v0
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    throw v1
.end method

.method protected handleServerStatusChanges(Lio/realm/internal/permissions/BasePermissionApi;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "obj"    # Lio/realm/internal/permissions/BasePermissionApi;
    .param p2, "onSuccessDelegate"    # Ljava/lang/Runnable;

    .line 1088
    .local p0, "this":Lio/realm/PermissionManager$PermissionManagerTask;, "Lio/realm/PermissionManager$PermissionManagerTask<TT;>;"
    invoke-interface {p1}, Lio/realm/internal/permissions/BasePermissionApi;->getStatusCode()Ljava/lang/Integer;

    move-result-object v0

    .line 1089
    .local v0, "statusCode":Ljava/lang/Integer;
    if-eqz v0, :cond_49

    .line 1090
    invoke-static {p1}, Lio/realm/RealmObject;->removeAllChangeListeners(Lio/realm/RealmModel;)V

    .line 1091
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_24

    .line 1092
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lio/realm/ErrorCode;->fromInt(I)Lio/realm/ErrorCode;

    move-result-object v1

    .line 1093
    .local v1, "errorCode":Lio/realm/ErrorCode;
    invoke-interface {p1}, Lio/realm/internal/permissions/BasePermissionApi;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    .line 1094
    .local v2, "errorMsg":Ljava/lang/String;
    new-instance v3, Lio/realm/ObjectServerError;

    invoke-direct {v3, v1, v2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    .line 1095
    .local v3, "error":Lio/realm/ObjectServerError;
    invoke-virtual {p0, v3}, Lio/realm/PermissionManager$PermissionManagerTask;->notifyCallbackWithError(Lio/realm/ObjectServerError;)V

    .line 1096
    .end local v1    # "errorCode":Lio/realm/ErrorCode;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v3    # "error":Lio/realm/ObjectServerError;
    goto :goto_49

    :cond_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2e

    .line 1097
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_49

    .line 1099
    :cond_2e
    sget-object v1, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    .line 1100
    .restart local v1    # "errorCode":Lio/realm/ErrorCode;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1101
    .restart local v2    # "errorMsg":Ljava/lang/String;
    new-instance v3, Lio/realm/ObjectServerError;

    invoke-direct {v3, v1, v2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    .line 1102
    .restart local v3    # "error":Lio/realm/ObjectServerError;
    invoke-virtual {p0, v3}, Lio/realm/PermissionManager$PermissionManagerTask;->notifyCallbackWithError(Lio/realm/ObjectServerError;)V

    .line 1105
    .end local v1    # "errorCode":Lio/realm/ErrorCode;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v3    # "error":Lio/realm/ObjectServerError;
    :cond_49
    :goto_49
    return-void
.end method

.method public isCancelled()Z
    .registers 2

    .line 985
    .local p0, "this":Lio/realm/PermissionManager$PermissionManagerTask;, "Lio/realm/PermissionManager$PermissionManagerTask<TT;>;"
    iget-boolean v0, p0, Lio/realm/PermissionManager$PermissionManagerTask;->canceled:Z

    return v0
.end method

.method protected final notifyCallbackWithError(Lio/realm/ObjectServerError;)V
    .registers 6
    .param p1, "e"    # Lio/realm/ObjectServerError;

    .line 1108
    .local p0, "this":Lio/realm/PermissionManager$PermissionManagerTask;, "Lio/realm/PermissionManager$PermissionManagerTask<TT;>;"
    const-string v0, "Error happened in PermissionManager for %s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    .line 1109
    invoke-static {v2}, Lio/realm/PermissionManager;->access$2800(Lio/realm/PermissionManager;)Lio/realm/SyncUser;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lio/realm/ObjectServerError;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1108
    invoke-static {v0, v1}, Lio/realm/log/RealmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    :try_start_1c
    iget-object v0, p0, Lio/realm/PermissionManager$PermissionManagerTask;->callback:Lio/realm/PermissionManager$PermissionManagerBaseCallback;

    invoke-interface {v0, p1}, Lio/realm/PermissionManager$PermissionManagerBaseCallback;->onError(Lio/realm/ObjectServerError;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_2c

    .line 1113
    iget-object v0, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1114
    nop

    .line 1115
    return-void

    .line 1113
    :catchall_2c
    move-exception v0

    iget-object v1, p0, Lio/realm/PermissionManager$PermissionManagerTask;->permissionManager:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public abstract run()V
.end method

###### Class io.realm.PermissionManager.PermissionsCallback (io.realm.PermissionManager$PermissionsCallback)
.class public interface abstract Lio/realm/PermissionManager$PermissionsCallback;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/PermissionManager$PermissionManagerBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionsCallback"
.end annotation


# virtual methods
.method public abstract onSuccess(Lio/realm/RealmResults;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/Permission;",
            ">;)V"
        }
    .end annotation
.end method

###### Class io.realm.PermissionManager.RealmType (io.realm.PermissionManager$RealmType)
.class final enum Lio/realm/PermissionManager$RealmType;
.super Ljava/lang/Enum;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RealmType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/PermissionManager$RealmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/PermissionManager$RealmType;

.field public static final enum DEFAULT_PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

.field public static final enum MANAGEMENT_REALM:Lio/realm/PermissionManager$RealmType;

.field public static final enum PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;


# instance fields
.field private final globalRealm:Z

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 103
    new-instance v0, Lio/realm/PermissionManager$RealmType;

    const-string v1, "DEFAULT_PERMISSION_REALM"

    const-string v2, "__wildcardpermissions"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lio/realm/PermissionManager$RealmType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lio/realm/PermissionManager$RealmType;->DEFAULT_PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    .line 104
    new-instance v0, Lio/realm/PermissionManager$RealmType;

    const-string v1, "PERMISSION_REALM"

    const-string v2, "__permission"

    invoke-direct {v0, v1, v3, v2, v4}, Lio/realm/PermissionManager$RealmType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lio/realm/PermissionManager$RealmType;->PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    .line 105
    new-instance v0, Lio/realm/PermissionManager$RealmType;

    const-string v1, "MANAGEMENT_REALM"

    const-string v2, "__management"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lio/realm/PermissionManager$RealmType;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lio/realm/PermissionManager$RealmType;->MANAGEMENT_REALM:Lio/realm/PermissionManager$RealmType;

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lio/realm/PermissionManager$RealmType;

    sget-object v1, Lio/realm/PermissionManager$RealmType;->DEFAULT_PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    aput-object v1, v0, v4

    sget-object v1, Lio/realm/PermissionManager$RealmType;->PERMISSION_REALM:Lio/realm/PermissionManager$RealmType;

    aput-object v1, v0, v3

    sget-object v1, Lio/realm/PermissionManager$RealmType;->MANAGEMENT_REALM:Lio/realm/PermissionManager$RealmType;

    aput-object v1, v0, v5

    sput-object v0, Lio/realm/PermissionManager$RealmType;->$VALUES:[Lio/realm/PermissionManager$RealmType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .param p3, "realmName"    # Ljava/lang/String;
    .param p4, "globalRealm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput-object p3, p0, Lio/realm/PermissionManager$RealmType;->name:Ljava/lang/String;

    .line 112
    iput-boolean p4, p0, Lio/realm/PermissionManager$RealmType;->globalRealm:Z

    .line 113
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/PermissionManager$RealmType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 102
    const-class v0, Lio/realm/PermissionManager$RealmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/PermissionManager$RealmType;

    return-object v0
.end method

.method public static values()[Lio/realm/PermissionManager$RealmType;
    .registers 1

    .line 102
    sget-object v0, Lio/realm/PermissionManager$RealmType;->$VALUES:[Lio/realm/PermissionManager$RealmType;

    invoke-virtual {v0}, [Lio/realm/PermissionManager$RealmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/PermissionManager$RealmType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lio/realm/PermissionManager$RealmType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isGlobalRealm()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lio/realm/PermissionManager$RealmType;->globalRealm:Z

    return v0
.end method

###### Class io.realm.PermissionManager.RevokeOfferAsyncTask (io.realm.PermissionManager$RevokeOfferAsyncTask)
.class Lio/realm/PermissionManager$RevokeOfferAsyncTask;
.super Lio/realm/PermissionManager$PermissionManagerTask;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevokeOfferAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/PermissionManager$PermissionManagerTask<",
        "Lio/realm/permissions/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lio/realm/PermissionManager$RevokeOfferCallback;

.field private matchingOffers:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;"
        }
    .end annotation
.end field

.field private final offerToken:Ljava/lang/String;

.field final synthetic this$0:Lio/realm/PermissionManager;


# direct methods
.method public constructor <init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager;Ljava/lang/String;Lio/realm/PermissionManager$RevokeOfferCallback;)V
    .registers 5
    .param p2, "permissionManager"    # Lio/realm/PermissionManager;
    .param p3, "offerToken"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/realm/PermissionManager$RevokeOfferCallback;

    .line 1215
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    .line 1216
    invoke-direct {p0, p2, p4}, Lio/realm/PermissionManager$PermissionManagerTask;-><init>(Lio/realm/PermissionManager;Lio/realm/PermissionManager$PermissionManagerBaseCallback;)V

    .line 1217
    iput-object p3, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->offerToken:Ljava/lang/String;

    .line 1218
    iput-object p4, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->callback:Lio/realm/PermissionManager$RevokeOfferCallback;

    .line 1219
    return-void
.end method

.method static synthetic access$3000(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    .line 1209
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->offerToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)Lio/realm/RealmResults;
    .registers 2
    .param p0, "x0"    # Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    .line 1209
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->matchingOffers:Lio/realm/RealmResults;

    return-object v0
.end method


# virtual methods
.method notifyCallbackWithSuccess()V
    .registers 3

    .line 1287
    :try_start_0
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->callback:Lio/realm/PermissionManager$RevokeOfferCallback;

    invoke-interface {v0}, Lio/realm/PermissionManager$RevokeOfferCallback;->onSuccess()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_10

    .line 1289
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1290
    nop

    .line 1291
    return-void

    .line 1289
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v1}, Lio/realm/PermissionManager;->access$1400(Lio/realm/PermissionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public run()V
    .registers 4

    .line 1223
    invoke-virtual {p0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1224
    return-void

    .line 1226
    :cond_7
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v0

    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->offerToken:Ljava/lang/String;

    .line 1227
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    .line 1228
    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAllAsync()Lio/realm/RealmResults;

    move-result-object v0

    iput-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->matchingOffers:Lio/realm/RealmResults;

    .line 1229
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->matchingOffers:Lio/realm/RealmResults;

    new-instance v1, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)V

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 1283
    return-void
.end method

###### Class io.realm.PermissionManager.RevokeOfferAsyncTask.AnonymousClass1 (io.realm.PermissionManager$RevokeOfferAsyncTask$1)
.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$RevokeOfferAsyncTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/RealmResults<",
        "Lio/realm/permissions/PermissionOffer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)V
    .registers 2
    .param p1, "this$1"    # Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    .line 1229
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmResults;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;)V"
        }
    .end annotation

    .line 1232
    .local p1, "offers":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/permissions/PermissionOffer;>;"
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1233
    :cond_9
    invoke-virtual {p1}, Lio/realm/RealmResults;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1234
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$500(Lio/realm/PermissionManager;)Lio/realm/Realm;

    move-result-object v0

    new-instance v1, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;)V

    new-instance v2, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

    invoke-direct {v2, p0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;)V

    new-instance v3, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;

    invoke-direct {v3, p0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    .line 1281
    :cond_29
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .registers 2

    .line 1229
    check-cast p1, Lio/realm/RealmResults;

    invoke-virtual {p0, p1}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->onChange(Lio/realm/RealmResults;)V

    return-void
.end method

###### Class io.realm.PermissionManager.RevokeOfferAsyncTask.AnonymousClass1.C00271 (io.realm.PermissionManager$RevokeOfferAsyncTask$1$1)
.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->onChange(Lio/realm/RealmResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;)V
    .registers 2
    .param p1, "this$2"    # Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    .line 1234
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .registers 5
    .param p1, "realm"    # Lio/realm/Realm;

    .line 1237
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 1242
    :cond_b
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$1;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v2, v2, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    .line 1243
    invoke-static {v2}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->access$3000(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    .line 1244
    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 1245
    .local v0, "offers":Lio/realm/RealmResults;, "Lio/realm/RealmResults<Lio/realm/permissions/PermissionOffer;>;"
    invoke-virtual {v0}, Lio/realm/RealmResults;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1246
    invoke-virtual {v0}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    .line 1248
    :cond_2d
    return-void
.end method

###### Class io.realm.PermissionManager.RevokeOfferAsyncTask.AnonymousClass1.AnonymousClass2 (io.realm.PermissionManager$RevokeOfferAsyncTask$1$2)
.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction$OnSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->onChange(Lio/realm/RealmResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;)V
    .registers 2
    .param p1, "this$2"    # Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    .line 1249
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .registers 4

    .line 1253
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->access$3100(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->removeAllChangeListeners()V

    .line 1254
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 1255
    :cond_16
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    iget-object v0, v0, Lio/realm/PermissionManager;->managementRealmConfig:Lio/realm/SyncConfiguration;

    invoke-static {v0}, Lio/realm/SyncManager;->getSession(Lio/realm/SyncConfiguration;)Lio/realm/SyncSession;

    move-result-object v0

    .line 1256
    .local v0, "session":Lio/realm/SyncSession;
    sget-object v1, Lio/realm/ProgressMode;->CURRENT_CHANGES:Lio/realm/ProgressMode;

    new-instance v2, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;

    invoke-direct {v2, p0, v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;Lio/realm/SyncSession;)V

    invoke-virtual {v0, v1, v2}, Lio/realm/SyncSession;->addUploadProgressListener(Lio/realm/ProgressMode;Lio/realm/ProgressListener;)V

    .line 1271
    return-void
.end method

###### Class io.realm.PermissionManager.RevokeOfferAsyncTask.AnonymousClass1.AnonymousClass2.C00281 (io.realm.PermissionManager$RevokeOfferAsyncTask$1$2$1)
.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

.field final synthetic val$session:Lio/realm/SyncSession;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;Lio/realm/SyncSession;)V
    .registers 3
    .param p1, "this$3"    # Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

    .line 1256
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->this$3:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

    iput-object p2, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->val$session:Lio/realm/SyncSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/Progress;)V
    .registers 4
    .param p1, "progress"    # Lio/realm/Progress;

    .line 1259
    invoke-virtual {p1}, Lio/realm/Progress;->isTransferComplete()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1260
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->val$session:Lio/realm/SyncSession;

    invoke-virtual {v0, p0}, Lio/realm/SyncSession;->removeProgressListener(Lio/realm/ProgressListener;)V

    .line 1261
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->this$3:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->this$0:Lio/realm/PermissionManager;

    invoke-static {v0}, Lio/realm/PermissionManager;->access$3200(Lio/realm/PermissionManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;

    invoke-direct {v1, p0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;-><init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1269
    :cond_1f
    return-void
.end method

###### Class io.realm.PermissionManager.RevokeOfferAsyncTask.AnonymousClass1.AnonymousClass2.C00281.RunnableC00291 (io.realm.PermissionManager$RevokeOfferAsyncTask$1$2$1$1)
.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->onChange(Lio/realm/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;)V
    .registers 2
    .param p1, "this$4"    # Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;

    .line 1261
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;->this$4:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1264
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;->this$4:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->this$3:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->checkAndReportInvalidState()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 1265
    :cond_f
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1$1;->this$4:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2$1;->this$3:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$2;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-virtual {v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->notifyCallbackWithSuccess()V

    .line 1266
    return-void
.end method

###### Class io.realm.PermissionManager.RevokeOfferAsyncTask.AnonymousClass1.AnonymousClass3 (io.realm.PermissionManager$RevokeOfferAsyncTask$1$3)
.class Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/Realm$Transaction$OnError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->onChange(Lio/realm/RealmResults;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;


# direct methods
.method constructor <init>(Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;)V
    .registers 2
    .param p1, "this$2"    # Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    .line 1272
    iput-object p1, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 1275
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    invoke-static {v0}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->access$3100(Lio/realm/PermissionManager$RevokeOfferAsyncTask;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->removeAllChangeListeners()V

    .line 1276
    iget-object v0, p0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1$3;->this$2:Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;

    iget-object v0, v0, Lio/realm/PermissionManager$RevokeOfferAsyncTask$1;->this$1:Lio/realm/PermissionManager$RevokeOfferAsyncTask;

    new-instance v1, Lio/realm/ObjectServerError;

    sget-object v2, Lio/realm/ErrorCode;->UNKNOWN:Lio/realm/ErrorCode;

    invoke-direct {v1, v2, p1}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lio/realm/PermissionManager$RevokeOfferAsyncTask;->notifyCallbackWithError(Lio/realm/ObjectServerError;)V

    .line 1278
    return-void
.end method

###### Class io.realm.PermissionManager.RevokeOfferCallback (io.realm.PermissionManager$RevokeOfferCallback)
.class public interface abstract Lio/realm/PermissionManager$RevokeOfferCallback;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/realm/PermissionManager$PermissionManagerBaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RevokeOfferCallback"
.end annotation


# virtual methods
.method public abstract onSuccess()V
.end method
