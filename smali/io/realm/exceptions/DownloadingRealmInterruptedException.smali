###### Class io.realm.exceptions.DownloadingRealmInterruptedException (io.realm.exceptions.DownloadingRealmInterruptedException)
.class public Lio/realm/exceptions/DownloadingRealmInterruptedException;
.super Ljava/lang/RuntimeException;
.source "DownloadingRealmInterruptedException.java"


# direct methods
.method public constructor <init>(Lio/realm/SyncConfiguration;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "syncConfig"    # Lio/realm/SyncConfiguration;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Realm was interrupted while downloading the latest changes from the server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/realm/SyncConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
