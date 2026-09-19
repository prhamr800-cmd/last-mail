###### Class io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxy (io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxy)
.class public Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;
.super Lio/realm/sync/permissions/ClassPermissions;
.source "io_realm_sync_permissions_ClassPermissionsRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassNameHelper;,
        Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

.field private permissionsRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lio/realm/sync/permissions/ClassPermissions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    invoke-static {}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Lio/realm/sync/permissions/ClassPermissions;-><init>()V

    .line 73
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 74
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;ZLjava/util/Map;)Lio/realm/sync/permissions/ClassPermissions;
    .registers 14
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lio/realm/sync/permissions/ClassPermissions;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/ClassPermissions;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/sync/permissions/ClassPermissions;"
        }
    .end annotation

    .line 329
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 330
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 331
    move-object v1, v0

    check-cast v1, Lio/realm/sync/permissions/ClassPermissions;

    return-object v1

    .line 335
    :cond_c
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/sync/permissions/ClassPermissions;

    .line 336
    .local v1, "realmObject":Lio/realm/sync/permissions/ClassPermissions;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    .line 339
    .local v2, "realmObjectSource":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    .line 342
    .local v3, "realmObjectCopy":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v5

    .line 343
    .local v5, "permissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    if-eqz v5, :cond_5c

    .line 344
    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v6

    .line 345
    .local v6, "permissionsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    invoke-virtual {v6}, Lio/realm/RealmList;->clear()V

    .line 346
    nop

    .local v4, "i":I
    :goto_3a
    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v7

    if-ge v4, v7, :cond_5c

    .line 347
    invoke-virtual {v5, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/realm/sync/permissions/Permission;

    .line 348
    .local v7, "permissionsItem":Lio/realm/sync/permissions/Permission;
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/realm/sync/permissions/Permission;

    .line 349
    .local v8, "cachepermissions":Lio/realm/sync/permissions/Permission;
    if-eqz v8, :cond_52

    .line 350
    invoke-virtual {v6, v8}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 352
    :cond_52
    invoke-static {p0, v7, p2, p3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;ZLjava/util/Map;)Lio/realm/sync/permissions/Permission;

    move-result-object v9

    invoke-virtual {v6, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v7    # "permissionsItem":Lio/realm/sync/permissions/Permission;
    .end local v8    # "cachepermissions":Lio/realm/sync/permissions/Permission;
    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 357
    .end local v4    # "i":I
    .end local v6    # "permissionsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    :cond_5c
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;ZLjava/util/Map;)Lio/realm/sync/permissions/ClassPermissions;
    .registers 27
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/sync/permissions/ClassPermissions;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/ClassPermissions;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/sync/permissions/ClassPermissions;"
        }
    .end annotation

    .line 290
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    instance-of v0, v8, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_41

    move-object v0, v8

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 291
    move-object v0, v8

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 292
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, v7, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_39

    .line 295
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 296
    return-object v8

    .line 293
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_41
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lio/realm/BaseRealm$RealmObjectContext;

    .line 300
    .local v10, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lio/realm/internal/RealmObjectProxy;

    .line 301
    .local v11, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v11, :cond_57

    .line 302
    move-object v0, v11

    check-cast v0, Lio/realm/sync/permissions/ClassPermissions;

    return-object v0

    .line 305
    :cond_57
    const/4 v12, 0x0

    .line 306
    .local v12, "realmObject":Lio/realm/sync/permissions/ClassPermissions;
    move/from16 v13, p2

    .line 307
    .local v13, "canUpdate":Z
    if-eqz v13, :cond_c4

    .line 308
    const-class v0, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v7, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v14

    .line 309
    .local v14, "table":Lio/realm/internal/Table;
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    .line 310
    .local v15, "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    iget-wide v5, v15, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->nameIndex:J

    .line 311
    .local v5, "pkColumnIndex":J
    move-object v0, v8

    check-cast v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v5, v6, v0}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    .line 312
    .local v3, "rowIndex":J
    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-nez v2, :cond_84

    .line 313
    const/4 v13, 0x0

    goto :goto_c4

    .line 316
    :cond_84
    :try_start_84
    invoke-virtual {v14, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18
    :try_end_98
    .catchall {:try_start_84 .. :try_end_98} :catchall_bb

    move-object v1, v10

    move-object/from16 v2, p0

    move-wide/from16 v19, v3

    .end local v3    # "rowIndex":J
    .local v19, "rowIndex":J
    move-object v3, v0

    move-object/from16 v4, v16

    move-wide/from16 v21, v5

    .end local v5    # "pkColumnIndex":J
    .local v21, "pkColumnIndex":J
    move/from16 v5, v17

    move-object/from16 v6, v18

    :try_start_a6
    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 317
    new-instance v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;-><init>()V

    move-object v12, v0

    .line 318
    move-object v0, v12

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catchall {:try_start_a6 .. :try_end_b5} :catchall_b9

    .line 320
    invoke-virtual {v10}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 321
    goto :goto_c4

    .line 320
    :catchall_b9
    move-exception v0

    goto :goto_c0

    .end local v19    # "rowIndex":J
    .end local v21    # "pkColumnIndex":J
    .restart local v3    # "rowIndex":J
    .restart local v5    # "pkColumnIndex":J
    :catchall_bb
    move-exception v0

    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    .end local v3    # "rowIndex":J
    .end local v5    # "pkColumnIndex":J
    .restart local v19    # "rowIndex":J
    .restart local v21    # "pkColumnIndex":J
    :goto_c0
    invoke-virtual {v10}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v0

    .line 325
    .end local v14    # "table":Lio/realm/internal/Table;
    .end local v15    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .end local v19    # "rowIndex":J
    .end local v21    # "pkColumnIndex":J
    :cond_c4
    :goto_c4
    if-eqz v13, :cond_cb

    invoke-static {v7, v12, v8, v9}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->update(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;Lio/realm/sync/permissions/ClassPermissions;Ljava/util/Map;)Lio/realm/sync/permissions/ClassPermissions;

    move-result-object v0

    goto :goto_cf

    :cond_cb
    invoke-static/range {p0 .. p3}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->copy(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;ZLjava/util/Map;)Lio/realm/sync/permissions/ClassPermissions;

    move-result-object v0

    :goto_cf
    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 181
    new-instance v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lio/realm/sync/permissions/ClassPermissions;IILjava/util/Map;)Lio/realm/sync/permissions/ClassPermissions;
    .registers 14
    .param p0, "realmObject"    # Lio/realm/sync/permissions/ClassPermissions;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/sync/permissions/ClassPermissions;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lio/realm/sync/permissions/ClassPermissions;"
        }
    .end annotation

    .line 537
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    const/4 v0, 0x0

    if-gt p1, p2, :cond_64

    if-nez p0, :cond_6

    goto :goto_64

    .line 540
    :cond_6
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 542
    .local v1, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v1, :cond_1c

    .line 543
    new-instance v2, Lio/realm/sync/permissions/ClassPermissions;

    invoke-direct {v2}, Lio/realm/sync/permissions/ClassPermissions;-><init>()V

    .line 544
    .local v2, "unmanagedObject":Lio/realm/sync/permissions/ClassPermissions;
    new-instance v3, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v3, p1, v2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 547
    .end local v2    # "unmanagedObject":Lio/realm/sync/permissions/ClassPermissions;
    :cond_1c
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_25

    .line 548
    iget-object v0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v0, Lio/realm/sync/permissions/ClassPermissions;

    return-object v0

    .line 550
    :cond_25
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lio/realm/sync/permissions/ClassPermissions;

    .line 551
    .restart local v2    # "unmanagedObject":Lio/realm/sync/permissions/ClassPermissions;
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 553
    :goto_2b
    move-object v3, v2

    check-cast v3, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    .line 554
    .local v3, "unmanagedCopy":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;
    move-object v4, p0

    check-cast v4, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    .line 555
    .local v4, "realmSource":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;
    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 558
    if-ne p1, p2, :cond_3e

    .line 559
    invoke-interface {v3, v0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmSet$permissions(Lio/realm/RealmList;)V

    goto :goto_63

    .line 561
    :cond_3e
    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v0

    .line 562
    .local v0, "managedpermissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    new-instance v5, Lio/realm/RealmList;

    invoke-direct {v5}, Lio/realm/RealmList;-><init>()V

    .line 563
    .local v5, "unmanagedpermissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmSet$permissions(Lio/realm/RealmList;)V

    .line 564
    add-int/lit8 v6, p1, 0x1

    .line 565
    .local v6, "nextDepth":I
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v7

    .line 566
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_51
    if-ge v8, v7, :cond_63

    .line 567
    invoke-virtual {v0, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/realm/sync/permissions/Permission;

    invoke-static {v9, v6, p2, p3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->createDetachedCopy(Lio/realm/sync/permissions/Permission;IILjava/util/Map;)Lio/realm/sync/permissions/Permission;

    move-result-object v9

    .line 568
    .local v9, "item":Lio/realm/sync/permissions/Permission;
    invoke-virtual {v5, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v9    # "item":Lio/realm/sync/permissions/Permission;
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 572
    .end local v0    # "managedpermissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    .end local v5    # "unmanagedpermissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    .end local v6    # "nextDepth":I
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_63
    :goto_63
    return-object v2

    .line 538
    .end local v1    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v2    # "unmanagedObject":Lio/realm/sync/permissions/ClassPermissions;
    .end local v3    # "unmanagedCopy":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;
    .end local v4    # "realmSource":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;
    :cond_64
    :goto_64
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 170
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "__Class"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 171
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v5, "name"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 172
    const-string v1, "permissions"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v3, "__Permission"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 173
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/sync/permissions/ClassPermissions;
    .registers 25
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 195
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v0

    .line 196
    .local v11, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 197
    .local v12, "obj":Lio/realm/sync/permissions/ClassPermissions;
    if-eqz v9, :cond_81

    .line 198
    const-class v0, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v7, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v13

    .line 199
    .local v13, "table":Lio/realm/internal/Table;
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    .line 200
    .local v14, "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->nameIndex:J

    .line 201
    .local v5, "pkColumnIndex":J
    const-wide/16 v0, -0x1

    .line 202
    .local v0, "rowIndex":J
    const-string v2, "name"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 203
    const-string v2, "name"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v5, v6, v2}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v0

    .line 205
    .end local v0    # "rowIndex":J
    .local v3, "rowIndex":J
    :cond_39
    move-wide v3, v0

    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-eqz v2, :cond_81

    .line 206
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 208
    .local v1, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    :try_start_49
    invoke-virtual {v13, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v15, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v2, v15}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_78

    move-object/from16 v2, p0

    move-wide/from16 v18, v3

    .end local v3    # "rowIndex":J
    .local v18, "rowIndex":J
    move-object v3, v0

    move-object v4, v15

    move-wide/from16 v20, v5

    .end local v5    # "pkColumnIndex":J
    .local v20, "pkColumnIndex":J
    move/from16 v5, v16

    move-object/from16 v6, v17

    :try_start_69
    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 209
    new-instance v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;-><init>()V
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_76

    move-object v12, v0

    .line 211
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 212
    goto :goto_81

    .line 211
    :catchall_76
    move-exception v0

    goto :goto_7d

    .end local v18    # "rowIndex":J
    .end local v20    # "pkColumnIndex":J
    .restart local v3    # "rowIndex":J
    .restart local v5    # "pkColumnIndex":J
    :catchall_78
    move-exception v0

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .end local v3    # "rowIndex":J
    .end local v5    # "pkColumnIndex":J
    .restart local v18    # "rowIndex":J
    .restart local v20    # "pkColumnIndex":J
    :goto_7d
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v0

    .line 215
    .end local v1    # "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    .end local v13    # "table":Lio/realm/internal/Table;
    .end local v14    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .end local v18    # "rowIndex":J
    .end local v20    # "pkColumnIndex":J
    :cond_81
    :goto_81
    const/4 v0, 0x0

    if-nez v12, :cond_c3

    .line 216
    const-string v1, "permissions"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 217
    const-string v1, "permissions"

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_91
    const-string v1, "name"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 220
    const-string v1, "name"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 221
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v7, v1, v0, v10, v11}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;

    goto :goto_c3

    .line 223
    :cond_ab
    const-class v1, Lio/realm/sync/permissions/ClassPermissions;

    const-string v2, "name"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2, v10, v11}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;

    goto :goto_c3

    .line 226
    :cond_bb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSON object doesn\'t have the primary key field \'name\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_c3
    :goto_c3
    move-object v1, v12

    check-cast v1, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    .line 231
    .local v1, "objProxy":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;
    const-string v2, "permissions"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 232
    const-string v2, "permissions"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 233
    invoke-interface {v1, v0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmSet$permissions(Lio/realm/RealmList;)V

    goto :goto_100

    .line 235
    :cond_da
    invoke-interface {v1}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 236
    const-string v0, "permissions"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 237
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e8
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_100

    .line 238
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v7, v3, v9}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/sync/permissions/Permission;

    move-result-object v3

    .line 239
    .local v3, "item":Lio/realm/sync/permissions/Permission;
    invoke-interface {v1}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v3    # "item":Lio/realm/sync/permissions/Permission;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    .line 243
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_100
    :goto_100
    return-object v12
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/sync/permissions/ClassPermissions;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "reader"    # Landroid/util/JsonReader;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "jsonHasPrimaryKey":Z
    new-instance v1, Lio/realm/sync/permissions/ClassPermissions;

    invoke-direct {v1}, Lio/realm/sync/permissions/ClassPermissions;-><init>()V

    .line 252
    .local v1, "obj":Lio/realm/sync/permissions/ClassPermissions;
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    .line 253
    .local v2, "objProxy":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 254
    :goto_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 255
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "name":Ljava/lang/String;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_37

    .line 258
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_2f

    .line 259
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_35

    .line 261
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 262
    invoke-interface {v2, v5}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 264
    :goto_35
    const/4 v0, 0x1

    goto :goto_72

    .line 265
    :cond_37
    const-string v4, "permissions"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 266
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v6, :cond_4e

    .line 267
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 268
    invoke-interface {v2, v5}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmSet$permissions(Lio/realm/RealmList;)V

    goto :goto_72

    .line 270
    :cond_4e
    new-instance v4, Lio/realm/RealmList;

    invoke-direct {v4}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmSet$permissions(Lio/realm/RealmList;)V

    .line 271
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 272
    :goto_59
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 273
    invoke-static {p0, p1}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/sync/permissions/Permission;

    move-result-object v4

    .line 274
    .local v4, "item":Lio/realm/sync/permissions/Permission;
    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v4    # "item":Lio/realm/sync/permissions/Permission;
    goto :goto_59

    .line 276
    :cond_6b
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_72

    .line 279
    :cond_6f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 281
    .end local v3    # "name":Ljava/lang/String;
    :goto_72
    goto :goto_c

    .line 282
    :cond_73
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 283
    if-eqz v0, :cond_7f

    .line 286
    invoke-virtual {p0, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lio/realm/sync/permissions/ClassPermissions;

    return-object v3

    .line 284
    :cond_7f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "JSON object doesn\'t have the primary key field \'name\'."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 177
    sget-object v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 185
    const-string v0, "__Class"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;Ljava/util/Map;)J
    .registers 23
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/sync/permissions/ClassPermissions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/ClassPermissions;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 361
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_40

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_40

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 362
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 364
    :cond_40
    const-class v3, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 365
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v4

    .line 366
    .local v4, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v6

    const-class v7, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v6, v7}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v6

    check-cast v6, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    .line 367
    .local v6, "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    iget-wide v7, v6, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->nameIndex:J

    .line 368
    .local v7, "pkColumnIndex":J
    const-wide/16 v9, -0x1

    .line 369
    .local v9, "rowIndex":J
    move-object v11, v1

    check-cast v11, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    invoke-interface {v11}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v11

    .line 370
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v11, :cond_6a

    .line 371
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v4, v5, v7, v8, v12}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v9

    .line 373
    :cond_6a
    const-wide/16 v12, -0x1

    cmp-long v14, v9, v12

    if-nez v14, :cond_75

    .line 374
    invoke-static {v3, v7, v8, v11}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v9

    goto :goto_78

    .line 376
    :cond_75
    invoke-static {v11}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    .line 378
    :goto_78
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v2, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    move-object v12, v1

    check-cast v12, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    invoke-interface {v12}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v12

    .line 381
    .local v12, "permissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    if-eqz v12, :cond_c4

    .line 382
    new-instance v13, Lio/realm/internal/OsList;

    invoke-virtual {v3, v9, v10}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v14

    move-object v15, v3

    move-wide/from16 v16, v4

    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v4    # "tableNativePtr":J
    .local v15, "table":Lio/realm/internal/Table;
    .local v16, "tableNativePtr":J
    iget-wide v3, v6, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->permissionsIndex:J

    invoke-direct {v13, v14, v3, v4}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    move-object v3, v13

    .line 383
    .local v3, "permissionsOsList":Lio/realm/internal/OsList;
    invoke-virtual {v12}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/sync/permissions/Permission;

    .line 384
    .local v5, "permissionsItem":Lio/realm/sync/permissions/Permission;
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 385
    .local v13, "cacheItemIndexpermissions":Ljava/lang/Long;
    if-nez v13, :cond_b7

    .line 386
    invoke-static {v0, v5, v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 388
    :cond_b7
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/OsList;->addRow(J)V

    .line 389
    .end local v5    # "permissionsItem":Lio/realm/sync/permissions/Permission;
    .end local v13    # "cacheItemIndexpermissions":Ljava/lang/Long;
    nop

    .line 383
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_9b

    .line 391
    .end local v15    # "table":Lio/realm/internal/Table;
    .end local v16    # "tableNativePtr":J
    .local v3, "table":Lio/realm/internal/Table;
    .restart local v4    # "tableNativePtr":J
    :cond_c4
    move-object v15, v3

    move-wide/from16 v16, v4

    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v4    # "tableNativePtr":J
    .restart local v15    # "table":Lio/realm/internal/Table;
    .restart local v16    # "tableNativePtr":J
    :cond_c7
    return-wide v9
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 23
    .param p0, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 395
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 396
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v3

    .line 397
    .local v3, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v5

    const-class v6, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v5, v6}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v5

    check-cast v5, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    .line 398
    .local v5, "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    iget-wide v6, v5, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->nameIndex:J

    .line 399
    .local v6, "pkColumnIndex":J
    const/4 v8, 0x0

    .line 400
    .local v8, "object":Lio/realm/sync/permissions/ClassPermissions;
    :goto_1d
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ef

    .line 401
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Lio/realm/sync/permissions/ClassPermissions;

    .line 402
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 403
    nop

    .line 399
    :goto_31
    move-object v15, v2

    move-wide/from16 v16, v3

    goto/16 :goto_e6

    .line 405
    :cond_36
    instance-of v9, v8, Lio/realm/internal/RealmObjectProxy;

    if-eqz v9, :cond_77

    move-object v9, v8

    check-cast v9, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v9

    if-eqz v9, :cond_77

    move-object v9, v8

    check-cast v9, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 406
    move-object v9, v8

    check-cast v9, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    goto :goto_31

    .line 409
    :cond_77
    const-wide/16 v9, -0x1

    .line 410
    .local v9, "rowIndex":J
    move-object v11, v8

    check-cast v11, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    invoke-interface {v11}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v11

    .line 411
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v11, :cond_89

    .line 412
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v3, v4, v6, v7, v12}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v9

    .line 414
    :cond_89
    const-wide/16 v12, -0x1

    cmp-long v14, v9, v12

    if-nez v14, :cond_94

    .line 415
    invoke-static {v2, v6, v7, v11}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v9

    goto :goto_97

    .line 417
    :cond_94
    invoke-static {v11}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    .line 419
    :goto_97
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v1, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    move-object v12, v8

    check-cast v12, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    invoke-interface {v12}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v12

    .line 422
    .local v12, "permissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    if-eqz v12, :cond_e3

    .line 423
    new-instance v13, Lio/realm/internal/OsList;

    invoke-virtual {v2, v9, v10}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v14

    move-object v15, v2

    move-wide/from16 v16, v3

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v3    # "tableNativePtr":J
    .local v15, "table":Lio/realm/internal/Table;
    .local v16, "tableNativePtr":J
    iget-wide v2, v5, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->permissionsIndex:J

    invoke-direct {v13, v14, v2, v3}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    move-object v2, v13

    .line 424
    .local v2, "permissionsOsList":Lio/realm/internal/OsList;
    invoke-virtual {v12}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ba
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/sync/permissions/Permission;

    .line 425
    .local v4, "permissionsItem":Lio/realm/sync/permissions/Permission;
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 426
    .local v13, "cacheItemIndexpermissions":Ljava/lang/Long;
    if-nez v13, :cond_d6

    .line 427
    invoke-static {v0, v4, v1}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 429
    :cond_d6
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/OsList;->addRow(J)V

    .line 430
    .end local v4    # "permissionsItem":Lio/realm/sync/permissions/Permission;
    .end local v13    # "cacheItemIndexpermissions":Ljava/lang/Long;
    nop

    .line 424
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto :goto_ba

    .line 432
    .end local v9    # "rowIndex":J
    .end local v11    # "primaryKeyValue":Ljava/lang/Object;
    .end local v12    # "permissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    .end local v15    # "table":Lio/realm/internal/Table;
    .end local v16    # "tableNativePtr":J
    .local v2, "table":Lio/realm/internal/Table;
    .restart local v3    # "tableNativePtr":J
    :cond_e3
    move-object v15, v2

    move-wide/from16 v16, v3

    .line 399
    :cond_e6
    :goto_e6
    move-object v2, v15

    move-wide/from16 v3, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v3    # "tableNativePtr":J
    .restart local v15    # "table":Lio/realm/internal/Table;
    .restart local v16    # "tableNativePtr":J
    goto/16 :goto_1d

    .line 433
    .end local v15    # "table":Lio/realm/internal/Table;
    .end local v16    # "tableNativePtr":J
    .restart local v2    # "table":Lio/realm/internal/Table;
    .restart local v3    # "tableNativePtr":J
    :cond_ef
    move-object v15, v2

    move-wide/from16 v16, v3

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v3    # "tableNativePtr":J
    .restart local v15    # "table":Lio/realm/internal/Table;
    .restart local v16    # "tableNativePtr":J
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;Ljava/util/Map;)J
    .registers 26
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/sync/permissions/ClassPermissions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/ClassPermissions;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 436
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_40

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_40

    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 437
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 439
    :cond_40
    const-class v3, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 440
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v4

    .line 441
    .local v4, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v6

    const-class v7, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v6, v7}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v6

    check-cast v6, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    .line 442
    .local v6, "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    iget-wide v7, v6, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->nameIndex:J

    .line 443
    .local v7, "pkColumnIndex":J
    const-wide/16 v9, -0x1

    .line 444
    .local v9, "rowIndex":J
    move-object v11, v1

    check-cast v11, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    invoke-interface {v11}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v11

    .line 445
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v11, :cond_6a

    .line 446
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v4, v5, v7, v8, v12}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v9

    .line 448
    :cond_6a
    const-wide/16 v12, -0x1

    cmp-long v14, v9, v12

    if-nez v14, :cond_74

    .line 449
    invoke-static {v3, v7, v8, v11}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v9

    .line 451
    :cond_74
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v2, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    new-instance v12, Lio/realm/internal/OsList;

    invoke-virtual {v3, v9, v10}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v13

    iget-wide v14, v6, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->permissionsIndex:J

    invoke-direct {v12, v13, v14, v15}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 454
    .local v12, "permissionsOsList":Lio/realm/internal/OsList;
    move-object v13, v1

    check-cast v13, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    invoke-interface {v13}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v13

    .line 455
    .local v13, "permissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    if-eqz v13, :cond_db

    invoke-virtual {v13}, Lio/realm/RealmList;->size()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v12}, Lio/realm/internal/OsList;->size()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-nez v18, :cond_db

    .line 457
    invoke-virtual {v13}, Lio/realm/RealmList;->size()I

    move-result v14

    .line 458
    .local v14, "objects":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_a1
    if-ge v15, v14, :cond_d4

    .line 459
    invoke-virtual {v13, v15}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lio/realm/sync/permissions/Permission;

    .line 460
    .local v1, "permissionsItem":Lio/realm/sync/permissions/Permission;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 461
    .local v16, "cacheItemIndexpermissions":Ljava/lang/Long;
    if-nez v16, :cond_bb

    .line 462
    invoke-static {v0, v1, v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 464
    :cond_bb
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v4    # "tableNativePtr":J
    .local v19, "table":Lio/realm/internal/Table;
    .local v20, "tableNativePtr":J
    int-to-long v3, v15

    move-object/from16 v22, v6

    .end local v6    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .local v22, "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v12, v3, v4, v5, v6}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 458
    .end local v1    # "permissionsItem":Lio/realm/sync/permissions/Permission;
    .end local v16    # "cacheItemIndexpermissions":Ljava/lang/Long;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v19

    move-wide/from16 v4, v20

    move-object/from16 v6, v22

    move-object/from16 v1, p1

    goto :goto_a1

    .line 466
    .end local v14    # "objects":I
    .end local v15    # "i":I
    .end local v19    # "table":Lio/realm/internal/Table;
    .end local v20    # "tableNativePtr":J
    .end local v22    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .restart local v3    # "table":Lio/realm/internal/Table;
    .restart local v4    # "tableNativePtr":J
    .restart local v6    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    :cond_d4
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-object/from16 v22, v6

    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v4    # "tableNativePtr":J
    .end local v6    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .restart local v19    # "table":Lio/realm/internal/Table;
    .restart local v20    # "tableNativePtr":J
    .restart local v22    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    goto :goto_10e

    .line 467
    .end local v19    # "table":Lio/realm/internal/Table;
    .end local v20    # "tableNativePtr":J
    .end local v22    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .restart local v3    # "table":Lio/realm/internal/Table;
    .restart local v4    # "tableNativePtr":J
    .restart local v6    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    :cond_db
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-object/from16 v22, v6

    .end local v3    # "table":Lio/realm/internal/Table;
    .end local v4    # "tableNativePtr":J
    .end local v6    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .restart local v19    # "table":Lio/realm/internal/Table;
    .restart local v20    # "tableNativePtr":J
    .restart local v22    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    invoke-virtual {v12}, Lio/realm/internal/OsList;->removeAll()V

    .line 468
    if-eqz v13, :cond_10e

    .line 469
    invoke-virtual {v13}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ea
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/sync/permissions/Permission;

    .line 470
    .local v3, "permissionsItem":Lio/realm/sync/permissions/Permission;
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 471
    .local v4, "cacheItemIndexpermissions":Ljava/lang/Long;
    if-nez v4, :cond_106

    .line 472
    invoke-static {v0, v3, v2}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 474
    :cond_106
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v12, v5, v6}, Lio/realm/internal/OsList;->addRow(J)V

    .line 475
    .end local v3    # "permissionsItem":Lio/realm/sync/permissions/Permission;
    .end local v4    # "cacheItemIndexpermissions":Ljava/lang/Long;
    goto :goto_ea

    .line 479
    :cond_10e
    :goto_10e
    return-wide v9
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 27
    .param p0, "realm"    # Lio/realm/Realm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 483
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 484
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v3

    .line 485
    .local v3, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v5

    const-class v6, Lio/realm/sync/permissions/ClassPermissions;

    invoke-virtual {v5, v6}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v5

    check-cast v5, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    .line 486
    .local v5, "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    iget-wide v6, v5, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->nameIndex:J

    .line 487
    .local v6, "pkColumnIndex":J
    const/4 v8, 0x0

    .line 488
    .local v8, "object":Lio/realm/sync/permissions/ClassPermissions;
    :goto_1d
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_139

    .line 489
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Lio/realm/sync/permissions/ClassPermissions;

    .line 490
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 491
    nop

    .line 487
    :goto_31
    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    move-object/from16 v23, v5

    goto/16 :goto_131

    .line 493
    :cond_39
    instance-of v9, v8, Lio/realm/internal/RealmObjectProxy;

    if-eqz v9, :cond_7a

    move-object v9, v8

    check-cast v9, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v9

    if-eqz v9, :cond_7a

    move-object v9, v8

    check-cast v9, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 494
    move-object v9, v8

    check-cast v9, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v9

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    goto :goto_31

    .line 497
    :cond_7a
    const-wide/16 v9, -0x1

    .line 498
    .local v9, "rowIndex":J
    move-object v11, v8

    check-cast v11, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    invoke-interface {v11}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v11

    .line 499
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v11, :cond_8c

    .line 500
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-static {v3, v4, v6, v7, v12}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v9

    .line 502
    :cond_8c
    const-wide/16 v12, -0x1

    cmp-long v14, v9, v12

    if-nez v14, :cond_96

    .line 503
    invoke-static {v2, v6, v7, v11}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v9

    .line 505
    :cond_96
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v1, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    new-instance v12, Lio/realm/internal/OsList;

    invoke-virtual {v2, v9, v10}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v13

    iget-wide v14, v5, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->permissionsIndex:J

    invoke-direct {v12, v13, v14, v15}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 508
    .local v12, "permissionsOsList":Lio/realm/internal/OsList;
    move-object v13, v8

    check-cast v13, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    invoke-interface {v13}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v13

    .line 509
    .local v13, "permissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    if-eqz v13, :cond_fd

    invoke-virtual {v13}, Lio/realm/RealmList;->size()I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v12}, Lio/realm/internal/OsList;->size()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-nez v18, :cond_fd

    .line 511
    invoke-virtual {v13}, Lio/realm/RealmList;->size()I

    move-result v14

    .line 512
    .local v14, "objectCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_c3
    if-ge v15, v14, :cond_f6

    .line 513
    invoke-virtual {v13, v15}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v2

    .end local v2    # "table":Lio/realm/internal/Table;
    .local v19, "table":Lio/realm/internal/Table;
    move-object/from16 v2, v16

    check-cast v2, Lio/realm/sync/permissions/Permission;

    .line 514
    .local v2, "permissionsItem":Lio/realm/sync/permissions/Permission;
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 515
    .local v16, "cacheItemIndexpermissions":Ljava/lang/Long;
    if-nez v16, :cond_df

    .line 516
    invoke-static {v0, v2, v1}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 518
    :cond_df
    move-object/from16 v22, v2

    move-wide/from16 v20, v3

    .end local v2    # "permissionsItem":Lio/realm/sync/permissions/Permission;
    .end local v3    # "tableNativePtr":J
    .local v20, "tableNativePtr":J
    .local v22, "permissionsItem":Lio/realm/sync/permissions/Permission;
    int-to-long v2, v15

    move-object/from16 v23, v5

    .end local v5    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .local v23, "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v12, v2, v3, v4, v5}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 512
    .end local v16    # "cacheItemIndexpermissions":Ljava/lang/Long;
    .end local v22    # "permissionsItem":Lio/realm/sync/permissions/Permission;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    move-object/from16 v5, v23

    goto :goto_c3

    .line 520
    .end local v14    # "objectCount":I
    .end local v15    # "i":I
    .end local v19    # "table":Lio/realm/internal/Table;
    .end local v20    # "tableNativePtr":J
    .end local v23    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .local v2, "table":Lio/realm/internal/Table;
    .restart local v3    # "tableNativePtr":J
    .restart local v5    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    :cond_f6
    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    move-object/from16 v23, v5

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v3    # "tableNativePtr":J
    .end local v5    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .restart local v19    # "table":Lio/realm/internal/Table;
    .restart local v20    # "tableNativePtr":J
    .restart local v23    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    goto :goto_130

    .line 521
    .end local v19    # "table":Lio/realm/internal/Table;
    .end local v20    # "tableNativePtr":J
    .end local v23    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .restart local v2    # "table":Lio/realm/internal/Table;
    .restart local v3    # "tableNativePtr":J
    .restart local v5    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    :cond_fd
    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    move-object/from16 v23, v5

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v3    # "tableNativePtr":J
    .end local v5    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .restart local v19    # "table":Lio/realm/internal/Table;
    .restart local v20    # "tableNativePtr":J
    .restart local v23    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    invoke-virtual {v12}, Lio/realm/internal/OsList;->removeAll()V

    .line 522
    if-eqz v13, :cond_130

    .line 523
    invoke-virtual {v13}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_130

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/sync/permissions/Permission;

    .line 524
    .local v3, "permissionsItem":Lio/realm/sync/permissions/Permission;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 525
    .local v4, "cacheItemIndexpermissions":Ljava/lang/Long;
    if-nez v4, :cond_128

    .line 526
    invoke-static {v0, v3, v1}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;Ljava/util/Map;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 528
    :cond_128
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lio/realm/internal/OsList;->addRow(J)V

    .line 529
    .end local v3    # "permissionsItem":Lio/realm/sync/permissions/Permission;
    .end local v4    # "cacheItemIndexpermissions":Ljava/lang/Long;
    goto :goto_10c

    .line 533
    .end local v9    # "rowIndex":J
    .end local v11    # "primaryKeyValue":Ljava/lang/Object;
    .end local v12    # "permissionsOsList":Lio/realm/internal/OsList;
    .end local v13    # "permissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    :cond_130
    :goto_130
    nop

    .line 487
    .end local v19    # "table":Lio/realm/internal/Table;
    .end local v20    # "tableNativePtr":J
    .end local v23    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .restart local v2    # "table":Lio/realm/internal/Table;
    .local v3, "tableNativePtr":J
    .restart local v5    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    :goto_131
    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    move-object/from16 v5, v23

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v3    # "tableNativePtr":J
    .end local v5    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .restart local v19    # "table":Lio/realm/internal/Table;
    .restart local v20    # "tableNativePtr":J
    .restart local v23    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    goto/16 :goto_1d

    .line 534
    .end local v19    # "table":Lio/realm/internal/Table;
    .end local v20    # "tableNativePtr":J
    .end local v23    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .restart local v2    # "table":Lio/realm/internal/Table;
    .restart local v3    # "tableNativePtr":J
    .restart local v5    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    :cond_139
    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    move-object/from16 v23, v5

    .end local v2    # "table":Lio/realm/internal/Table;
    .end local v3    # "tableNativePtr":J
    .end local v5    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    .restart local v19    # "table":Lio/realm/internal/Table;
    .restart local v20    # "tableNativePtr":J
    .restart local v23    # "columnInfo":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    return-void
.end method

.method static update(Lio/realm/Realm;Lio/realm/sync/permissions/ClassPermissions;Lio/realm/sync/permissions/ClassPermissions;Ljava/util/Map;)Lio/realm/sync/permissions/ClassPermissions;
    .registers 14
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "realmObject"    # Lio/realm/sync/permissions/ClassPermissions;
    .param p2, "newObject"    # Lio/realm/sync/permissions/ClassPermissions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/ClassPermissions;",
            "Lio/realm/sync/permissions/ClassPermissions;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/sync/permissions/ClassPermissions;"
        }
    .end annotation

    .line 576
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    .line 577
    .local v0, "realmObjectTarget":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;

    .line 578
    .local v1, "realmObjectSource":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;
    invoke-interface {v1}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v2

    .line 579
    .local v2, "permissionsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    invoke-interface {v0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxyInterface;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v3

    .line 580
    .local v3, "permissionsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v6

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v7

    if-ne v6, v7, :cond_40

    .line 582
    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v6

    .line 583
    .local v6, "objects":I
    nop

    .local v4, "i":I
    :goto_21
    if-ge v4, v6, :cond_3f

    .line 584
    invoke-virtual {v2, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/realm/sync/permissions/Permission;

    .line 585
    .local v7, "permissionsItem":Lio/realm/sync/permissions/Permission;
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/realm/sync/permissions/Permission;

    .line 586
    .local v8, "cachepermissions":Lio/realm/sync/permissions/Permission;
    if-eqz v8, :cond_35

    .line 587
    invoke-virtual {v3, v4, v8}, Lio/realm/RealmList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 589
    :cond_35
    invoke-static {p0, v7, v5, p3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;ZLjava/util/Map;)Lio/realm/sync/permissions/Permission;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lio/realm/RealmList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 583
    .end local v7    # "permissionsItem":Lio/realm/sync/permissions/Permission;
    .end local v8    # "cachepermissions":Lio/realm/sync/permissions/Permission;
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 592
    .end local v4    # "i":I
    .end local v6    # "objects":I
    :cond_3f
    goto :goto_68

    .line 593
    :cond_40
    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    .line 594
    if-eqz v2, :cond_68

    .line 595
    nop

    .restart local v4    # "i":I
    :goto_46
    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v6

    if-ge v4, v6, :cond_68

    .line 596
    invoke-virtual {v2, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/realm/sync/permissions/Permission;

    .line 597
    .local v6, "permissionsItem":Lio/realm/sync/permissions/Permission;
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/realm/sync/permissions/Permission;

    .line 598
    .local v7, "cachepermissions":Lio/realm/sync/permissions/Permission;
    if-eqz v7, :cond_5e

    .line 599
    invoke-virtual {v3, v7}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 601
    :cond_5e
    invoke-static {p0, v6, v5, p3}, Lio/realm/io_realm_sync_permissions_PermissionRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Permission;ZLjava/util/Map;)Lio/realm/sync/permissions/Permission;

    move-result-object v8

    invoke-virtual {v3, v8}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v6    # "permissionsItem":Lio/realm/sync/permissions/Permission;
    .end local v7    # "cachepermissions":Lio/realm/sync/permissions/Permission;
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 606
    .end local v4    # "i":I
    :cond_68
    :goto_68
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 647
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 648
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 649
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;

    .line 651
    .local v2, "aClassPermissions":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;
    iget-object v3, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 653
    .local v4, "otherPath":Ljava/lang/String;
    if-eqz v3, :cond_32

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_34

    :cond_32
    if-eqz v4, :cond_35

    :goto_34
    return v1

    .line 655
    :cond_35
    iget-object v5, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 656
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 657
    .local v6, "otherTableName":Ljava/lang/String;
    if-eqz v5, :cond_5a

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    goto :goto_5c

    :cond_5a
    if-eqz v6, :cond_5d

    :goto_5c
    return v1

    .line 659
    :cond_5d
    iget-object v7, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 661
    :cond_76
    return v0

    .line 648
    .end local v2    # "aClassPermissions":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "otherPath":Ljava/lang/String;
    .end local v5    # "tableName":Ljava/lang/String;
    .end local v6    # "otherTableName":Ljava/lang/String;
    :cond_77
    :goto_77
    return v1
.end method

.method public hashCode()I
    .registers 9

    .line 634
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 638
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 639
    .local v4, "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/4 v6, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    goto :goto_2f

    :cond_2e
    const/4 v7, 0x0

    :goto_2f
    add-int/2addr v5, v7

    .line 640
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 641
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 642
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 78
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 79
    return-void

    .line 81
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 82
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    iput-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    .line 83
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 84
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 85
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 86
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 87
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public realmGet$name()Ljava/lang/String;
    .registers 4

    .line 93
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 94
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->nameIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$permissions()Lio/realm/RealmList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/Permission;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 112
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->permissionsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_10

    .line 113
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->permissionsRealmList:Lio/realm/RealmList;

    return-object v0

    .line 115
    :cond_10
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->permissionsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 116
    .local v0, "osList":Lio/realm/internal/OsList;
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lio/realm/sync/permissions/Permission;

    iget-object v3, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->permissionsRealmList:Lio/realm/RealmList;

    .line 117
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->permissionsRealmList:Lio/realm/RealmList;

    return-object v1
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 101
    return-void

    .line 104
    :cond_9
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 105
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary key field \'name\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$permissions(Lio/realm/RealmList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lio/realm/sync/permissions/Permission;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "value":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 124
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 125
    return-void

    .line 127
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "permissions"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 128
    return-void

    .line 131
    :cond_20
    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 132
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 133
    .local v0, "realm":Lio/realm/Realm;
    move-object v1, p1

    .line 134
    .local v1, "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    move-object p1, v2

    .line 135
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/sync/permissions/Permission;

    .line 136
    .local v3, "item":Lio/realm/sync/permissions/Permission;
    if-eqz v3, :cond_5a

    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_5a

    .line 139
    :cond_50
    invoke-virtual {v0, v3}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v4

    check-cast v4, Lio/realm/sync/permissions/Permission;

    invoke-virtual {p1, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 137
    :cond_5a
    :goto_5a
    invoke-virtual {p1, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v3    # "item":Lio/realm/sync/permissions/Permission;
    :goto_5d
    goto :goto_3b

    .line 145
    .end local v0    # "realm":Lio/realm/Realm;
    .end local v1    # "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lio/realm/sync/permissions/Permission;>;"
    :cond_5e
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 146
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->permissionsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 148
    .local v0, "osList":Lio/realm/internal/OsList;
    const/4 v1, 0x0

    if-eqz p1, :cond_ae

    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_ae

    .line 149
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 150
    .local v2, "objects":I
    nop

    .local v1, "i":I
    :goto_8a
    if-ge v1, v2, :cond_ad

    .line 151
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/sync/permissions/Permission;

    .line 152
    .local v3, "linkedObject":Lio/realm/sync/permissions/Permission;
    iget-object v4, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 153
    int-to-long v4, v1

    move-object v6, v3

    check-cast v6, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v6}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 150
    .end local v3    # "linkedObject":Lio/realm/sync/permissions/Permission;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 155
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_ad
    goto :goto_db

    .line 156
    :cond_ae
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 157
    if-nez p1, :cond_b4

    .line 158
    return-void

    .line 160
    :cond_b4
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 161
    .restart local v2    # "objects":I
    nop

    .restart local v1    # "i":I
    :goto_b9
    if-ge v1, v2, :cond_db

    .line 162
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/sync/permissions/Permission;

    .line 163
    .restart local v3    # "linkedObject":Lio/realm/sync/permissions/Permission;
    iget-object v4, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 164
    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/OsList;->addRow(J)V

    .line 161
    .end local v3    # "linkedObject":Lio/realm/sync/permissions/Permission;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b9

    .line 167
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_db
    :goto_db
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 612
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 613
    const-string v0, "Invalid object"

    return-object v0

    .line 615
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClassPermissions = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string/jumbo v1, "{permissions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, "RealmList<Permission>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;->realmGet$permissions()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxy.ClassNameHelper (io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassNameHelper)
.class public final Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "io_realm_sync_permissions_ClassPermissionsRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "__Class"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxy.ClassPermissionsColumnInfo (io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo)
.class final Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "io_realm_sync_permissions_ClassPermissionsRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClassPermissionsColumnInfo"
.end annotation


# instance fields
.field nameIndex:J

.field permissionsIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 48
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 49
    invoke-virtual {p0, p1, p0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 50
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 41
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 42
    const-string v0, "__Class"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 43
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->nameIndex:J

    .line 44
    const-string v1, "permissions"

    const-string v2, "permissions"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->permissionsIndex:J

    .line 45
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 54
    new-instance v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 59
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    .line 60
    .local v0, "src":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;

    .line 61
    .local v1, "dst":Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->nameIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->nameIndex:J

    .line 62
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->permissionsIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo;->permissionsIndex:J

    .line 63
    return-void
.end method
