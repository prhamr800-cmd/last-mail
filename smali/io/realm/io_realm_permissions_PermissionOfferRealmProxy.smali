###### Class io.realm.io_realm_permissions_PermissionOfferRealmProxy (io.realm.io_realm_permissions_PermissionOfferRealmProxy)
.class public Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;
.super Lio/realm/permissions/PermissionOffer;
.source "io_realm_permissions_PermissionOfferRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$ClassNameHelper;,
        Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lio/realm/permissions/PermissionOffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 93
    invoke-static {}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Lio/realm/permissions/PermissionOffer;-><init>()V

    .line 99
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 100
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;ZLjava/util/Map;)Lio/realm/permissions/PermissionOffer;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lio/realm/permissions/PermissionOffer;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/PermissionOffer;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/permissions/PermissionOffer;"
        }
    .end annotation

    .line 721
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 722
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 723
    move-object v1, v0

    check-cast v1, Lio/realm/permissions/PermissionOffer;

    return-object v1

    .line 727
    :cond_c
    const-class v1, Lio/realm/permissions/PermissionOffer;

    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/permissions/PermissionOffer;

    .line 728
    .local v1, "realmObject":Lio/realm/permissions/PermissionOffer;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    .line 731
    .local v2, "realmObjectSource":Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    .line 733
    .local v3, "realmObjectCopy":Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 734
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 735
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 736
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 737
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    .line 738
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 739
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayRead()Z

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayRead(Z)V

    .line 740
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayWrite(Z)V

    .line 741
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayManage()Z

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayManage(Z)V

    .line 742
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$expiresAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$expiresAt(Ljava/util/Date;)V

    .line 743
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;ZLjava/util/Map;)Lio/realm/permissions/PermissionOffer;
    .registers 27
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/permissions/PermissionOffer;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/PermissionOffer;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/permissions/PermissionOffer;"
        }
    .end annotation

    .line 682
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

    .line 683
    move-object v0, v8

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 684
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, v7, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_39

    .line 687
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 688
    return-object v8

    .line 685
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_41
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lio/realm/BaseRealm$RealmObjectContext;

    .line 692
    .local v10, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lio/realm/internal/RealmObjectProxy;

    .line 693
    .local v11, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v11, :cond_57

    .line 694
    move-object v0, v11

    check-cast v0, Lio/realm/permissions/PermissionOffer;

    return-object v0

    .line 697
    :cond_57
    const/4 v12, 0x0

    .line 698
    .local v12, "realmObject":Lio/realm/permissions/PermissionOffer;
    move/from16 v13, p2

    .line 699
    .local v13, "canUpdate":Z
    if-eqz v13, :cond_c4

    .line 700
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v7, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v14

    .line 701
    .local v14, "table":Lio/realm/internal/Table;
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    .line 702
    .local v15, "columnInfo":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    iget-wide v5, v15, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    .line 703
    .local v5, "pkColumnIndex":J
    move-object v0, v8

    check-cast v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v5, v6, v0}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    .line 704
    .local v3, "rowIndex":J
    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-nez v2, :cond_84

    .line 705
    const/4 v13, 0x0

    goto :goto_c4

    .line 708
    :cond_84
    :try_start_84
    invoke-virtual {v14, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lio/realm/permissions/PermissionOffer;

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

    .line 709
    new-instance v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;-><init>()V

    move-object v12, v0

    .line 710
    move-object v0, v12

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catchall {:try_start_a6 .. :try_end_b5} :catchall_b9

    .line 712
    invoke-virtual {v10}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 713
    goto :goto_c4

    .line 712
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

    .line 717
    .end local v14    # "table":Lio/realm/internal/Table;
    .end local v15    # "columnInfo":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    .end local v19    # "rowIndex":J
    .end local v21    # "pkColumnIndex":J
    :cond_c4
    :goto_c4
    if-eqz v13, :cond_cb

    invoke-static {v7, v12, v8, v9}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->update(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)Lio/realm/permissions/PermissionOffer;

    move-result-object v0

    goto :goto_cf

    :cond_cb
    invoke-static/range {p0 .. p3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->copy(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;ZLjava/util/Map;)Lio/realm/permissions/PermissionOffer;

    move-result-object v0

    :goto_cf
    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 431
    new-instance v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lio/realm/permissions/PermissionOffer;IILjava/util/Map;)Lio/realm/permissions/PermissionOffer;
    .registers 9
    .param p0, "realmObject"    # Lio/realm/permissions/PermissionOffer;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/permissions/PermissionOffer;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lio/realm/permissions/PermissionOffer;"
        }
    .end annotation

    .line 997
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_7f

    if-nez p0, :cond_6

    goto/16 :goto_7f

    .line 1000
    :cond_6
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 1002
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1c

    .line 1003
    new-instance v1, Lio/realm/permissions/PermissionOffer;

    invoke-direct {v1}, Lio/realm/permissions/PermissionOffer;-><init>()V

    .line 1004
    .local v1, "unmanagedObject":Lio/realm/permissions/PermissionOffer;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 1007
    .end local v1    # "unmanagedObject":Lio/realm/permissions/PermissionOffer;
    :cond_1c
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_25

    .line 1008
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/permissions/PermissionOffer;

    return-object v1

    .line 1010
    :cond_25
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/permissions/PermissionOffer;

    .line 1011
    .restart local v1    # "unmanagedObject":Lio/realm/permissions/PermissionOffer;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 1013
    :goto_2b
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    .line 1014
    .local v2, "unmanagedCopy":Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    .line 1015
    .local v3, "realmSource":Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 1016
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 1017
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 1018
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 1019
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 1020
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    .line 1021
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 1022
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayRead()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayRead(Z)V

    .line 1023
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayWrite(Z)V

    .line 1024
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayManage()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayManage(Z)V

    .line 1025
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$expiresAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$expiresAt(Ljava/util/Date;)V

    .line 1027
    return-object v1

    .line 998
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lio/realm/permissions/PermissionOffer;
    .end local v2    # "unmanagedCopy":Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;
    :cond_7f
    :goto_7f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 13

    .line 411
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "PermissionOffer"

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 412
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 413
    const-string v7, "createdAt"

    sget-object v8, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 414
    const-string/jumbo v2, "updatedAt"

    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 415
    const-string v8, "statusCode"

    sget-object v9, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 416
    const-string v2, "statusMessage"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 417
    const-string/jumbo v8, "token"

    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v11, 0x1

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 418
    const-string v2, "realmUrl"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 419
    const-string v8, "mayRead"

    sget-object v9, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 420
    const-string v2, "mayWrite"

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 421
    const-string v8, "mayManage"

    sget-object v9, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 422
    const-string v2, "expiresAt"

    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 423
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/permissions/PermissionOffer;
    .registers 21
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 445
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 446
    .local v9, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 447
    .local v10, "obj":Lio/realm/permissions/PermissionOffer;
    if-eqz p2, :cond_73

    .line 448
    const-class v0, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v7, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v11

    .line 449
    .local v11, "table":Lio/realm/internal/Table;
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    .line 450
    .local v12, "columnInfo":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    iget-wide v13, v12, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    .line 451
    .local v13, "pkColumnIndex":J
    const-wide/16 v0, -0x1

    .line 452
    .local v0, "rowIndex":J
    const-string v2, "id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 453
    const-string v2, "id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v13, v14, v2}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v0

    .line 455
    .end local v0    # "rowIndex":J
    .local v5, "rowIndex":J
    :cond_34
    move-wide v5, v0

    const-wide/16 v0, -0x1

    cmp-long v2, v5, v0

    if-eqz v2, :cond_73

    .line 456
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 458
    .local v1, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    :try_start_44
    invoke-virtual {v11, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lio/realm/permissions/PermissionOffer;

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

    .line 459
    new-instance v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;-><init>()V
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_6a

    move-object v10, v0

    .line 461
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 462
    goto :goto_73

    .line 461
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

    .line 465
    .end local v1    # "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    .end local v11    # "table":Lio/realm/internal/Table;
    .end local v12    # "columnInfo":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    .end local v13    # "pkColumnIndex":J
    .end local v16    # "rowIndex":J
    :cond_73
    :goto_73
    const/4 v0, 0x0

    if-nez v10, :cond_a9

    .line 466
    const-string v1, "id"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 467
    const-string v1, "id"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_91

    .line 468
    const-class v1, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v7, v1, v0, v2, v9}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;

    goto :goto_a9

    .line 470
    :cond_91
    const-class v1, Lio/realm/permissions/PermissionOffer;

    const-string v3, "id"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3, v2, v9}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;

    goto :goto_a9

    .line 473
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_a9
    :goto_a9
    move-object v1, v10

    check-cast v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    .line 478
    .local v1, "objProxy":Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;
    const-string v2, "createdAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 479
    const-string v2, "createdAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 480
    invoke-interface {v1, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_e3

    .line 482
    :cond_c0
    const-string v2, "createdAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 483
    .local v2, "timestamp":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_d5

    .line 484
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_e3

    .line 486
    :cond_d5
    new-instance v3, Ljava/util/Date;

    const-string v4, "createdAt"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 490
    .end local v2    # "timestamp":Ljava/lang/Object;
    :cond_e3
    :goto_e3
    const-string/jumbo v2, "updatedAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 491
    const-string/jumbo v2, "updatedAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 492
    invoke-interface {v1, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_11e

    .line 494
    :cond_f9
    const-string/jumbo v2, "updatedAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 495
    .restart local v2    # "timestamp":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_10f

    .line 496
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_11e

    .line 498
    :cond_10f
    new-instance v3, Ljava/util/Date;

    const-string/jumbo v4, "updatedAt"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 502
    .end local v2    # "timestamp":Ljava/lang/Object;
    :cond_11e
    :goto_11e
    const-string v2, "statusCode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13f

    .line 503
    const-string v2, "statusCode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_132

    .line 504
    invoke-interface {v1, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto :goto_13f

    .line 506
    :cond_132
    const-string v2, "statusCode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 509
    :cond_13f
    :goto_13f
    const-string v2, "statusMessage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 510
    const-string v2, "statusMessage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_153

    .line 511
    invoke-interface {v1, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto :goto_15c

    .line 513
    :cond_153
    const-string v2, "statusMessage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 516
    :cond_15c
    :goto_15c
    const-string/jumbo v2, "token"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 517
    const-string/jumbo v2, "token"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_172

    .line 518
    invoke-interface {v1, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    goto :goto_17c

    .line 520
    :cond_172
    const-string/jumbo v2, "token"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    .line 523
    :cond_17c
    :goto_17c
    const-string v2, "realmUrl"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 524
    const-string v2, "realmUrl"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 525
    invoke-interface {v1, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto :goto_199

    .line 527
    :cond_190
    const-string v2, "realmUrl"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 530
    :cond_199
    :goto_199
    const-string v2, "mayRead"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1bb

    .line 531
    const-string v2, "mayRead"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b3

    .line 534
    const-string v2, "mayRead"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayRead(Z)V

    goto :goto_1bb

    .line 532
    :cond_1b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'mayRead\' to null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_1bb
    :goto_1bb
    const-string v2, "mayWrite"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1dd

    .line 538
    const-string v2, "mayWrite"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d5

    .line 541
    const-string v2, "mayWrite"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayWrite(Z)V

    goto :goto_1dd

    .line 539
    :cond_1d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'mayWrite\' to null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_1dd
    :goto_1dd
    const-string v2, "mayManage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ff

    .line 545
    const-string v2, "mayManage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f7

    .line 548
    const-string v2, "mayManage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayManage(Z)V

    goto :goto_1ff

    .line 546
    :cond_1f7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'mayManage\' to null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_1ff
    :goto_1ff
    const-string v2, "expiresAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_236

    .line 552
    const-string v2, "expiresAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_213

    .line 553
    invoke-interface {v1, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$expiresAt(Ljava/util/Date;)V

    goto :goto_236

    .line 555
    :cond_213
    const-string v0, "expiresAt"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 556
    .local v0, "timestamp":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_228

    .line 557
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$expiresAt(Ljava/util/Date;)V

    goto :goto_236

    .line 559
    :cond_228
    new-instance v2, Ljava/util/Date;

    const-string v3, "expiresAt"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$expiresAt(Ljava/util/Date;)V

    .line 563
    .end local v0    # "timestamp":Ljava/lang/Object;
    :cond_236
    :goto_236
    return-object v10
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/permissions/PermissionOffer;
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

    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, "jsonHasPrimaryKey":Z
    new-instance v1, Lio/realm/permissions/PermissionOffer;

    invoke-direct {v1}, Lio/realm/permissions/PermissionOffer;-><init>()V

    .line 572
    .local v1, "obj":Lio/realm/permissions/PermissionOffer;
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    .line 573
    .local v2, "objProxy":Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 574
    :goto_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ed

    .line 575
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "name":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_38

    .line 578
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_2f

    .line 579
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_35

    .line 581
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 582
    invoke-interface {v2, v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 584
    :goto_35
    const/4 v0, 0x1

    goto/16 :goto_1eb

    .line 585
    :cond_38
    const-string v4, "createdAt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v6, -0x1

    if-eqz v4, :cond_79

    .line 586
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v8, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v8, :cond_52

    .line 587
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 588
    invoke-interface {v2, v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto/16 :goto_1eb

    .line 589
    :cond_52
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_6c

    .line 590
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    .line 591
    .local v4, "timestamp":J
    cmp-long v8, v4, v6

    if-lez v8, :cond_6a

    .line 592
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v2, v6}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 594
    .end local v4    # "timestamp":J
    :cond_6a
    goto/16 :goto_1eb

    .line 595
    :cond_6c
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto/16 :goto_1eb

    .line 597
    :cond_79
    const-string/jumbo v4, "updatedAt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 598
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v8, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v8, :cond_92

    .line 599
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 600
    invoke-interface {v2, v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_1eb

    .line 601
    :cond_92
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_ac

    .line 602
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    .line 603
    .restart local v4    # "timestamp":J
    cmp-long v8, v4, v6

    if-lez v8, :cond_aa

    .line 604
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v2, v6}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 606
    .end local v4    # "timestamp":J
    :cond_aa
    goto/16 :goto_1eb

    .line 607
    :cond_ac
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_1eb

    .line 609
    :cond_b9
    const-string v4, "statusCode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 610
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_d6

    .line 611
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto/16 :goto_1eb

    .line 613
    :cond_d6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 614
    invoke-interface {v2, v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto/16 :goto_1eb

    .line 616
    :cond_de
    const-string v4, "statusMessage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 617
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_f7

    .line 618
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto/16 :goto_1eb

    .line 620
    :cond_f7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 621
    invoke-interface {v2, v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto/16 :goto_1eb

    .line 623
    :cond_ff
    const-string/jumbo v4, "token"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 624
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_119

    .line 625
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    goto/16 :goto_1eb

    .line 627
    :cond_119
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 628
    invoke-interface {v2, v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    goto/16 :goto_1eb

    .line 630
    :cond_121
    const-string v4, "realmUrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_142

    .line 631
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_13a

    .line 632
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto/16 :goto_1eb

    .line 634
    :cond_13a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 635
    invoke-interface {v2, v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto/16 :goto_1eb

    .line 637
    :cond_142
    const-string v4, "mayRead"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_166

    .line 638
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_15b

    .line 639
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayRead(Z)V

    goto/16 :goto_1eb

    .line 641
    :cond_15b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 642
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Trying to set non-nullable field \'mayRead\' to null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 644
    :cond_166
    const-string v4, "mayWrite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_189

    .line 645
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_17e

    .line 646
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayWrite(Z)V

    goto :goto_1eb

    .line 648
    :cond_17e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 649
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Trying to set non-nullable field \'mayWrite\' to null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 651
    :cond_189
    const-string v4, "mayManage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ac

    .line 652
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1a1

    .line 653
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayManage(Z)V

    goto :goto_1eb

    .line 655
    :cond_1a1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 656
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Trying to set non-nullable field \'mayManage\' to null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 658
    :cond_1ac
    const-string v4, "expiresAt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e8

    .line 659
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v8, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v8, :cond_1c3

    .line 660
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 661
    invoke-interface {v2, v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$expiresAt(Ljava/util/Date;)V

    goto :goto_1eb

    .line 662
    :cond_1c3
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_1dc

    .line 663
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    .line 664
    .restart local v4    # "timestamp":J
    cmp-long v8, v4, v6

    if-lez v8, :cond_1db

    .line 665
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v2, v6}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$expiresAt(Ljava/util/Date;)V

    .line 667
    .end local v4    # "timestamp":J
    :cond_1db
    goto :goto_1eb

    .line 668
    :cond_1dc
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$expiresAt(Ljava/util/Date;)V

    goto :goto_1eb

    .line 671
    :cond_1e8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 673
    .end local v3    # "name":Ljava/lang/String;
    :goto_1eb
    goto/16 :goto_c

    .line 674
    :cond_1ed
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 675
    if-eqz v0, :cond_1f9

    .line 678
    invoke-virtual {p0, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lio/realm/permissions/PermissionOffer;

    return-object v3

    .line 676
    :cond_1f9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 427
    sget-object v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 435
    const-string v0, "PermissionOffer"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)J
    .registers 30
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/permissions/PermissionOffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/PermissionOffer;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 747
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

    .line 748
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 750
    :cond_3c
    const-class v1, Lio/realm/permissions/PermissionOffer;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 751
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 752
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    .line 753
    .local v14, "columnInfo":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    .line 754
    .local v9, "pkColumnIndex":J
    const-wide/16 v3, -0x1

    .line 755
    .local v3, "rowIndex":J
    move-object v5, v0

    check-cast v5, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v15

    .line 756
    .local v15, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v15, :cond_69

    .line 757
    move-object v5, v15

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 759
    :cond_69
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_76

    .line 760
    invoke-static {v1, v9, v10, v15}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 764
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :goto_73
    move-wide/from16 v16, v3

    goto :goto_7a

    .line 762
    .end local v16    # "rowIndex":J
    .restart local v3    # "rowIndex":J
    :cond_76
    invoke-static {v15}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    goto :goto_73

    .line 764
    .end local v3    # "rowIndex":J
    .restart local v16    # "rowIndex":J
    :goto_7a
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 766
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_a1

    .line 767
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

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

    .line 769
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :cond_a1
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    :goto_a3
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v19

    .line 770
    .local v19, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v19, :cond_b9

    .line 771
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 773
    :cond_b9
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v20

    .line 774
    .local v20, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v20, :cond_cf

    .line 775
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 777
    :cond_cf
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v21

    .line 778
    .local v21, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v21, :cond_e3

    .line 779
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 781
    :cond_e3
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v24

    .line 782
    .local v24, "realmGet$token":Ljava/lang/String;
    if-eqz v24, :cond_f7

    .line 783
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 785
    :cond_f7
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v25

    .line 786
    .local v25, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v25, :cond_10b

    .line 787
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v25

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 789
    :cond_10b
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 790
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 791
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayManage()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 792
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$expiresAt()Ljava/util/Date;

    move-result-object v26

    .line 793
    .local v26, "realmGet$expiresAt":Ljava/util/Date;
    if-eqz v26, :cond_14b

    .line 794
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 796
    :cond_14b
    return-wide v16
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 31
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

    .line 800
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lio/realm/permissions/PermissionOffer;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 801
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 802
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    .line 803
    .local v14, "columnInfo":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    .line 804
    .local v9, "pkColumnIndex":J
    const/4 v3, 0x0

    .line 805
    .local v3, "object":Lio/realm/permissions/PermissionOffer;
    :goto_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_173

    .line 806
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/permissions/PermissionOffer;

    .line 807
    .end local v3    # "object":Lio/realm/permissions/PermissionOffer;
    .local v15, "object":Lio/realm/permissions/PermissionOffer;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 808
    nop

    .line 804
    :goto_32
    move-wide/from16 v22, v9

    goto/16 :goto_16e

    .line 810
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

    .line 811
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

    .line 812
    goto :goto_32

    .line 814
    :cond_77
    const-wide/16 v3, -0x1

    .line 815
    .local v3, "rowIndex":J
    move-object v5, v15

    check-cast v5, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v11

    .line 816
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v11, :cond_89

    .line 817
    move-object v5, v11

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 819
    :cond_89
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_96

    .line 820
    invoke-static {v1, v9, v10, v11}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 824
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :goto_93
    move-wide/from16 v16, v3

    goto :goto_9a

    .line 822
    .end local v16    # "rowIndex":J
    .restart local v3    # "rowIndex":J
    :cond_96
    invoke-static {v11}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    goto :goto_93

    .line 824
    .end local v3    # "rowIndex":J
    .restart local v16    # "rowIndex":J
    :goto_9a
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 826
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_c1

    .line 827
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

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

    .line 829
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

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v20

    .line 830
    .local v20, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v20, :cond_db

    .line 831
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 833
    :cond_db
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v21

    .line 834
    .local v21, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v21, :cond_f1

    .line 835
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 837
    :cond_f1
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v24

    .line 838
    .local v24, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v24, :cond_105

    .line 839
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 841
    :cond_105
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v25

    .line 842
    .local v25, "realmGet$token":Ljava/lang/String;
    if-eqz v25, :cond_119

    .line 843
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v25

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 845
    :cond_119
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v26

    .line 846
    .local v26, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v26, :cond_12d

    .line 847
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v26

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 849
    :cond_12d
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 850
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 851
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayManage()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 852
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$expiresAt()Ljava/util/Date;

    move-result-object v27

    .line 853
    .local v27, "realmGet$expiresAt":Ljava/util/Date;
    if-eqz v27, :cond_16d

    .line 854
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 856
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$createdAt":Ljava/util/Date;
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v20    # "realmGet$updatedAt":Ljava/util/Date;
    .end local v21    # "realmGet$statusCode":Ljava/lang/Number;
    .end local v24    # "realmGet$statusMessage":Ljava/lang/String;
    .end local v25    # "realmGet$token":Ljava/lang/String;
    .end local v26    # "realmGet$realmUrl":Ljava/lang/String;
    .end local v27    # "realmGet$expiresAt":Ljava/util/Date;
    :cond_16d
    nop

    .line 804
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :goto_16e
    move-object v3, v15

    move-wide/from16 v9, v22

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    goto/16 :goto_1e

    .line 857
    .end local v15    # "object":Lio/realm/permissions/PermissionOffer;
    .end local v22    # "pkColumnIndex":J
    .local v3, "object":Lio/realm/permissions/PermissionOffer;
    .restart local v9    # "pkColumnIndex":J
    :cond_173
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)J
    .registers 30
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/permissions/PermissionOffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/PermissionOffer;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 860
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

    .line 861
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 863
    :cond_3c
    const-class v1, Lio/realm/permissions/PermissionOffer;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 864
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 865
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    .line 866
    .local v14, "columnInfo":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    .line 867
    .local v9, "pkColumnIndex":J
    const-wide/16 v3, -0x1

    .line 868
    .local v3, "rowIndex":J
    move-object v5, v0

    check-cast v5, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v15

    .line 869
    .local v15, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v15, :cond_69

    .line 870
    move-object v5, v15

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 872
    :cond_69
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_73

    .line 873
    invoke-static {v1, v9, v10, v15}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 875
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :cond_73
    move-wide/from16 v16, v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 877
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_9c

    .line 878
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

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

    .line 880
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :cond_9c
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 882
    :goto_a7
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v19

    .line 883
    .local v19, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v19, :cond_be

    .line 884
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_c7

    .line 886
    :cond_be
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 888
    :goto_c7
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v20

    .line 889
    .local v20, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v20, :cond_de

    .line 890
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_e7

    .line 892
    :cond_de
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 894
    :goto_e7
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v21

    .line 895
    .local v21, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v21, :cond_fc

    .line 896
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_105

    .line 898
    :cond_fc
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 900
    :goto_105
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v24

    .line 901
    .local v24, "realmGet$token":Ljava/lang/String;
    if-eqz v24, :cond_11a

    .line 902
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_123

    .line 904
    :cond_11a
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 906
    :goto_123
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v25

    .line 907
    .local v25, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v25, :cond_138

    .line 908
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v25

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_141

    .line 910
    :cond_138
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 912
    :goto_141
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 913
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 914
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayManage()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 915
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$expiresAt()Ljava/util/Date;

    move-result-object v26

    .line 916
    .local v26, "realmGet$expiresAt":Ljava/util/Date;
    if-eqz v26, :cond_182

    .line 917
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_18b

    .line 919
    :cond_182
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 921
    :goto_18b
    return-wide v16
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 31
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

    .line 925
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lio/realm/permissions/PermissionOffer;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 926
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 927
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/permissions/PermissionOffer;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    .line 928
    .local v14, "columnInfo":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    .line 929
    .local v9, "pkColumnIndex":J
    const/4 v3, 0x0

    .line 930
    .local v3, "object":Lio/realm/permissions/PermissionOffer;
    :goto_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 931
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/permissions/PermissionOffer;

    .line 932
    .end local v3    # "object":Lio/realm/permissions/PermissionOffer;
    .local v15, "object":Lio/realm/permissions/PermissionOffer;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 933
    nop

    .line 929
    :goto_32
    move-wide/from16 v22, v9

    goto/16 :goto_1ae

    .line 935
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

    .line 936
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

    .line 937
    goto :goto_32

    .line 939
    :cond_77
    const-wide/16 v3, -0x1

    .line 940
    .local v3, "rowIndex":J
    move-object v5, v15

    check-cast v5, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v11

    .line 941
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v11, :cond_89

    .line 942
    move-object v5, v11

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 944
    :cond_89
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_93

    .line 945
    invoke-static {v1, v9, v10, v11}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 947
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :cond_93
    move-wide/from16 v16, v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 949
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_bc

    .line 950
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

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

    .line 952
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
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 954
    :goto_c9
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v20

    .line 955
    .local v20, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v20, :cond_e0

    .line 956
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_e9

    .line 958
    :cond_e0
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 960
    :goto_e9
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v21

    .line 961
    .local v21, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v21, :cond_100

    .line 962
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_109

    .line 964
    :cond_100
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 966
    :goto_109
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v24

    .line 967
    .local v24, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v24, :cond_11e

    .line 968
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_127

    .line 970
    :cond_11e
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 972
    :goto_127
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v25

    .line 973
    .local v25, "realmGet$token":Ljava/lang/String;
    if-eqz v25, :cond_13c

    .line 974
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v25

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_145

    .line 976
    :cond_13c
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 978
    :goto_145
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v26

    .line 979
    .local v26, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v26, :cond_15a

    .line 980
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v26

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_163

    .line 982
    :cond_15a
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 984
    :goto_163
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 985
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 986
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayManage()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 987
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$expiresAt()Ljava/util/Date;

    move-result-object v27

    .line 988
    .local v27, "realmGet$expiresAt":Ljava/util/Date;
    if-eqz v27, :cond_1a4

    .line 989
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_1ad

    .line 991
    :cond_1a4
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 993
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$createdAt":Ljava/util/Date;
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v20    # "realmGet$updatedAt":Ljava/util/Date;
    .end local v21    # "realmGet$statusCode":Ljava/lang/Number;
    .end local v24    # "realmGet$statusMessage":Ljava/lang/String;
    .end local v25    # "realmGet$token":Ljava/lang/String;
    .end local v26    # "realmGet$realmUrl":Ljava/lang/String;
    .end local v27    # "realmGet$expiresAt":Ljava/util/Date;
    :goto_1ad
    nop

    .line 929
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :goto_1ae
    move-object v3, v15

    move-wide/from16 v9, v22

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    goto/16 :goto_1e

    .line 994
    .end local v15    # "object":Lio/realm/permissions/PermissionOffer;
    .end local v22    # "pkColumnIndex":J
    .local v3, "object":Lio/realm/permissions/PermissionOffer;
    .restart local v9    # "pkColumnIndex":J
    :cond_1b3
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    return-void
.end method

.method static update(Lio/realm/Realm;Lio/realm/permissions/PermissionOffer;Lio/realm/permissions/PermissionOffer;Ljava/util/Map;)Lio/realm/permissions/PermissionOffer;
    .registers 7
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "realmObject"    # Lio/realm/permissions/PermissionOffer;
    .param p2, "newObject"    # Lio/realm/permissions/PermissionOffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/PermissionOffer;",
            "Lio/realm/permissions/PermissionOffer;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/permissions/PermissionOffer;"
        }
    .end annotation

    .line 1031
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    .line 1032
    .local v0, "realmObjectTarget":Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;

    .line 1033
    .local v1, "realmObjectSource":Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;
    invoke-interface {v1}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 1034
    invoke-interface {v1}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 1035
    invoke-interface {v1}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 1036
    invoke-interface {v1}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 1037
    invoke-interface {v1}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$token()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$token(Ljava/lang/String;)V

    .line 1038
    invoke-interface {v1}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 1039
    invoke-interface {v1}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayRead()Z

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayRead(Z)V

    .line 1040
    invoke-interface {v1}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayWrite(Z)V

    .line 1041
    invoke-interface {v1}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$mayManage()Z

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$mayManage(Z)V

    .line 1042
    invoke-interface {v1}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmGet$expiresAt()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxyInterface;->realmSet$expiresAt(Ljava/util/Date;)V

    .line 1043
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 1066
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1067
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 1068
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;

    .line 1070
    .local v2, "aPermissionOffer":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;
    iget-object v3, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1071
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1072
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

    .line 1074
    :cond_35
    iget-object v5, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1075
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1076
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

    .line 1078
    :cond_5d
    iget-object v7, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 1080
    :cond_76
    return v0

    .line 1067
    .end local v2    # "aPermissionOffer":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;
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

    .line 1053
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 1057
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 1058
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

    .line 1059
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 1060
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 1061
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 104
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 105
    return-void

    .line 107
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 108
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iput-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    .line 109
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 110
    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 111
    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 112
    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 113
    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 114
    return-void
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .registers 4

    .line 137
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 138
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$expiresAt()Ljava/util/Date;
    .registers 4

    .line 380
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 381
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 382
    const/4 v0, 0x0

    return-object v0

    .line 384
    :cond_1b
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 4

    .line 119
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 120
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mayManage()Z
    .registers 4

    .line 358
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 359
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$mayRead()Z
    .registers 4

    .line 314
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 315
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$mayWrite()Z
    .registers 4

    .line 336
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 337
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
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

    .line 1048
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$realmUrl()Ljava/lang/String;
    .registers 4

    .line 286
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 287
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$statusCode()Ljava/lang/Integer;
    .registers 4

    .line 193
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 194
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 195
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_1b
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$statusMessage()Ljava/lang/String;
    .registers 4

    .line 226
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 227
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$token()Ljava/lang/String;
    .registers 4

    .line 256
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 257
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .registers 4

    .line 165
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 166
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .registers 10
    .param p1, "value"    # Ljava/util/Date;

    .line 143
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 144
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 145
    return-void

    .line 147
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 148
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 151
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    .line 152
    return-void

    .line 149
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'createdAt\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 156
    if-eqz p1, :cond_4c

    .line 159
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    .line 160
    return-void

    .line 157
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'createdAt\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$expiresAt(Ljava/util/Date;)V
    .registers 16
    .param p1, "value"    # Ljava/util/Date;

    .line 389
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 390
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 391
    return-void

    .line 393
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 394
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 395
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 396
    return-void

    .line 398
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    .line 399
    return-void

    .line 402
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 403
    if-nez p1, :cond_55

    .line 404
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 405
    return-void

    .line 407
    :cond_55
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    .line 408
    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    return-void

    .line 130
    :cond_9
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 131
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$mayManage(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 364
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 365
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 366
    return-void

    .line 368
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 369
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 370
    return-void

    .line 373
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 374
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 375
    return-void
.end method

.method public realmSet$mayRead(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 320
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 321
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 322
    return-void

    .line 324
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 325
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 326
    return-void

    .line 329
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 330
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 331
    return-void
.end method

.method public realmSet$mayWrite(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 342
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 343
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 344
    return-void

    .line 346
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 347
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 348
    return-void

    .line 351
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 352
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 353
    return-void
.end method

.method public realmSet$realmUrl(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 293
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 294
    return-void

    .line 296
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 297
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 300
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 301
    return-void

    .line 298
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'realmUrl\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 305
    if-eqz p1, :cond_4c

    .line 308
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 309
    return-void

    .line 306
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'realmUrl\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$statusCode(Ljava/lang/Integer;)V
    .registers 18
    .param p1, "value"    # Ljava/lang/Integer;

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 203
    iget-object v1, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_13

    .line 204
    return-void

    .line 206
    :cond_13
    iget-object v1, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    .line 207
    .local v1, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2c

    .line 208
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v3, v3, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 209
    return-void

    .line 211
    :cond_2c
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v9, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v13, v2

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 212
    return-void

    .line 215
    .end local v1    # "row":Lio/realm/internal/Row;
    :cond_42
    iget-object v1, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 216
    if-nez p1, :cond_5b

    .line 217
    iget-object v1, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    .line 218
    return-void

    .line 220
    :cond_5b
    iget-object v1, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 221
    return-void
.end method

.method public realmSet$statusMessage(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 233
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 234
    return-void

    .line 236
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 237
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 238
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 239
    return-void

    .line 241
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 242
    return-void

    .line 245
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 246
    if-nez p1, :cond_55

    .line 247
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 248
    return-void

    .line 250
    :cond_55
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 251
    return-void
.end method

.method public realmSet$token(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 263
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 264
    return-void

    .line 266
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 267
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 268
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 269
    return-void

    .line 271
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 272
    return-void

    .line 275
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 276
    if-nez p1, :cond_55

    .line 277
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 278
    return-void

    .line 280
    :cond_55
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 281
    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .registers 10
    .param p1, "value"    # Ljava/util/Date;

    .line 171
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 172
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 173
    return-void

    .line 175
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 176
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 179
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    .line 180
    return-void

    .line 177
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'updatedAt\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 184
    if-eqz p1, :cond_4c

    .line 187
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    .line 188
    return-void

    .line 185
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'updatedAt\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.realm.io_realm_permissions_PermissionOfferRealmProxy.ClassNameHelper (io.realm.io_realm_permissions_PermissionOfferRealmProxy$ClassNameHelper)
.class public final Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "io_realm_permissions_PermissionOfferRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "PermissionOffer"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.io_realm_permissions_PermissionOfferRealmProxy.PermissionOfferColumnInfo (io.realm.io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo)
.class final Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "io_realm_permissions_PermissionOfferRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_permissions_PermissionOfferRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionOfferColumnInfo"
.end annotation


# instance fields
.field createdAtIndex:J

.field expiresAtIndex:J

.field idIndex:J

.field mayManageIndex:J

.field mayReadIndex:J

.field mayWriteIndex:J

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

    .line 66
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 67
    invoke-virtual {p0, p1, p0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 50
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 51
    const-string v0, "PermissionOffer"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 52
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    .line 53
    const-string v1, "createdAt"

    const-string v2, "createdAt"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

    .line 54
    const-string/jumbo v1, "updatedAt"

    const-string/jumbo v2, "updatedAt"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    .line 55
    const-string v1, "statusCode"

    const-string v2, "statusCode"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    .line 56
    const-string v1, "statusMessage"

    const-string v2, "statusMessage"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    .line 57
    const-string/jumbo v1, "token"

    const-string/jumbo v2, "token"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    .line 58
    const-string v1, "realmUrl"

    const-string v2, "realmUrl"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    .line 59
    const-string v1, "mayRead"

    const-string v2, "mayRead"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    .line 60
    const-string v1, "mayWrite"

    const-string v2, "mayWrite"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    .line 61
    const-string v1, "mayManage"

    const-string v2, "mayManage"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    .line 62
    const-string v1, "expiresAt"

    const-string v2, "expiresAt"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    .line 63
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 72
    new-instance v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 77
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    .line 78
    .local v0, "src":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;

    .line 79
    .local v1, "dst":Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->idIndex:J

    .line 80
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->createdAtIndex:J

    .line 81
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->updatedAtIndex:J

    .line 82
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusCodeIndex:J

    .line 83
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->statusMessageIndex:J

    .line 84
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->tokenIndex:J

    .line 85
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->realmUrlIndex:J

    .line 86
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayReadIndex:J

    .line 87
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayWriteIndex:J

    .line 88
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->mayManageIndex:J

    .line 89
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionOfferRealmProxy$PermissionOfferColumnInfo;->expiresAtIndex:J

    .line 90
    return-void
.end method
