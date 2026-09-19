###### Class io.realm.internal.SyncObjectServerFacade (io.realm.internal.SyncObjectServerFacade)
.class public Lio/realm/internal/SyncObjectServerFacade;
.super Lio/realm/internal/ObjectServerFacade;
.source "SyncObjectServerFacade.java"


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final WRONG_TYPE_OF_CONFIGURATION:Ljava/lang/String; = "\'configuration\' has to be an instance of \'SyncConfiguration\'."

.field private static applicationContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static volatile removeSessionMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lio/realm/internal/ObjectServerFacade;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 1

    .line 104
    sget-object v0, Lio/realm/internal/SyncObjectServerFacade;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private invokeRemoveSession(Lio/realm/SyncConfiguration;)V
    .registers 9
    .param p1, "syncConfig"    # Lio/realm/SyncConfiguration;

    .line 140
    :try_start_0
    sget-object v0, Lio/realm/internal/SyncObjectServerFacade;->removeSessionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_25

    .line 141
    const-class v0, Lio/realm/internal/SyncObjectServerFacade;

    monitor-enter v0
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_9} :catch_69
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_9} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_31

    .line 142
    :try_start_9
    sget-object v3, Lio/realm/internal/SyncObjectServerFacade;->removeSessionMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_20

    .line 143
    const-class v3, Lio/realm/SyncManager;

    const-string v4, "removeSession"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Lio/realm/SyncConfiguration;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 144
    .local v3, "removeSession":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 145
    sput-object v3, Lio/realm/internal/SyncObjectServerFacade;->removeSessionMethod:Ljava/lang/reflect/Method;

    .line 147
    .end local v3    # "removeSession":Ljava/lang/reflect/Method;
    :cond_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_22

    :try_start_24
    throw v1

    .line 149
    :cond_25
    :goto_25
    sget-object v0, Lio/realm/internal/SyncObjectServerFacade;->removeSessionMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_2f} :catch_69
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_2f} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2f} :catch_31

    .line 156
    nop

    .line 157
    return-void

    .line 154
    :catch_31
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not remove session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 152
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4d
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not invoke method to remove session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 150
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_69
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not lookup method to remove session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addSupportForObjectLevelPermissions(Lio/realm/RealmConfiguration$Builder;)V
    .registers 3
    .param p1, "builder"    # Lio/realm/RealmConfiguration$Builder;

    .line 191
    new-instance v0, Lio/realm/internal/sync/permissions/ObjectPermissionsModule;

    invoke-direct {v0}, Lio/realm/internal/sync/permissions/ObjectPermissionsModule;-><init>()V

    invoke-virtual {p1, v0}, Lio/realm/RealmConfiguration$Builder;->addModule(Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    .line 192
    return-void
.end method

.method public downloadRemoteChanges(Lio/realm/RealmConfiguration;)V
    .registers 6
    .param p1, "config"    # Lio/realm/RealmConfiguration;

    .line 161
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    if-eqz v0, :cond_1c

    .line 162
    move-object v0, p1

    check-cast v0, Lio/realm/SyncConfiguration;

    .line 163
    .local v0, "syncConfig":Lio/realm/SyncConfiguration;
    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->shouldWaitForInitialRemoteData()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 164
    invoke-static {v0}, Lio/realm/SyncManager;->getSession(Lio/realm/SyncConfiguration;)Lio/realm/SyncSession;

    move-result-object v1

    .line 166
    .local v1, "session":Lio/realm/SyncSession;
    :try_start_11
    invoke-virtual {v1}, Lio/realm/SyncSession;->downloadAllServerChanges()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    .line 169
    goto :goto_1c

    .line 167
    :catch_15
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Lio/realm/exceptions/DownloadingRealmInterruptedException;

    invoke-direct {v3, v0, v2}, Lio/realm/exceptions/DownloadingRealmInterruptedException;-><init>(Lio/realm/SyncConfiguration;Ljava/lang/Throwable;)V

    throw v3

    .line 172
    .end local v0    # "syncConfig":Lio/realm/SyncConfiguration;
    .end local v1    # "session":Lio/realm/SyncSession;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public getSyncServerCertificateAssetName(Lio/realm/RealmConfiguration;)Ljava/lang/String;
    .registers 4
    .param p1, "configuration"    # Lio/realm/RealmConfiguration;

    .line 116
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    if-eqz v0, :cond_c

    .line 117
    move-object v0, p1

    check-cast v0, Lio/realm/SyncConfiguration;

    .line 118
    .local v0, "syncConfig":Lio/realm/SyncConfiguration;
    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getServerCertificateAssetName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 120
    .end local v0    # "syncConfig":Lio/realm/SyncConfiguration;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'configuration\' has to be an instance of \'SyncConfiguration\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyncServerCertificateFilePath(Lio/realm/RealmConfiguration;)Ljava/lang/String;
    .registers 4
    .param p1, "configuration"    # Lio/realm/RealmConfiguration;

    .line 126
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    if-eqz v0, :cond_c

    .line 127
    move-object v0, p1

    check-cast v0, Lio/realm/SyncConfiguration;

    .line 128
    .local v0, "syncConfig":Lio/realm/SyncConfiguration;
    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getServerCertificateFilePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 130
    .end local v0    # "syncConfig":Lio/realm/SyncConfiguration;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'configuration\' has to be an instance of \'SyncConfiguration\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserAndServerUrl(Lio/realm/RealmConfiguration;)[Ljava/lang/Object;
    .registers 12
    .param p1, "config"    # Lio/realm/RealmConfiguration;

    .line 89
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    const/16 v1, 0x8

    if-eqz v0, :cond_60

    .line 90
    move-object v0, p1

    check-cast v0, Lio/realm/SyncConfiguration;

    .line 91
    .local v0, "syncConfig":Lio/realm/SyncConfiguration;
    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getUser()Lio/realm/SyncUser;

    move-result-object v2

    .line 92
    .local v2, "user":Lio/realm/SyncUser;
    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getServerUrl()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "rosServerUrl":Ljava/lang/String;
    invoke-virtual {v2}, Lio/realm/SyncUser;->getIdentity()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "rosUserIdentity":Ljava/lang/String;
    invoke-virtual {v2}, Lio/realm/SyncUser;->getAuthenticationUrl()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "syncRealmAuthUrl":Ljava/lang/String;
    invoke-virtual {v2}, Lio/realm/SyncUser;->toJson()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "rosSerializedUser":Ljava/lang/String;
    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getSessionStopPolicy()Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lio/realm/internal/OsRealmConfig$SyncSessionStopPolicy;->getNativeValue()B

    move-result v7

    .line 97
    .local v7, "sessionStopPolicy":B
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v1, v8

    const/4 v8, 0x1

    aput-object v3, v1, v8

    const/4 v8, 0x2

    aput-object v5, v1, v8

    const/4 v8, 0x3

    aput-object v6, v1, v8

    const/4 v8, 0x4

    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->syncClientValidateSsl()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x5

    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->getServerCertificateFilePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x7

    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->isPartialRealm()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v1, v8

    return-object v1

    .line 99
    .end local v0    # "syncConfig":Lio/realm/SyncConfiguration;
    .end local v2    # "user":Lio/realm/SyncUser;
    .end local v3    # "rosServerUrl":Ljava/lang/String;
    .end local v4    # "rosUserIdentity":Ljava/lang/String;
    .end local v5    # "syncRealmAuthUrl":Ljava/lang/String;
    .end local v6    # "rosSerializedUser":Ljava/lang/String;
    .end local v7    # "sessionStopPolicy":B
    :cond_60
    new-array v0, v1, [Ljava/lang/Object;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    :try_start_0
    const-string v0, "io.realm.ObjectServer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "syncManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "init"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 56
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 57
    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1f} :catch_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1f} :catch_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1f} :catch_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1f} :catch_38

    .line 66
    .end local v0    # "syncManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    nop

    .line 67
    sget-object v0, Lio/realm/internal/SyncObjectServerFacade;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_37

    .line 68
    sput-object p1, Lio/realm/internal/SyncObjectServerFacade;->applicationContext:Landroid/content/Context;

    .line 70
    sget-object v0, Lio/realm/internal/SyncObjectServerFacade;->applicationContext:Landroid/content/Context;

    new-instance v1, Lio/realm/internal/network/NetworkStateReceiver;

    invoke-direct {v1}, Lio/realm/internal/network/NetworkStateReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    :cond_37
    return-void

    .line 64
    :catch_38
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Could not initialize the Realm Object Server"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 62
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_41
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Could not initialize the Realm Object Server"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 60
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4a
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Could not initialize the Realm Object Server"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 58
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_53
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Could not initialize the Realm Object Server"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isPartialRealm(Lio/realm/RealmConfiguration;)Z
    .registers 4
    .param p1, "configuration"    # Lio/realm/RealmConfiguration;

    .line 181
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    if-eqz v0, :cond_c

    .line 182
    move-object v0, p1

    check-cast v0, Lio/realm/SyncConfiguration;

    .line 183
    .local v0, "syncConfig":Lio/realm/SyncConfiguration;
    invoke-virtual {v0}, Lio/realm/SyncConfiguration;->isPartialRealm()Z

    move-result v1

    return v1

    .line 186
    .end local v0    # "syncConfig":Lio/realm/SyncConfiguration;
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public realmClosed(Lio/realm/RealmConfiguration;)V
    .registers 4
    .param p1, "configuration"    # Lio/realm/RealmConfiguration;

    .line 79
    instance-of v0, p1, Lio/realm/SyncConfiguration;

    if-eqz v0, :cond_c

    .line 80
    move-object v0, p1

    check-cast v0, Lio/realm/SyncConfiguration;

    .line 81
    .local v0, "syncConfig":Lio/realm/SyncConfiguration;
    invoke-direct {p0, v0}, Lio/realm/internal/SyncObjectServerFacade;->invokeRemoveSession(Lio/realm/SyncConfiguration;)V

    .line 82
    .end local v0    # "syncConfig":Lio/realm/SyncConfiguration;
    nop

    .line 85
    return-void

    .line 83
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'configuration\' has to be an instance of \'SyncConfiguration\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wasDownloadInterrupted(Ljava/lang/Throwable;)Z
    .registers 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 176
    instance-of v0, p1, Lio/realm/exceptions/DownloadingRealmInterruptedException;

    return v0
.end method

.method public wrapObjectStoreSessionIfRequired(Lio/realm/internal/OsRealmConfig;)V
    .registers 4
    .param p1, "config"    # Lio/realm/internal/OsRealmConfig;

    .line 109
    invoke-virtual {p1}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    instance-of v0, v0, Lio/realm/SyncConfiguration;

    if-eqz v0, :cond_15

    .line 110
    invoke-virtual {p1}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    check-cast v0, Lio/realm/SyncConfiguration;

    invoke-virtual {p1}, Lio/realm/internal/OsRealmConfig;->getResolvedRealmURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/SyncManager;->getOrCreateSession(Lio/realm/SyncConfiguration;Ljava/net/URI;)Lio/realm/SyncSession;

    .line 112
    :cond_15
    return-void
.end method
