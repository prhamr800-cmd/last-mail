###### Class io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxy (io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxy)
.class public Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;
.super Lio/realm/internal/permissions/PermissionOfferResponse;
.source "io_realm_internal_permissions_PermissionOfferResponseRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$ClassNameHelper;,
        Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lio/realm/internal/permissions/PermissionOfferResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    invoke-static {}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Lio/realm/internal/permissions/PermissionOfferResponse;-><init>()V

    .line 87
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 88
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionOfferResponse;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lio/realm/internal/permissions/PermissionOfferResponse;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionOfferResponse;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/internal/permissions/PermissionOfferResponse;"
        }
    .end annotation

    .line 540
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 541
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 542
    move-object v1, v0

    check-cast v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    return-object v1

    .line 546
    :cond_c
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    .line 547
    .local v1, "realmObject":Lio/realm/internal/permissions/PermissionOfferResponse;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    .line 550
    .local v2, "realmObjectSource":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    .line 552
    .local v3, "realmObjectCopy":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 553
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 554
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 555
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 556
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    .line 557
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 558
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionOfferResponse;
    .registers 27
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/internal/permissions/PermissionOfferResponse;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionOfferResponse;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/internal/permissions/PermissionOfferResponse;"
        }
    .end annotation

    .line 501
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

    .line 502
    move-object v0, v8

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 503
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, v7, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_39

    .line 506
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 507
    return-object v8

    .line 504
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_41
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lio/realm/BaseRealm$RealmObjectContext;

    .line 511
    .local v10, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lio/realm/internal/RealmObjectProxy;

    .line 512
    .local v11, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v11, :cond_57

    .line 513
    move-object v0, v11

    check-cast v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    return-object v0

    .line 516
    :cond_57
    const/4 v12, 0x0

    .line 517
    .local v12, "realmObject":Lio/realm/internal/permissions/PermissionOfferResponse;
    move/from16 v13, p2

    .line 518
    .local v13, "canUpdate":Z
    if-eqz v13, :cond_c4

    .line 519
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v7, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v14

    .line 520
    .local v14, "table":Lio/realm/internal/Table;
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    .line 521
    .local v15, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    iget-wide v5, v15, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->idIndex:J

    .line 522
    .local v5, "pkColumnIndex":J
    move-object v0, v8

    check-cast v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v5, v6, v0}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    .line 523
    .local v3, "rowIndex":J
    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-nez v2, :cond_84

    .line 524
    const/4 v13, 0x0

    goto :goto_c4

    .line 527
    :cond_84
    :try_start_84
    invoke-virtual {v14, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lio/realm/internal/permissions/PermissionOfferResponse;

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

    .line 528
    new-instance v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;-><init>()V

    move-object v12, v0

    .line 529
    move-object v0, v12

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catchall {:try_start_a6 .. :try_end_b5} :catchall_b9

    .line 531
    invoke-virtual {v10}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 532
    goto :goto_c4

    .line 531
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

    .line 536
    .end local v14    # "table":Lio/realm/internal/Table;
    .end local v15    # "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    .end local v19    # "rowIndex":J
    .end local v21    # "pkColumnIndex":J
    :cond_c4
    :goto_c4
    if-eqz v13, :cond_cb

    invoke-static {v7, v12, v8, v9}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->update(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v0

    goto :goto_cf

    :cond_cb
    invoke-static/range {p0 .. p3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->copy(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionOfferResponse;

    move-result-object v0

    :goto_cf
    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 316
    new-instance v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lio/realm/internal/permissions/PermissionOfferResponse;IILjava/util/Map;)Lio/realm/internal/permissions/PermissionOfferResponse;
    .registers 9
    .param p0, "realmObject"    # Lio/realm/internal/permissions/PermissionOfferResponse;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/permissions/PermissionOfferResponse;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lio/realm/internal/permissions/PermissionOfferResponse;"
        }
    .end annotation

    .line 780
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_62

    if-nez p0, :cond_5

    goto :goto_62

    .line 783
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 785
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 786
    new-instance v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-direct {v1}, Lio/realm/internal/permissions/PermissionOfferResponse;-><init>()V

    .line 787
    .local v1, "unmanagedObject":Lio/realm/internal/permissions/PermissionOfferResponse;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 790
    .end local v1    # "unmanagedObject":Lio/realm/internal/permissions/PermissionOfferResponse;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 791
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    return-object v1

    .line 793
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    .line 794
    .restart local v1    # "unmanagedObject":Lio/realm/internal/permissions/PermissionOfferResponse;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 796
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    .line 797
    .local v2, "unmanagedCopy":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    .line 798
    .local v3, "realmSource":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 799
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 800
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 801
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 802
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 803
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    .line 804
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 806
    return-object v1

    .line 781
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lio/realm/internal/permissions/PermissionOfferResponse;
    .end local v2    # "unmanagedCopy":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;
    :cond_62
    :goto_62
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 13

    .line 300
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "PermissionOfferResponse"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 301
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 302
    const-string v7, "createdAt"

    sget-object v8, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 303
    const-string/jumbo v2, "updatedAt"

    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 304
    const-string v8, "statusCode"

    sget-object v9, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 305
    const-string v2, "statusMessage"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 306
    const-string/jumbo v8, "token"

    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 307
    const-string v2, "realmUrl"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 308
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/internal/permissions/PermissionOfferResponse;
    .registers 21
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 330
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 331
    .local v9, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 332
    .local v10, "obj":Lio/realm/internal/permissions/PermissionOfferResponse;
    if-eqz p2, :cond_73

    .line 333
    const-class v0, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v7, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v11

    .line 334
    .local v11, "table":Lio/realm/internal/Table;
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    .line 335
    .local v12, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    iget-wide v13, v12, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->idIndex:J

    .line 336
    .local v13, "pkColumnIndex":J
    const-wide/16 v0, -0x1

    .line 337
    .local v0, "rowIndex":J
    const-string v2, "id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 338
    const-string v2, "id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v13, v14, v2}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v0

    .line 340
    .end local v0    # "rowIndex":J
    .local v5, "rowIndex":J
    :cond_34
    move-wide v5, v0

    const-wide/16 v0, -0x1

    cmp-long v2, v5, v0

    if-eqz v2, :cond_73

    .line 341
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 343
    .local v1, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    :try_start_44
    invoke-virtual {v11, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v0, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_6c

    move-object/from16 v2, p0

    move-wide/from16 v16, v5

    .end local v5    # "rowIndex":J
    .local v16, "rowIndex":J
    move v5, v0

    move-object v6, v15

    :try_start_5d
    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 344
    new-instance v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;-><init>()V
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_6a

    move-object v10, v0

    .line 346
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 347
    goto :goto_73

    .line 346
    :catchall_6a
    move-exception v0

    goto :goto_6f

    .end local v16    # "rowIndex":J
    .restart local v5    # "rowIndex":J
    :catchall_6c
    move-exception v0

    move-wide/from16 v16, v5

    .end local v5    # "rowIndex":J
    .restart local v16    # "rowIndex":J
    :goto_6f
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    throw v0

    .line 350
    .end local v1    # "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    .end local v11    # "table":Lio/realm/internal/Table;
    .end local v12    # "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    .end local v13    # "pkColumnIndex":J
    .end local v16    # "rowIndex":J
    :cond_73
    :goto_73
    const/4 v0, 0x0

    if-nez v10, :cond_a9

    .line 351
    const-string v1, "id"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 352
    const-string v1, "id"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_91

    .line 353
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v7, v1, v0, v2, v9}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;

    goto :goto_a9

    .line 355
    :cond_91
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    const-string v3, "id"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3, v2, v9}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;

    goto :goto_a9

    .line 358
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_a9
    :goto_a9
    move-object v1, v10

    check-cast v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    .line 363
    .local v1, "objProxy":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;
    const-string v2, "createdAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 364
    const-string v2, "createdAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 365
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_e3

    .line 367
    :cond_c0
    const-string v2, "createdAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 368
    .local v2, "timestamp":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_d5

    .line 369
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_e3

    .line 371
    :cond_d5
    new-instance v3, Ljava/util/Date;

    const-string v4, "createdAt"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 375
    .end local v2    # "timestamp":Ljava/lang/Object;
    :cond_e3
    :goto_e3
    const-string/jumbo v2, "updatedAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 376
    const-string/jumbo v2, "updatedAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 377
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_11e

    .line 379
    :cond_f9
    const-string/jumbo v2, "updatedAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 380
    .restart local v2    # "timestamp":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_10f

    .line 381
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_11e

    .line 383
    :cond_10f
    new-instance v3, Ljava/util/Date;

    const-string/jumbo v4, "updatedAt"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 387
    .end local v2    # "timestamp":Ljava/lang/Object;
    :cond_11e
    :goto_11e
    const-string v2, "statusCode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13f

    .line 388
    const-string v2, "statusCode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_132

    .line 389
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto :goto_13f

    .line 391
    :cond_132
    const-string v2, "statusCode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 394
    :cond_13f
    :goto_13f
    const-string v2, "statusMessage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 395
    const-string v2, "statusMessage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_153

    .line 396
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto :goto_15c

    .line 398
    :cond_153
    const-string v2, "statusMessage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 401
    :cond_15c
    :goto_15c
    const-string/jumbo v2, "token"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 402
    const-string/jumbo v2, "token"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_172

    .line 403
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    goto :goto_17c

    .line 405
    :cond_172
    const-string/jumbo v2, "token"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    .line 408
    :cond_17c
    :goto_17c
    const-string v2, "realmUrl"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 409
    const-string v2, "realmUrl"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 410
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto :goto_199

    .line 412
    :cond_190
    const-string v0, "realmUrl"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 415
    :cond_199
    :goto_199
    return-object v10
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/internal/permissions/PermissionOfferResponse;
    .registers 11
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

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "jsonHasPrimaryKey":Z
    new-instance v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-direct {v1}, Lio/realm/internal/permissions/PermissionOfferResponse;-><init>()V

    .line 424
    .local v1, "obj":Lio/realm/internal/permissions/PermissionOfferResponse;
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    .line 425
    .local v2, "objProxy":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 426
    :goto_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 427
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "name":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_38

    .line 430
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_2f

    .line 431
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_35

    .line 433
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 434
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 436
    :goto_35
    const/4 v0, 0x1

    goto/16 :goto_13d

    .line 437
    :cond_38
    const-string v4, "createdAt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v6, -0x1

    if-eqz v4, :cond_79

    .line 438
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v8, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v8, :cond_52

    .line 439
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 440
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto/16 :goto_13d

    .line 441
    :cond_52
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_6c

    .line 442
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    .line 443
    .local v4, "timestamp":J
    cmp-long v8, v4, v6

    if-lez v8, :cond_6a

    .line 444
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v2, v6}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 446
    .end local v4    # "timestamp":J
    :cond_6a
    goto/16 :goto_13d

    .line 447
    :cond_6c
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto/16 :goto_13d

    .line 449
    :cond_79
    const-string/jumbo v4, "updatedAt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 450
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v8, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v8, :cond_92

    .line 451
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 452
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_13d

    .line 453
    :cond_92
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_ac

    .line 454
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    .line 455
    .restart local v4    # "timestamp":J
    cmp-long v8, v4, v6

    if-lez v8, :cond_aa

    .line 456
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v2, v6}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 458
    .end local v4    # "timestamp":J
    :cond_aa
    goto/16 :goto_13d

    .line 459
    :cond_ac
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_13d

    .line 461
    :cond_b9
    const-string v4, "statusCode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 462
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_d5

    .line 463
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto :goto_13d

    .line 465
    :cond_d5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 466
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto :goto_13d

    .line 468
    :cond_dc
    const-string v4, "statusMessage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 469
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_f4

    .line 470
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto :goto_13d

    .line 472
    :cond_f4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 473
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto :goto_13d

    .line 475
    :cond_fb
    const-string/jumbo v4, "token"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11b

    .line 476
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_114

    .line 477
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    goto :goto_13d

    .line 479
    :cond_114
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 480
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    goto :goto_13d

    .line 482
    :cond_11b
    const-string v4, "realmUrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 483
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_133

    .line 484
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto :goto_13d

    .line 486
    :cond_133
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 487
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto :goto_13d

    .line 490
    :cond_13a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 492
    .end local v3    # "name":Ljava/lang/String;
    :goto_13d
    goto/16 :goto_c

    .line 493
    :cond_13f
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 494
    if-eqz v0, :cond_14b

    .line 497
    invoke-virtual {p0, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lio/realm/internal/permissions/PermissionOfferResponse;

    return-object v3

    .line 495
    :cond_14b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 312
    sget-object v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 320
    const-string v0, "PermissionOfferResponse"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)J
    .registers 28
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/internal/permissions/PermissionOfferResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionOfferResponse;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 562
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_3c

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_3c

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 563
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 565
    :cond_3c
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 566
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 567
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    .line 568
    .local v14, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->idIndex:J

    .line 569
    .local v9, "pkColumnIndex":J
    const-wide/16 v3, -0x1

    .line 570
    .local v3, "rowIndex":J
    move-object v5, v0

    check-cast v5, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v15

    .line 571
    .local v15, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v15, :cond_69

    .line 572
    move-object v5, v15

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 574
    :cond_69
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_76

    .line 575
    invoke-static {v1, v9, v10, v15}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 579
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :goto_73
    move-wide/from16 v16, v3

    goto :goto_7a

    .line 577
    .end local v16    # "rowIndex":J
    .restart local v3    # "rowIndex":J
    :cond_76
    invoke-static {v15}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    goto :goto_73

    .line 579
    .end local v3    # "rowIndex":J
    .restart local v16    # "rowIndex":J
    :goto_7a
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 581
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_a1

    .line 582
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    const/16 v21, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .local v22, "pkColumnIndex":J
    move-wide/from16 v9, v19

    move/from16 v11, v21

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_a3

    .line 584
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :cond_a1
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    :goto_a3
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v19

    .line 585
    .local v19, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v19, :cond_b9

    .line 586
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 588
    :cond_b9
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v20

    .line 589
    .local v20, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v20, :cond_cf

    .line 590
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 592
    :cond_cf
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v11

    .line 593
    .local v11, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v11, :cond_e2

    .line 594
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 596
    :cond_e2
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v21

    .line 597
    .local v21, "realmGet$token":Ljava/lang/String;
    if-eqz v21, :cond_f6

    .line 598
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 600
    :cond_f6
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v24

    .line 601
    .local v24, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v24, :cond_10a

    .line 602
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 604
    :cond_10a
    return-wide v16
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 29
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

    .line 608
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 609
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 610
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    .line 611
    .local v14, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->idIndex:J

    .line 612
    .local v9, "pkColumnIndex":J
    const/4 v3, 0x0

    .line 613
    .local v3, "object":Lio/realm/internal/permissions/PermissionOfferResponse;
    :goto_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_132

    .line 614
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/internal/permissions/PermissionOfferResponse;

    .line 615
    .end local v3    # "object":Lio/realm/internal/permissions/PermissionOfferResponse;
    .local v15, "object":Lio/realm/internal/permissions/PermissionOfferResponse;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 616
    nop

    .line 612
    :goto_32
    move-wide/from16 v22, v9

    goto/16 :goto_12d

    .line 618
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

    .line 619
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

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    goto :goto_32

    .line 622
    :cond_77
    const-wide/16 v3, -0x1

    .line 623
    .local v3, "rowIndex":J
    move-object v5, v15

    check-cast v5, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v11

    .line 624
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v11, :cond_89

    .line 625
    move-object v5, v11

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 627
    :cond_89
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_96

    .line 628
    invoke-static {v1, v9, v10, v11}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 632
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :goto_93
    move-wide/from16 v16, v3

    goto :goto_9a

    .line 630
    .end local v16    # "rowIndex":J
    .restart local v3    # "rowIndex":J
    :cond_96
    invoke-static {v11}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    goto :goto_93

    .line 632
    .end local v3    # "rowIndex":J
    .restart local v16    # "rowIndex":J
    :goto_9a
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 634
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_c1

    .line 635
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    const/16 v21, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .local v22, "pkColumnIndex":J
    move-wide/from16 v9, v19

    move-object/from16 v19, v11

    .end local v11    # "primaryKeyValue":Ljava/lang/Object;
    .local v19, "primaryKeyValue":Ljava/lang/Object;
    move/from16 v11, v21

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_c5

    .line 637
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    .restart local v11    # "primaryKeyValue":Ljava/lang/Object;
    :cond_c1
    move-wide/from16 v22, v9

    move-object/from16 v19, v11

    .end local v9    # "pkColumnIndex":J
    .end local v11    # "primaryKeyValue":Ljava/lang/Object;
    .restart local v19    # "primaryKeyValue":Ljava/lang/Object;
    .restart local v22    # "pkColumnIndex":J
    :goto_c5
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v20

    .line 638
    .local v20, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v20, :cond_db

    .line 639
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 641
    :cond_db
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v21

    .line 642
    .local v21, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v21, :cond_f1

    .line 643
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 645
    :cond_f1
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v11

    .line 646
    .local v11, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v11, :cond_104

    .line 647
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 649
    :cond_104
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v24

    .line 650
    .local v24, "realmGet$token":Ljava/lang/String;
    if-eqz v24, :cond_118

    .line 651
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 653
    :cond_118
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v25

    .line 654
    .local v25, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v25, :cond_12c

    .line 655
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v25

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 657
    .end local v11    # "realmGet$statusMessage":Ljava/lang/String;
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$createdAt":Ljava/util/Date;
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v20    # "realmGet$updatedAt":Ljava/util/Date;
    .end local v21    # "realmGet$statusCode":Ljava/lang/Number;
    .end local v24    # "realmGet$token":Ljava/lang/String;
    .end local v25    # "realmGet$realmUrl":Ljava/lang/String;
    :cond_12c
    nop

    .line 612
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :goto_12d
    move-object v3, v15

    move-wide/from16 v9, v22

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    goto/16 :goto_1e

    .line 658
    .end local v15    # "object":Lio/realm/internal/permissions/PermissionOfferResponse;
    .end local v22    # "pkColumnIndex":J
    .local v3, "object":Lio/realm/internal/permissions/PermissionOfferResponse;
    .restart local v9    # "pkColumnIndex":J
    :cond_132
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)J
    .registers 28
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/internal/permissions/PermissionOfferResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionOfferResponse;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 661
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_3c

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_3c

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 662
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 664
    :cond_3c
    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 665
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 666
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    .line 667
    .local v14, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->idIndex:J

    .line 668
    .local v9, "pkColumnIndex":J
    const-wide/16 v3, -0x1

    .line 669
    .local v3, "rowIndex":J
    move-object v5, v0

    check-cast v5, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v15

    .line 670
    .local v15, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v15, :cond_69

    .line 671
    move-object v5, v15

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 673
    :cond_69
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_73

    .line 674
    invoke-static {v1, v9, v10, v15}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 676
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :cond_73
    move-wide/from16 v16, v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 678
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_9c

    .line 679
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    const/16 v21, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .local v22, "pkColumnIndex":J
    move-wide/from16 v9, v19

    move/from16 v11, v21

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_a7

    .line 681
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :cond_9c
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 683
    :goto_a7
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v19

    .line 684
    .local v19, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v19, :cond_be

    .line 685
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_c7

    .line 687
    :cond_be
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 689
    :goto_c7
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v20

    .line 690
    .local v20, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v20, :cond_de

    .line 691
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_e7

    .line 693
    :cond_de
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 695
    :goto_e7
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v11

    .line 696
    .local v11, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v11, :cond_fb

    .line 697
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_104

    .line 699
    :cond_fb
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 701
    :goto_104
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v21

    .line 702
    .local v21, "realmGet$token":Ljava/lang/String;
    if-eqz v21, :cond_119

    .line 703
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_122

    .line 705
    :cond_119
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 707
    :goto_122
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v24

    .line 708
    .local v24, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v24, :cond_137

    .line 709
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_140

    .line 711
    :cond_137
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 713
    :goto_140
    return-wide v16
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 29
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

    .line 717
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lio/realm/internal/permissions/PermissionOfferResponse;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 718
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 719
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/internal/permissions/PermissionOfferResponse;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    .line 720
    .local v14, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->idIndex:J

    .line 721
    .local v9, "pkColumnIndex":J
    const/4 v3, 0x0

    .line 722
    .local v3, "object":Lio/realm/internal/permissions/PermissionOfferResponse;
    :goto_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_168

    .line 723
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/internal/permissions/PermissionOfferResponse;

    .line 724
    .end local v3    # "object":Lio/realm/internal/permissions/PermissionOfferResponse;
    .local v15, "object":Lio/realm/internal/permissions/PermissionOfferResponse;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 725
    nop

    .line 721
    :goto_32
    move-wide/from16 v22, v9

    goto/16 :goto_163

    .line 727
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

    .line 728
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

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    goto :goto_32

    .line 731
    :cond_77
    const-wide/16 v3, -0x1

    .line 732
    .local v3, "rowIndex":J
    move-object v5, v15

    check-cast v5, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v11

    .line 733
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v11, :cond_89

    .line 734
    move-object v5, v11

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 736
    :cond_89
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_93

    .line 737
    invoke-static {v1, v9, v10, v11}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 739
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :cond_93
    move-wide/from16 v16, v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 741
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_bc

    .line 742
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    const/16 v21, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .local v22, "pkColumnIndex":J
    move-wide/from16 v9, v19

    move-object/from16 v19, v11

    .end local v11    # "primaryKeyValue":Ljava/lang/Object;
    .local v19, "primaryKeyValue":Ljava/lang/Object;
    move/from16 v11, v21

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_c9

    .line 744
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    .restart local v11    # "primaryKeyValue":Ljava/lang/Object;
    :cond_bc
    move-wide/from16 v22, v9

    move-object/from16 v19, v11

    .end local v9    # "pkColumnIndex":J
    .end local v11    # "primaryKeyValue":Ljava/lang/Object;
    .restart local v19    # "primaryKeyValue":Ljava/lang/Object;
    .restart local v22    # "pkColumnIndex":J
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 746
    :goto_c9
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v20

    .line 747
    .local v20, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v20, :cond_e0

    .line 748
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_e9

    .line 750
    :cond_e0
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 752
    :goto_e9
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v21

    .line 753
    .local v21, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v21, :cond_100

    .line 754
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_109

    .line 756
    :cond_100
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 758
    :goto_109
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v11

    .line 759
    .local v11, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v11, :cond_11d

    .line 760
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_126

    .line 762
    :cond_11d
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 764
    :goto_126
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v24

    .line 765
    .local v24, "realmGet$token":Ljava/lang/String;
    if-eqz v24, :cond_13b

    .line 766
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_144

    .line 768
    :cond_13b
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 770
    :goto_144
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v25

    .line 771
    .local v25, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v25, :cond_159

    .line 772
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v25

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_162

    .line 774
    :cond_159
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 776
    .end local v11    # "realmGet$statusMessage":Ljava/lang/String;
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$createdAt":Ljava/util/Date;
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v20    # "realmGet$updatedAt":Ljava/util/Date;
    .end local v21    # "realmGet$statusCode":Ljava/lang/Number;
    .end local v24    # "realmGet$token":Ljava/lang/String;
    .end local v25    # "realmGet$realmUrl":Ljava/lang/String;
    :goto_162
    nop

    .line 721
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :goto_163
    move-object v3, v15

    move-wide/from16 v9, v22

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    goto/16 :goto_1e

    .line 777
    .end local v15    # "object":Lio/realm/internal/permissions/PermissionOfferResponse;
    .end local v22    # "pkColumnIndex":J
    .local v3, "object":Lio/realm/internal/permissions/PermissionOfferResponse;
    .restart local v9    # "pkColumnIndex":J
    :cond_168
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    return-void
.end method

.method static update(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionOfferResponse;Lio/realm/internal/permissions/PermissionOfferResponse;Ljava/util/Map;)Lio/realm/internal/permissions/PermissionOfferResponse;
    .registers 7
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "realmObject"    # Lio/realm/internal/permissions/PermissionOfferResponse;
    .param p2, "newObject"    # Lio/realm/internal/permissions/PermissionOfferResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionOfferResponse;",
            "Lio/realm/internal/permissions/PermissionOfferResponse;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/internal/permissions/PermissionOfferResponse;"
        }
    .end annotation

    .line 810
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    .line 811
    .local v0, "realmObjectTarget":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;

    .line 812
    .local v1, "realmObjectSource":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 813
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 814
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 815
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 816
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    .line 817
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 818
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 879
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 880
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 881
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;

    .line 883
    .local v2, "aPermissionOfferResponse":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;
    iget-object v3, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 884
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 885
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

    .line 887
    :cond_35
    iget-object v5, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 888
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 889
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

    .line 891
    :cond_5d
    iget-object v7, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 893
    :cond_76
    return v0

    .line 880
    .end local v2    # "aPermissionOfferResponse":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;
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

    .line 866
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 870
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 871
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

    .line 872
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 873
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 874
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 92
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 93
    return-void

    .line 95
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 96
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iput-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    .line 97
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 98
    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 99
    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 100
    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 101
    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 102
    return-void
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .registers 4

    .line 125
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 126
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 4

    .line 107
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 108
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->idIndex:J

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

    .line 861
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$realmUrl()Ljava/lang/String;
    .registers 4

    .line 272
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 273
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$statusCode()Ljava/lang/Integer;
    .registers 4

    .line 181
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 182
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_1b
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$statusMessage()Ljava/lang/String;
    .registers 4

    .line 214
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 215
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$token()Ljava/lang/String;
    .registers 4

    .line 244
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 245
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .registers 4

    .line 153
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 154
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .registers 10
    .param p1, "value"    # Ljava/util/Date;

    .line 131
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 132
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 133
    return-void

    .line 135
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 136
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 139
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    .line 140
    return-void

    .line 137
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'createdAt\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 144
    if-eqz p1, :cond_4c

    .line 147
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    .line 148
    return-void

    .line 145
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'createdAt\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    return-void

    .line 118
    :cond_9
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 119
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$realmUrl(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 279
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 280
    return-void

    .line 282
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 283
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 284
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 285
    return-void

    .line 287
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 288
    return-void

    .line 291
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 292
    if-nez p1, :cond_55

    .line 293
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 294
    return-void

    .line 296
    :cond_55
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 297
    return-void
.end method

.method public realmSet$statusCode(Ljava/lang/Integer;)V
    .registers 18
    .param p1, "value"    # Ljava/lang/Integer;

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 191
    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_13

    .line 192
    return-void

    .line 194
    :cond_13
    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    .line 195
    .local v1, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2c

    .line 196
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v3, v3, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 197
    return-void

    .line 199
    :cond_2c
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v9, v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v13, v2

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 200
    return-void

    .line 203
    .end local v1    # "row":Lio/realm/internal/Row;
    :cond_42
    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 204
    if-nez p1, :cond_5b

    .line 205
    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    .line 206
    return-void

    .line 208
    :cond_5b
    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 209
    return-void
.end method

.method public realmSet$statusMessage(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 221
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 222
    return-void

    .line 224
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 225
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 226
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 227
    return-void

    .line 229
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 230
    return-void

    .line 233
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 234
    if-nez p1, :cond_55

    .line 235
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 236
    return-void

    .line 238
    :cond_55
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 239
    return-void
.end method

.method public realmSet$token(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 251
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 252
    return-void

    .line 254
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 255
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 258
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 259
    return-void

    .line 256
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'token\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 263
    if-eqz p1, :cond_4c

    .line 266
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 267
    return-void

    .line 264
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'token\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .registers 10
    .param p1, "value"    # Ljava/util/Date;

    .line 159
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 160
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 161
    return-void

    .line 163
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 164
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 167
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    .line 168
    return-void

    .line 165
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'updatedAt\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 172
    if-eqz p1, :cond_4c

    .line 175
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    .line 176
    return-void

    .line 173
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'updatedAt\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 824
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 825
    const-string v0, "Invalid object"

    return-object v0

    .line 827
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PermissionOfferResponse = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    const-string/jumbo v1, "{createdAt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 834
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    const-string/jumbo v1, "{updatedAt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 838
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const-string/jumbo v1, "{statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6b

    :cond_69
    const-string v1, "null"

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 842
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const-string/jumbo v1, "{statusMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8a

    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_8c

    :cond_8a
    const-string v1, "null"

    :goto_8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const-string/jumbo v1, "{token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->realmGet$token()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string/jumbo v1, "{realmUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c3

    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_c5

    :cond_c3
    const-string v1, "null"

    :goto_c5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxy.ClassNameHelper (io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxy$ClassNameHelper)
.class public final Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "io_realm_internal_permissions_PermissionOfferResponseRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "PermissionOfferResponse"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxy.PermissionOfferResponseColumnInfo (io.realm.io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo)
.class final Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "io_realm_internal_permissions_PermissionOfferResponseRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionOfferResponseColumnInfo"
.end annotation


# instance fields
.field createdAtIndex:J

.field idIndex:J

.field realmUrlIndex:J

.field statusCodeIndex:J

.field statusMessageIndex:J

.field tokenIndex:J

.field updatedAtIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 58
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 59
    invoke-virtual {p0, p1, p0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 46
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 47
    const-string v0, "PermissionOfferResponse"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 48
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->idIndex:J

    .line 49
    const-string v1, "createdAt"

    const-string v2, "createdAt"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    .line 50
    const-string/jumbo v1, "updatedAt"

    const-string/jumbo v2, "updatedAt"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    .line 51
    const-string v1, "statusCode"

    const-string v2, "statusCode"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    .line 52
    const-string v1, "statusMessage"

    const-string v2, "statusMessage"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    .line 53
    const-string/jumbo v1, "token"

    const-string/jumbo v2, "token"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    .line 54
    const-string v1, "realmUrl"

    const-string v2, "realmUrl"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    .line 55
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 64
    new-instance v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 69
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    .line 70
    .local v0, "src":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;

    .line 71
    .local v1, "dst":Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->idIndex:J

    .line 72
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->createdAtIndex:J

    .line 73
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->updatedAtIndex:J

    .line 74
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusCodeIndex:J

    .line 75
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->statusMessageIndex:J

    .line 76
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->tokenIndex:J

    .line 77
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionOfferResponseRealmProxy$PermissionOfferResponseColumnInfo;->realmUrlIndex:J

    .line 78
    return-void
.end method
