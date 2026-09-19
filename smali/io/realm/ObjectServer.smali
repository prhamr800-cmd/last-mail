###### Class io.realm.ObjectServer (io.realm.ObjectServer)
.class Lio/realm/ObjectServer;
.super Ljava/lang/Object;
.source "ObjectServer.java"


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    const-string/jumbo v0, "unknown"

    .line 40
    .local v0, "appId":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 41
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_14

    move-object v0, v3

    .line 43
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_15

    .line 42
    :catch_14
    move-exception v2

    .line 48
    :goto_15
    sget-boolean v2, Lio/realm/SyncManager$Debug;->separatedDirForSyncManager:Z

    if-eqz v2, :cond_80

    .line 51
    :try_start_19
    const-string v2, "remote_sync_"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 51
    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 53
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_63

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/realm/SyncManager;->nativeInitializeSyncManager(Ljava/lang/String;)V

    .line 65
    .end local v2    # "dir":Ljava/io/File;
    goto :goto_8b

    .line 58
    .restart local v2    # "dir":Ljava/io/File;
    :cond_4d
    new-instance v3, Ljava/lang/IllegalStateException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Directory \'%s\' for SyncManager cannot be created. "

    new-array v4, v4, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    .line 58
    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_63
    new-instance v3, Ljava/lang/IllegalStateException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Temp file \'%s\' cannot be deleted."

    new-array v4, v4, [Ljava/lang/Object;

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    .line 54
    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_79} :catch_79

    .line 63
    .end local v2    # "dir":Ljava/io/File;
    :catch_79
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 67
    .end local v1    # "e":Ljava/io/IOException;
    :cond_80
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/realm/SyncManager;->nativeInitializeSyncManager(Ljava/lang/String;)V

    .line 71
    :goto_8b
    new-instance v1, Lio/realm/RealmFileUserStore;

    invoke-direct {v1}, Lio/realm/RealmFileUserStore;-><init>()V

    .line 73
    .local v1, "userStore":Lio/realm/UserStore;
    invoke-static {v0, v1}, Lio/realm/SyncManager;->init(Ljava/lang/String;Lio/realm/UserStore;)V

    .line 74
    return-void
.end method
