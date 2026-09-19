###### Class io.realm.internal.OsSharedRealm (io.realm.internal.OsSharedRealm)
.class public final Lio/realm/internal/OsSharedRealm;
.super Ljava/lang/Object;
.source "OsSharedRealm.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lio/realm/internal/NativeObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;,
        Lio/realm/internal/OsSharedRealm$InitializationCallback;,
        Lio/realm/internal/OsSharedRealm$MigrationCallback;,
        Lio/realm/internal/OsSharedRealm$VersionID;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field public static final FILE_EXCEPTION_INCOMPATIBLE_SYNC_FILE:B = 0x7t

.field public static final FILE_EXCEPTION_KIND_ACCESS_ERROR:B = 0x0t

.field public static final FILE_EXCEPTION_KIND_BAD_HISTORY:B = 0x1t

.field public static final FILE_EXCEPTION_KIND_EXISTS:B = 0x3t

.field public static final FILE_EXCEPTION_KIND_FORMAT_UPGRADE_REQUIRED:B = 0x6t

.field public static final FILE_EXCEPTION_KIND_INCOMPATIBLE_LOCK_FILE:B = 0x5t

.field public static final FILE_EXCEPTION_KIND_NOT_FOUND:B = 0x4t

.field public static final FILE_EXCEPTION_KIND_PERMISSION_DENIED:B = 0x2t

.field private static final nativeFinalizerPtr:J

.field private static final sharedRealmsUnderConstruction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/internal/OsSharedRealm;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile temporaryDirectory:Ljava/io/File;


# instance fields
.field public final capabilities:Lio/realm/internal/Capabilities;

.field final context:Lio/realm/internal/NativeContext;

.field final iterators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/OsResults$Iterator;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nativePtr:J

.field private final osRealmConfig:Lio/realm/internal/OsRealmConfig;

.field private final pendingRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/realm/internal/PendingRow;",
            ">;>;"
        }
    .end annotation
.end field

.field public final realmNotifier:Lio/realm/internal/RealmNotifier;

.field private final schemaInfo:Lio/realm/internal/OsSchemaInfo;

.field private final tempSharedRealmsForCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/realm/internal/OsSharedRealm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 141
    invoke-static {}, Lio/realm/internal/OsSharedRealm;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsSharedRealm;->nativeFinalizerPtr:J

    .line 156
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(JLio/realm/internal/OsRealmConfig;)V
    .registers 9
    .param p1, "nativeSharedRealmPtr"    # J
    .param p3, "osRealmConfig"    # Lio/realm/internal/OsRealmConfig;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    .line 201
    iput-wide p1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    .line 202
    iput-object p3, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    .line 203
    new-instance v0, Lio/realm/internal/OsSchemaInfo;

    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v1, v2}, Lio/realm/internal/OsSharedRealm;->nativeGetSchemaInfo(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p0}, Lio/realm/internal/OsSchemaInfo;-><init>(JLio/realm/internal/OsSharedRealm;)V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    .line 204
    invoke-virtual {p3}, Lio/realm/internal/OsRealmConfig;->getContext()Lio/realm/internal/NativeContext;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 205
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 207
    new-instance v0, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v0}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 210
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsSharedRealm;->nativeSetAutoRefresh(JZ)V

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "foundParentSharedRealm":Z
    sget-object v1, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/OsSharedRealm;

    .line 214
    .local v2, "sharedRealm":Lio/realm/internal/OsSharedRealm;
    iget-object v3, v2, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {p3}, Lio/realm/internal/OsRealmConfig;->getContext()Lio/realm/internal/NativeContext;

    move-result-object v4

    if-ne v3, v4, :cond_66

    .line 215
    const/4 v0, 0x1

    .line 216
    iget-object v1, v2, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    goto :goto_67

    .line 219
    .end local v2    # "sharedRealm":Lio/realm/internal/OsSharedRealm;
    :cond_66
    goto :goto_4b

    .line 220
    :cond_67
    :goto_67
    if-eqz v0, :cond_6a

    .line 223
    return-void

    .line 221
    :cond_6a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find the parent \'OsSharedRealm\' which is under construction."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>(Lio/realm/internal/OsRealmConfig;)V
    .registers 8
    .param p1, "osRealmConfig"    # Lio/realm/internal/OsRealmConfig;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    .line 164
    new-instance v0, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v0}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    .line 165
    .local v0, "capabilities":Lio/realm/internal/Capabilities;
    new-instance v1, Lio/realm/internal/android/AndroidRealmNotifier;

    invoke-direct {v1, p0, v0}, Lio/realm/internal/android/AndroidRealmNotifier;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Capabilities;)V

    .line 168
    .local v1, "realmNotifier":Lio/realm/internal/RealmNotifier;
    invoke-virtual {p1}, Lio/realm/internal/OsRealmConfig;->getContext()Lio/realm/internal/NativeContext;

    move-result-object v2

    iput-object v2, p0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    .line 169
    sget-object v2, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :try_start_2d
    invoke-virtual {p1}, Lio/realm/internal/OsRealmConfig;->getNativePtr()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lio/realm/internal/OsSharedRealm;->nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_37} :catch_66
    .catchall {:try_start_2d .. :try_end_37} :catchall_64

    .line 181
    iget-object v2, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 182
    sget-object v2, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 183
    nop

    .line 184
    iput-object p1, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    .line 185
    new-instance v2, Lio/realm/internal/OsSchemaInfo;

    iget-wide v3, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v3, v4}, Lio/realm/internal/OsSharedRealm;->nativeGetSchemaInfo(J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4, p0}, Lio/realm/internal/OsSchemaInfo;-><init>(JLio/realm/internal/OsSharedRealm;)V

    iput-object v2, p0, Lio/realm/internal/OsSharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    .line 186
    iget-object v2, p0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    invoke-virtual {v2, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 188
    iput-object v0, p0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    .line 189
    iput-object v1, p0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 190
    iget-wide v2, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-interface {v0}, Lio/realm/internal/Capabilities;->canDeliverNotification()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lio/realm/internal/OsSharedRealm;->nativeSetAutoRefresh(JZ)V

    .line 191
    return-void

    .line 181
    :catchall_64
    move-exception v2

    goto :goto_84

    .line 172
    :catch_66
    move-exception v2

    .line 174
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_67
    iget-object v3, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/internal/OsSharedRealm;

    .line 175
    .local v4, "sharedRealm":Lio/realm/internal/OsSharedRealm;
    invoke-virtual {v4}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v5

    if-nez v5, :cond_82

    .line 176
    invoke-virtual {v4}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 178
    .end local v4    # "sharedRealm":Lio/realm/internal/OsSharedRealm;
    :cond_82
    goto :goto_6d

    .line 179
    :cond_83
    throw v2
    :try_end_84
    .catchall {:try_start_67 .. :try_end_84} :catchall_64

    .line 181
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_84
    iget-object v3, p0, Lio/realm/internal/OsSharedRealm;->tempSharedRealmsForCallback:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 182
    sget-object v3, Lio/realm/internal/OsSharedRealm;->sharedRealmsUnderConstruction:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    throw v2
.end method

.method private detachIterators()V
    .registers 4

    .line 472
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 473
    .local v1, "iteratorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/realm/internal/OsResults$Iterator;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/OsResults$Iterator;

    .line 474
    .local v2, "iterator":Lio/realm/internal/OsResults$Iterator;
    if-eqz v2, :cond_1d

    .line 475
    invoke-virtual {v2}, Lio/realm/internal/OsResults$Iterator;->detach()V

    .line 477
    .end local v1    # "iteratorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/realm/internal/OsResults$Iterator;>;"
    .end local v2    # "iterator":Lio/realm/internal/OsResults$Iterator;
    :cond_1d
    goto :goto_6

    .line 478
    :cond_1e
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 479
    return-void
.end method

.method private executePendingRowQueries()V
    .registers 4

    .line 515
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 516
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/realm/internal/PendingRow;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/PendingRow;

    .line 517
    .local v2, "row":Lio/realm/internal/PendingRow;
    if-eqz v2, :cond_1d

    .line 518
    invoke-virtual {v2}, Lio/realm/internal/PendingRow;->executeQuery()V

    .line 520
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/realm/internal/PendingRow;>;"
    .end local v2    # "row":Lio/realm/internal/PendingRow;
    :cond_1d
    goto :goto_6

    .line 521
    :cond_1e
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 522
    return-void
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;)Lio/realm/internal/OsSharedRealm;
    .registers 3
    .param p0, "config"    # Lio/realm/RealmConfiguration;

    .line 230
    new-instance v0, Lio/realm/internal/OsRealmConfig$Builder;

    invoke-direct {v0, p0}, Lio/realm/internal/OsRealmConfig$Builder;-><init>(Lio/realm/RealmConfiguration;)V

    .line 231
    .local v0, "builder":Lio/realm/internal/OsRealmConfig$Builder;
    invoke-static {v0}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/internal/OsRealmConfig$Builder;)Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Lio/realm/internal/OsRealmConfig$Builder;)Lio/realm/internal/OsSharedRealm;
    .registers 3
    .param p0, "configBuilder"    # Lio/realm/internal/OsRealmConfig$Builder;

    .line 238
    invoke-virtual {p0}, Lio/realm/internal/OsRealmConfig$Builder;->build()Lio/realm/internal/OsRealmConfig;

    move-result-object v0

    .line 239
    .local v0, "osRealmConfig":Lio/realm/internal/OsRealmConfig;
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/ObjectServerFacade;->wrapObjectStoreSessionIfRequired(Lio/realm/internal/OsRealmConfig;)V

    .line 241
    new-instance v1, Lio/realm/internal/OsSharedRealm;

    invoke-direct {v1, v0}, Lio/realm/internal/OsSharedRealm;-><init>(Lio/realm/internal/OsRealmConfig;)V

    return-object v1
.end method

.method public static getTemporaryDirectory()Ljava/io/File;
    .registers 1

    .line 263
    sget-object v0, Lio/realm/internal/OsSharedRealm;->temporaryDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static initialize(Ljava/io/File;)V
    .registers 5
    .param p0, "tempDirectory"    # Ljava/io/File;

    .line 245
    sget-object v0, Lio/realm/internal/OsSharedRealm;->temporaryDirectory:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 247
    return-void

    .line 250
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "temporaryDirectoryPath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_33

    .line 252
    :cond_1c
    new-instance v1, Lio/realm/internal/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create temporary directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/internal/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_33
    :goto_33
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_4c
    invoke-static {v0}, Lio/realm/internal/OsSharedRealm;->nativeInit(Ljava/lang/String;)V

    .line 259
    sput-object p0, Lio/realm/internal/OsSharedRealm;->temporaryDirectory:Ljava/io/File;

    .line 260
    return-void
.end method

.method private static native nativeBeginTransaction(J)V
.end method

.method private static native nativeCancelTransaction(J)V
.end method

.method private static native nativeCloseSharedRealm(J)V
.end method

.method private static native nativeCommitTransaction(J)V
.end method

.method private static native nativeCompact(J)Z
.end method

.method private static native nativeCreateTable(JLjava/lang/String;)J
.end method

.method private static native nativeCreateTableWithPrimaryKeyField(JLjava/lang/String;Ljava/lang/String;ZZ)J
.end method

.method private static native nativeGetClassPrivileges(JLjava/lang/String;)I
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetObjectPrivileges(JJ)I
.end method

.method private static native nativeGetRealmPrivileges(J)I
.end method

.method private static native nativeGetSchemaInfo(J)J
.end method

.method private static native nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J
.end method

.method private static native nativeGetTable(JLjava/lang/String;)J
.end method

.method private static native nativeGetTableName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetVersionID(J)[J
.end method

.method private static native nativeHasTable(JLjava/lang/String;)Z
.end method

.method private static native nativeInit(Ljava/lang/String;)V
.end method

.method private static native nativeIsAutoRefresh(J)Z
.end method

.method private static native nativeIsClosed(J)Z
.end method

.method private static native nativeIsEmpty(J)Z
.end method

.method private static native nativeIsInTransaction(J)Z
.end method

.method private static native nativeIsPartial(J)Z
.end method

.method private static native nativeRefresh(J)V
.end method

.method private static native nativeRegisterSchemaChangedCallback(JLio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V
.end method

.method private static native nativeRenameTable(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetAutoRefresh(JZ)V
.end method

.method private static native nativeSize(J)J
.end method

.method private static native nativeStopWaitForChange(J)V
.end method

.method private static native nativeWaitForChange(J)Z
.end method

.method private static native nativeWriteCopy(JLjava/lang/String;[B)V
    .param p3    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static runInitializationCallback(JLio/realm/internal/OsRealmConfig;Lio/realm/internal/OsSharedRealm$InitializationCallback;)V
    .registers 5
    .param p0, "nativeSharedRealmPtr"    # J
    .param p2, "osRealmConfig"    # Lio/realm/internal/OsRealmConfig;
    .param p3, "callback"    # Lio/realm/internal/OsSharedRealm$InitializationCallback;

    .line 544
    new-instance v0, Lio/realm/internal/OsSharedRealm;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsSharedRealm;-><init>(JLio/realm/internal/OsRealmConfig;)V

    invoke-interface {p3, v0}, Lio/realm/internal/OsSharedRealm$InitializationCallback;->onInit(Lio/realm/internal/OsSharedRealm;)V

    .line 545
    return-void
.end method

.method private static runMigrationCallback(JLio/realm/internal/OsRealmConfig;Lio/realm/internal/OsSharedRealm$MigrationCallback;J)V
    .registers 12
    .param p0, "nativeSharedRealmPtr"    # J
    .param p2, "osRealmConfig"    # Lio/realm/internal/OsRealmConfig;
    .param p3, "callback"    # Lio/realm/internal/OsSharedRealm$MigrationCallback;
    .param p4, "oldVersion"    # J

    .line 533
    new-instance v1, Lio/realm/internal/OsSharedRealm;

    invoke-direct {v1, p0, p1, p2}, Lio/realm/internal/OsSharedRealm;-><init>(JLio/realm/internal/OsRealmConfig;)V

    .line 534
    invoke-virtual {p2}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v4

    .line 533
    move-object v0, p3

    move-wide v2, p4

    invoke-interface/range {v0 .. v5}, Lio/realm/internal/OsSharedRealm$MigrationCallback;->onMigrationNeeded(Lio/realm/internal/OsSharedRealm;JJ)V

    .line 535
    return-void
.end method


# virtual methods
.method addIterator(Lio/realm/internal/OsResults$Iterator;)V
    .registers 4
    .param p1, "iterator"    # Lio/realm/internal/OsResults$Iterator;

    .line 467
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method addPendingRow(Lio/realm/internal/PendingRow;)V
    .registers 4
    .param p1, "pendingRow"    # Lio/realm/internal/PendingRow;

    .line 500
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method public beginTransaction()V
    .registers 3

    .line 267
    invoke-direct {p0}, Lio/realm/internal/OsSharedRealm;->detachIterators()V

    .line 268
    invoke-direct {p0}, Lio/realm/internal/OsSharedRealm;->executePendingRowQueries()V

    .line 269
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeBeginTransaction(J)V

    .line 270
    return-void
.end method

.method public cancelTransaction()V
    .registers 3

    .line 277
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeCancelTransaction(J)V

    .line 278
    return-void
.end method

.method public close()V
    .registers 4

    .line 410
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    if-eqz v0, :cond_9

    .line 411
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0}, Lio/realm/internal/RealmNotifier;->close()V

    .line 413
    :cond_9
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    monitor-enter v0

    .line 414
    :try_start_c
    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v1, v2}, Lio/realm/internal/OsSharedRealm;->nativeCloseSharedRealm(J)V

    .line 417
    monitor-exit v0

    .line 418
    return-void

    .line 417
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1
.end method

.method public commitTransaction()V
    .registers 3

    .line 273
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeCommitTransaction(J)V

    .line 274
    return-void
.end method

.method public compact()Z
    .registers 3

    .line 392
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeCompact(J)Z

    move-result v0

    return v0
.end method

.method public createTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 308
    new-instance v0, Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsSharedRealm;->nativeCreateTable(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    return-object v0
.end method

.method public createTableWithPrimaryKey(Ljava/lang/String;Ljava/lang/String;ZZ)Lio/realm/internal/Table;
    .registers 12
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "primaryKeyFieldName"    # Ljava/lang/String;
    .param p3, "isStringType"    # Z
    .param p4, "isNullable"    # Z

    .line 324
    new-instance v0, Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsSharedRealm;->nativeCreateTableWithPrimaryKeyField(JLjava/lang/String;Ljava/lang/String;ZZ)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    return-object v0
.end method

.method public getClassPrivileges(Ljava/lang/String;)I
    .registers 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation build Lio/realm/internal/annotations/ObjectServer;
    .end annotation

    .line 364
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeGetClassPrivileges(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getConfiguration()Lio/realm/RealmConfiguration;
    .registers 2

    .line 405
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    invoke-virtual {v0}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .registers 3

    .line 427
    sget-wide v0, Lio/realm/internal/OsSharedRealm;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .registers 3

    .line 422
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    return-wide v0
.end method

.method public getObjectPrivileges(Lio/realm/internal/UncheckedRow;)I
    .registers 6
    .param p1, "row"    # Lio/realm/internal/UncheckedRow;
    .annotation build Lio/realm/internal/annotations/ObjectServer;
    .end annotation

    .line 369
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsSharedRealm;->nativeGetObjectPrivileges(JJ)I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    invoke-virtual {v0}, Lio/realm/internal/OsRealmConfig;->getRealmConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivileges()I
    .registers 3
    .annotation build Lio/realm/internal/annotations/ObjectServer;
    .end annotation

    .line 359
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeGetRealmPrivileges(J)I

    move-result v0

    return v0
.end method

.method public getSchemaInfo()Lio/realm/internal/OsSchemaInfo;
    .registers 2

    .line 434
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->schemaInfo:Lio/realm/internal/OsSchemaInfo;

    return-object v0
.end method

.method public getTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 296
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeGetTable(JLjava/lang/String;)J

    move-result-wide v0

    .line 297
    .local v0, "tablePtr":J
    new-instance v2, Lio/realm/internal/Table;

    invoke-direct {v2, p0, v0, v1}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    return-object v2
.end method

.method public getTableName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 333
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeGetTableName(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;
    .registers 7

    .line 353
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeGetVersionID(J)[J

    move-result-object v0

    .line 354
    .local v0, "versionId":[J
    new-instance v1, Lio/realm/internal/OsSharedRealm$VersionID;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lio/realm/internal/OsSharedRealm$VersionID;-><init>(JJ)V

    return-object v1
.end method

.method public hasTable(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 285
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeHasTable(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method invalidateIterators()V
    .registers 4

    .line 483
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 484
    .local v1, "iteratorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/realm/internal/OsResults$Iterator;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/OsResults$Iterator;

    .line 485
    .local v2, "iterator":Lio/realm/internal/OsResults$Iterator;
    if-eqz v2, :cond_1d

    .line 486
    invoke-virtual {v2}, Lio/realm/internal/OsResults$Iterator;->invalidate()V

    .line 488
    .end local v1    # "iteratorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/realm/internal/OsResults$Iterator;>;"
    .end local v2    # "iterator":Lio/realm/internal/OsResults$Iterator;
    :cond_1d
    goto :goto_6

    .line 489
    :cond_1e
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 490
    return-void
.end method

.method public isAutoRefresh()Z
    .registers 3

    .line 401
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsAutoRefresh(J)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 3

    .line 373
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsClosed(J)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 345
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public isInTransaction()Z
    .registers 3

    .line 281
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsInTransaction(J)Z

    move-result v0

    return v0
.end method

.method public isPartial()Z
    .registers 3

    .line 451
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeIsPartial(J)Z

    move-result v0

    return v0
.end method

.method public isSyncRealm()Z
    .registers 2

    .line 459
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->osRealmConfig:Lio/realm/internal/OsRealmConfig;

    invoke-virtual {v0}, Lio/realm/internal/OsRealmConfig;->getResolvedRealmURI()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public refresh()V
    .registers 3

    .line 349
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeRefresh(J)V

    .line 350
    return-void
.end method

.method public registerSchemaChangedCallback(Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V
    .registers 4
    .param p1, "callback"    # Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    .line 444
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeRegisterSchemaChangedCallback(JLio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V

    .line 445
    return-void
.end method

.method removePendingRow(Lio/realm/internal/PendingRow;)V
    .registers 6
    .param p1, "pendingRow"    # Lio/realm/internal/PendingRow;

    .line 505
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 506
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/realm/internal/PendingRow;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/PendingRow;

    .line 507
    .local v2, "row":Lio/realm/internal/PendingRow;
    if-eqz v2, :cond_1c

    if-ne v2, p1, :cond_21

    .line 508
    :cond_1c
    iget-object v3, p0, Lio/realm/internal/OsSharedRealm;->pendingRows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 510
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/realm/internal/PendingRow;>;"
    .end local v2    # "row":Lio/realm/internal/PendingRow;
    :cond_21
    goto :goto_6

    .line 511
    :cond_22
    return-void
.end method

.method public renameTable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 329
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsSharedRealm;->nativeRenameTable(JLjava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public setAutoRefresh(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 396
    iget-object v0, p0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 397
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsSharedRealm;->nativeSetAutoRefresh(JZ)V

    .line 398
    return-void
.end method

.method public size()J
    .registers 3

    .line 337
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public stopWaitForChange()V
    .registers 3

    .line 388
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeStopWaitForChange(J)V

    .line 389
    return-void
.end method

.method public waitForChange()Z
    .registers 3

    .line 384
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSharedRealm;->nativeWaitForChange(J)Z

    move-result v0

    return v0
.end method

.method public writeCopy(Ljava/io/File;[B)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "key"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 377
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_15

    .line 378
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The destination file must not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_15
    :goto_15
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm;->nativePtr:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lio/realm/internal/OsSharedRealm;->nativeWriteCopy(JLjava/lang/String;[B)V

    .line 381
    return-void
.end method

###### Class io.realm.internal.OsSharedRealm.InitializationCallback (io.realm.internal.OsSharedRealm$InitializationCallback)
.class public interface abstract Lio/realm/internal/OsSharedRealm$InitializationCallback;
.super Ljava/lang/Object;
.source "OsSharedRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsSharedRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InitializationCallback"
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# virtual methods
.method public abstract onInit(Lio/realm/internal/OsSharedRealm;)V
.end method

###### Class io.realm.internal.OsSharedRealm.MigrationCallback (io.realm.internal.OsSharedRealm$MigrationCallback)
.class public interface abstract Lio/realm/internal/OsSharedRealm$MigrationCallback;
.super Ljava/lang/Object;
.source "OsSharedRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsSharedRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MigrationCallback"
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# virtual methods
.method public abstract onMigrationNeeded(Lio/realm/internal/OsSharedRealm;JJ)V
.end method

###### Class io.realm.internal.OsSharedRealm.SchemaChangedCallback (io.realm.internal.OsSharedRealm$SchemaChangedCallback)
.class public interface abstract Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;
.super Ljava/lang/Object;
.source "OsSharedRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsSharedRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SchemaChangedCallback"
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# virtual methods
.method public abstract onSchemaChanged()V
.end method

###### Class io.realm.internal.OsSharedRealm.VersionID (io.realm.internal.OsSharedRealm$VersionID)
.class public Lio/realm/internal/OsSharedRealm$VersionID;
.super Ljava/lang/Object;
.source "OsSharedRealm.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsSharedRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/realm/internal/OsSharedRealm$VersionID;",
        ">;"
    }
.end annotation


# instance fields
.field public final index:J

.field public final version:J


# direct methods
.method constructor <init>(JJ)V
    .registers 5
    .param p1, "version"    # J
    .param p3, "index"    # J

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    .line 45
    iput-wide p3, p0, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    .line 46
    return-void
.end method


# virtual methods
.method public compareTo(Lio/realm/internal/OsSharedRealm$VersionID;)I
    .registers 7
    .param p1, "another"    # Lio/realm/internal/OsSharedRealm$VersionID;

    .line 51
    if-eqz p1, :cond_18

    .line 54
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    iget-wide v2, p1, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_c

    .line 55
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_c
    iget-wide v0, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    iget-wide v2, p1, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_16

    .line 57
    const/4 v0, -0x1

    return v0

    .line 59
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version cannot be compared to a null value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 39
    check-cast p1, Lio/realm/internal/OsSharedRealm$VersionID;

    invoke-virtual {p0, p1}, Lio/realm/internal/OsSharedRealm$VersionID;->compareTo(Lio/realm/internal/OsSharedRealm$VersionID;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "object"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 74
    return v0

    .line 76
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 80
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/internal/OsSharedRealm$VersionID;

    .line 81
    .local v2, "versionID":Lio/realm/internal/OsSharedRealm$VersionID;
    iget-wide v3, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    iget-wide v5, v2, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_26

    iget-wide v3, p0, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    iget-wide v5, v2, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    .line 77
    .end local v2    # "versionID":Lio/realm/internal/OsSharedRealm$VersionID;
    :cond_28
    :goto_28
    return v1
.end method

.method public hashCode()I
    .registers 8

    .line 86
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 87
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    iget-wide v4, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 88
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    iget-wide v4, p0, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 89
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VersionID{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm$VersionID;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/realm/internal/OsSharedRealm$VersionID;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
