###### Class io.realm.exceptions.IncompatibleSyncedFileException (io.realm.exceptions.IncompatibleSyncedFileException)
.class public Lio/realm/exceptions/IncompatibleSyncedFileException;
.super Lio/realm/exceptions/RealmFileException;
.source "IncompatibleSyncedFileException.java"


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# instance fields
.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "recoveryPath"    # Ljava/lang/String;

    .line 51
    sget-object v0, Lio/realm/exceptions/RealmFileException$Kind;->INCOMPATIBLE_SYNC_FILE:Lio/realm/exceptions/RealmFileException$Kind;

    invoke-direct {p0, v0, p1}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lio/realm/exceptions/IncompatibleSyncedFileException;->path:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getBackupRealmConfiguration()Lio/realm/RealmConfiguration;
    .registers 4

    .line 64
    iget-object v0, p0, Lio/realm/exceptions/IncompatibleSyncedFileException;->path:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lio/realm/SyncConfiguration;->forRecovery(Ljava/lang/String;[B[Ljava/lang/Object;)Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getBackupRealmConfiguration([B)Lio/realm/RealmConfiguration;
    .registers 4
    .param p1, "encryptionKey"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    iget-object v0, p0, Lio/realm/exceptions/IncompatibleSyncedFileException;->path:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lio/realm/SyncConfiguration;->forRecovery(Ljava/lang/String;[B[Ljava/lang/Object;)Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public varargs getBackupRealmConfiguration([B[Ljava/lang/Object;)Lio/realm/RealmConfiguration;
    .registers 4
    .param p1, "encryptionKey"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "modules"    # [Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lio/realm/exceptions/IncompatibleSyncedFileException;->path:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lio/realm/SyncConfiguration;->forRecovery(Ljava/lang/String;[B[Ljava/lang/Object;)Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryPath()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lio/realm/exceptions/IncompatibleSyncedFileException;->path:Ljava/lang/String;

    return-object v0
.end method
