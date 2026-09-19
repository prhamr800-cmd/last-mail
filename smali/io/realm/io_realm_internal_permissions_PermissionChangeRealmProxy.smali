###### Class io.realm.io_realm_internal_permissions_PermissionChangeRealmProxy (io.realm.io_realm_internal_permissions_PermissionChangeRealmProxy)
.class public Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;
.super Lio/realm/internal/permissions/PermissionChange;
.source "io_realm_internal_permissions_PermissionChangeRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$ClassNameHelper;,
        Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lio/realm/internal/permissions/PermissionChange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 99
    invoke-static {}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Lio/realm/internal/permissions/PermissionChange;-><init>()V

    .line 105
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 106
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lio/realm/internal/permissions/PermissionChange;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/internal/permissions/PermissionChange;"
        }
    .end annotation

    .line 835
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 836
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 837
    move-object v1, v0

    check-cast v1, Lio/realm/internal/permissions/PermissionChange;

    return-object v1

    .line 841
    :cond_c
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/internal/permissions/PermissionChange;

    .line 842
    .local v1, "realmObject":Lio/realm/internal/permissions/PermissionChange;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    .line 845
    .local v2, "realmObjectSource":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    .line 847
    .local v3, "realmObjectCopy":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 848
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 849
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 850
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 851
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 852
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 853
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    .line 854
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    .line 855
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    .line 856
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 857
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 858
    invoke-interface {v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    .line 859
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;
    .registers 27
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/internal/permissions/PermissionChange;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/internal/permissions/PermissionChange;"
        }
    .end annotation

    .line 796
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

    .line 797
    move-object v0, v8

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 798
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, v7, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_39

    .line 801
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 802
    return-object v8

    .line 799
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 805
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_41
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lio/realm/BaseRealm$RealmObjectContext;

    .line 806
    .local v10, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lio/realm/internal/RealmObjectProxy;

    .line 807
    .local v11, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v11, :cond_57

    .line 808
    move-object v0, v11

    check-cast v0, Lio/realm/internal/permissions/PermissionChange;

    return-object v0

    .line 811
    :cond_57
    const/4 v12, 0x0

    .line 812
    .local v12, "realmObject":Lio/realm/internal/permissions/PermissionChange;
    move/from16 v13, p2

    .line 813
    .local v13, "canUpdate":Z
    if-eqz v13, :cond_c4

    .line 814
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v7, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v14

    .line 815
    .local v14, "table":Lio/realm/internal/Table;
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 816
    .local v15, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    iget-wide v5, v15, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    .line 817
    .local v5, "pkColumnIndex":J
    move-object v0, v8

    check-cast v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v5, v6, v0}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v3

    .line 818
    .local v3, "rowIndex":J
    const-wide/16 v0, -0x1

    cmp-long v2, v3, v0

    if-nez v2, :cond_84

    .line 819
    const/4 v13, 0x0

    goto :goto_c4

    .line 822
    :cond_84
    :try_start_84
    invoke-virtual {v14, v3, v4}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lio/realm/internal/permissions/PermissionChange;

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

    .line 823
    new-instance v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;-><init>()V

    move-object v12, v0

    .line 824
    move-object v0, v12

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b5
    .catchall {:try_start_a6 .. :try_end_b5} :catchall_b9

    .line 826
    invoke-virtual {v10}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 827
    goto :goto_c4

    .line 826
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

    .line 831
    .end local v14    # "table":Lio/realm/internal/Table;
    .end local v15    # "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    .end local v19    # "rowIndex":J
    .end local v21    # "pkColumnIndex":J
    :cond_c4
    :goto_c4
    if-eqz v13, :cond_cb

    invoke-static {v7, v12, v8, v9}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->update(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object v0

    goto :goto_cf

    :cond_cb
    invoke-static/range {p0 .. p3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->copy(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;ZLjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;

    move-result-object v0

    :goto_cf
    return-object v0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 527
    new-instance v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lio/realm/internal/permissions/PermissionChange;IILjava/util/Map;)Lio/realm/internal/permissions/PermissionChange;
    .registers 9
    .param p0, "realmObject"    # Lio/realm/internal/permissions/PermissionChange;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/permissions/PermissionChange;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lio/realm/internal/permissions/PermissionChange;"
        }
    .end annotation

    .line 1201
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_8d

    if-nez p0, :cond_6

    goto/16 :goto_8d

    .line 1204
    :cond_6
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 1206
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1c

    .line 1207
    new-instance v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-direct {v1}, Lio/realm/internal/permissions/PermissionChange;-><init>()V

    .line 1208
    .local v1, "unmanagedObject":Lio/realm/internal/permissions/PermissionChange;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 1211
    .end local v1    # "unmanagedObject":Lio/realm/internal/permissions/PermissionChange;
    :cond_1c
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_25

    .line 1212
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/internal/permissions/PermissionChange;

    return-object v1

    .line 1214
    :cond_25
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/internal/permissions/PermissionChange;

    .line 1215
    .restart local v1    # "unmanagedObject":Lio/realm/internal/permissions/PermissionChange;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 1217
    :goto_2b
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    .line 1218
    .local v2, "unmanagedCopy":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    .line 1219
    .local v3, "realmSource":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 1220
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 1221
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 1222
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 1223
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 1224
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 1225
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 1226
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    .line 1227
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    .line 1228
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    .line 1229
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 1230
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 1231
    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    .line 1233
    return-object v1

    .line 1202
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lio/realm/internal/permissions/PermissionChange;
    .end local v2    # "unmanagedCopy":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;
    :cond_8d
    :goto_8d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 13

    .line 505
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "PermissionChange"

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 506
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v1, "id"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 507
    const-string v7, "createdAt"

    sget-object v8, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 508
    const-string/jumbo v2, "updatedAt"

    sget-object v3, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 509
    const-string v8, "statusCode"

    sget-object v9, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 510
    const-string v2, "statusMessage"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 511
    const-string v8, "realmUrl"

    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 512
    const-string/jumbo v2, "userId"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 513
    const-string v8, "metadataKey"

    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 514
    const-string v2, "metadataValue"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 515
    const-string v8, "metadataNameSpace"

    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 516
    const-string v2, "mayRead"

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 517
    const-string v8, "mayWrite"

    sget-object v9, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 518
    const-string v2, "mayManage"

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 519
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/internal/permissions/PermissionChange;
    .registers 21
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 541
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 542
    .local v9, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 543
    .local v10, "obj":Lio/realm/internal/permissions/PermissionChange;
    if-eqz p2, :cond_73

    .line 544
    const-class v0, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v7, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v11

    .line 545
    .local v11, "table":Lio/realm/internal/Table;
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v0, v1}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 546
    .local v12, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    iget-wide v13, v12, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    .line 547
    .local v13, "pkColumnIndex":J
    const-wide/16 v0, -0x1

    .line 548
    .local v0, "rowIndex":J
    const-string v2, "id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 549
    const-string v2, "id"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v13, v14, v2}, Lio/realm/internal/Table;->findFirstString(JLjava/lang/String;)J

    move-result-wide v0

    .line 551
    .end local v0    # "rowIndex":J
    .local v5, "rowIndex":J
    :cond_34
    move-wide v5, v0

    const-wide/16 v0, -0x1

    cmp-long v2, v5, v0

    if-eqz v2, :cond_73

    .line 552
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/realm/BaseRealm$RealmObjectContext;

    .line 554
    .local v1, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    :try_start_44
    invoke-virtual {v11, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    const-class v2, Lio/realm/internal/permissions/PermissionChange;

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

    .line 555
    new-instance v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;

    invoke-direct {v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;-><init>()V
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_6a

    move-object v10, v0

    .line 557
    invoke-virtual {v1}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    .line 558
    goto :goto_73

    .line 557
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

    .line 561
    .end local v1    # "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    .end local v11    # "table":Lio/realm/internal/Table;
    .end local v12    # "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    .end local v13    # "pkColumnIndex":J
    .end local v16    # "rowIndex":J
    :cond_73
    :goto_73
    const/4 v0, 0x0

    if-nez v10, :cond_a9

    .line 562
    const-string v1, "id"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 563
    const-string v1, "id"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_91

    .line 564
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v7, v1, v0, v2, v9}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;

    goto :goto_a9

    .line 566
    :cond_91
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    const-string v3, "id"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3, v2, v9}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;

    goto :goto_a9

    .line 569
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_a9
    :goto_a9
    move-object v1, v10

    check-cast v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    .line 574
    .local v1, "objProxy":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;
    const-string v2, "createdAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 575
    const-string v2, "createdAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 576
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_e3

    .line 578
    :cond_c0
    const-string v2, "createdAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 579
    .local v2, "timestamp":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_d5

    .line 580
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto :goto_e3

    .line 582
    :cond_d5
    new-instance v3, Ljava/util/Date;

    const-string v4, "createdAt"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 586
    .end local v2    # "timestamp":Ljava/lang/Object;
    :cond_e3
    :goto_e3
    const-string/jumbo v2, "updatedAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 587
    const-string/jumbo v2, "updatedAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 588
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_11e

    .line 590
    :cond_f9
    const-string/jumbo v2, "updatedAt"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 591
    .restart local v2    # "timestamp":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_10f

    .line 592
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_11e

    .line 594
    :cond_10f
    new-instance v3, Ljava/util/Date;

    const-string/jumbo v4, "updatedAt"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 598
    .end local v2    # "timestamp":Ljava/lang/Object;
    :cond_11e
    :goto_11e
    const-string v2, "statusCode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13f

    .line 599
    const-string v2, "statusCode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_132

    .line 600
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto :goto_13f

    .line 602
    :cond_132
    const-string v2, "statusCode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 605
    :cond_13f
    :goto_13f
    const-string v2, "statusMessage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 606
    const-string v2, "statusMessage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_153

    .line 607
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto :goto_15c

    .line 609
    :cond_153
    const-string v2, "statusMessage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 612
    :cond_15c
    :goto_15c
    const-string v2, "realmUrl"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_179

    .line 613
    const-string v2, "realmUrl"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_170

    .line 614
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto :goto_179

    .line 616
    :cond_170
    const-string v2, "realmUrl"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 619
    :cond_179
    :goto_179
    const-string/jumbo v2, "userId"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 620
    const-string/jumbo v2, "userId"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 621
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto :goto_199

    .line 623
    :cond_18f
    const-string/jumbo v2, "userId"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 626
    :cond_199
    :goto_199
    const-string v2, "metadataKey"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b6

    .line 627
    const-string v2, "metadataKey"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ad

    .line 628
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    goto :goto_1b6

    .line 630
    :cond_1ad
    const-string v2, "metadataKey"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    .line 633
    :cond_1b6
    :goto_1b6
    const-string v2, "metadataValue"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d3

    .line 634
    const-string v2, "metadataValue"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ca

    .line 635
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    goto :goto_1d3

    .line 637
    :cond_1ca
    const-string v2, "metadataValue"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    .line 640
    :cond_1d3
    :goto_1d3
    const-string v2, "metadataNameSpace"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f0

    .line 641
    const-string v2, "metadataNameSpace"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e7

    .line 642
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    goto :goto_1f0

    .line 644
    :cond_1e7
    const-string v2, "metadataNameSpace"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    .line 647
    :cond_1f0
    :goto_1f0
    const-string v2, "mayRead"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_211

    .line 648
    const-string v2, "mayRead"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_204

    .line 649
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    goto :goto_211

    .line 651
    :cond_204
    const-string v2, "mayRead"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 654
    :cond_211
    :goto_211
    const-string v2, "mayWrite"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_232

    .line 655
    const-string v2, "mayWrite"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_225

    .line 656
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    goto :goto_232

    .line 658
    :cond_225
    const-string v2, "mayWrite"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 661
    :cond_232
    :goto_232
    const-string v2, "mayManage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_253

    .line 662
    const-string v2, "mayManage"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_246

    .line 663
    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    goto :goto_253

    .line 665
    :cond_246
    const-string v0, "mayManage"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    .line 668
    :cond_253
    :goto_253
    return-object v10
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/internal/permissions/PermissionChange;
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

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "jsonHasPrimaryKey":Z
    new-instance v1, Lio/realm/internal/permissions/PermissionChange;

    invoke-direct {v1}, Lio/realm/internal/permissions/PermissionChange;-><init>()V

    .line 677
    .local v1, "obj":Lio/realm/internal/permissions/PermissionChange;
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    .line 678
    .local v2, "objProxy":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 679
    :goto_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_213

    .line 680
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "name":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_38

    .line 683
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_2f

    .line 684
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    goto :goto_35

    .line 686
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 687
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$id(Ljava/lang/String;)V

    .line 689
    :goto_35
    const/4 v0, 0x1

    goto/16 :goto_211

    .line 690
    :cond_38
    const-string v4, "createdAt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v6, -0x1

    if-eqz v4, :cond_79

    .line 691
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v8, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v8, :cond_52

    .line 692
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 693
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto/16 :goto_211

    .line 694
    :cond_52
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_6c

    .line 695
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    .line 696
    .local v4, "timestamp":J
    cmp-long v8, v4, v6

    if-lez v8, :cond_6a

    .line 697
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v2, v6}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 699
    .end local v4    # "timestamp":J
    :cond_6a
    goto/16 :goto_211

    .line 700
    :cond_6c
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    goto/16 :goto_211

    .line 702
    :cond_79
    const-string/jumbo v4, "updatedAt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 703
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v8, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v4, v8, :cond_92

    .line 704
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 705
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_211

    .line 706
    :cond_92
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v4, v5, :cond_ac

    .line 707
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    .line 708
    .restart local v4    # "timestamp":J
    cmp-long v8, v4, v6

    if-lez v8, :cond_aa

    .line 709
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v2, v6}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 711
    .end local v4    # "timestamp":J
    :cond_aa
    goto/16 :goto_211

    .line 712
    :cond_ac
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto/16 :goto_211

    .line 714
    :cond_b9
    const-string v4, "statusCode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 715
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_d6

    .line 716
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto/16 :goto_211

    .line 718
    :cond_d6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 719
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    goto/16 :goto_211

    .line 721
    :cond_de
    const-string v4, "statusMessage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 722
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_f7

    .line 723
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 725
    :cond_f7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 726
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 728
    :cond_ff
    const-string v4, "realmUrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_120

    .line 729
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_118

    .line 730
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 732
    :cond_118
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 733
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 735
    :cond_120
    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_142

    .line 736
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_13a

    .line 737
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 739
    :cond_13a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 740
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 742
    :cond_142
    const-string v4, "metadataKey"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_163

    .line 743
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_15b

    .line 744
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 746
    :cond_15b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 747
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 749
    :cond_163
    const-string v4, "metadataValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_184

    .line 750
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_17c

    .line 751
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 753
    :cond_17c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 754
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 756
    :cond_184
    const-string v4, "metadataNameSpace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a5

    .line 757
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_19d

    .line 758
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 760
    :cond_19d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 761
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 763
    :cond_1a5
    const-string v4, "mayRead"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c8

    .line 764
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_1c1

    .line 765
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    goto :goto_211

    .line 767
    :cond_1c1
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 768
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    goto :goto_211

    .line 770
    :cond_1c8
    const-string v4, "mayWrite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1eb

    .line 771
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_1e4

    .line 772
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    goto :goto_211

    .line 774
    :cond_1e4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 775
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    goto :goto_211

    .line 777
    :cond_1eb
    const-string v4, "mayManage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20e

    .line 778
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v6, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v6, :cond_207

    .line 779
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    goto :goto_211

    .line 781
    :cond_207
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 782
    invoke-interface {v2, v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    goto :goto_211

    .line 785
    :cond_20e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 787
    .end local v3    # "name":Ljava/lang/String;
    :goto_211
    goto/16 :goto_c

    .line 788
    :cond_213
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 789
    if-eqz v0, :cond_21f

    .line 792
    invoke-virtual {p0, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v3

    check-cast v3, Lio/realm/internal/permissions/PermissionChange;

    return-object v3

    .line 790
    :cond_21f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 523
    sget-object v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 531
    const-string v0, "PermissionChange"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J
    .registers 34
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/internal/permissions/PermissionChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 863
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

    .line 864
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 866
    :cond_3c
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 867
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 868
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 869
    .local v14, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    .line 870
    .local v9, "pkColumnIndex":J
    const-wide/16 v3, -0x1

    .line 871
    .local v3, "rowIndex":J
    move-object v5, v0

    check-cast v5, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v15

    .line 872
    .local v15, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v15, :cond_69

    .line 873
    move-object v5, v15

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 875
    :cond_69
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_76

    .line 876
    invoke-static {v1, v9, v10, v15}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 880
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :goto_73
    move-wide/from16 v16, v3

    goto :goto_7a

    .line 878
    .end local v16    # "rowIndex":J
    .restart local v3    # "rowIndex":J
    :cond_76
    invoke-static {v15}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    goto :goto_73

    .line 880
    .end local v3    # "rowIndex":J
    .restart local v16    # "rowIndex":J
    :goto_7a
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 882
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_a1

    .line 883
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

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

    .line 885
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :cond_a1
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    :goto_a3
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v19

    .line 886
    .local v19, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v19, :cond_b9

    .line 887
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 889
    :cond_b9
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v20

    .line 890
    .local v20, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v20, :cond_cf

    .line 891
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 893
    :cond_cf
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v11

    .line 894
    .local v11, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v11, :cond_e2

    .line 895
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 897
    :cond_e2
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v21

    .line 898
    .local v21, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v21, :cond_f6

    .line 899
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 901
    :cond_f6
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v24

    .line 902
    .local v24, "realmGet$userId":Ljava/lang/String;
    if-eqz v24, :cond_10a

    .line 903
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 905
    :cond_10a
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v25

    .line 906
    .local v25, "realmGet$metadataKey":Ljava/lang/String;
    if-eqz v25, :cond_11e

    .line 907
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v25

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 909
    :cond_11e
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v26

    .line 910
    .local v26, "realmGet$metadataValue":Ljava/lang/String;
    if-eqz v26, :cond_132

    .line 911
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v26

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 913
    :cond_132
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v27

    .line 914
    .local v27, "realmGet$metadataNameSpace":Ljava/lang/String;
    if-eqz v27, :cond_146

    .line 915
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v27

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 917
    :cond_146
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v28

    .line 918
    .local v28, "realmGet$mayRead":Ljava/lang/Boolean;
    if-eqz v28, :cond_15c

    .line 919
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 921
    :cond_15c
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v29

    .line 922
    .local v29, "realmGet$mayWrite":Ljava/lang/Boolean;
    if-eqz v29, :cond_172

    .line 923
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 925
    :cond_172
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v30

    .line 926
    .local v30, "realmGet$mayManage":Ljava/lang/Boolean;
    if-eqz v30, :cond_188

    .line 927
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 929
    :cond_188
    return-wide v16
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 35
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

    .line 933
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 934
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 935
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 936
    .local v14, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    .line 937
    .local v9, "pkColumnIndex":J
    const/4 v3, 0x0

    .line 938
    .local v3, "object":Lio/realm/internal/permissions/PermissionChange;
    :goto_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b0

    .line 939
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/internal/permissions/PermissionChange;

    .line 940
    .end local v3    # "object":Lio/realm/internal/permissions/PermissionChange;
    .local v15, "object":Lio/realm/internal/permissions/PermissionChange;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 941
    nop

    .line 937
    :goto_32
    move-wide/from16 v22, v9

    goto/16 :goto_1ab

    .line 943
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

    .line 944
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

    .line 945
    goto :goto_32

    .line 947
    :cond_77
    const-wide/16 v3, -0x1

    .line 948
    .local v3, "rowIndex":J
    move-object v5, v15

    check-cast v5, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v11

    .line 949
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v11, :cond_89

    .line 950
    move-object v5, v11

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 952
    :cond_89
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_96

    .line 953
    invoke-static {v1, v9, v10, v11}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 957
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :goto_93
    move-wide/from16 v16, v3

    goto :goto_9a

    .line 955
    .end local v16    # "rowIndex":J
    .restart local v3    # "rowIndex":J
    :cond_96
    invoke-static {v11}, Lio/realm/internal/Table;->throwDuplicatePrimaryKeyException(Ljava/lang/Object;)V

    goto :goto_93

    .line 957
    .end local v3    # "rowIndex":J
    .restart local v16    # "rowIndex":J
    :goto_9a
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 959
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_c1

    .line 960
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

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

    .line 962
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

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v20

    .line 963
    .local v20, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v20, :cond_db

    .line 964
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 966
    :cond_db
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v21

    .line 967
    .local v21, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v21, :cond_f1

    .line 968
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 970
    :cond_f1
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v11

    .line 971
    .local v11, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v11, :cond_104

    .line 972
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 974
    :cond_104
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v24

    .line 975
    .local v24, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v24, :cond_118

    .line 976
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 978
    :cond_118
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v25

    .line 979
    .local v25, "realmGet$userId":Ljava/lang/String;
    if-eqz v25, :cond_12c

    .line 980
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v25

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 982
    :cond_12c
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v26

    .line 983
    .local v26, "realmGet$metadataKey":Ljava/lang/String;
    if-eqz v26, :cond_140

    .line 984
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v26

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 986
    :cond_140
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v27

    .line 987
    .local v27, "realmGet$metadataValue":Ljava/lang/String;
    if-eqz v27, :cond_154

    .line 988
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v27

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 990
    :cond_154
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v28

    .line 991
    .local v28, "realmGet$metadataNameSpace":Ljava/lang/String;
    if-eqz v28, :cond_168

    .line 992
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v28

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 994
    :cond_168
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v29

    .line 995
    .local v29, "realmGet$mayRead":Ljava/lang/Boolean;
    if-eqz v29, :cond_17e

    .line 996
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 998
    :cond_17e
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v30

    .line 999
    .local v30, "realmGet$mayWrite":Ljava/lang/Boolean;
    if-eqz v30, :cond_194

    .line 1000
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1002
    :cond_194
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v31

    .line 1003
    .local v31, "realmGet$mayManage":Ljava/lang/Boolean;
    if-eqz v31, :cond_1aa

    .line 1004
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 1006
    .end local v11    # "realmGet$statusMessage":Ljava/lang/String;
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$createdAt":Ljava/util/Date;
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v20    # "realmGet$updatedAt":Ljava/util/Date;
    .end local v21    # "realmGet$statusCode":Ljava/lang/Number;
    .end local v24    # "realmGet$realmUrl":Ljava/lang/String;
    .end local v25    # "realmGet$userId":Ljava/lang/String;
    .end local v26    # "realmGet$metadataKey":Ljava/lang/String;
    .end local v27    # "realmGet$metadataValue":Ljava/lang/String;
    .end local v28    # "realmGet$metadataNameSpace":Ljava/lang/String;
    .end local v29    # "realmGet$mayRead":Ljava/lang/Boolean;
    .end local v30    # "realmGet$mayWrite":Ljava/lang/Boolean;
    .end local v31    # "realmGet$mayManage":Ljava/lang/Boolean;
    :cond_1aa
    nop

    .line 937
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :goto_1ab
    move-object v3, v15

    move-wide/from16 v9, v22

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    goto/16 :goto_1e

    .line 1007
    .end local v15    # "object":Lio/realm/internal/permissions/PermissionChange;
    .end local v22    # "pkColumnIndex":J
    .local v3, "object":Lio/realm/internal/permissions/PermissionChange;
    .restart local v9    # "pkColumnIndex":J
    :cond_1b0
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)J
    .registers 34
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/internal/permissions/PermissionChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1010
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

    .line 1011
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 1013
    :cond_3c
    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1014
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 1015
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 1016
    .local v14, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    .line 1017
    .local v9, "pkColumnIndex":J
    const-wide/16 v3, -0x1

    .line 1018
    .local v3, "rowIndex":J
    move-object v5, v0

    check-cast v5, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v15

    .line 1019
    .local v15, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v15, :cond_69

    .line 1020
    move-object v5, v15

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 1022
    :cond_69
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_73

    .line 1023
    invoke-static {v1, v9, v10, v15}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 1025
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :cond_73
    move-wide/from16 v16, v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 1027
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_9c

    .line 1028
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

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

    .line 1030
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :cond_9c
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1032
    :goto_a7
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v19

    .line 1033
    .local v19, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v19, :cond_be

    .line 1034
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_c7

    .line 1036
    :cond_be
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1038
    :goto_c7
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v20

    .line 1039
    .local v20, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v20, :cond_de

    .line 1040
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_e7

    .line 1042
    :cond_de
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1044
    :goto_e7
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v11

    .line 1045
    .local v11, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v11, :cond_fb

    .line 1046
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_104

    .line 1048
    :cond_fb
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1050
    :goto_104
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v21

    .line 1051
    .local v21, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v21, :cond_119

    .line 1052
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_122

    .line 1054
    :cond_119
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1056
    :goto_122
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v24

    .line 1057
    .local v24, "realmGet$userId":Ljava/lang/String;
    if-eqz v24, :cond_137

    .line 1058
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_140

    .line 1060
    :cond_137
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1062
    :goto_140
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v25

    .line 1063
    .local v25, "realmGet$metadataKey":Ljava/lang/String;
    if-eqz v25, :cond_155

    .line 1064
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v25

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_15e

    .line 1066
    :cond_155
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1068
    :goto_15e
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v26

    .line 1069
    .local v26, "realmGet$metadataValue":Ljava/lang/String;
    if-eqz v26, :cond_173

    .line 1070
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v26

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_17c

    .line 1072
    :cond_173
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1074
    :goto_17c
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v27

    .line 1075
    .local v27, "realmGet$metadataNameSpace":Ljava/lang/String;
    if-eqz v27, :cond_191

    .line 1076
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v27

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_19a

    .line 1078
    :cond_191
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1080
    :goto_19a
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v28

    .line 1081
    .local v28, "realmGet$mayRead":Ljava/lang/Boolean;
    if-eqz v28, :cond_1b1

    .line 1082
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_1ba

    .line 1084
    :cond_1b1
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1086
    :goto_1ba
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v29

    .line 1087
    .local v29, "realmGet$mayWrite":Ljava/lang/Boolean;
    if-eqz v29, :cond_1d1

    .line 1088
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_1da

    .line 1090
    :cond_1d1
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1092
    :goto_1da
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v30

    .line 1093
    .local v30, "realmGet$mayManage":Ljava/lang/Boolean;
    if-eqz v30, :cond_1f1

    .line 1094
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_1fa

    .line 1096
    :cond_1f1
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1098
    :goto_1fa
    return-wide v16
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 35
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

    .line 1102
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lio/realm/internal/permissions/PermissionChange;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 1103
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 1104
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/internal/permissions/PermissionChange;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 1105
    .local v14, "columnInfo":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    iget-wide v9, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    .line 1106
    .local v9, "pkColumnIndex":J
    const/4 v3, 0x0

    .line 1107
    .local v3, "object":Lio/realm/internal/permissions/PermissionChange;
    :goto_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_222

    .line 1108
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/internal/permissions/PermissionChange;

    .line 1109
    .end local v3    # "object":Lio/realm/internal/permissions/PermissionChange;
    .local v15, "object":Lio/realm/internal/permissions/PermissionChange;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1110
    nop

    .line 1106
    :goto_32
    move-wide/from16 v22, v9

    goto/16 :goto_21d

    .line 1112
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

    .line 1113
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

    .line 1114
    goto :goto_32

    .line 1116
    :cond_77
    const-wide/16 v3, -0x1

    .line 1117
    .local v3, "rowIndex":J
    move-object v5, v15

    check-cast v5, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v5}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$id()Ljava/lang/String;

    move-result-object v11

    .line 1118
    .local v11, "primaryKeyValue":Ljava/lang/Object;
    if-eqz v11, :cond_89

    .line 1119
    move-object v5, v11

    check-cast v5, Ljava/lang/String;

    invoke-static {v12, v13, v9, v10, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v3

    .line 1121
    :cond_89
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_93

    .line 1122
    invoke-static {v1, v9, v10, v11}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    .line 1124
    .end local v3    # "rowIndex":J
    .local v16, "rowIndex":J
    :cond_93
    move-wide/from16 v16, v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v18

    .line 1126
    .local v18, "realmGet$createdAt":Ljava/util/Date;
    if-eqz v18, :cond_bc

    .line 1127
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

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

    .line 1129
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
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1131
    :goto_c9
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v20

    .line 1132
    .local v20, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v20, :cond_e0

    .line 1133
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_e9

    .line 1135
    :cond_e0
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1137
    :goto_e9
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v21

    .line 1138
    .local v21, "realmGet$statusCode":Ljava/lang/Number;
    if-eqz v21, :cond_100

    .line 1139
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_109

    .line 1141
    :cond_100
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1143
    :goto_109
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v11

    .line 1144
    .local v11, "realmGet$statusMessage":Ljava/lang/String;
    if-eqz v11, :cond_11d

    .line 1145
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object v9, v11

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_126

    .line 1147
    :cond_11d
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1149
    :goto_126
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v24

    .line 1150
    .local v24, "realmGet$realmUrl":Ljava/lang/String;
    if-eqz v24, :cond_13b

    .line 1151
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v24

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_144

    .line 1153
    :cond_13b
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1155
    :goto_144
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v25

    .line 1156
    .local v25, "realmGet$userId":Ljava/lang/String;
    if-eqz v25, :cond_159

    .line 1157
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v25

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_162

    .line 1159
    :cond_159
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1161
    :goto_162
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v26

    .line 1162
    .local v26, "realmGet$metadataKey":Ljava/lang/String;
    if-eqz v26, :cond_177

    .line 1163
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v26

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_180

    .line 1165
    :cond_177
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1167
    :goto_180
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v27

    .line 1168
    .local v27, "realmGet$metadataValue":Ljava/lang/String;
    if-eqz v27, :cond_195

    .line 1169
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v27

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_19e

    .line 1171
    :cond_195
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1173
    :goto_19e
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v28

    .line 1174
    .local v28, "realmGet$metadataNameSpace":Ljava/lang/String;
    if-eqz v28, :cond_1b3

    .line 1175
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v28

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1bc

    .line 1177
    :cond_1b3
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1179
    :goto_1bc
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v29

    .line 1180
    .local v29, "realmGet$mayRead":Ljava/lang/Boolean;
    if-eqz v29, :cond_1d3

    .line 1181
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_1dc

    .line 1183
    :cond_1d3
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1185
    :goto_1dc
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v30

    .line 1186
    .local v30, "realmGet$mayWrite":Ljava/lang/Boolean;
    if-eqz v30, :cond_1f3

    .line 1187
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_1fc

    .line 1189
    :cond_1f3
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1191
    :goto_1fc
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v31

    .line 1192
    .local v31, "realmGet$mayManage":Ljava/lang/Boolean;
    if-eqz v31, :cond_213

    .line 1193
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_21c

    .line 1195
    :cond_213
    iget-wide v5, v14, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 1197
    .end local v11    # "realmGet$statusMessage":Ljava/lang/String;
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$createdAt":Ljava/util/Date;
    .end local v19    # "primaryKeyValue":Ljava/lang/Object;
    .end local v20    # "realmGet$updatedAt":Ljava/util/Date;
    .end local v21    # "realmGet$statusCode":Ljava/lang/Number;
    .end local v24    # "realmGet$realmUrl":Ljava/lang/String;
    .end local v25    # "realmGet$userId":Ljava/lang/String;
    .end local v26    # "realmGet$metadataKey":Ljava/lang/String;
    .end local v27    # "realmGet$metadataValue":Ljava/lang/String;
    .end local v28    # "realmGet$metadataNameSpace":Ljava/lang/String;
    .end local v29    # "realmGet$mayRead":Ljava/lang/Boolean;
    .end local v30    # "realmGet$mayWrite":Ljava/lang/Boolean;
    .end local v31    # "realmGet$mayManage":Ljava/lang/Boolean;
    :goto_21c
    nop

    .line 1106
    .end local v22    # "pkColumnIndex":J
    .restart local v9    # "pkColumnIndex":J
    :goto_21d
    move-object v3, v15

    move-wide/from16 v9, v22

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    goto/16 :goto_1e

    .line 1198
    .end local v15    # "object":Lio/realm/internal/permissions/PermissionChange;
    .end local v22    # "pkColumnIndex":J
    .local v3, "object":Lio/realm/internal/permissions/PermissionChange;
    .restart local v9    # "pkColumnIndex":J
    :cond_222
    move-wide/from16 v22, v9

    .end local v9    # "pkColumnIndex":J
    .restart local v22    # "pkColumnIndex":J
    return-void
.end method

.method static update(Lio/realm/Realm;Lio/realm/internal/permissions/PermissionChange;Lio/realm/internal/permissions/PermissionChange;Ljava/util/Map;)Lio/realm/internal/permissions/PermissionChange;
    .registers 7
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "realmObject"    # Lio/realm/internal/permissions/PermissionChange;
    .param p2, "newObject"    # Lio/realm/internal/permissions/PermissionChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Lio/realm/internal/permissions/PermissionChange;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/internal/permissions/PermissionChange;"
        }
    .end annotation

    .line 1237
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    .line 1238
    .local v0, "realmObjectTarget":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;

    .line 1239
    .local v1, "realmObjectSource":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$createdAt(Ljava/util/Date;)V

    .line 1240
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 1241
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusCode(Ljava/lang/Integer;)V

    .line 1242
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$statusMessage(Ljava/lang/String;)V

    .line 1243
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$realmUrl(Ljava/lang/String;)V

    .line 1244
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 1245
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataKey(Ljava/lang/String;)V

    .line 1246
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataValue(Ljava/lang/String;)V

    .line 1247
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$metadataNameSpace(Ljava/lang/String;)V

    .line 1248
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayRead(Ljava/lang/Boolean;)V

    .line 1249
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayWrite(Ljava/lang/Boolean;)V

    .line 1250
    invoke-interface {v1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxyInterface;->realmSet$mayManage(Ljava/lang/Boolean;)V

    .line 1251
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 1336
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1337
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 1338
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;

    .line 1340
    .local v2, "aPermissionChange":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;
    iget-object v3, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1341
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1342
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

    .line 1344
    :cond_35
    iget-object v5, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1345
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1346
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

    .line 1348
    :cond_5d
    iget-object v7, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 1350
    :cond_76
    return v0

    .line 1337
    .end local v2    # "aPermissionChange":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;
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

    .line 1323
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1325
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 1327
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 1328
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

    .line 1329
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 1330
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 1331
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 110
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 111
    return-void

    .line 113
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 114
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iput-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 115
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 116
    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 117
    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 118
    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 119
    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 120
    return-void
.end method

.method public realmGet$createdAt()Ljava/util/Date;
    .registers 4

    .line 143
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 144
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .registers 4

    .line 125
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 126
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mayManage()Ljava/lang/Boolean;
    .registers 4

    .line 474
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 475
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 476
    const/4 v0, 0x0

    return-object v0

    .line 478
    :cond_1b
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mayRead()Ljava/lang/Boolean;
    .registers 4

    .line 408
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 409
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 410
    const/4 v0, 0x0

    return-object v0

    .line 412
    :cond_1b
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mayWrite()Ljava/lang/Boolean;
    .registers 4

    .line 441
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 442
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 443
    const/4 v0, 0x0

    return-object v0

    .line 445
    :cond_1b
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$metadataKey()Ljava/lang/String;
    .registers 4

    .line 318
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 319
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$metadataNameSpace()Ljava/lang/String;
    .registers 4

    .line 378
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 379
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$metadataValue()Ljava/lang/String;
    .registers 4

    .line 348
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 349
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

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

    .line 1318
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$realmUrl()Ljava/lang/String;
    .registers 4

    .line 262
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 263
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$statusCode()Ljava/lang/Integer;
    .registers 4

    .line 199
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 200
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 201
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_1b
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$statusMessage()Ljava/lang/String;
    .registers 4

    .line 232
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 233
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .registers 4

    .line 171
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 172
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$userId()Ljava/lang/String;
    .registers 4

    .line 290
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 291
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$createdAt(Ljava/util/Date;)V
    .registers 10
    .param p1, "value"    # Ljava/util/Date;

    .line 149
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 150
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 151
    return-void

    .line 153
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 154
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 157
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    .line 158
    return-void

    .line 155
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'createdAt\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 162
    if-eqz p1, :cond_4c

    .line 165
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    .line 166
    return-void

    .line 163
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'createdAt\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 133
    return-void

    .line 136
    :cond_9
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 137
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$mayManage(Ljava/lang/Boolean;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 483
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 484
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 485
    return-void

    .line 487
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 488
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 489
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 490
    return-void

    .line 492
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 493
    return-void

    .line 496
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3f
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 497
    if-nez p1, :cond_58

    .line 498
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 499
    return-void

    .line 501
    :cond_58
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 502
    return-void
.end method

.method public realmSet$mayRead(Ljava/lang/Boolean;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 417
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 418
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 419
    return-void

    .line 421
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 422
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 423
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 424
    return-void

    .line 426
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 427
    return-void

    .line 430
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3f
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 431
    if-nez p1, :cond_58

    .line 432
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 433
    return-void

    .line 435
    :cond_58
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 436
    return-void
.end method

.method public realmSet$mayWrite(Ljava/lang/Boolean;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 450
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 451
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 452
    return-void

    .line 454
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 455
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 456
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 457
    return-void

    .line 459
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 460
    return-void

    .line 463
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3f
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 464
    if-nez p1, :cond_58

    .line 465
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 466
    return-void

    .line 468
    :cond_58
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 469
    return-void
.end method

.method public realmSet$metadataKey(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 325
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 326
    return-void

    .line 328
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 329
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 330
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 331
    return-void

    .line 333
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 334
    return-void

    .line 337
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 338
    if-nez p1, :cond_55

    .line 339
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 340
    return-void

    .line 342
    :cond_55
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 343
    return-void
.end method

.method public realmSet$metadataNameSpace(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 385
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 386
    return-void

    .line 388
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 389
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 390
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 391
    return-void

    .line 393
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 394
    return-void

    .line 397
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 398
    if-nez p1, :cond_55

    .line 399
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 400
    return-void

    .line 402
    :cond_55
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 403
    return-void
.end method

.method public realmSet$metadataValue(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 355
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 356
    return-void

    .line 358
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 359
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 360
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 361
    return-void

    .line 363
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 364
    return-void

    .line 367
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 368
    if-nez p1, :cond_55

    .line 369
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 370
    return-void

    .line 372
    :cond_55
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 373
    return-void
.end method

.method public realmSet$realmUrl(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 269
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 270
    return-void

    .line 272
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 273
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 276
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 277
    return-void

    .line 274
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'realmUrl\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 281
    if-eqz p1, :cond_4c

    .line 284
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 285
    return-void

    .line 282
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'realmUrl\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$statusCode(Ljava/lang/Integer;)V
    .registers 18
    .param p1, "value"    # Ljava/lang/Integer;

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 209
    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v1

    if-nez v1, :cond_13

    .line 210
    return-void

    .line 212
    :cond_13
    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    .line 213
    .local v1, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2c

    .line 214
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v3, v3, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 215
    return-void

    .line 217
    :cond_2c
    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v9, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v13, v2

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 218
    return-void

    .line 221
    .end local v1    # "row":Lio/realm/internal/Row;
    :cond_42
    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 222
    if-nez p1, :cond_5b

    .line 223
    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/Row;->setNull(J)V

    .line 224
    return-void

    .line 226
    :cond_5b
    iget-object v1, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    iget-object v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 227
    return-void
.end method

.method public realmSet$statusMessage(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 239
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 240
    return-void

    .line 242
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 243
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 244
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 245
    return-void

    .line 247
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v8, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 248
    return-void

    .line 251
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 252
    if-nez p1, :cond_55

    .line 253
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 254
    return-void

    .line 256
    :cond_55
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 257
    return-void
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .registers 10
    .param p1, "value"    # Ljava/util/Date;

    .line 177
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 178
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 179
    return-void

    .line 181
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 182
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 185
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    .line 186
    return-void

    .line 183
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'updatedAt\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 190
    if-eqz p1, :cond_4c

    .line 193
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    .line 194
    return-void

    .line 191
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'updatedAt\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$userId(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 297
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 298
    return-void

    .line 300
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 301
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 304
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 305
    return-void

    .line 302
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'userId\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 309
    if-eqz p1, :cond_4c

    .line 312
    iget-object v0, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->columnInfo:Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 313
    return-void

    .line 310
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'userId\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1257
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1258
    const-string v0, "Invalid object"

    return-object v0

    .line 1260
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PermissionChange = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1261
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const-string/jumbo v1, "{createdAt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$createdAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1267
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    const-string/jumbo v1, "{updatedAt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1271
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    const-string/jumbo v1, "{statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$statusCode()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6b

    :cond_69
    const-string v1, "null"

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1275
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    const-string/jumbo v1, "{statusMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8a

    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$statusMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_8c

    :cond_8a
    const-string v1, "null"

    :goto_8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    const-string/jumbo v1, "{realmUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$realmUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    const-string/jumbo v1, "{userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$userId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    const-string/jumbo v1, "{metadataKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_db

    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$metadataKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_dd

    :cond_db
    const-string v1, "null"

    :goto_dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    const-string/jumbo v1, "{metadataValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fc

    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$metadataValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_fe

    :cond_fc
    const-string v1, "null"

    :goto_fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    const-string/jumbo v1, "{metadataNameSpace:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11d

    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$metadataNameSpace()Ljava/lang/String;

    move-result-object v1

    goto :goto_11f

    :cond_11d
    const-string v1, "null"

    :goto_11f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    const-string/jumbo v1, "{mayRead:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_13e

    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$mayRead()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_140

    :cond_13e
    const-string v1, "null"

    :goto_140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1303
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    const-string/jumbo v1, "{mayWrite:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_15f

    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$mayWrite()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_161

    :cond_15f
    const-string v1, "null"

    :goto_161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1307
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    const-string/jumbo v1, "{mayManage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_180

    invoke-virtual {p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;->realmGet$mayManage()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_182

    :cond_180
    const-string v1, "null"

    :goto_182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1311
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.io_realm_internal_permissions_PermissionChangeRealmProxy.ClassNameHelper (io.realm.io_realm_internal_permissions_PermissionChangeRealmProxy$ClassNameHelper)
.class public final Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "io_realm_internal_permissions_PermissionChangeRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "PermissionChange"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.io_realm_internal_permissions_PermissionChangeRealmProxy.PermissionChangeColumnInfo (io.realm.io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo)
.class final Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "io_realm_internal_permissions_PermissionChangeRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionChangeColumnInfo"
.end annotation


# instance fields
.field createdAtIndex:J

.field idIndex:J

.field mayManageIndex:J

.field mayReadIndex:J

.field mayWriteIndex:J

.field metadataKeyIndex:J

.field metadataNameSpaceIndex:J

.field metadataValueIndex:J

.field realmUrlIndex:J

.field statusCodeIndex:J

.field statusMessageIndex:J

.field updatedAtIndex:J

.field userIdIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 70
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 71
    invoke-virtual {p0, p1, p0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 52
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 53
    const-string v0, "PermissionChange"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 54
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    .line 55
    const-string v1, "createdAt"

    const-string v2, "createdAt"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    .line 56
    const-string/jumbo v1, "updatedAt"

    const-string/jumbo v2, "updatedAt"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    .line 57
    const-string v1, "statusCode"

    const-string v2, "statusCode"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    .line 58
    const-string v1, "statusMessage"

    const-string v2, "statusMessage"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    .line 59
    const-string v1, "realmUrl"

    const-string v2, "realmUrl"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    .line 60
    const-string/jumbo v1, "userId"

    const-string/jumbo v2, "userId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    .line 61
    const-string v1, "metadataKey"

    const-string v2, "metadataKey"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    .line 62
    const-string v1, "metadataValue"

    const-string v2, "metadataValue"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    .line 63
    const-string v1, "metadataNameSpace"

    const-string v2, "metadataNameSpace"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    .line 64
    const-string v1, "mayRead"

    const-string v2, "mayRead"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    .line 65
    const-string v1, "mayWrite"

    const-string v2, "mayWrite"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    .line 66
    const-string v1, "mayManage"

    const-string v2, "mayManage"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    .line 67
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 76
    new-instance v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 81
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 82
    .local v0, "src":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;

    .line 83
    .local v1, "dst":Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->idIndex:J

    .line 84
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->createdAtIndex:J

    .line 85
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->updatedAtIndex:J

    .line 86
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusCodeIndex:J

    .line 87
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->statusMessageIndex:J

    .line 88
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->realmUrlIndex:J

    .line 89
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->userIdIndex:J

    .line 90
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataKeyIndex:J

    .line 91
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataValueIndex:J

    .line 92
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->metadataNameSpaceIndex:J

    .line 93
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayReadIndex:J

    .line 94
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayWriteIndex:J

    .line 95
    iget-wide v2, v0, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_internal_permissions_PermissionChangeRealmProxy$PermissionChangeColumnInfo;->mayManageIndex:J

    .line 96
    return-void
.end method
