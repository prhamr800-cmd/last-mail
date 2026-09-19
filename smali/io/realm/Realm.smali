###### Class io.realm.Realm (io.realm.Realm)
.class public Lio/realm/Realm;
.super Lio/realm/BaseRealm;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/Realm$Callback;,
        Lio/realm/Realm$UnsubscribeCallback;,
        Lio/realm/Realm$Transaction;
    }
.end annotation


# static fields
.field public static final DEFAULT_REALM_NAME:Ljava/lang/String; = "default.realm"

.field private static final NULL_CONFIG_MSG:Ljava/lang/String; = "A non-null RealmConfiguration must be provided"

.field private static defaultConfiguration:Lio/realm/RealmConfiguration;

.field private static final defaultConfigurationLock:Ljava/lang/Object;


# instance fields
.field private final schema:Lio/realm/RealmSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/realm/Realm;->defaultConfigurationLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lio/realm/RealmCache;)V
    .registers 12
    .param p1, "cache"    # Lio/realm/RealmCache;

    .line 164
    invoke-virtual {p1}, Lio/realm/RealmCache;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-static {v0}, Lio/realm/Realm;->createExpectedSchemaInfo(Lio/realm/internal/RealmProxyMediator;)Lio/realm/internal/OsSchemaInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/realm/BaseRealm;-><init>(Lio/realm/RealmCache;Lio/realm/internal/OsSchemaInfo;)V

    .line 165
    new-instance v0, Lio/realm/ImmutableRealmSchema;

    new-instance v1, Lio/realm/internal/ColumnIndices;

    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    .line 166
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    iget-object v3, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/realm/internal/ColumnIndices;-><init>(Lio/realm/internal/RealmProxyMediator;Lio/realm/internal/OsSchemaInfo;)V

    invoke-direct {v0, p0, v1}, Lio/realm/ImmutableRealmSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/ColumnIndices;)V

    iput-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    .line 171
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 172
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    .line 173
    .local v0, "mediator":Lio/realm/internal/RealmProxyMediator;
    invoke-virtual {v0}, Lio/realm/internal/RealmProxyMediator;->getModelClasses()Ljava/util/Set;

    move-result-object v1

    .line 174
    .local v1, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lio/realm/RealmModel;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 175
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    invoke-virtual {v0, v3}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/Table;->getTableNameForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "tableName":Ljava/lang/String;
    iget-object v5, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v5, v4}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 182
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    .end local v4    # "tableName":Ljava/lang/String;
    goto :goto_3d

    .line 177
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    .restart local v4    # "tableName":Ljava/lang/String;
    :cond_5a
    iget-object v2, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 178
    new-instance v2, Lio/realm/exceptions/RealmMigrationNeededException;

    iget-object v5, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v5}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 180
    invoke-static {v4}, Lio/realm/internal/Table;->getClassNameForTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 179
    const-string v8, "Cannot open the read only Realm. \'%s\' is missing."

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 184
    .end local v0    # "mediator":Lio/realm/internal/RealmProxyMediator;
    .end local v1    # "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lio/realm/RealmModel;>;>;"
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    .end local v4    # "tableName":Ljava/lang/String;
    :cond_7d
    return-void
.end method

.method private constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .registers 6
    .param p1, "sharedRealm"    # Lio/realm/internal/OsSharedRealm;

    .line 187
    invoke-direct {p0, p1}, Lio/realm/BaseRealm;-><init>(Lio/realm/internal/OsSharedRealm;)V

    .line 188
    new-instance v0, Lio/realm/ImmutableRealmSchema;

    new-instance v1, Lio/realm/internal/ColumnIndices;

    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    .line 189
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/realm/internal/ColumnIndices;-><init>(Lio/realm/internal/RealmProxyMediator;Lio/realm/internal/OsSchemaInfo;)V

    invoke-direct {v0, p0, v1}, Lio/realm/ImmutableRealmSchema;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/ColumnIndices;)V

    iput-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    .line 190
    return-void
.end method

.method private static checkFilesDirAvailable(Landroid/content/Context;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 284
    .local v0, "filesDir":Ljava/io/File;
    if-eqz v0, :cond_12

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 286
    return-void

    .line 292
    :cond_d
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_10} :catch_11

    .line 294
    goto :goto_12

    .line 293
    :catch_11
    move-exception v1

    .line 297
    :cond_12
    :goto_12
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_49

    .line 302
    :cond_1a
    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_7c

    .line 303
    .local v1, "timeoutsMs":[J
    const-wide/16 v2, 0xc8

    .line 304
    .local v2, "maxTotalWaitMs":J
    const-wide/16 v4, 0x0

    .line 305
    .local v4, "currentTotalWaitMs":J
    const/4 v6, -0x1

    .line 306
    .local v6, "waitIndex":I
    :goto_25
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_35

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_49

    .line 307
    :cond_35
    add-int/lit8 v6, v6, 0x1

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    aget-wide v7, v1, v7

    .line 308
    .local v7, "waitMs":J
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 309
    add-long/2addr v4, v7

    .line 310
    cmp-long v9, v4, v2

    if-lez v9, :cond_7a

    .line 311
    nop

    .line 317
    .end local v1    # "timeoutsMs":[J
    .end local v2    # "maxTotalWaitMs":J
    .end local v4    # "currentTotalWaitMs":J
    .end local v6    # "waitIndex":I
    .end local v7    # "waitMs":J
    :cond_49
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 320
    return-void

    .line 318
    :cond_5a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Context.getFilesDir() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which is not an existing directory. See https://issuetracker.google.com/issues/36918154"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    .restart local v1    # "timeoutsMs":[J
    .restart local v2    # "maxTotalWaitMs":J
    .restart local v4    # "currentTotalWaitMs":J
    .restart local v6    # "waitIndex":I
    :cond_7a
    goto :goto_25

    nop

    :array_7c
    .array-data 8
        0x1
        0x2
        0x5
        0xa
        0x10
    .end array-data
.end method

.method private checkHasPrimaryKey(Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 1624
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1625
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    .line 1627
    .local v1, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    invoke-virtual {v1}, Lio/realm/internal/OsObjectSchemaInfo;->getPrimaryKeyProperty()Lio/realm/internal/Property;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1630
    return-void

    .line 1628
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A RealmObject with no @PrimaryKey cannot be updated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkMaxDepth(I)V
    .registers 5
    .param p1, "maxDepth"    # I

    .line 1633
    if-ltz p1, :cond_3

    .line 1636
    return-void

    .line 1634
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxDepth must be > 0. It was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotNullObject(Lio/realm/RealmModel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)V"
        }
    .end annotation

    .line 1618
    .local p1, "object":Lio/realm/RealmModel;, "TE;"
    if-eqz p1, :cond_3

    .line 1621
    return-void

    .line 1619
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null objects cannot be copied into Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkValidObjectForDetach(Lio/realm/RealmModel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)V"
        }
    .end annotation

    .line 1640
    .local p1, "realmObject":Lio/realm/RealmModel;, "TE;"
    if-eqz p1, :cond_23

    .line 1643
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {p1}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1646
    instance-of v0, p1, Lio/realm/DynamicRealmObject;

    if-nez v0, :cond_13

    .line 1649
    return-void

    .line 1647
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicRealmObject cannot be copied from Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1644
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only valid managed objects can be copied from Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1641
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null objects cannot be copied from Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compactRealm(Lio/realm/RealmConfiguration;)Z
    .registers 3
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;

    .line 1709
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->isSyncConfiguration()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1712
    invoke-static {p0}, Lio/realm/BaseRealm;->compactRealm(Lio/realm/RealmConfiguration;)Z

    move-result v0

    return v0

    .line 1710
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Compacting is not supported yet on synced Realms. See https://github.com/realm/realm-core/issues/2345"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;
    .registers 5
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)TE;"
        }
    .end annotation

    .line 1607
    .local p1, "object":Lio/realm/RealmModel;, "TE;"
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1608
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/realm/internal/RealmProxyMediator;->copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method private createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;
    .registers 5
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;I",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)TE;"
        }
    .end annotation

    .line 1612
    .local p1, "object":Lio/realm/RealmModel;, "TE;"
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1613
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/realm/internal/RealmProxyMediator;->createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method private static createExpectedSchemaInfo(Lio/realm/internal/RealmProxyMediator;)Lio/realm/internal/OsSchemaInfo;
    .registers 3
    .param p0, "mediator"    # Lio/realm/internal/RealmProxyMediator;

    .line 193
    new-instance v0, Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {p0}, Lio/realm/internal/RealmProxyMediator;->getExpectedObjectSchemaInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/internal/OsSchemaInfo;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static createInstance(Lio/realm/RealmCache;)Lio/realm/Realm;
    .registers 2
    .param p0, "cache"    # Lio/realm/RealmCache;

    .line 435
    new-instance v0, Lio/realm/Realm;

    invoke-direct {v0, p0}, Lio/realm/Realm;-><init>(Lio/realm/RealmCache;)V

    return-object v0
.end method

.method static createInstance(Lio/realm/internal/OsSharedRealm;)Lio/realm/Realm;
    .registers 2
    .param p0, "sharedRealm"    # Lio/realm/internal/OsSharedRealm;

    .line 443
    new-instance v0, Lio/realm/Realm;

    invoke-direct {v0, p0}, Lio/realm/Realm;-><init>(Lio/realm/internal/OsSharedRealm;)V

    return-object v0
.end method

.method public static deleteRealm(Lio/realm/RealmConfiguration;)Z
    .registers 2
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;

    .line 1691
    invoke-static {p0}, Lio/realm/BaseRealm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    move-result v0

    return v0
.end method

.method public static getDefaultConfiguration()Lio/realm/RealmConfiguration;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 413
    sget-object v0, Lio/realm/Realm;->defaultConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_3
    sget-object v1, Lio/realm/Realm;->defaultConfiguration:Lio/realm/RealmConfiguration;

    monitor-exit v0

    return-object v1

    .line 415
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getDefaultInstance()Lio/realm/Realm;
    .registers 3

    .line 335
    invoke-static {}, Lio/realm/Realm;->getDefaultConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 336
    .local v0, "configuration":Lio/realm/RealmConfiguration;
    if-nez v0, :cond_1a

    .line 337
    sget-object v1, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_12

    .line 338
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Call `Realm.init(Context)` before calling this method."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Set default configuration by using `Realm.setDefaultConfiguration(RealmConfiguration)`."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 343
    :cond_1a
    const-class v1, Lio/realm/Realm;

    invoke-static {v0, v1}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object v1

    check-cast v1, Lio/realm/Realm;

    return-object v1
.end method

.method public static getDefaultModule()Ljava/lang/Object;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1862
    const-string v0, "io.realm.DefaultRealmModule"

    .line 1866
    .local v0, "moduleName":Ljava/lang/String;
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1867
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 1868
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1869
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_17} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_17} :catch_48
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_17} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_17} :catch_18

    return-object v3

    .line 1876
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_18
    move-exception v1

    .line 1877
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1874
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_30
    move-exception v1

    .line 1875
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1872
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_48
    move-exception v1

    .line 1873
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lio/realm/exceptions/RealmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1870
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_60
    move-exception v1

    .line 1871
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private getFullStringScanner(Ljava/io/InputStream;)Ljava/util/Scanner;
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 896
    new-instance v0, Ljava/util/Scanner;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobalInstanceCount(Lio/realm/RealmConfiguration;)I
    .registers 3
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;

    .line 1889
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1890
    .local v0, "globalCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v1, Lio/realm/Realm$5;

    invoke-direct {v1, v0}, Lio/realm/Realm$5;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {p0, v1}, Lio/realm/RealmCache;->invokeWithGlobalRefCount(Lio/realm/RealmConfiguration;Lio/realm/RealmCache$Callback;)V

    .line 1896
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;
    .registers 3
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;

    .line 361
    if-eqz p0, :cond_b

    .line 364
    const-class v0, Lio/realm/Realm;

    invoke-static {p0, v0}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    return-object v0

    .line 362
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstanceAsync(Lio/realm/RealmConfiguration;Lio/realm/Realm$Callback;)Lio/realm/RealmAsyncTask;
    .registers 4
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;
    .param p1, "callback"    # Lio/realm/Realm$Callback;

    .line 383
    if-eqz p0, :cond_9

    .line 386
    const-class v0, Lio/realm/Realm;

    invoke-static {p0, p1, v0}, Lio/realm/RealmCache;->createRealmOrGetFromCacheAsync(Lio/realm/RealmConfiguration;Lio/realm/BaseRealm$InstanceCallback;Ljava/lang/Class;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0

    .line 384
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-null RealmConfiguration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLocalInstanceCount(Lio/realm/RealmConfiguration;)I
    .registers 2
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;

    .line 1907
    invoke-static {p0}, Lio/realm/RealmCache;->getLocalThreadCount(Lio/realm/RealmConfiguration;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lio/realm/Realm;

    monitor-enter v0

    .line 252
    :try_start_3
    sget-object v1, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_48

    .line 254
    if-eqz p0, :cond_40

    .line 257
    invoke-static {p0}, Lio/realm/Realm;->checkFilesDirAvailable(Landroid/content/Context;)V

    .line 258
    invoke-static {p0}, Lio/realm/internal/RealmCore;->loadLibrary(Landroid/content/Context;)V

    .line 259
    new-instance v1, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v1, p0}, Lio/realm/RealmConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v1

    invoke-static {v1}, Lio/realm/Realm;->setDefaultConfiguration(Lio/realm/RealmConfiguration;)V

    .line 260
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/realm/internal/ObjectServerFacade;->init(Landroid/content/Context;)V

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    goto :goto_31

    .line 264
    :cond_2f
    sput-object p0, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    .line 266
    :goto_31
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".realm.temp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lio/realm/internal/OsSharedRealm;->initialize(Ljava/io/File;)V

    goto :goto_48

    .line 255
    :cond_40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Non-null context required."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_4a

    .line 268
    :cond_48
    :goto_48
    monitor-exit v0

    return-void

    .line 251
    .end local p0    # "context":Landroid/content/Context;
    :catchall_4a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static migrateRealm(Lio/realm/RealmConfiguration;)V
    .registers 2
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1659
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/realm/Realm;->migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/RealmMigration;)V

    .line 1660
    return-void
.end method

.method public static migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/RealmMigration;)V
    .registers 2
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;
    .param p1, "migration"    # Lio/realm/RealmMigration;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1672
    invoke-static {p0, p1}, Lio/realm/BaseRealm;->migrateRealm(Lio/realm/RealmConfiguration;Lio/realm/RealmMigration;)V

    .line 1673
    return-void
.end method

.method public static removeDefaultConfiguration()V
    .registers 2

    .line 423
    sget-object v0, Lio/realm/Realm;->defaultConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lio/realm/Realm;->defaultConfiguration:Lio/realm/RealmConfiguration;

    .line 425
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static setDefaultConfiguration(Lio/realm/RealmConfiguration;)V
    .registers 3
    .param p0, "configuration"    # Lio/realm/RealmConfiguration;

    .line 398
    if-eqz p0, :cond_c

    .line 401
    sget-object v0, Lio/realm/Realm;->defaultConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_5
    sput-object p0, Lio/realm/Realm;->defaultConfiguration:Lio/realm/RealmConfiguration;

    .line 403
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1

    .line 399
    :cond_c
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
            "Lio/realm/Realm;",
            ">;)V"
        }
    .end annotation

    .line 1363
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/Realm;>;"
    invoke-virtual {p0, p1}, Lio/realm/Realm;->addListener(Lio/realm/RealmChangeListener;)V

    .line 1364
    return-void
.end method

.method public asFlowable()Lio/reactivex/Flowable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lio/realm/Realm;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/Realm;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic beginTransaction()V
    .registers 1

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->beginTransaction()V

    return-void
.end method

.method public bridge synthetic cancelTransaction()V
    .registers 1

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->cancelTransaction()V

    return-void
.end method

.method public bridge synthetic close()V
    .registers 1

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->close()V

    return-void
.end method

.method public bridge synthetic commitTransaction()V
    .registers 1

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->commitTransaction()V

    return-void
.end method

.method public copyFromRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1304
    .local p1, "realmObject":Lio/realm/RealmModel;, "TE;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->copyFromRealm(Lio/realm/RealmModel;I)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public copyFromRealm(Lio/realm/RealmModel;I)Lio/realm/RealmModel;
    .registers 4
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;I)TE;"
        }
    .end annotation

    .line 1329
    .local p1, "realmObject":Lio/realm/RealmModel;, "TE;"
    invoke-direct {p0, p2}, Lio/realm/Realm;->checkMaxDepth(I)V

    .line 1330
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkValidObjectForDetach(Lio/realm/RealmModel;)V

    .line 1331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/Realm;->createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public copyFromRealm(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1245
    .local p1, "realmObjects":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->copyFromRealm(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public copyFromRealm(Ljava/lang/Iterable;I)Ljava/util/List;
    .registers 8
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1270
    .local p1, "realmObjects":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-direct {p0, p2}, Lio/realm/Realm;->checkMaxDepth(I)V

    .line 1272
    if-nez p1, :cond_c

    .line 1273
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 1276
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    .local v0, "unmanagedObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1278
    .local v1, "listCache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/RealmModel;

    .line 1279
    .local v3, "object":Lio/realm/RealmModel;, "TE;"
    invoke-direct {p0, v3}, Lio/realm/Realm;->checkValidObjectForDetach(Lio/realm/RealmModel;)V

    .line 1280
    invoke-direct {p0, v3, p2, v1}, Lio/realm/Realm;->createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    .end local v3    # "object":Lio/realm/RealmModel;, "TE;"
    goto :goto_1a

    .line 1283
    :cond_31
    return-object v0
.end method

.method public copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1004
    .local p1, "object":Lio/realm/RealmModel;, "TE;"
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkNotNullObject(Lio/realm/RealmModel;)V

    .line 1005
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/realm/Realm;->copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public copyToRealm(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1043
    .local p1, "objects":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    if-nez p1, :cond_8

    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1046
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1047
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    .local v1, "realmObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/RealmModel;

    .line 1049
    .local v3, "object":Lio/realm/RealmModel;, "TE;"
    invoke-direct {p0, v3}, Lio/realm/Realm;->checkNotNullObject(Lio/realm/RealmModel;)V

    .line 1050
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v0}, Lio/realm/Realm;->copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    .end local v3    # "object":Lio/realm/RealmModel;, "TE;"
    goto :goto_16

    .line 1053
    :cond_2e
    return-object v1
.end method

.method public copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 1023
    .local p1, "object":Lio/realm/RealmModel;, "TE;"
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkNotNullObject(Lio/realm/RealmModel;)V

    .line 1024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 1025
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lio/realm/Realm;->copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public copyToRealmOrUpdate(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1213
    .local p1, "objects":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    if-nez p1, :cond_9

    .line 1214
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 1217
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1218
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1219
    .local v1, "realmObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/RealmModel;

    .line 1220
    .local v3, "object":Lio/realm/RealmModel;, "TE;"
    invoke-direct {p0, v3}, Lio/realm/Realm;->checkNotNullObject(Lio/realm/RealmModel;)V

    .line 1221
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, v0}, Lio/realm/Realm;->copyOrUpdate(Lio/realm/RealmModel;ZLjava/util/Map;)Lio/realm/RealmModel;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    .end local v3    # "object":Lio/realm/RealmModel;, "TE;"
    goto :goto_17

    .line 1224
    :cond_2f
    return-object v1
.end method

.method public createAllFromJson(Ljava/lang/Class;Ljava/io/InputStream;)V
    .registers 6
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p1, :cond_34

    if-nez p2, :cond_5

    goto :goto_34

    .line 600
    :cond_5
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 602
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 604
    .local v0, "reader":Landroid/util/JsonReader;
    :try_start_14
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    .line 605
    :goto_17
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 606
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Lio/realm/internal/RealmProxyMediator;->createUsingJsonStream(Ljava/lang/Class;Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/RealmModel;

    goto :goto_17

    .line 608
    :cond_27
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_2f

    .line 610
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 611
    nop

    .line 612
    return-void

    .line 610
    :catchall_2f
    move-exception v1

    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    throw v1

    .line 598
    .end local v0    # "reader":Landroid/util/JsonReader;
    :cond_34
    :goto_34
    return-void
.end method

.method public createAllFromJson(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 6
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 527
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1f

    .line 533
    :cond_b
    :try_start_b
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_10} :catch_16

    .line 536
    .local v0, "arr":Lorg/json/JSONArray;
    nop

    .line 535
    nop

    .line 538
    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->createAllFromJson(Ljava/lang/Class;Lorg/json/JSONArray;)V

    .line 539
    return-void

    .line 534
    .end local v0    # "arr":Lorg/json/JSONArray;
    :catch_16
    move-exception v0

    .line 535
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Could not create JSON array from string"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 528
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1f
    :goto_1f
    return-void
.end method

.method public createAllFromJson(Ljava/lang/Class;Lorg/json/JSONArray;)V
    .registers 7
    .param p2, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .line 463
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p1, :cond_2b

    if-nez p2, :cond_5

    goto :goto_2b

    .line 466
    :cond_5
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 468
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 470
    :try_start_10
    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, p1, p0, v3, v0}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_1d} :catch_21

    .line 473
    nop

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 471
    :catch_21
    move-exception v0

    .line 472
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lio/realm/exceptions/RealmException;

    const-string v3, "Could not map JSON"

    invoke-direct {v2, v3, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 475
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    :cond_2a
    return-void

    .line 464
    :cond_2b
    :goto_2b
    return-void
.end method

.method public createObject(Ljava/lang/Class;)Lio/realm/RealmModel;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 912
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 913
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;
    .registers 5
    .param p2, "primaryKeyValue"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 959
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 960
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public createObjectFromJson(Ljava/lang/Class;Ljava/io/InputStream;)Lio/realm/RealmModel;
    .registers 7
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/io/InputStream;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 815
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_6e

    if-nez p2, :cond_6

    goto :goto_6e

    .line 818
    :cond_6
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 821
    iget-object v1, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    .line 822
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 821
    invoke-static {v1, v2}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 825
    nop

    .line 827
    .local v0, "scanner":Ljava/util/Scanner;
    :try_start_1c
    invoke-direct {p0, p2}, Lio/realm/Realm;->getFullStringScanner(Ljava/io/InputStream;)Ljava/util/Scanner;

    move-result-object v1

    move-object v0, v1

    .line 828
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 829
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p0, v1, v3}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;

    move-result-object v2
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_35} :catch_3e
    .catchall {:try_start_1c .. :try_end_35} :catchall_3c

    move-object v1, v2

    .line 834
    .local v1, "realmObject":Lio/realm/RealmModel;, "TE;"
    if-eqz v0, :cond_3b

    .line 835
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 838
    .end local v0    # "scanner":Ljava/util/Scanner;
    :cond_3b
    goto :goto_67

    .line 834
    .end local v1    # "realmObject":Lio/realm/RealmModel;, "TE;"
    .restart local v0    # "scanner":Ljava/util/Scanner;
    :catchall_3c
    move-exception v1

    goto :goto_47

    .line 831
    :catch_3e
    move-exception v1

    .line 832
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3f
    new-instance v2, Lio/realm/exceptions/RealmException;

    const-string v3, "Failed to read JSON"

    invoke-direct {v2, v3, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_3c

    .line 834
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_47
    if-eqz v0, :cond_4c

    .line 835
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    :cond_4c
    throw v1

    .line 839
    .end local v0    # "scanner":Ljava/util/Scanner;
    :cond_4d
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 841
    .local v0, "reader":Landroid/util/JsonReader;
    :try_start_59
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Lio/realm/internal/RealmProxyMediator;->createUsingJsonStream(Ljava/lang/Class;Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/RealmModel;

    move-result-object v1
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_69

    .line 843
    .local v1, "realmObject":Lio/realm/RealmModel;, "TE;"
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 844
    nop

    .line 843
    .end local v0    # "reader":Landroid/util/JsonReader;
    :goto_67
    move-object v0, v1

    .line 846
    .end local v1    # "realmObject":Lio/realm/RealmModel;, "TE;"
    .local v0, "realmObject":Lio/realm/RealmModel;, "TE;"
    return-object v0

    .line 843
    .local v0, "reader":Landroid/util/JsonReader;
    :catchall_69
    move-exception v1

    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    throw v1

    .line 816
    .end local v0    # "reader":Landroid/util/JsonReader;
    :cond_6e
    :goto_6e
    return-object v0
.end method

.method public createObjectFromJson(Ljava/lang/Class;Ljava/lang/String;)Lio/realm/RealmModel;
    .registers 6
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 742
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p1, :cond_20

    if-eqz p2, :cond_20

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_20

    .line 748
    :cond_b
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_10} :catch_17

    .line 751
    .local v0, "obj":Lorg/json/JSONObject;
    nop

    .line 750
    nop

    .line 753
    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->createObjectFromJson(Ljava/lang/Class;Lorg/json/JSONObject;)Lio/realm/RealmModel;

    move-result-object v1

    return-object v1

    .line 749
    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_17
    move-exception v0

    .line 750
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Could not create Json object from string"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 743
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public createObjectFromJson(Ljava/lang/Class;Lorg/json/JSONObject;)Lio/realm/RealmModel;
    .registers 6
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/json/JSONObject;",
            ")TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 680
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p1, :cond_1d

    if-nez p2, :cond_5

    goto :goto_1d

    .line 683
    :cond_5
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 686
    :try_start_8
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, p2, v1}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;

    move-result-object v0
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_13} :catch_14

    return-object v0

    .line 687
    :catch_14
    move-exception v0

    .line 688
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Could not map JSON"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 681
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;
    .registers 14
    .param p2, "primaryKeyValue"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "acceptDefaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 982
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p4, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 984
    .local v0, "table":Lio/realm/internal/Table;
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    .line 985
    invoke-static {v0, p2}, Lio/realm/internal/OsObject;->createWithPrimaryKey(Lio/realm/internal/Table;Ljava/lang/Object;)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-object v1, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    .line 986
    invoke-virtual {v1, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v6

    .line 984
    move-object v3, p1

    move-object v4, p0

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    return-object v1
.end method

.method createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;
    .registers 13
    .param p2, "acceptDefaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .line 930
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 932
    .local v0, "table":Lio/realm/internal/Table;
    iget-object v1, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    .line 933
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 932
    invoke-static {v1, v2}, Lio/realm/internal/OsObjectStore;->getPrimaryKeyForObject(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    .line 937
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    .line 938
    invoke-static {v0}, Lio/realm/internal/OsObject;->create(Lio/realm/internal/Table;)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-object v1, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    .line 939
    invoke-virtual {v1, p1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v6

    .line 937
    move-object v3, p1

    move-object v4, p0

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lio/realm/internal/RealmProxyMediator;->newInstance(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    return-object v1

    .line 934
    :cond_31
    new-instance v1, Lio/realm/exceptions/RealmException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 935
    invoke-virtual {v0}, Lio/realm/internal/Table;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 934
    const-string v4, "\'%s\' has a primary key, use \'createObject(Class<E>, Object)\' instead."

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createOrUpdateAllFromJson(Ljava/lang/Class;Ljava/io/InputStream;)V
    .registers 9
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 637
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p1, :cond_49

    if-nez p2, :cond_5

    goto :goto_49

    .line 640
    :cond_5
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 641
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 645
    const/4 v0, 0x0

    .line 647
    .local v0, "scanner":Ljava/util/Scanner;
    :try_start_c
    invoke-direct {p0, p2}, Lio/realm/Realm;->getFullStringScanner(Ljava/io/InputStream;)Ljava/util/Scanner;

    move-result-object v1

    move-object v0, v1

    .line 648
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, "json":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 650
    iget-object v3, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v3}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, p1, p0, v4, v5}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_2f} :catch_3a
    .catchall {:try_start_c .. :try_end_2f} :catchall_38

    .line 649
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 655
    .end local v1    # "json":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_32
    if-eqz v0, :cond_37

    .line 656
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 659
    :cond_37
    return-void

    .line 655
    :catchall_38
    move-exception v1

    goto :goto_43

    .line 652
    :catch_3a
    move-exception v1

    .line 653
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3b
    new-instance v2, Lio/realm/exceptions/RealmException;

    const-string v3, "Failed to read JSON"

    invoke-direct {v2, v3, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_38

    .line 655
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_43
    if-eqz v0, :cond_48

    .line 656
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    :cond_48
    throw v1

    .line 638
    .end local v0    # "scanner":Ljava/util/Scanner;
    :cond_49
    :goto_49
    return-void
.end method

.method public createOrUpdateAllFromJson(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 6
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 561
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_25

    .line 564
    :cond_b
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 565
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 569
    :try_start_11
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_1c

    .line 572
    .local v0, "arr":Lorg/json/JSONArray;
    nop

    .line 571
    nop

    .line 574
    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->createOrUpdateAllFromJson(Ljava/lang/Class;Lorg/json/JSONArray;)V

    .line 575
    return-void

    .line 570
    .end local v0    # "arr":Lorg/json/JSONArray;
    :catch_1c
    move-exception v0

    .line 571
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Could not create JSON array from string"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 562
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_25
    :goto_25
    return-void
.end method

.method public createOrUpdateAllFromJson(Ljava/lang/Class;Lorg/json/JSONArray;)V
    .registers 7
    .param p2, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .line 497
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p1, :cond_2e

    if-nez p2, :cond_5

    goto :goto_2e

    .line 500
    :cond_5
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 501
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 504
    :try_start_12
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p0, v2, v3}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_20} :catch_24

    .line 507
    nop

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 505
    :catch_24
    move-exception v1

    .line 506
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lio/realm/exceptions/RealmException;

    const-string v3, "Could not map JSON"

    invoke-direct {v2, v3, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 509
    .end local v0    # "i":I
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2d
    return-void

    .line 498
    :cond_2e
    :goto_2e
    return-void
.end method

.method public createOrUpdateObjectFromJson(Ljava/lang/Class;Ljava/io/InputStream;)Lio/realm/RealmModel;
    .registers 7
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/io/InputStream;",
            ")TE;"
        }
    .end annotation

    .line 873
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_36

    if-nez p2, :cond_6

    goto :goto_36

    .line 876
    :cond_6
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 877
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 881
    nop

    .line 883
    .local v0, "scanner":Ljava/util/Scanner;
    :try_start_d
    invoke-direct {p0, p2}, Lio/realm/Realm;->getFullStringScanner(Ljava/io/InputStream;)Ljava/util/Scanner;

    move-result-object v1

    move-object v0, v1

    .line 884
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 885
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v1}, Lio/realm/Realm;->createOrUpdateObjectFromJson(Ljava/lang/Class;Lorg/json/JSONObject;)Lio/realm/RealmModel;

    move-result-object v2
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_1f} :catch_27
    .catchall {:try_start_d .. :try_end_1f} :catchall_25

    .line 889
    if-eqz v0, :cond_24

    .line 890
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 885
    :cond_24
    return-object v2

    .line 889
    .end local v1    # "json":Lorg/json/JSONObject;
    :catchall_25
    move-exception v1

    goto :goto_30

    .line 886
    :catch_27
    move-exception v1

    .line 887
    .local v1, "e":Lorg/json/JSONException;
    :try_start_28
    new-instance v2, Lio/realm/exceptions/RealmException;

    const-string v3, "Failed to read JSON"

    invoke-direct {v2, v3, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_25

    .line 889
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_30
    if-eqz v0, :cond_35

    .line 890
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    :cond_35
    throw v1

    .line 874
    .end local v0    # "scanner":Ljava/util/Scanner;
    :cond_36
    :goto_36
    return-object v0
.end method

.method public createOrUpdateObjectFromJson(Ljava/lang/Class;Ljava/lang/String;)Lio/realm/RealmModel;
    .registers 6
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 777
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p1, :cond_26

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_26

    .line 780
    :cond_b
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 781
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 785
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_1d

    .line 788
    .local v0, "obj":Lorg/json/JSONObject;
    nop

    .line 787
    nop

    .line 790
    invoke-virtual {p0, p1, v0}, Lio/realm/Realm;->createOrUpdateObjectFromJson(Ljava/lang/Class;Lorg/json/JSONObject;)Lio/realm/RealmModel;

    move-result-object v1

    return-object v1

    .line 786
    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_1d
    move-exception v0

    .line 787
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Could not create Json object from string"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 778
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_26
    :goto_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public createOrUpdateObjectFromJson(Ljava/lang/Class;Lorg/json/JSONObject;)Lio/realm/RealmModel;
    .registers 6
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/json/JSONObject;",
            ")TE;"
        }
    .end annotation

    .line 712
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p1, :cond_20

    if-nez p2, :cond_5

    goto :goto_20

    .line 715
    :cond_5
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 716
    invoke-direct {p0, p1}, Lio/realm/Realm;->checkHasPrimaryKey(Ljava/lang/Class;)V

    .line 718
    :try_start_b
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, p2, v1}, Lio/realm/internal/RealmProxyMediator;->createOrUpdateUsingJsonObject(Ljava/lang/Class;Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/RealmModel;

    move-result-object v0
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_16} :catch_17

    return-object v0

    .line 719
    :catch_17
    move-exception v0

    .line 720
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string v2, "Could not map JSON"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 713
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public delete(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 1597
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1598
    iget-object v0, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isPartial()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1601
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    iget-object v1, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->isPartial()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->clear(Z)V

    .line 1602
    return-void

    .line 1599
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API is not supported by partially synchronized Realms. Either unsubscribe using \'Realm.unsubscribeAsync()\' or delete the objects using a query and \'RealmResults.deleteAllFromRealm()\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic deleteAll()V
    .registers 1

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->deleteAll()V

    return-void
.end method

.method public executeTransaction(Lio/realm/Realm$Transaction;)V
    .registers 5
    .param p1, "transaction"    # Lio/realm/Realm$Transaction;

    .line 1399
    if-eqz p1, :cond_21

    .line 1403
    invoke-virtual {p0}, Lio/realm/Realm;->beginTransaction()V

    .line 1405
    :try_start_5
    invoke-interface {p1, p0}, Lio/realm/Realm$Transaction;->execute(Lio/realm/Realm;)V

    .line 1406
    invoke-virtual {p0}, Lio/realm/Realm;->commitTransaction()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_b} :catch_d

    .line 1414
    nop

    .line 1415
    return-void

    .line 1407
    :catch_d
    move-exception v0

    .line 1408
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/realm/Realm;->isInTransaction()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1409
    invoke-virtual {p0}, Lio/realm/Realm;->cancelTransaction()V

    goto :goto_20

    .line 1411
    :cond_18
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not cancel transaction, not currently in a transaction."

    invoke-static {v2, v1}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1413
    :goto_20
    throw v0

    .line 1400
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transaction should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeTransactionAsync(Lio/realm/Realm$Transaction;)Lio/realm/RealmAsyncTask;
    .registers 3
    .param p1, "transaction"    # Lio/realm/Realm$Transaction;

    .line 1426
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;
    .registers 5
    .param p1, "transaction"    # Lio/realm/Realm$Transaction;
    .param p2, "onError"    # Lio/realm/Realm$Transaction$OnError;

    .line 1458
    if-eqz p2, :cond_8

    .line 1462
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0

    .line 1459
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;)Lio/realm/RealmAsyncTask;
    .registers 5
    .param p1, "transaction"    # Lio/realm/Realm$Transaction;
    .param p2, "onSuccess"    # Lio/realm/Realm$Transaction$OnSuccess;

    .line 1440
    if-eqz p2, :cond_8

    .line 1444
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0

    .line 1441
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onSuccess callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;
    .registers 17
    .param p1, "transaction"    # Lio/realm/Realm$Transaction;
    .param p2, "onSuccess"    # Lio/realm/Realm$Transaction$OnSuccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "onError"    # Lio/realm/Realm$Transaction$OnError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1478
    move-object v8, p0

    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1481
    if-eqz p1, :cond_40

    .line 1486
    iget-object v0, v8, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    invoke-interface {v0}, Lio/realm/internal/Capabilities;->canDeliverNotification()Z

    move-result v9

    .line 1490
    .local v9, "canDeliverNotification":Z
    if-nez p2, :cond_12

    if-eqz p3, :cond_1b

    .line 1491
    :cond_12
    iget-object v0, v8, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "Callback cannot be delivered on current thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 1496
    :cond_1b
    invoke-virtual {p0}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v10

    .line 1498
    .local v10, "realmConfiguration":Lio/realm/RealmConfiguration;
    iget-object v0, v8, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v11, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 1500
    .local v11, "realmNotifier":Lio/realm/internal/RealmNotifier;
    sget-object v12, Lio/realm/Realm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    new-instance v7, Lio/realm/Realm$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v10

    move-object v3, p1

    move v4, v9

    move-object v5, p2

    move-object v6, v11

    move-object v8, v7

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lio/realm/Realm$1;-><init>(Lio/realm/Realm;Lio/realm/RealmConfiguration;Lio/realm/Realm$Transaction;ZLio/realm/Realm$Transaction$OnSuccess;Lio/realm/internal/RealmNotifier;Lio/realm/Realm$Transaction$OnError;)V

    invoke-virtual {v12, v8}, Lio/realm/internal/async/RealmThreadPoolExecutor;->submitTransaction(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1586
    .local v0, "pendingTransaction":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v1, Lio/realm/internal/async/RealmAsyncTaskImpl;

    sget-object v2, Lio/realm/Realm;->asyncTaskExecutor:Lio/realm/internal/async/RealmThreadPoolExecutor;

    invoke-direct {v1, v0, v2}, Lio/realm/internal/async/RealmAsyncTaskImpl;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-object v1

    .line 1482
    .end local v0    # "pendingTransaction":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v9    # "canDeliverNotification":Z
    .end local v10    # "realmConfiguration":Lio/realm/RealmConfiguration;
    .end local v11    # "realmNotifier":Lio/realm/internal/RealmNotifier;
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transaction should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getConfiguration()Lio/realm/RealmConfiguration;
    .registers 2

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPath()Ljava/lang/String;
    .registers 2

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions(Ljava/lang/Class;)Lio/realm/sync/permissions/ClassPermissions;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/sync/permissions/ClassPermissions;"
        }
    .end annotation

    .annotation build Lio/realm/internal/annotations/ObjectServer;
    .end annotation

    .line 1838
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1840
    if-eqz p1, :cond_22

    .line 1843
    const-class v0, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    .line 1844
    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    .line 1845
    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/sync/permissions/ClassPermissions;

    .line 1843
    return-object v0

    .line 1841
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'clazz\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermissions()Lio/realm/sync/permissions/RealmPermissions;
    .registers 2
    .annotation build Lio/realm/internal/annotations/ObjectServer;
    .end annotation

    .line 1790
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1791
    const-class v0, Lio/realm/sync/permissions/RealmPermissions;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/sync/permissions/RealmPermissions;

    return-object v0
.end method

.method public getPrivileges(Ljava/lang/Class;)Lio/realm/sync/permissions/ClassPrivileges;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/sync/permissions/ClassPrivileges;"
        }
    .end annotation

    .annotation build Lio/realm/internal/annotations/ObjectServer;
    .end annotation

    .line 1817
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1819
    if-eqz p1, :cond_1c

    .line 1822
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/RealmProxyMediator;->getSimpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1823
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Lio/realm/sync/permissions/ClassPrivileges;

    iget-object v2, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2, v0}, Lio/realm/internal/OsSharedRealm;->getClassPrivileges(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lio/realm/sync/permissions/ClassPrivileges;-><init>(J)V

    return-object v1

    .line 1820
    .end local v0    # "className":Ljava/lang/String;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null \'clazz\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getPrivileges(Lio/realm/RealmModel;)Lio/realm/sync/permissions/ObjectPrivileges;
    .registers 2

    .line 146
    invoke-super {p0, p1}, Lio/realm/BaseRealm;->getPrivileges(Lio/realm/RealmModel;)Lio/realm/sync/permissions/ObjectPrivileges;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPrivileges()Lio/realm/sync/permissions/RealmPrivileges;
    .registers 2
    .annotation build Lio/realm/internal/annotations/ObjectServer;
    .end annotation

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->getPrivileges()Lio/realm/sync/permissions/RealmPrivileges;

    move-result-object v0

    return-object v0
.end method

.method public getRoles()Lio/realm/RealmResults;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lio/realm/sync/permissions/Role;",
            ">;"
        }
    .end annotation

    .annotation build Lio/realm/internal/annotations/ObjectServer;
    .end annotation

    .line 1804
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1805
    const-class v0, Lio/realm/sync/permissions/Role;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public getSchema()Lio/realm/RealmSchema;
    .registers 2

    .line 214
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    return-object v0
.end method

.method getTable(Ljava/lang/Class;)Lio/realm/internal/Table;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .line 1849
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/realm/RealmModel;>;"
    iget-object v0, p0, Lio/realm/Realm;->schema:Lio/realm/RealmSchema;

    invoke-virtual {v0, p1}, Lio/realm/RealmSchema;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVersion()J
    .registers 3

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->getVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lio/realm/RealmModel;)V
    .registers 4
    .param p1, "object"    # Lio/realm/RealmModel;

    .line 1117
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValidAndInTransaction()V

    .line 1119
    if-eqz p1, :cond_14

    .line 1122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1123
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lio/realm/internal/RealmProxyMediator;->insert(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)V

    .line 1124
    return-void

    .line 1120
    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null object cannot be inserted into Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 1080
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/realm/RealmModel;>;"
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValidAndInTransaction()V

    .line 1082
    if-eqz p1, :cond_16

    .line 1085
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1086
    return-void

    .line 1088
    :cond_c
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/RealmProxyMediator;->insert(Lio/realm/Realm;Ljava/util/Collection;)V

    .line 1089
    return-void

    .line 1083
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null objects cannot be inserted into Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertOrUpdate(Lio/realm/RealmModel;)V
    .registers 4
    .param p1, "object"    # Lio/realm/RealmModel;

    .line 1189
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValidAndInTransaction()V

    .line 1191
    if-eqz p1, :cond_14

    .line 1194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1195
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lio/realm/internal/RealmProxyMediator;->insertOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)V

    .line 1196
    return-void

    .line 1192
    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null object cannot be inserted into Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertOrUpdate(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 1153
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<+Lio/realm/RealmModel;>;"
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValidAndInTransaction()V

    .line 1155
    if-eqz p1, :cond_16

    .line 1158
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1159
    return-void

    .line 1161
    :cond_c
    iget-object v0, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/RealmProxyMediator;->insertOrUpdate(Lio/realm/Realm;Ljava/util/Collection;)V

    .line 1162
    return-void

    .line 1156
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null objects cannot be inserted into Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic isAutoRefresh()Z
    .registers 2

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->isAutoRefresh()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isClosed()Z
    .registers 2

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->isClosed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTransaction()Z
    .registers 2

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic refresh()V
    .registers 1

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->refresh()V

    return-void
.end method

.method public removeAllChangeListeners()V
    .registers 1

    .line 1385
    invoke-virtual {p0}, Lio/realm/Realm;->removeAllListeners()V

    .line 1386
    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/Realm;",
            ">;)V"
        }
    .end annotation

    .line 1375
    .local p1, "listener":Lio/realm/RealmChangeListener;, "Lio/realm/RealmChangeListener<Lio/realm/Realm;>;"
    invoke-virtual {p0, p1}, Lio/realm/Realm;->removeListener(Lio/realm/RealmChangeListener;)V

    .line 1376
    return-void
.end method

.method public bridge synthetic setAutoRefresh(Z)V
    .registers 2

    .line 146
    invoke-super {p0, p1}, Lio/realm/BaseRealm;->setAutoRefresh(Z)V

    return-void
.end method

.method public bridge synthetic stopWaitForChange()V
    .registers 1

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->stopWaitForChange()V

    return-void
.end method

.method public unsubscribeAsync(Ljava/lang/String;Lio/realm/Realm$UnsubscribeCallback;)Lio/realm/RealmAsyncTask;
    .registers 6
    .param p1, "subscriptionName"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/realm/Realm$UnsubscribeCallback;

    .line 1735
    invoke-static {p1}, Lio/realm/internal/Util;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 1739
    if-eqz p2, :cond_4e

    .line 1742
    iget-object v0, p0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    const-string v1, "This method is only available from a Looper thread."

    invoke-interface {v0, v1}, Lio/realm/internal/Capabilities;->checkCanDeliverNotification(Ljava/lang/String;)V

    .line 1743
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    iget-object v1, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0, v1}, Lio/realm/internal/ObjectServerFacade;->isPartialRealm(Lio/realm/RealmConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1747
    new-instance v0, Lio/realm/Realm$2;

    invoke-direct {v0, p0, p1}, Lio/realm/Realm$2;-><init>(Lio/realm/Realm;Ljava/lang/String;)V

    new-instance v1, Lio/realm/Realm$3;

    invoke-direct {v1, p0, p2, p1}, Lio/realm/Realm$3;-><init>(Lio/realm/Realm;Lio/realm/Realm$UnsubscribeCallback;Ljava/lang/String;)V

    new-instance v2, Lio/realm/Realm$4;

    invoke-direct {v2, p0, p2, p1}, Lio/realm/Realm$4;-><init>(Lio/realm/Realm;Lio/realm/Realm$UnsubscribeCallback;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;

    move-result-object v0

    return-object v0

    .line 1744
    :cond_31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Realm is not a partially synchronized Realm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/Realm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v2}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1740
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'callback\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1736
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-empty \'subscriptionName\' required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic waitForChange()Z
    .registers 2

    .line 146
    invoke-super {p0}, Lio/realm/BaseRealm;->waitForChange()Z

    move-result v0

    return v0
.end method

.method public where(Ljava/lang/Class;)Lio/realm/RealmQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1342
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lio/realm/Realm;->checkIfValid()V

    .line 1343
    invoke-static {p0, p1}, Lio/realm/RealmQuery;->createQuery(Lio/realm/Realm;Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeCopyTo(Ljava/io/File;)V
    .registers 2

    .line 146
    invoke-super {p0, p1}, Lio/realm/BaseRealm;->writeCopyTo(Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic writeEncryptedCopyTo(Ljava/io/File;[B)V
    .registers 3

    .line 146
    invoke-super {p0, p1, p2}, Lio/realm/BaseRealm;->writeEncryptedCopyTo(Ljava/io/File;[B)V

    return-void
.end method

###### Class io.realm.Realm.AnonymousClass1 (io.realm.Realm$1)
.class Lio/realm/Realm$1;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;Lio/realm/Realm$Transaction$OnSuccess;Lio/realm/Realm$Transaction$OnError;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/Realm;

.field final synthetic val$canDeliverNotification:Z

.field final synthetic val$onError:Lio/realm/Realm$Transaction$OnError;

.field final synthetic val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

.field final synthetic val$realmConfiguration:Lio/realm/RealmConfiguration;

.field final synthetic val$realmNotifier:Lio/realm/internal/RealmNotifier;

.field final synthetic val$transaction:Lio/realm/Realm$Transaction;


# direct methods
.method constructor <init>(Lio/realm/Realm;Lio/realm/RealmConfiguration;Lio/realm/Realm$Transaction;ZLio/realm/Realm$Transaction$OnSuccess;Lio/realm/internal/RealmNotifier;Lio/realm/Realm$Transaction$OnError;)V
    .registers 8
    .param p1, "this$0"    # Lio/realm/Realm;

    .line 1500
    iput-object p1, p0, Lio/realm/Realm$1;->this$0:Lio/realm/Realm;

    iput-object p2, p0, Lio/realm/Realm$1;->val$realmConfiguration:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/Realm$1;->val$transaction:Lio/realm/Realm$Transaction;

    iput-boolean p4, p0, Lio/realm/Realm$1;->val$canDeliverNotification:Z

    iput-object p5, p0, Lio/realm/Realm$1;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    iput-object p6, p0, Lio/realm/Realm$1;->val$realmNotifier:Lio/realm/internal/RealmNotifier;

    iput-object p7, p0, Lio/realm/Realm$1;->val$onError:Lio/realm/Realm$Transaction$OnError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1503
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1504
    return-void

    .line 1507
    :cond_b
    const/4 v0, 0x0

    .line 1508
    .local v0, "versionID":Lio/realm/internal/OsSharedRealm$VersionID;
    const/4 v1, 0x0

    .line 1510
    .local v1, "exception":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/realm/Realm$1;->val$realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v2}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v2

    .line 1511
    .local v2, "bgRealm":Lio/realm/Realm;
    invoke-virtual {v2}, Lio/realm/Realm;->beginTransaction()V

    .line 1513
    :try_start_16
    iget-object v3, p0, Lio/realm/Realm$1;->val$transaction:Lio/realm/Realm$Transaction;

    invoke-interface {v3, v2}, Lio/realm/Realm$Transaction;->execute(Lio/realm/Realm;)V

    .line 1515
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_23} :catch_65
    .catchall {:try_start_16 .. :try_end_23} :catchall_51

    if-eqz v3, :cond_38

    .line 1527
    :try_start_25
    invoke-virtual {v2}, Lio/realm/Realm;->isInTransaction()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1528
    invoke-virtual {v2}, Lio/realm/Realm;->cancelTransaction()V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_33

    .line 1531
    :cond_2e
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    .line 1532
    nop

    .line 1516
    return-void

    .line 1531
    :catchall_33
    move-exception v3

    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    throw v3

    .line 1519
    :cond_38
    :try_start_38
    invoke-virtual {v2}, Lio/realm/Realm;->commitTransaction()V

    .line 1522
    iget-object v3, v2, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v3
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_41} :catch_65
    .catchall {:try_start_38 .. :try_end_41} :catchall_51

    move-object v0, v3

    .line 1527
    :try_start_42
    invoke-virtual {v2}, Lio/realm/Realm;->isInTransaction()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1528
    invoke-virtual {v2}, Lio/realm/Realm;->cancelTransaction()V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_4c

    goto :goto_70

    .line 1531
    :catchall_4c
    move-exception v3

    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    throw v3

    .line 1526
    :catchall_51
    move-exception v3

    .line 1527
    :try_start_52
    invoke-virtual {v2}, Lio/realm/Realm;->isInTransaction()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1528
    invoke-virtual {v2}, Lio/realm/Realm;->cancelTransaction()V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_60

    .line 1531
    :cond_5b
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    .line 1532
    nop

    .line 1531
    throw v3

    :catchall_60
    move-exception v3

    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    throw v3

    .line 1523
    :catch_65
    move-exception v3

    .line 1524
    .local v3, "e":Ljava/lang/Throwable;
    move-object v1, v3

    .line 1527
    .end local v3    # "e":Ljava/lang/Throwable;
    :try_start_67
    invoke-virtual {v2}, Lio/realm/Realm;->isInTransaction()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1528
    invoke-virtual {v2}, Lio/realm/Realm;->cancelTransaction()V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_a4

    .line 1531
    :cond_70
    :goto_70
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    .line 1532
    nop

    .line 1533
    nop

    .line 1535
    move-object v3, v1

    .line 1536
    .local v3, "backgroundException":Ljava/lang/Throwable;
    move-object v4, v0

    .line 1538
    .local v4, "backgroundVersionID":Lio/realm/internal/OsSharedRealm$VersionID;
    iget-boolean v5, p0, Lio/realm/Realm$1;->val$canDeliverNotification:Z

    if-eqz v5, :cond_99

    .line 1539
    if-eqz v4, :cond_8c

    iget-object v5, p0, Lio/realm/Realm$1;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    if-eqz v5, :cond_8c

    .line 1540
    iget-object v5, p0, Lio/realm/Realm$1;->val$realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v6, Lio/realm/Realm$1$1;

    invoke-direct {v6, p0, v4}, Lio/realm/Realm$1$1;-><init>(Lio/realm/Realm$1;Lio/realm/internal/OsSharedRealm$VersionID;)V

    invoke-virtual {v5, v6}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_9b

    .line 1562
    :cond_8c
    if-eqz v3, :cond_9b

    .line 1563
    iget-object v5, p0, Lio/realm/Realm$1;->val$realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v6, Lio/realm/Realm$1$2;

    invoke-direct {v6, p0, v3}, Lio/realm/Realm$1$2;-><init>(Lio/realm/Realm$1;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_9b

    .line 1575
    :cond_99
    if-nez v3, :cond_9c

    .line 1583
    :cond_9b
    :goto_9b
    return-void

    .line 1579
    :cond_9c
    new-instance v5, Lio/realm/exceptions/RealmException;

    const-string v6, "Async transaction failed"

    invoke-direct {v5, v6, v3}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1531
    .end local v3    # "backgroundException":Ljava/lang/Throwable;
    .end local v4    # "backgroundVersionID":Lio/realm/internal/OsSharedRealm$VersionID;
    :catchall_a4
    move-exception v3

    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    throw v3
.end method

###### Class io.realm.Realm.AnonymousClass1.RunnableC00301 (io.realm.Realm$1$1)
.class Lio/realm/Realm$1$1;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/Realm$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/Realm$1;

.field final synthetic val$backgroundVersionID:Lio/realm/internal/OsSharedRealm$VersionID;


# direct methods
.method constructor <init>(Lio/realm/Realm$1;Lio/realm/internal/OsSharedRealm$VersionID;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/Realm$1;

    .line 1540
    iput-object p1, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iput-object p2, p0, Lio/realm/Realm$1$1;->val$backgroundVersionID:Lio/realm/internal/OsSharedRealm$VersionID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1543
    iget-object v0, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->this$0:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1546
    iget-object v0, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    invoke-interface {v0}, Lio/realm/Realm$Transaction$OnSuccess;->onSuccess()V

    .line 1547
    return-void

    .line 1550
    :cond_12
    iget-object v0, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->this$0:Lio/realm/Realm;

    iget-object v0, v0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v0

    iget-object v1, p0, Lio/realm/Realm$1$1;->val$backgroundVersionID:Lio/realm/internal/OsSharedRealm$VersionID;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsSharedRealm$VersionID;->compareTo(Lio/realm/internal/OsSharedRealm$VersionID;)I

    move-result v0

    if-gez v0, :cond_35

    .line 1551
    iget-object v0, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->this$0:Lio/realm/Realm;

    iget-object v0, v0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v1, Lio/realm/Realm$1$1$1;

    invoke-direct {v1, p0}, Lio/realm/Realm$1$1$1;-><init>(Lio/realm/Realm$1$1;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->addTransactionCallback(Ljava/lang/Runnable;)V

    goto :goto_3c

    .line 1558
    :cond_35
    iget-object v0, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    invoke-interface {v0}, Lio/realm/Realm$Transaction$OnSuccess;->onSuccess()V

    .line 1560
    :goto_3c
    return-void
.end method

###### Class io.realm.Realm.AnonymousClass1.RunnableC00301.RunnableC00311 (io.realm.Realm$1$1$1)
.class Lio/realm/Realm$1$1$1;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/Realm$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/realm/Realm$1$1;


# direct methods
.method constructor <init>(Lio/realm/Realm$1$1;)V
    .registers 2
    .param p1, "this$2"    # Lio/realm/Realm$1$1;

    .line 1551
    iput-object p1, p0, Lio/realm/Realm$1$1$1;->this$2:Lio/realm/Realm$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1554
    iget-object v0, p0, Lio/realm/Realm$1$1$1;->this$2:Lio/realm/Realm$1$1;

    iget-object v0, v0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    invoke-interface {v0}, Lio/realm/Realm$Transaction$OnSuccess;->onSuccess()V

    .line 1555
    return-void
.end method

###### Class io.realm.Realm.AnonymousClass1.AnonymousClass2 (io.realm.Realm$1$2)
.class Lio/realm/Realm$1$2;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/Realm$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/Realm$1;

.field final synthetic val$backgroundException:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/realm/Realm$1;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "this$1"    # Lio/realm/Realm$1;

    .line 1563
    iput-object p1, p0, Lio/realm/Realm$1$2;->this$1:Lio/realm/Realm$1;

    iput-object p2, p0, Lio/realm/Realm$1$2;->val$backgroundException:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1566
    iget-object v0, p0, Lio/realm/Realm$1$2;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->val$onError:Lio/realm/Realm$Transaction$OnError;

    if-eqz v0, :cond_10

    .line 1567
    iget-object v0, p0, Lio/realm/Realm$1$2;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->val$onError:Lio/realm/Realm$Transaction$OnError;

    iget-object v1, p0, Lio/realm/Realm$1$2;->val$backgroundException:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/realm/Realm$Transaction$OnError;->onError(Ljava/lang/Throwable;)V

    .line 1571
    return-void

    .line 1569
    :cond_10
    new-instance v0, Lio/realm/exceptions/RealmException;

    iget-object v1, p0, Lio/realm/Realm$1$2;->val$backgroundException:Ljava/lang/Throwable;

    const-string v2, "Async transaction failed"

    invoke-direct {v0, v2, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class io.realm.Realm.AnonymousClass2 (io.realm.Realm$2)
.class Lio/realm/Realm$2;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/Realm;->unsubscribeAsync(Ljava/lang/String;Lio/realm/Realm$UnsubscribeCallback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/Realm;

.field final synthetic val$subscriptionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/realm/Realm;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lio/realm/Realm;

    .line 1747
    iput-object p1, p0, Lio/realm/Realm$2;->this$0:Lio/realm/Realm;

    iput-object p2, p0, Lio/realm/Realm$2;->val$subscriptionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .registers 11
    .param p1, "realm"    # Lio/realm/Realm;

    .line 1753
    iget-object v0, p1, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    const-string v1, "class___ResultSets"

    invoke-virtual {v0, v1}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 1754
    .local v0, "table":Lio/realm/internal/Table;
    invoke-virtual {v0}, Lio/realm/internal/Table;->where()Lio/realm/internal/TableQuery;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [J

    const-string v4, "name"

    .line 1755
    invoke-virtual {v0, v4}, Lio/realm/internal/Table;->getColumnIndex(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    new-array v2, v2, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v6

    iget-object v7, p0, Lio/realm/Realm$2;->val$subscriptionName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v7}, Lio/realm/internal/TableQuery;->equalTo([J[JLjava/lang/String;)Lio/realm/internal/TableQuery;

    move-result-object v1

    .line 1757
    .local v1, "query":Lio/realm/internal/TableQuery;
    iget-object v2, p1, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {v2, v1}, Lio/realm/internal/OsResults;->createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;)Lio/realm/internal/OsResults;

    move-result-object v2

    .line 1758
    .local v2, "result":Lio/realm/internal/OsResults;
    invoke-virtual {v2}, Lio/realm/internal/OsResults;->size()J

    move-result-wide v7

    .line 1759
    .local v7, "count":J
    cmp-long v3, v7, v4

    if-eqz v3, :cond_59

    .line 1762
    const-wide/16 v3, 0x1

    cmp-long v5, v7, v3

    if-lez v5, :cond_55

    .line 1763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple subscriptions named \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/realm/Realm$2;->val$subscriptionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' exists. This should not be possible. They will all be deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lio/realm/log/RealmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1765
    :cond_55
    invoke-virtual {v2}, Lio/realm/internal/OsResults;->clear()V

    .line 1766
    return-void

    .line 1760
    :cond_59
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No active subscription named \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/realm/Realm$2;->val$subscriptionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' exists."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

###### Class io.realm.Realm.AnonymousClass3 (io.realm.Realm$3)
.class Lio/realm/Realm$3;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Lio/realm/Realm$Transaction$OnSuccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/Realm;->unsubscribeAsync(Ljava/lang/String;Lio/realm/Realm$UnsubscribeCallback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/Realm;

.field final synthetic val$callback:Lio/realm/Realm$UnsubscribeCallback;

.field final synthetic val$subscriptionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/realm/Realm;Lio/realm/Realm$UnsubscribeCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/Realm;

    .line 1767
    iput-object p1, p0, Lio/realm/Realm$3;->this$0:Lio/realm/Realm;

    iput-object p2, p0, Lio/realm/Realm$3;->val$callback:Lio/realm/Realm$UnsubscribeCallback;

    iput-object p3, p0, Lio/realm/Realm$3;->val$subscriptionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .registers 3

    .line 1770
    iget-object v0, p0, Lio/realm/Realm$3;->val$callback:Lio/realm/Realm$UnsubscribeCallback;

    iget-object v1, p0, Lio/realm/Realm$3;->val$subscriptionName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/realm/Realm$UnsubscribeCallback;->onSuccess(Ljava/lang/String;)V

    .line 1771
    return-void
.end method

###### Class io.realm.Realm.AnonymousClass4 (io.realm.Realm$4)
.class Lio/realm/Realm$4;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Lio/realm/Realm$Transaction$OnError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/Realm;->unsubscribeAsync(Ljava/lang/String;Lio/realm/Realm$UnsubscribeCallback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/Realm;

.field final synthetic val$callback:Lio/realm/Realm$UnsubscribeCallback;

.field final synthetic val$subscriptionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/realm/Realm;Lio/realm/Realm$UnsubscribeCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lio/realm/Realm;

    .line 1772
    iput-object p1, p0, Lio/realm/Realm$4;->this$0:Lio/realm/Realm;

    iput-object p2, p0, Lio/realm/Realm$4;->val$callback:Lio/realm/Realm$UnsubscribeCallback;

    iput-object p3, p0, Lio/realm/Realm$4;->val$subscriptionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 1775
    iget-object v0, p0, Lio/realm/Realm$4;->val$callback:Lio/realm/Realm$UnsubscribeCallback;

    iget-object v1, p0, Lio/realm/Realm$4;->val$subscriptionName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lio/realm/Realm$UnsubscribeCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1776
    return-void
.end method

###### Class io.realm.Realm.AnonymousClass5 (io.realm.Realm$5)
.class Lio/realm/Realm$5;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Lio/realm/RealmCache$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/Realm;->getGlobalInstanceCount(Lio/realm/RealmConfiguration;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$globalCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2

    .line 1890
    iput-object p1, p0, Lio/realm/Realm$5;->val$globalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .registers 3
    .param p1, "count"    # I

    .line 1893
    iget-object v0, p0, Lio/realm/Realm$5;->val$globalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1894
    return-void
.end method

###### Class io.realm.Realm.Callback (io.realm.Realm$Callback)
.class public abstract Lio/realm/Realm$Callback;
.super Lio/realm/BaseRealm$InstanceCallback;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/Realm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/BaseRealm$InstanceCallback<",
        "Lio/realm/Realm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1971
    invoke-direct {p0}, Lio/realm/BaseRealm$InstanceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 1983
    invoke-super {p0, p1}, Lio/realm/BaseRealm$InstanceCallback;->onError(Ljava/lang/Throwable;)V

    .line 1984
    return-void
.end method

.method public bridge synthetic onSuccess(Lio/realm/BaseRealm;)V
    .registers 2

    .line 1971
    check-cast p1, Lio/realm/Realm;

    invoke-virtual {p0, p1}, Lio/realm/Realm$Callback;->onSuccess(Lio/realm/Realm;)V

    return-void
.end method

.method public abstract onSuccess(Lio/realm/Realm;)V
.end method

###### Class io.realm.Realm.Transaction (io.realm.Realm$Transaction)
.class public interface abstract Lio/realm/Realm$Transaction;
.super Ljava/lang/Object;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/Realm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/Realm$Transaction$OnError;,
        Lio/realm/Realm$Transaction$OnSuccess;,
        Lio/realm/Realm$Transaction$Callback;
    }
.end annotation


# virtual methods
.method public abstract execute(Lio/realm/Realm;)V
.end method

###### Class io.realm.Realm.Transaction.Callback (io.realm.Realm$Transaction$Callback)
.class public Lio/realm/Realm$Transaction$Callback;
.super Ljava/lang/Object;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/Realm$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "ignore"    # Ljava/lang/Exception;

    .line 1926
    return-void
.end method

.method public onSuccess()V
    .registers 1

    .line 1924
    return-void
.end method

###### Class io.realm.Realm.Transaction.OnError (io.realm.Realm$Transaction$OnError)
.class public interface abstract Lio/realm/Realm$Transaction$OnError;
.super Ljava/lang/Object;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/Realm$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnError"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Throwable;)V
.end method

###### Class io.realm.Realm.Transaction.OnSuccess (io.realm.Realm$Transaction$OnSuccess)
.class public interface abstract Lio/realm/Realm$Transaction$OnSuccess;
.super Ljava/lang/Object;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/Realm$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSuccess"
.end annotation


# virtual methods
.method public abstract onSuccess()V
.end method

###### Class io.realm.Realm.UnsubscribeCallback (io.realm.Realm$UnsubscribeCallback)
.class public interface abstract Lio/realm/Realm$UnsubscribeCallback;
.super Ljava/lang/Object;
.source "Realm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/Realm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnsubscribeCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
