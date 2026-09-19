###### Class io.realm.ClientResetRequiredError (io.realm.ClientResetRequiredError)
.class public Lio/realm/ClientResetRequiredError;
.super Lio/realm/ObjectServerError;
.source "ClientResetRequiredError.java"


# instance fields
.field private final backupConfiguration:Lio/realm/RealmConfiguration;

.field private final backupFile:Ljava/io/File;

.field private final originalConfiguration:Lio/realm/SyncConfiguration;

.field private final originalFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/realm/ErrorCode;Ljava/lang/String;Lio/realm/SyncConfiguration;Lio/realm/RealmConfiguration;)V
    .registers 7
    .param p1, "errorCode"    # Lio/realm/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "originalConfiguration"    # Lio/realm/SyncConfiguration;
    .param p4, "backupConfiguration"    # Lio/realm/RealmConfiguration;

    .line 35
    invoke-direct {p0, p1, p2}, Lio/realm/ObjectServerError;-><init>(Lio/realm/ErrorCode;Ljava/lang/String;)V

    .line 36
    iput-object p3, p0, Lio/realm/ClientResetRequiredError;->originalConfiguration:Lio/realm/SyncConfiguration;

    .line 37
    iput-object p4, p0, Lio/realm/ClientResetRequiredError;->backupConfiguration:Lio/realm/RealmConfiguration;

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-virtual {p4}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/realm/ClientResetRequiredError;->backupFile:Ljava/io/File;

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/realm/ClientResetRequiredError;->originalFile:Ljava/io/File;

    .line 40
    return-void
.end method

.method private native nativeExecuteClientReset(Ljava/lang/String;)V
.end method


# virtual methods
.method public executeClientReset()V
    .registers 4

    .line 54
    const-class v0, Lio/realm/Realm;

    monitor-enter v0

    .line 55
    :try_start_3
    iget-object v1, p0, Lio/realm/ClientResetRequiredError;->originalConfiguration:Lio/realm/SyncConfiguration;

    invoke-static {v1}, Lio/realm/Realm;->getGlobalInstanceCount(Lio/realm/RealmConfiguration;)I

    move-result v1

    if-gtz v1, :cond_16

    .line 59
    iget-object v1, p0, Lio/realm/ClientResetRequiredError;->originalConfiguration:Lio/realm/SyncConfiguration;

    invoke-virtual {v1}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/realm/ClientResetRequiredError;->nativeExecuteClientReset(Ljava/lang/String;)V

    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 56
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Realm has not been fully closed. Client Reset cannot run before all instances have been closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getBackupFile()Ljava/io/File;
    .registers 2

    .line 72
    iget-object v0, p0, Lio/realm/ClientResetRequiredError;->backupFile:Ljava/io/File;

    return-object v0
.end method

.method public getBackupRealmConfiguration()Lio/realm/RealmConfiguration;
    .registers 2

    .line 79
    iget-object v0, p0, Lio/realm/ClientResetRequiredError;->backupConfiguration:Lio/realm/RealmConfiguration;

    return-object v0
.end method

.method public getOriginalFile()Ljava/io/File;
    .registers 2

    .line 89
    iget-object v0, p0, Lio/realm/ClientResetRequiredError;->originalFile:Ljava/io/File;

    return-object v0
.end method
