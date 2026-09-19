###### Class io.realm.DynamicRealm (io.realm.DynamicRealm)
.class public Lio/realm/DynamicRealm;
.super Lio/realm/BaseRealm;
.source "DynamicRealm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/DynamicRealm$Callback;,
        Lio/realm/DynamicRealm$Transaction;
    }
.end annotation


# instance fields
.field private final schema:Lio/realm/RealmSchema;


# direct methods
.method private constructor <init>(Lio/realm/RealmCache;)V
    .registers 4
    .param p1, "cache"    # Lio/realm/RealmCache;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/realm/BaseRealm;-><init>(Lio/realm/RealmCache;Lio/realm/internal/OsSchemaInfo;)V

    .line 61
    invoke-virtual {p1}, Lio/realm/RealmCache;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    new-instance v1, Lio/realm/DynamicRealm$1;

    invoke-direct {v1, p0, p1}, Lio/realm/DynamicRealm$1;-><init>(Lio/realm/DynamicRealm;Lio/realm/RealmCache;)V

    invoke-static {v0, v1}, Lio/realm/RealmCache;->invokeWithGlobalRefCount(Lio/realm/RealmConfiguration;Lio/realm/RealmCache$Callback;)V

    .line 81
    new-instance v0, Lio/realm/MutableRealmSchema;

    invoke-direct {v0, p0}, Lio/realm/MutableRealmSchema;-><init>(Lio/realm/BaseRealm;)V

    iput-object v0, p0, Lio/realm/DynamicRealm;->schema:Lio/realm/RealmSchema;

    .line 82
    return-void
.end method

.method private constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .registers 3
    .param p1, "sharedRealm"    # Lio/realm/internal/OsSharedRealm;

    .line 85
    invoke-direct {p0, p1}, Lio/realm/BaseRealm;-><init>(Lio/realm/internal/OsSharedRealm;)V

    .line 86
    new-instance v0, Lio/realm/MutableRealmSchema;

    invoke-direct {v0, p0}, Lio/realm/MutableRealmSchema;-><init>(Lio/realm/BaseRealm;)V

    iput-object v0, p0, Lio/realm/DynamicRealm;->schema:Lio/realm/RealmSchema;

    .line 87
    return-void
.end method

.method static createInstance(Lio/realm/RealmCache;)Lio/realm/DynamicRealm;
    .registers 2
    .param p0, "cache"    # Lio/realm/RealmCache;

    .line 276
    new-instance v0, Lio/realm/DynamicRealm;

    invoke-direct {v0, p0}, Lio/realm/DynamicRealm;-><init>(Lio/realm/RealmCache;)V

    return-object v0
.end method

.method static createInstance(Lio/realm/internal/OsSharedRealm;)Lio/realm/DynamicRealm;
    .registers 2
    .param p0, "sharedRealm"    # Lio/realm/internal/OsSharedRealm;

    .line 287
    new-instance v0, Lio/realm/DynamicRealm;

    invoke-direct {v0, p0}, Lio/realm/DynamicRealm;-><init>(Lio/realm/internal/OsSharedRealm;)V

    return-object v0
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;
    .registers 3
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;

    .line 101
    if-eqz p0, :cond_b

    .line 104
    const-class v0, Lio/realm/DynamicRealm;

    invoke-static {p0, v0}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/DynamicRealm;

    return-object v0

    .line 102
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstanceAsync(Lio/realm/RealmConfiguration;Lio/realm/DynamicRealm$Callback;)Lio/realm/RealmAsyncTask;
    .registers 4
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;
    .param p1, "callback"    # Lio/realm/DynamicRealm$Callback;

    .line 123
    if-eqz p0, :cond_9

    .line 126
    const-class v0, Lio/realm/DynamicRealm;

    invoke-static {p0, p1, v0}, Lio/realm/RealmCache;->createRealmOrGetFromCacheAsync(Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0

    .line 124
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/DynamicRealm;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/DynamicRealm;>;"
    invoke-virtual {p0, p1}, Lio/realm/DynamicRealm;->addListener(Lio/realm/RealmChangeListener;)V

    .line 202
    return-void
.end method

.method public asFlowable()Lio/reactivex/Flowable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lio/realm/DynamicRealm;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lio/realm/DynamicRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/DynamicRealm;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic beginTransaction()V
    .registers 1

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->beginTransaction()V

    return-void
.end method

.method public bridge synthetic cancelTransaction()V
    .registers 1

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->cancelTransaction()V

    return-void
.end method

.method public bridge synthetic close()V
    .registers 1

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->close()V

    return-void
.end method

.method public bridge synthetic commitTransaction()V
    .registers 1

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->commitTransaction()V

    return-void
.end method

.method public createObject(Ljava/lang/String;)Lio/realm/DynamicRealmObject;
    .registers 8
    .param p1, "className"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lio/realm/DynamicRealm;->checkIfValid()V

    .line 138
    iget-object v0, p0, Lio/realm/DynamicRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 139
    .local v0, "table":Lio/realm/internal/Table;
    iget-object v1, p0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v1, p1}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "pkField":Ljava/lang/String;
    if-nez v1, :cond_1f

    .line 147
    new-instance v2, Lio/realm/DynamicRealmObject;

    invoke-static {v0}, Lio/realm/internal/OsObject;->create(Lio/realm/internal/Table;)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-static {v3}, Lio/realm/internal/CheckedRow;->getFromRow(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    return-object v2

    .line 142
    :cond_1f
    new-instance v2, Lio/realm/exceptions/RealmException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const-string v5, "\'%s\' has a primary key field \'%s\', use  \'createObject(String, Object)\' instead."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createObject(Ljava/lang/String;Ljava/lang/Object;)Lio/realm/DynamicRealmObject;
    .registers 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "primaryKeyValue"    # Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lio/realm/DynamicRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 163
    .local v0, "table":Lio/realm/internal/Table;
    new-instance v1, Lio/realm/DynamicRealmObject;

    .line 164
    invoke-static {v0, p2}, Lio/realm/internal/OsObject;->createWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-static {v2}, Lio/realm/internal/CheckedRow;->getFromRow(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/realm/DynamicRealmObject;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/Row;)V

    .line 163
    return-object v1
.end method

.method public delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "className"    # Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lio/realm/DynamicRealm;->checkIfValid()V

    .line 235
    invoke-virtual {p0}, Lio/realm/DynamicRealm;->checkIfInTransaction()V

    .line 236
    iget-object v0, p0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isPartial()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 239
    iget-object v0, p0, Lio/realm/DynamicRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->isPartial()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->clear(Z)V

    .line 240
    return-void

    .line 237
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API is not supported by partially synchronized Realms. Either unsubscribe using \'Realm.unsubscribeAsync()\' or delete the objects using a query and \'RealmResults.deleteAllFromRealm()\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic deleteAll()V
    .registers 1

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->deleteAll()V

    return-void
.end method

.method public executeTransaction(Lio/realm/DynamicRealm$Transaction;)V
    .registers 5
    .param p1, "transaction"    # Lio/realm/DynamicRealm$Transaction;

    .line 252
    if-eqz p1, :cond_21

    .line 256
    invoke-virtual {p0}, Lio/realm/DynamicRealm;->beginTransaction()V

    .line 258
    :try_start_5
    invoke-interface {p1, p0}, Lio/realm/DynamicRealm$Transaction;->execute(Lio/realm/DynamicRealm;)V

    .line 259
    invoke-virtual {p0}, Lio/realm/DynamicRealm;->commitTransaction()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b} :catch_d

    .line 267
    nop

    .line 268
    return-void

    .line 260
    :catch_d
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lio/realm/DynamicRealm;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 262
    invoke-virtual {p0}, Lio/realm/DynamicRealm;->cancelTransaction()V

    goto :goto_20

    .line 264
    :cond_18
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not cancel transaction, not currently in a transaction."

    invoke-static {v2, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :goto_20
    throw v0

    .line 253
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transaction should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getConfiguration()Lio/realm/RealmConfiguration;
    .registers 2

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPath()Ljava/lang/String;
    .registers 2

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivileges(Ljava/lang/String;)Lio/realm/sync/permissions/ClassPrivileges;
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation build Lio/realm/internal/annotations/ObjectServer;
    .end annotation

    .line 367
    invoke-virtual {p0}, Lio/realm/DynamicRealm;->checkIfValid()V

    .line 369
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 372
    iget-object v0, p0, Lio/realm/DynamicRealm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 375
    new-instance v0, Lio/realm/sync/permissions/ClassPrivileges;

    iget-object v1, p0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1, p1}, Lio/realm/internal/OsSharedRealm;->getClassPrivileges(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lio/realm/sync/permissions/ClassPrivileges;-><init>(J)V

    return-object v0

    .line 373
    :cond_1e
    new-instance v0, Lio/realm/exceptions/RealmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not part of the schema for this Realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty \'className\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getPrivileges(Lio/realm/RealmModel;)Lio/realm/sync/permissions/ObjectPrivileges;
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lio/realm/BaseRealm;->getPrivileges(Lio/realm/RealmModel;)Lio/realm/sync/permissions/ObjectPrivileges;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPrivileges()Lio/realm/sync/permissions/RealmPrivileges;
    .registers 2
    .annotation build Lio/realm/internal/annotations/ObjectServer;
    .end annotation

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->getPrivileges()Lio/realm/sync/permissions/RealmPrivileges;

    move-result-object v0

    return-object v0
.end method

.method public getSchema()Lio/realm/RealmSchema;
    .registers 2

    .line 385
    iget-object v0, p0, Lio/realm/DynamicRealm;->schema:Lio/realm/RealmSchema;

    return-object v0
.end method

.method public bridge synthetic getVersion()J
    .registers 3

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->getVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic isAutoRefresh()Z
    .registers 2

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->isAutoRefresh()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isClosed()Z
    .registers 2

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTransaction()Z
    .registers 2

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic refresh()V
    .registers 1

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->refresh()V

    return-void
.end method

.method public removeAllChangeListeners()V
    .registers 1

    .line 223
    invoke-virtual {p0}, Lio/realm/DynamicRealm;->removeAllListeners()V

    .line 224
    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/DynamicRealm;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/DynamicRealm;>;"
    invoke-virtual {p0, p1}, Lio/realm/DynamicRealm;->removeListener(Lio/realm/RealmChangeListener;)V

    .line 214
    return-void
.end method

.method public bridge synthetic setAutoRefresh(Z)V
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lio/realm/BaseRealm;->setAutoRefresh(Z)V

    return-void
.end method

.method setVersion(J)V
    .registers 4
    .param p1, "version"    # J

    .line 398
    iget-object v0, p0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v0, p1, p2}, Lio/realm/internal/OsObjectStore;->setSchemaVersion(Lio/realm/internal/OsSharedRealm;J)V

    .line 399
    return-void
.end method

.method public bridge synthetic stopWaitForChange()V
    .registers 1

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->stopWaitForChange()V

    return-void
.end method

.method public bridge synthetic waitForChange()Z
    .registers 2

    .line 55
    invoke-super {p0}, Lio/realm/BaseRealm;->waitForChange()Z

    move-result v0

    return v0
.end method

.method public where(Ljava/lang/String;)Lio/realm/RealmQuery;
    .registers 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "Lio/realm/DynamicRealmObject;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lio/realm/DynamicRealm;->checkIfValid()V

    .line 177
    iget-object v0, p0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {p1}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 180
    invoke-static {p0, p1}, Lio/realm/RealmQuery;->createDynamicQuery(Lio/realm/DynamicRealm;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0

    .line 178
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class does not exist in the Realm and cannot be queried: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic writeCopyTo(Ljava/io/File;)V
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lio/realm/BaseRealm;->writeCopyTo(Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic writeEncryptedCopyTo(Ljava/io/File;[B)V
    .registers 3

    .line 55
    invoke-super {p0, p1, p2}, Lio/realm/BaseRealm;->writeEncryptedCopyTo(Ljava/io/File;[B)V

    return-void
.end method

###### Class io.realm.DynamicRealm.AnonymousClass1 (io.realm.DynamicRealm$1)
.class Lio/realm/DynamicRealm$1;
.super Ljava/lang/Object;
.source "DynamicRealm.java"

# interfaces
.implements Lio/realm/RealmCache$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/DynamicRealm;-><init>(Lio/realm/RealmCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/DynamicRealm;

.field final synthetic val$cache:Lio/realm/RealmCache;


# direct methods
.method constructor <init>(Lio/realm/DynamicRealm;Lio/realm/RealmCache;)V
    .registers 3
    .param p1, "this$0"    # Lio/realm/DynamicRealm;

    .line 61
    iput-object p1, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iput-object p2, p0, Lio/realm/DynamicRealm$1;->val$cache:Lio/realm/RealmCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .registers 7
    .param p1, "count"    # I

    .line 64
    if-lez p1, :cond_3

    .line 65
    return-void

    .line 67
    :cond_3
    iget-object v0, p0, Lio/realm/DynamicRealm$1;->val$cache:Lio/realm/RealmCache;

    invoke-virtual {v0}, Lio/realm/RealmCache;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 68
    return-void

    .line 70
    :cond_10
    iget-object v0, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iget-object v0, v0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v0}, Lio/realm/internal/OsObjectStore;->getSchemaVersion(Lio/realm/internal/OsSharedRealm;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1f

    .line 71
    return-void

    .line 73
    :cond_1f
    iget-object v0, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iget-object v0, v0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->beginTransaction()V

    .line 74
    iget-object v0, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iget-object v0, v0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v0}, Lio/realm/internal/OsObjectStore;->getSchemaVersion(Lio/realm/internal/OsSharedRealm;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_39

    .line 76
    iget-object v0, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iget-object v0, v0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v0, v2, v3}, Lio/realm/internal/OsObjectStore;->setSchemaVersion(Lio/realm/internal/OsSharedRealm;J)V

    .line 78
    :cond_39
    iget-object v0, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iget-object v0, v0, Lio/realm/DynamicRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->commitTransaction()V

    .line 79
    return-void
.end method

###### Class io.realm.DynamicRealm.Callback (io.realm.DynamicRealm$Callback)
.class public abstract Lio/realm/DynamicRealm$Callback;
.super Lio/realm/BaseRealm$InstanceCallback;
.source "DynamicRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/DynamicRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/BaseRealm$InstanceCallback<",
        "Lio/realm/DynamicRealm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 415
    invoke-direct {p0}, Lio/realm/BaseRealm$InstanceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 427
    invoke-super {p0, p1}, Lio/realm/BaseRealm$InstanceCallback;->onError(Ljava/lang/Throwable;)V

    .line 428
    return-void
.end method

.method public bridge synthetic onSuccess(Lio/realm/BaseRealm;)V
    .registers 2

    .line 415
    check-cast p1, Lio/realm/DynamicRealm;

    invoke-virtual {p0, p1}, Lio/realm/DynamicRealm$Callback;->onSuccess(Lio/realm/DynamicRealm;)V

    return-void
.end method

.method public abstract onSuccess(Lio/realm/DynamicRealm;)V
.end method

###### Class io.realm.DynamicRealm.Transaction (io.realm.DynamicRealm$Transaction)
.class public interface abstract Lio/realm/DynamicRealm$Transaction;
.super Ljava/lang/Object;
.source "DynamicRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/DynamicRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Transaction"
.end annotation


# virtual methods
.method public abstract execute(Lio/realm/DynamicRealm;)V
.end method
