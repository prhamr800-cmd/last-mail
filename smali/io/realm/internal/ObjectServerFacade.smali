###### Class io.realm.internal.ObjectServerFacade (io.realm.internal.ObjectServerFacade)
.class public Lio/realm/internal/ObjectServerFacade;
.super Ljava/lang/Object;
.source "ObjectServerFacade.java"


# static fields
.field private static final nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

.field private static syncFacade:Lio/realm/internal/ObjectServerFacade;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 33
    new-instance v0, Lio/realm/internal/ObjectServerFacade;

    invoke-direct {v0}, Lio/realm/internal/ObjectServerFacade;-><init>()V

    sput-object v0, Lio/realm/internal/ObjectServerFacade;->nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;

    .line 40
    :try_start_a
    const-string v0, "io.realm.internal.SyncObjectServerFacade"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 42
    .local v0, "syncFacadeClass":Ljava/lang/Class;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/ObjectServerFacade;

    sput-object v1, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_21} :catch_4a
    .catch Ljava/lang/InstantiationException; {:try_start_a .. :try_end_21} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_21} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_21} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_21} :catch_22

    goto :goto_4b

    .line 50
    .end local v0    # "syncFacadeClass":Ljava/lang/Class;
    :catch_22
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "Failed to init SyncObjectServerFacade"

    invoke-direct {v1, v3, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 48
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2f
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Failed to init SyncObjectServerFacade"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 46
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_38
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Failed to init SyncObjectServerFacade"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 44
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_41
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Failed to init SyncObjectServerFacade"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 43
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_4a
    move-exception v0

    .line 52
    :goto_4b
    nop

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFacade(Z)Lio/realm/internal/ObjectServerFacade;
    .registers 2
    .param p0, "needSyncFacade"    # Z

    .line 74
    if-eqz p0, :cond_5

    .line 75
    sget-object v0, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;

    return-object v0

    .line 77
    :cond_5
    sget-object v0, Lio/realm/internal/ObjectServerFacade;->nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

    return-object v0
.end method

.method public static getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;
    .registers 1

    .line 82
    sget-object v0, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;

    if-eqz v0, :cond_7

    .line 83
    sget-object v0, Lio/realm/internal/ObjectServerFacade;->syncFacade:Lio/realm/internal/ObjectServerFacade;

    return-object v0

    .line 85
    :cond_7
    sget-object v0, Lio/realm/internal/ObjectServerFacade;->nonSyncFacade:Lio/realm/internal/ObjectServerFacade;

    return-object v0
.end method


# virtual methods
.method public addSupportForObjectLevelPermissions(Lio/realm/RealmConfiguration$Builder;)V
    .registers 2
    .param p1, "builder"    # Lio/realm/RealmConfiguration$Builder;

    .line 124
    return-void
.end method

.method public createSubscriptionAwareResults(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/SortDescriptor;Lio/realm/internal/SortDescriptor;Ljava/lang/String;)Lio/realm/internal/OsResults;
    .registers 8
    .param p1, "sharedRealm"    # Lio/realm/internal/OsSharedRealm;
    .param p2, "query"    # Lio/realm/internal/TableQuery;
    .param p3, "sortDescriptor"    # Lio/realm/internal/SortDescriptor;
    .param p4, "distinctDescriptor"    # Lio/realm/internal/SortDescriptor;
    .param p5, "name"    # Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should only be called by builds supporting Sync"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public downloadRemoteChanges(Lio/realm/RealmConfiguration;)V
    .registers 2
    .param p1, "config"    # Lio/realm/RealmConfiguration;

    .line 109
    return-void
.end method

.method public getSyncServerCertificateAssetName(Lio/realm/RealmConfiguration;)Ljava/lang/String;
    .registers 3
    .param p1, "config"    # Lio/realm/RealmConfiguration;

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncServerCertificateFilePath(Lio/realm/RealmConfiguration;)Ljava/lang/String;
    .registers 3
    .param p1, "config"    # Lio/realm/RealmConfiguration;

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAndServerUrl(Lio/realm/RealmConfiguration;)[Ljava/lang/Object;
    .registers 3
    .param p1, "config"    # Lio/realm/RealmConfiguration;

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    return-void
.end method

.method public isPartialRealm(Lio/realm/RealmConfiguration;)Z
    .registers 3
    .param p1, "configuration"    # Lio/realm/RealmConfiguration;

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public realmClosed(Lio/realm/RealmConfiguration;)V
    .registers 2
    .param p1, "configuration"    # Lio/realm/RealmConfiguration;

    .line 67
    return-void
.end method

.method public wasDownloadInterrupted(Ljava/lang/Throwable;)Z
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public wrapObjectStoreSessionIfRequired(Lio/realm/internal/OsRealmConfig;)V
    .registers 2
    .param p1, "config"    # Lio/realm/internal/OsRealmConfig;

    .line 90
    return-void
.end method
