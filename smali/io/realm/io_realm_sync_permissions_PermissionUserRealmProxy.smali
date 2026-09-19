###### Class io.realm.io_realm_sync_permissions_PermissionUserRealmProxy (io.realm.io_realm_sync_permissions_PermissionUserRealmProxy)
.class public Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;
.super Lio/realm/sync/permissions/PermissionUser;
.source "io_realm_sync_permissions_PermissionUserRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$ClassNameHelper;,
        Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lio/realm/sync/permissions/PermissionUser;",
            ">;"
        }
    .end annotation
.end field

.field private rolesBacklinks:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "Lio/realm/sync/permissions/Role;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    invoke-static {}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Lio/realm/sync/permissions/PermissionUser;-><init>()V

    .line 75
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 76
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;ZLjava/util/Map;)Lio/realm/sync/permissions/PermissionUser;
    .registers 11
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lio/realm/sync/permissions/PermissionUser;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/PermissionUser;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/sync/permissions/PermissionUser;"
        }
    .end annotation

    .line 314
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 315
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 316
    move-object v1, v0

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    return-object v1

    .line 320
    :cond_c
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    .line 321
    .local v1, "realmObject":Lio/realm/sync/permissions/PermissionUser;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    .line 324
    .local v2, "realmObjectSource":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    .line 327
    .local v3, "realmObjectCopy":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v4

    .line 328
    .local v4, "roleObj":Lio/realm/sync/permissions/Role;
    if-nez v4, :cond_37

    .line 329
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    goto :goto_4a

    .line 331
    :cond_37
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/realm/sync/permissions/Role;

    .line 332
    .local v5, "cacherole":Lio/realm/sync/permissions/Role;
    if-eqz v5, :cond_43

    .line 333
    invoke-interface {v3, v5}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    goto :goto_4a

    .line 335
    :cond_43
    invoke-static {p0, v4, p2, p3}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Role;ZLjava/util/Map;)Lio/realm/sync/permissions/Role;

    move-result-object v6

    invoke-interface {v3, v6}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    .line 338
    .end local v5    # "cacherole":Lio/realm/sync/permissions/Role;
    :goto_4a
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;ZLjava/util/Map;)Lio/realm/sync/permissions/PermissionUser;
    .registers 27
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/sync/permissions/PermissionUser;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/PermissionUser;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/sync/permissions/PermissionUser;"
        }
    .end annotation

    .line 275
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

    .line 276
    move-object v0, v8

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 277
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, v7, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_39

    .line 280
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 281
    return-object v8

    .line 278
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_41
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lio/realm/BaseRealm$RealmObjectContext;

    .line 285
    .local v10, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lio/realm/internal/RealmObjectProxy;

    .line 286
    .local v11, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v11, :cond_57

    .line 287
    move-object v0, v11

    check-cast v0, Lio/realm/sync/permissions/PermissionUser;

    return-object v0

    .line 290
    :cond_57
    const/4 v12, 0x0

    .line 291
    .local v12, "realmObject":Lio/realm/sync/permissions/PermissionUser;
    move/from16 v13, p2

    .line 292
    .local v13, "canUpdate":Z
    if-eqz v13, :cond_c4

    .line 293
    const-class v0, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v7, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v14

    .line 294
    .local v14, "table":Lio/realm/internal/Table;
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    .line 295
    .local v15, "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    iget-wide v5, v15, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->idIndex:J

    .line 296
    .local v5, "pkColumnIndex":J
    move-object v0, v8

    check-cast v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v5, v6, v0}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    .line 297
    .local v3, "rowIndex":J
    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-nez v2, :cond_84

    .line 298
    const/4 v13, 0x0

    goto :goto_c4

    .line 301
    :cond_84
    :try_start_84
    invoke-virtual {v14, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lio/realm/sync/permissions/PermissionUser;

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

    .line 302
    new-instance v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;-><init>()V

    move-object v12, v0

    .line 303
    move-object v0, v12

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catchall {:try_start_a6 .. :try_end_b5} :catchall_b9

    .line 305
    invoke-virtual {v10}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 306
    goto :goto_c4

    .line 305
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

    .line 310
    .end local v14    # "table":Lio/realm/internal/Table;
    .end local v15    # "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    .end local v19    # "rowIndex":J
    .end local v21    # "pkColumnIndex":J
    :cond_c4
    :goto_c4
    if-eqz v13, :cond_cb

    invoke-static {v7, v12, v8, v9}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->update(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;Lio/realm/sync/permissions/PermissionUser;Ljava/util/Map;)Lio/realm/sync/permissions/PermissionUser;

    move-result-object v0

    goto :goto_cf

    :cond_cb
    invoke-static/range {p0 .. p3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->copy(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;ZLjava/util/Map;)Lio/realm/sync/permissions/PermissionUser;

    move-result-object v0

    :goto_cf
    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 175
    new-instance v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lio/realm/sync/permissions/PermissionUser;IILjava/util/Map;)Lio/realm/sync/permissions/PermissionUser;
    .registers 10
    .param p0, "realmObject"    # Lio/realm/sync/permissions/PermissionUser;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/sync/permissions/PermissionUser;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lio/realm/sync/permissions/PermissionUser;"
        }
    .end annotation

    .line 480
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_45

    if-nez p0, :cond_5

    goto :goto_45

    .line 483
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 485
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 486
    new-instance v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-direct {v1}, Lio/realm/sync/permissions/PermissionUser;-><init>()V

    .line 487
    .local v1, "unmanagedObject":Lio/realm/sync/permissions/PermissionUser;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 490
    .end local v1    # "unmanagedObject":Lio/realm/sync/permissions/PermissionUser;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 491
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    return-object v1

    .line 493
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/sync/permissions/PermissionUser;

    .line 494
    .restart local v1    # "unmanagedObject":Lio/realm/sync/permissions/PermissionUser;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 496
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    .line 497
    .local v2, "unmanagedCopy":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    .line 498
    .local v3, "realmSource":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 501
    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, v5, p2, p3}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->createDetachedCopy(Lio/realm/sync/permissions/Role;IILjava/util/Map;)Lio/realm/sync/permissions/Role;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    .line 503
    return-object v1

    .line 481
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lio/realm/sync/permissions/PermissionUser;
    .end local v2    # "unmanagedCopy":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;
    :cond_45
    :goto_45
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 163
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "__User"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 164
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v5, "id"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 165
    const-string v1, "role"

    sget-object v2, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    const-string v3, "__Role"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 166
    const-string v1, "roles"

    const-string v2, "__Role"

    const-string v3, "members"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addComputedLinkProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 167
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/sync/permissions/PermissionUser;
    .registers 25
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 189
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v0

    .line 190
    .local v11, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 191
    .local v12, "obj":Lio/realm/sync/permissions/PermissionUser;
    if-eqz v9, :cond_81

    .line 192
    const-class v0, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v7, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v13

    .line 193
    .local v13, "table":Lio/realm/internal/Table;
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    .line 194
    .local v14, "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->idIndex:J

    .line 195
    .local v5, "pkColumnIndex":J
    const-wide/16 v0, -0x1

    .line 196
    .local v0, "rowIndex":J
    const-string v2, "id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 197
    const-string v2, "id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v5, v6, v2}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v0

    .line 199
    .end local v0    # "rowIndex":J
    .local v3, "rowIndex":J
    :cond_39
    move-wide v3, v0

    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-eqz v2, :cond_81

    .line 200
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 202
    .local v1, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    :try_start_49
    invoke-virtual {v13, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v15, Lio/realm/sync/permissions/PermissionUser;

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

    .line 203
    new-instance v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;-><init>()V
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_76

    move-object v12, v0

    .line 205
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 206
    goto :goto_81

    .line 205
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

    .line 209
    .end local v1    # "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    .end local v13    # "table":Lio/realm/internal/Table;
    .end local v14    # "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    .end local v18    # "rowIndex":J
    .end local v20    # "pkColumnIndex":J
    :cond_81
    :goto_81
    const/4 v0, 0x0

    if-nez v12, :cond_c3

    .line 210
    const-string v1, "role"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 211
    const-string v1, "role"

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_91
    const-string v1, "id"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 214
    const-string v1, "id"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 215
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v7, v1, v0, v10, v11}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;

    goto :goto_c3

    .line 217
    :cond_ab
    const-class v1, Lio/realm/sync/permissions/PermissionUser;

    const-string v2, "id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2, v10, v11}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;

    goto :goto_c3

    .line 220
    :cond_bb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_c3
    :goto_c3
    move-object v1, v12

    check-cast v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    .line 225
    .local v1, "objProxy":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;
    const-string v2, "role"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 226
    const-string v2, "role"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 227
    invoke-interface {v1, v0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    goto :goto_e7

    .line 229
    :cond_da
    const-string v0, "role"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v7, v0, v9}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/sync/permissions/Role;

    move-result-object v0

    .line 230
    .local v0, "roleObj":Lio/realm/sync/permissions/Role;
    invoke-interface {v1, v0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    .line 233
    .end local v0    # "roleObj":Lio/realm/sync/permissions/Role;
    :cond_e7
    :goto_e7
    return-object v12
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/sync/permissions/PermissionUser;
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

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "jsonHasPrimaryKey":Z
    new-instance v1, Lio/realm/sync/permissions/PermissionUser;

    invoke-direct {v1}, Lio/realm/sync/permissions/PermissionUser;-><init>()V

    .line 242
    .local v1, "obj":Lio/realm/sync/permissions/PermissionUser;
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    .line 243
    .local v2, "objProxy":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 244
    :goto_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 245
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "name":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_37

    .line 248
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_2f

    .line 249
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_35

    .line 251
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 252
    invoke-interface {v2, v5}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 254
    :goto_35
    const/4 v0, 0x1

    goto :goto_59

    .line 255
    :cond_37
    const-string v4, "role"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 256
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v6, :cond_4e

    .line 257
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 258
    invoke-interface {v2, v5}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    goto :goto_59

    .line 260
    :cond_4e
    invoke-static {p0, p1}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/sync/permissions/Role;

    move-result-object v4

    .line 261
    .local v4, "roleObj":Lio/realm/sync/permissions/Role;
    invoke-interface {v2, v4}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    .line 262
    .end local v4    # "roleObj":Lio/realm/sync/permissions/Role;
    goto :goto_59

    .line 264
    :cond_56
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 266
    .end local v3    # "name":Ljava/lang/String;
    :goto_59
    goto :goto_c

    .line 267
    :cond_5a
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 268
    if-eqz v0, :cond_66

    .line 271
    invoke-virtual {p0, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lio/realm/sync/permissions/PermissionUser;

    return-object v3

    .line 269
    :cond_66
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 171
    sget-object v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 179
    const-string v0, "__User"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;Ljava/util/Map;)J
    .registers 28
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/sync/permissions/PermissionUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/PermissionUser;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 342
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

    .line 343
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 345
    :cond_40
    const-class v3, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 346
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 347
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    .line 348
    .local v15, "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    iget-wide v10, v15, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->idIndex:J

    .line 349
    .local v10, "pkColumnIndex":J
    const-wide/16 v4, -0x1

    .line 350
    .local v4, "rowIndex":J
    move-object v6, v1

    check-cast v6, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    invoke-interface {v6}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v12

    .line 351
    .local v12, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v12, :cond_6b

    .line 352
    move-object v6, v12

    check-cast v6, Ljava/lang/String;

    invoke-static {v13, v14, v10, v11, v6}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    .line 354
    :cond_6b
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_78

    .line 355
    invoke-static {v3, v10, v11, v12}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    .line 359
    .end local v4    # "rowIndex":J
    .local v16, "rowIndex":J
    :goto_75
    move-wide/from16 v16, v4

    goto :goto_7c

    .line 357
    .end local v16    # "rowIndex":J
    .restart local v4    # "rowIndex":J
    :cond_78
    invoke-static {v12}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    goto :goto_75

    .line 359
    .end local v4    # "rowIndex":J
    .restart local v16    # "rowIndex":J
    :goto_7c
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v8

    .line 362
    .local v8, "roleObj":Lio/realm/sync/permissions/Role;
    if-eqz v8, :cond_b7

    .line 363
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 364
    .local v4, "cacherole":Ljava/lang/Long;
    if-nez v4, :cond_9c

    .line 365
    invoke-static {v0, v8, v2}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 367
    .end local v4    # "cacherole":Ljava/lang/Long;
    .local v18, "cacherole":Ljava/lang/Long;
    :cond_9c
    move-object/from16 v18, v4

    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/16 v21, 0x0

    move-wide v4, v13

    move-object/from16 v22, v8

    .end local v8    # "roleObj":Lio/realm/sync/permissions/Role;
    .local v22, "roleObj":Lio/realm/sync/permissions/Role;
    move-wide/from16 v8, v16

    move-wide/from16 v23, v10

    .end local v10    # "pkColumnIndex":J
    .local v23, "pkColumnIndex":J
    move-wide/from16 v10, v19

    move-object/from16 v19, v12

    .end local v12    # "primaryKeyValue":Ljava/lang/Object;
    .local v19, "primaryKeyValue":Ljava/lang/Object;
    move/from16 v12, v21

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    goto :goto_bd

    .line 369
    .end local v18    # "cacherole":Ljava/lang/Long;
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v22    # "roleObj":Lio/realm/sync/permissions/Role;
    .end local v23    # "pkColumnIndex":J
    .restart local v8    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v10    # "pkColumnIndex":J
    .restart local v12    # "primaryKeyValue":Ljava/lang/Object;
    :cond_b7
    move-object/from16 v22, v8

    move-wide/from16 v23, v10

    move-object/from16 v19, v12

    .end local v8    # "roleObj":Lio/realm/sync/permissions/Role;
    .end local v10    # "pkColumnIndex":J
    .end local v12    # "primaryKeyValue":Ljava/lang/Object;
    .restart local v19    # "primaryKeyValue":Ljava/lang/Object;
    .restart local v22    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v23    # "pkColumnIndex":J
    :goto_bd
    return-wide v16
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
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

    .line 373
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 374
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 375
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    .line 376
    .local v13, "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    iget-wide v14, v13, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->idIndex:J

    .line 377
    .local v14, "pkColumnIndex":J
    const/4 v3, 0x0

    .line 378
    .local v3, "object":Lio/realm/sync/permissions/PermissionUser;
    :goto_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    .line 379
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lio/realm/sync/permissions/PermissionUser;

    .line 380
    .end local v3    # "object":Lio/realm/sync/permissions/PermissionUser;
    .local v10, "object":Lio/realm/sync/permissions/PermissionUser;
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 381
    nop

    .line 377
    :goto_32
    move-object/from16 v19, v10

    goto/16 :goto_d7

    .line 383
    :cond_36
    instance-of v3, v10, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_77

    move-object v3, v10

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_77

    move-object v3, v10

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

    if-eqz v3, :cond_77

    .line 384
    move-object v3, v10

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    goto :goto_32

    .line 387
    :cond_77
    const-wide/16 v3, -0x1

    .line 388
    .local v3, "rowIndex":J
    move-object v5, v10

    check-cast v5, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v8

    .line 389
    .local v8, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v8, :cond_89

    .line 390
    move-object v5, v8

    check-cast v5, Ljava/lang/String;

    invoke-static {v11, v12, v14, v15, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 392
    :cond_89
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_96

    .line 393
    invoke-static {v2, v14, v15, v8}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 397
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :goto_93
    move-wide/from16 v16, v3

    goto :goto_9a

    .line 395
    .end local v16    # "rowIndex":J
    .restart local v3    # "rowIndex":J
    :cond_96
    invoke-static {v8}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    goto :goto_93

    .line 397
    .end local v3    # "rowIndex":J
    .restart local v16    # "rowIndex":J
    :goto_9a
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    move-object v3, v10

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v9

    .line 400
    .local v9, "roleObj":Lio/realm/sync/permissions/Role;
    if-eqz v9, :cond_d5

    .line 401
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 402
    .local v3, "cacherole":Ljava/lang/Long;
    if-nez v3, :cond_ba

    .line 403
    invoke-static {v0, v9, v1}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insert(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 405
    .end local v3    # "cacherole":Ljava/lang/Long;
    .local v18, "cacherole":Ljava/lang/Long;
    :cond_ba
    move-object/from16 v18, v3

    iget-wide v4, v13, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/16 v21, 0x0

    move-object v3, v2

    move-wide/from16 v6, v16

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    .end local v8    # "primaryKeyValue":Ljava/lang/Object;
    .end local v9    # "roleObj":Lio/realm/sync/permissions/Role;
    .local v22, "primaryKeyValue":Ljava/lang/Object;
    .local v23, "roleObj":Lio/realm/sync/permissions/Role;
    move-wide/from16 v8, v19

    move-object/from16 v19, v10

    .end local v10    # "object":Lio/realm/sync/permissions/PermissionUser;
    .local v19, "object":Lio/realm/sync/permissions/PermissionUser;
    move/from16 v10, v21

    invoke-virtual/range {v3 .. v10}, Lio/realm/internal/Table;->setLink(JJJZ)V

    goto :goto_d7

    .line 407
    .end local v16    # "rowIndex":J
    .end local v18    # "cacherole":Ljava/lang/Long;
    .end local v19    # "object":Lio/realm/sync/permissions/PermissionUser;
    .end local v22    # "primaryKeyValue":Ljava/lang/Object;
    .end local v23    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v10    # "object":Lio/realm/sync/permissions/PermissionUser;
    :cond_d5
    move-object/from16 v19, v10

    .line 377
    :goto_d7
    move-object/from16 v3, v19

    .end local v10    # "object":Lio/realm/sync/permissions/PermissionUser;
    .restart local v19    # "object":Lio/realm/sync/permissions/PermissionUser;
    goto/16 :goto_1e

    .line 408
    .end local v19    # "object":Lio/realm/sync/permissions/PermissionUser;
    .local v3, "object":Lio/realm/sync/permissions/PermissionUser;
    :cond_db
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;Ljava/util/Map;)J
    .registers 28
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/sync/permissions/PermissionUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/PermissionUser;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 411
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

    .line 412
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 414
    :cond_40
    const-class v3, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 415
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v13

    .line 416
    .local v13, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    .line 417
    .local v15, "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    iget-wide v10, v15, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->idIndex:J

    .line 418
    .local v10, "pkColumnIndex":J
    const-wide/16 v4, -0x1

    .line 419
    .local v4, "rowIndex":J
    move-object v6, v1

    check-cast v6, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    invoke-interface {v6}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v12

    .line 420
    .local v12, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v12, :cond_6b

    .line 421
    move-object v6, v12

    check-cast v6, Ljava/lang/String;

    invoke-static {v13, v14, v10, v11, v6}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    .line 423
    :cond_6b
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_75

    .line 424
    invoke-static {v3, v10, v11, v12}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    .line 426
    .end local v4    # "rowIndex":J
    .local v16, "rowIndex":J
    :cond_75
    move-wide/from16 v16, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    move-object v4, v1

    check-cast v4, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v8

    .line 429
    .local v8, "roleObj":Lio/realm/sync/permissions/Role;
    if-eqz v8, :cond_b2

    .line 430
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 431
    .local v4, "cacherole":Ljava/lang/Long;
    if-nez v4, :cond_97

    .line 432
    invoke-static {v0, v8, v2}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 434
    .end local v4    # "cacherole":Ljava/lang/Long;
    .local v18, "cacherole":Ljava/lang/Long;
    :cond_97
    move-object/from16 v18, v4

    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/16 v21, 0x0

    move-wide v4, v13

    move-object/from16 v22, v8

    .end local v8    # "roleObj":Lio/realm/sync/permissions/Role;
    .local v22, "roleObj":Lio/realm/sync/permissions/Role;
    move-wide/from16 v8, v16

    move-wide/from16 v23, v10

    .end local v10    # "pkColumnIndex":J
    .local v23, "pkColumnIndex":J
    move-wide/from16 v10, v19

    move-object/from16 v19, v12

    .end local v12    # "primaryKeyValue":Ljava/lang/Object;
    .local v19, "primaryKeyValue":Ljava/lang/Object;
    move/from16 v12, v21

    invoke-static/range {v4 .. v12}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 435
    .end local v18    # "cacherole":Ljava/lang/Long;
    goto :goto_c0

    .line 436
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v22    # "roleObj":Lio/realm/sync/permissions/Role;
    .end local v23    # "pkColumnIndex":J
    .restart local v8    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v10    # "pkColumnIndex":J
    .restart local v12    # "primaryKeyValue":Ljava/lang/Object;
    :cond_b2
    move-object/from16 v22, v8

    move-wide/from16 v23, v10

    move-object/from16 v19, v12

    .end local v8    # "roleObj":Lio/realm/sync/permissions/Role;
    .end local v10    # "pkColumnIndex":J
    .end local v12    # "primaryKeyValue":Ljava/lang/Object;
    .restart local v19    # "primaryKeyValue":Ljava/lang/Object;
    .restart local v22    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v23    # "pkColumnIndex":J
    iget-wide v6, v15, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    move-wide v4, v13

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 438
    :goto_c0
    return-wide v16
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 28
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

    .line 442
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 443
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 444
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/sync/permissions/PermissionUser;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    .line 445
    .local v14, "columnInfo":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->idIndex:J

    .line 446
    .local v9, "pkColumnIndex":J
    const/4 v3, 0x0

    .line 447
    .local v3, "object":Lio/realm/sync/permissions/PermissionUser;
    :goto_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 448
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/sync/permissions/PermissionUser;

    .line 449
    .end local v3    # "object":Lio/realm/sync/permissions/PermissionUser;
    .local v15, "object":Lio/realm/sync/permissions/PermissionUser;
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 450
    nop

    .line 446
    :goto_32
    move-wide/from16 v23, v9

    goto/16 :goto_df

    .line 452
    :cond_36
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_77

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_77

    move-object v3, v15

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

    if-eqz v3, :cond_77

    .line 453
    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    goto :goto_32

    .line 456
    :cond_77
    const-wide/16 v3, -0x1

    .line 457
    .local v3, "rowIndex":J
    move-object v5, v15

    check-cast v5, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v11

    .line 458
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v11, :cond_89

    .line 459
    move-object v5, v11

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 461
    :cond_89
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_93

    .line 462
    invoke-static {v2, v9, v10, v11}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 464
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :cond_93
    move-wide/from16 v16, v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v7

    .line 467
    .local v7, "roleObj":Lio/realm/sync/permissions/Role;
    if-eqz v7, :cond_d0

    .line 468
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 469
    .local v3, "cacherole":Ljava/lang/Long;
    if-nez v3, :cond_b5

    .line 470
    invoke-static {v0, v7, v1}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Role;Ljava/util/Map;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 472
    .end local v3    # "cacherole":Ljava/lang/Long;
    .local v18, "cacherole":Ljava/lang/Long;
    :cond_b5
    move-object/from16 v18, v3

    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/16 v21, 0x0

    move-wide v3, v12

    move-object/from16 v22, v7

    .end local v7    # "roleObj":Lio/realm/sync/permissions/Role;
    .local v22, "roleObj":Lio/realm/sync/permissions/Role;
    move-wide/from16 v7, v16

    move-wide/from16 v23, v9

    .end local v9    # "pkColumnIndex":J
    .local v23, "pkColumnIndex":J
    move-wide/from16 v9, v19

    move-object/from16 v19, v11

    .end local v11    # "primaryKeyValue":Ljava/lang/Object;
    .local v19, "primaryKeyValue":Ljava/lang/Object;
    move/from16 v11, v21

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLink(JJJJZ)V

    .line 473
    .end local v18    # "cacherole":Ljava/lang/Long;
    goto :goto_de

    .line 474
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v22    # "roleObj":Lio/realm/sync/permissions/Role;
    .end local v23    # "pkColumnIndex":J
    .restart local v7    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v9    # "pkColumnIndex":J
    .restart local v11    # "primaryKeyValue":Ljava/lang/Object;
    :cond_d0
    move-object/from16 v22, v7

    move-wide/from16 v23, v9

    move-object/from16 v19, v11

    .end local v7    # "roleObj":Lio/realm/sync/permissions/Role;
    .end local v9    # "pkColumnIndex":J
    .end local v11    # "primaryKeyValue":Ljava/lang/Object;
    .restart local v19    # "primaryKeyValue":Ljava/lang/Object;
    .restart local v22    # "roleObj":Lio/realm/sync/permissions/Role;
    .restart local v23    # "pkColumnIndex":J
    iget-wide v5, v14, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v8}, Lio/realm/internal/Table;->nativeNullifyLink(JJJ)V

    .line 476
    .end local v16    # "rowIndex":J
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v22    # "roleObj":Lio/realm/sync/permissions/Role;
    :goto_de
    nop

    .line 446
    .end local v23    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :goto_df
    move-object v3, v15

    move-wide/from16 v9, v23

    .end local v9    # "pkColumnIndex":J
    .restart local v23    # "pkColumnIndex":J
    goto/16 :goto_1e

    .line 477
    .end local v15    # "object":Lio/realm/sync/permissions/PermissionUser;
    .end local v23    # "pkColumnIndex":J
    .local v3, "object":Lio/realm/sync/permissions/PermissionUser;
    .restart local v9    # "pkColumnIndex":J
    :cond_e4
    move-wide/from16 v23, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v23    # "pkColumnIndex":J
    return-void
.end method

.method static update(Lio/realm/Realm;Lio/realm/sync/permissions/PermissionUser;Lio/realm/sync/permissions/PermissionUser;Ljava/util/Map;)Lio/realm/sync/permissions/PermissionUser;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "realmObject"    # Lio/realm/sync/permissions/PermissionUser;
    .param p2, "newObject"    # Lio/realm/sync/permissions/PermissionUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/sync/permissions/PermissionUser;",
            "Lio/realm/sync/permissions/PermissionUser;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/sync/permissions/PermissionUser;"
        }
    .end annotation

    .line 507
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    .line 508
    .local v0, "realmObjectTarget":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;

    .line 509
    .local v1, "realmObjectSource":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;
    invoke-interface {v1}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v2

    .line 510
    .local v2, "roleObj":Lio/realm/sync/permissions/Role;
    if-nez v2, :cond_11

    .line 511
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    goto :goto_25

    .line 513
    :cond_11
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/sync/permissions/Role;

    .line 514
    .local v3, "cacherole":Lio/realm/sync/permissions/Role;
    if-eqz v3, :cond_1d

    .line 515
    invoke-interface {v0, v3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    goto :goto_25

    .line 517
    :cond_1d
    const/4 v4, 0x1

    invoke-static {p0, v2, v4, p3}, Lio/realm/io_realm_sync_permissions_RoleRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lio/realm/sync/permissions/Role;ZLjava/util/Map;)Lio/realm/sync/permissions/Role;

    move-result-object v4

    invoke-interface {v0, v4}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxyInterface;->realmSet$role(Lio/realm/sync/permissions/Role;)V

    .line 520
    .end local v3    # "cacherole":Lio/realm/sync/permissions/Role;
    :goto_25
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 561
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 562
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 563
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;

    .line 565
    .local v2, "aPermissionUser":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;
    iget-object v3, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 567
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

    .line 569
    :cond_35
    iget-object v5, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 570
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 571
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

    .line 573
    :cond_5d
    iget-object v7, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 575
    :cond_76
    return v0

    .line 562
    .end local v2    # "aPermissionUser":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;
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

    .line 548
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 552
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 553
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

    .line 554
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 555
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 556
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 80
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 81
    return-void

    .line 83
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 84
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    iput-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    .line 85
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 86
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 87
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 88
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 89
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 90
    return-void
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 4

    .line 95
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 96
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 543
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$role()Lio/realm/sync/permissions/Role;
    .registers 8

    .line 112
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 113
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNullLink(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_1b
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    const-class v2, Lio/realm/sync/permissions/Role;

    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v3, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    iget-wide v3, v3, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    invoke-interface {v0, v3, v4}, Lio/realm/internal/Row;->getLink(J)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lio/realm/sync/permissions/Role;

    return-object v0
.end method

.method public realmGet$roles()Lio/realm/RealmResults;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmResults<",
            "Lio/realm/sync/permissions/Role;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 154
    .local v0, "realm":Lio/realm/BaseRealm;
    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 155
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->checkIfAttached()V

    .line 156
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->rolesBacklinks:Lio/realm/RealmResults;

    if-nez v1, :cond_26

    .line 157
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    const-class v2, Lio/realm/sync/permissions/Role;

    const-string v3, "members"

    invoke-static {v0, v1, v2, v3}, Lio/realm/RealmResults;->createBacklinkResults(Lio/realm/BaseRealm;Lio/realm/internal/Row;Ljava/lang/Class;Ljava/lang/String;)Lio/realm/RealmResults;

    move-result-object v1

    iput-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->rolesBacklinks:Lio/realm/RealmResults;

    .line 159
    :cond_26
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->rolesBacklinks:Lio/realm/RealmResults;

    return-object v1
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 103
    return-void

    .line 106
    :cond_9
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 107
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$role(Lio/realm/sync/permissions/Role;)V
    .registers 12
    .param p1, "value"    # Lio/realm/sync/permissions/Role;

    .line 121
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 122
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 123
    return-void

    .line 125
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "role"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 126
    return-void

    .line 128
    :cond_20
    if-eqz p1, :cond_37

    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 129
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lio/realm/sync/permissions/Role;

    .line 131
    :cond_37
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 132
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_47

    .line 134
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 135
    return-void

    .line 137
    :cond_47
    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 138
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    iget-wide v3, v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    move-object v1, p1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lio/realm/internal/Table;->setLink(JJJZ)V

    .line 139
    return-void

    .line 142
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_6c
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 143
    if-nez p1, :cond_85

    .line 144
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->nullifyLink(J)V

    .line 145
    return-void

    .line 147
    :cond_85
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0, p1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 148
    iget-object v0, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->columnInfo:Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    move-object v3, p1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLink(JJ)V

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 526
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 527
    const-string v0, "Invalid object"

    return-object v0

    .line 529
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PermissionUser = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string/jumbo v1, "{role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;->realmGet$role()Lio/realm/sync/permissions/Role;

    move-result-object v1

    if-eqz v1, :cond_37

    const-string v1, "Role"

    goto :goto_39

    :cond_37
    const-string v1, "null"

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.io_realm_sync_permissions_PermissionUserRealmProxy.ClassNameHelper (io.realm.io_realm_sync_permissions_PermissionUserRealmProxy$ClassNameHelper)
.class public final Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "io_realm_sync_permissions_PermissionUserRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "__User"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.io_realm_sync_permissions_PermissionUserRealmProxy.PermissionUserColumnInfo (io.realm.io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo)
.class final Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "io_realm_sync_permissions_PermissionUserRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionUserColumnInfo"
.end annotation


# instance fields
.field idIndex:J

.field roleIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 50
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 51
    invoke-virtual {p0, p1, p0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 6
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 42
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 43
    const-string v0, "__User"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 44
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->idIndex:J

    .line 45
    const-string v1, "role"

    const-string v2, "role"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    .line 46
    const-string v1, "roles"

    const-string v2, "__Role"

    const-string v3, "members"

    invoke-virtual {p0, p1, v1, v2, v3}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->addBacklinkDetails(Lio/realm/internal/OsSchemaInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 56
    new-instance v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 61
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    .line 62
    .local v0, "src":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;

    .line 63
    .local v1, "dst":Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->idIndex:J

    .line 64
    iget-wide v2, v0, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_sync_permissions_PermissionUserRealmProxy$PermissionUserColumnInfo;->roleIndex:J

    .line 65
    return-void
.end method
