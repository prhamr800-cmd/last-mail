###### Class io.realm.io_realm_permissions_PermissionRealmProxy (io.realm.io_realm_permissions_PermissionRealmProxy)
.class public Lio/realm/io_realm_permissions_PermissionRealmProxy;
.super Lio/realm/permissions/Permission;
.source "io_realm_permissions_PermissionRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/io_realm_permissions_PermissionRealmProxy$ClassNameHelper;,
        Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lio/realm/permissions/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    invoke-static {}, Lio/realm/io_realm_permissions_PermissionRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 83
    invoke-direct {p0}, Lio/realm/permissions/Permission;-><init>()V

    .line 84
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 85
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/permissions/Permission;ZLjava/util/Map;)Lio/realm/permissions/Permission;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lio/realm/permissions/Permission;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/Permission;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/permissions/Permission;"
        }
    .end annotation

    .line 420
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 421
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 422
    move-object v1, v0

    check-cast v1, Lio/realm/permissions/Permission;

    return-object v1

    .line 426
    :cond_c
    const-class v1, Lio/realm/permissions/Permission;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/permissions/Permission;

    .line 427
    .local v1, "realmObject":Lio/realm/permissions/Permission;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    .line 430
    .local v2, "realmObjectSource":Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    .line 432
    .local v3, "realmObjectCopy":Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 433
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    .line 434
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayRead(Z)V

    .line 435
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayWrite(Z)V

    .line 436
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayManage(Z)V

    .line 437
    invoke-interface {v2}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 438
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/permissions/Permission;ZLjava/util/Map;)Lio/realm/permissions/Permission;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/permissions/Permission;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/Permission;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lio/realm/permissions/Permission;"
        }
    .end annotation

    .line 401
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 402
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 403
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 406
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 407
    return-object p1

    .line 404
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 411
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 412
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 413
    move-object v2, v1

    check-cast v2, Lio/realm/permissions/Permission;

    return-object v2

    .line 416
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/io_realm_permissions_PermissionRealmProxy;->copy(Lio/realm/Realm;Lio/realm/permissions/Permission;ZLjava/util/Map;)Lio/realm/permissions/Permission;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 267
    new-instance v0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lio/realm/permissions/Permission;IILjava/util/Map;)Lio/realm/permissions/Permission;
    .registers 9
    .param p0, "realmObject"    # Lio/realm/permissions/Permission;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/permissions/Permission;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lio/realm/permissions/Permission;"
        }
    .end annotation

    .line 576
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_5b

    if-nez p0, :cond_5

    goto :goto_5b

    .line 579
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 581
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 582
    new-instance v1, Lio/realm/permissions/Permission;

    invoke-direct {v1}, Lio/realm/permissions/Permission;-><init>()V

    .line 583
    .local v1, "unmanagedObject":Lio/realm/permissions/Permission;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 586
    .end local v1    # "unmanagedObject":Lio/realm/permissions/Permission;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 587
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/permissions/Permission;

    return-object v1

    .line 589
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lio/realm/permissions/Permission;

    .line 590
    .restart local v1    # "unmanagedObject":Lio/realm/permissions/Permission;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 592
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    .line 593
    .local v2, "unmanagedCopy":Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    .line 594
    .local v3, "realmSource":Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 595
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    .line 596
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayRead(Z)V

    .line 597
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayWrite(Z)V

    .line 598
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayManage(Z)V

    .line 599
    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 601
    return-object v1

    .line 577
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lio/realm/permissions/Permission;
    .end local v2    # "unmanagedCopy":Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 13

    .line 252
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "Permission"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 253
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string/jumbo v1, "userId"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 254
    const-string v7, "path"

    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 255
    const-string v2, "mayRead"

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 256
    const-string v8, "mayWrite"

    sget-object v9, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 257
    const-string v2, "mayManage"

    sget-object v3, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 258
    const-string/jumbo v8, "updatedAt"

    sget-object v9, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 259
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lio/realm/permissions/Permission;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lio/realm/permissions/Permission;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lio/realm/permissions/Permission;

    .line 284
    .local v1, "obj":Lio/realm/permissions/Permission;
    move-object v2, v1

    check-cast v2, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    .line 285
    .local v2, "objProxy":Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;
    const-string/jumbo v3, "userId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_31

    .line 286
    const-string/jumbo v3, "userId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 287
    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto :goto_31

    .line 289
    :cond_27
    const-string/jumbo v3, "userId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    .line 292
    :cond_31
    :goto_31
    const-string v3, "path"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 293
    const-string v3, "path"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 294
    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    goto :goto_4e

    .line 296
    :cond_45
    const-string v3, "path"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    .line 299
    :cond_4e
    :goto_4e
    const-string v3, "mayRead"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 300
    const-string v3, "mayRead"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 303
    const-string v3, "mayRead"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayRead(Z)V

    goto :goto_70

    .line 301
    :cond_68
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'mayRead\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 306
    :cond_70
    :goto_70
    const-string v3, "mayWrite"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 307
    const-string v3, "mayWrite"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 310
    const-string v3, "mayWrite"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayWrite(Z)V

    goto :goto_92

    .line 308
    :cond_8a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'mayWrite\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_92
    :goto_92
    const-string v3, "mayManage"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 314
    const-string v3, "mayManage"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 317
    const-string v3, "mayManage"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayManage(Z)V

    goto :goto_b4

    .line 315
    :cond_ac
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'mayManage\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 320
    :cond_b4
    :goto_b4
    const-string/jumbo v3, "updatedAt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 321
    const-string/jumbo v3, "updatedAt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 322
    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_ef

    .line 324
    :cond_ca
    const-string/jumbo v3, "updatedAt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 325
    .local v3, "timestamp":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_e0

    .line 326
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_ef

    .line 328
    :cond_e0
    new-instance v4, Ljava/util/Date;

    const-string/jumbo v5, "updatedAt"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v2, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 332
    .end local v3    # "timestamp":Ljava/lang/Object;
    :cond_ef
    :goto_ef
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lio/realm/permissions/Permission;
    .registers 10
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

    .line 339
    new-instance v0, Lio/realm/permissions/Permission;

    invoke-direct {v0}, Lio/realm/permissions/Permission;-><init>()V

    .line 340
    .local v0, "obj":Lio/realm/permissions/Permission;
    move-object v1, v0

    check-cast v1, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    .line 341
    .local v1, "objProxy":Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 342
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_108

    .line 343
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_38

    .line 346
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_30

    .line 347
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto/16 :goto_106

    .line 349
    :cond_30
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 350
    invoke-interface {v1, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$userId(Ljava/lang/String;)V

    goto/16 :goto_106

    .line 352
    :cond_38
    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 353
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_51

    .line 354
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    goto/16 :goto_106

    .line 356
    :cond_51
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 357
    invoke-interface {v1, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$path(Ljava/lang/String;)V

    goto/16 :goto_106

    .line 359
    :cond_59
    const-string v3, "mayRead"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 360
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_72

    .line 361
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayRead(Z)V

    goto/16 :goto_106

    .line 363
    :cond_72
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 364
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'mayRead\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :cond_7d
    const-string v3, "mayWrite"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 367
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_96

    .line 368
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayWrite(Z)V

    goto/16 :goto_106

    .line 370
    :cond_96
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 371
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'mayWrite\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 373
    :cond_a1
    const-string v3, "mayManage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 374
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_b9

    .line 375
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$mayManage(Z)V

    goto :goto_106

    .line 377
    :cond_b9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 378
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'mayManage\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 380
    :cond_c4
    const-string/jumbo v3, "updatedAt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 381
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_dc

    .line 382
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 383
    invoke-interface {v1, v4}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_106

    .line 384
    :cond_dc
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v3, v4, :cond_f7

    .line 385
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v3

    .line 386
    .local v3, "timestamp":J
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-lez v7, :cond_f6

    .line 387
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1, v5}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    .line 389
    .end local v3    # "timestamp":J
    :cond_f6
    goto :goto_106

    .line 390
    :cond_f7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmSet$updatedAt(Ljava/util/Date;)V

    goto :goto_106

    .line 393
    :cond_103
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 395
    .end local v2    # "name":Ljava/lang/String;
    :goto_106
    goto/16 :goto_b

    .line 396
    :cond_108
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 397
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lio/realm/permissions/Permission;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 263
    sget-object v0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 271
    const-string v0, "Permission"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lio/realm/permissions/Permission;Ljava/util/Map;)J
    .registers 24
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/permissions/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/Permission;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 442
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

    .line 443
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 445
    :cond_3c
    const-class v1, Lio/realm/permissions/Permission;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 446
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 447
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/permissions/Permission;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 448
    .local v14, "columnInfo":Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 449
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v17

    .line 451
    .local v17, "realmGet$userId":Ljava/lang/String;
    if-eqz v17, :cond_75

    .line 452
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 454
    :cond_75
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v18

    .line 455
    .local v18, "realmGet$path":Ljava/lang/String;
    if-eqz v18, :cond_88

    .line 456
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 458
    :cond_88
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 459
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 460
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 461
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v19

    .line 462
    .local v19, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v19, :cond_c9

    .line 463
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/16 v20, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v20

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 465
    :cond_c9
    return-wide v15
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 24
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

    .line 469
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lio/realm/permissions/Permission;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 470
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 471
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/permissions/Permission;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 472
    .local v14, "columnInfo":Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;
    const/4 v3, 0x0

    .line 473
    .local v3, "object":Lio/realm/permissions/Permission;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 474
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/permissions/Permission;

    .line 475
    .end local v3    # "object":Lio/realm/permissions/Permission;
    .local v15, "object":Lio/realm/permissions/Permission;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 476
    goto/16 :goto_e7

    .line 478
    :cond_31
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_73

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_73

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

    if-eqz v3, :cond_73

    .line 479
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

    .line 480
    goto/16 :goto_e7

    .line 482
    :cond_73
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 483
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v18

    .line 485
    .local v18, "realmGet$userId":Ljava/lang/String;
    if-eqz v18, :cond_92

    .line 486
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 488
    :cond_92
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v19

    .line 489
    .local v19, "realmGet$path":Ljava/lang/String;
    if-eqz v19, :cond_a6

    .line 490
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 492
    :cond_a6
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 493
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 494
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 495
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v20

    .line 496
    .local v20, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v20, :cond_e6

    .line 497
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    .line 499
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$userId":Ljava/lang/String;
    .end local v19    # "realmGet$path":Ljava/lang/String;
    .end local v20    # "realmGet$updatedAt":Ljava/util/Date;
    :cond_e6
    nop

    .line 472
    :goto_e7
    move-object v3, v15

    goto/16 :goto_1c

    .line 500
    .end local v15    # "object":Lio/realm/permissions/Permission;
    .restart local v3    # "object":Lio/realm/permissions/Permission;
    :cond_ea
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lio/realm/permissions/Permission;Ljava/util/Map;)J
    .registers 24
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lio/realm/permissions/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/permissions/Permission;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 503
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

    .line 504
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 506
    :cond_3c
    const-class v1, Lio/realm/permissions/Permission;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 507
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 508
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/permissions/Permission;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 509
    .local v14, "columnInfo":Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 510
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v17

    .line 512
    .local v17, "realmGet$userId":Ljava/lang/String;
    if-eqz v17, :cond_76

    .line 513
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7e

    .line 515
    :cond_76
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 517
    :goto_7e
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v18

    .line 518
    .local v18, "realmGet$path":Ljava/lang/String;
    if-eqz v18, :cond_92

    .line 519
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9a

    .line 521
    :cond_92
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 523
    :goto_9a
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 524
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 525
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 526
    move-object v3, v0

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v19

    .line 527
    .local v19, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v19, :cond_dc

    .line 528
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/16 v20, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v20

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_e4

    .line 530
    :cond_dc
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 532
    :goto_e4
    return-wide v15
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 24
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

    .line 536
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lio/realm/permissions/Permission;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 537
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 538
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lio/realm/permissions/Permission;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 539
    .local v14, "columnInfo":Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;
    const/4 v3, 0x0

    .line 540
    .local v3, "object":Lio/realm/permissions/Permission;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_108

    .line 541
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/realm/permissions/Permission;

    .line 542
    .end local v3    # "object":Lio/realm/permissions/Permission;
    .local v15, "object":Lio/realm/permissions/Permission;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 543
    goto/16 :goto_105

    .line 545
    :cond_31
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_73

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_73

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

    if-eqz v3, :cond_73

    .line 546
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

    .line 547
    goto/16 :goto_105

    .line 549
    :cond_73
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 550
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$userId()Ljava/lang/String;

    move-result-object v18

    .line 552
    .local v18, "realmGet$userId":Ljava/lang/String;
    if-eqz v18, :cond_93

    .line 553
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9c

    .line 555
    :cond_93
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 557
    :goto_9c
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$path()Ljava/lang/String;

    move-result-object v19

    .line 558
    .local v19, "realmGet$path":Ljava/lang/String;
    if-eqz v19, :cond_b1

    .line 559
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ba

    .line 561
    :cond_b1
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 563
    :goto_ba
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayRead()Z

    move-result v9

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 564
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayWrite()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 565
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$mayManage()Z

    move-result v9

    move-wide v3, v12

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    .line 566
    move-object v3, v15

    check-cast v3, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/io_realm_permissions_PermissionRealmProxyInterface;->realmGet$updatedAt()Ljava/util/Date;

    move-result-object v20

    .line 567
    .local v20, "realmGet$updatedAt":Ljava/util/Date;
    if-eqz v20, :cond_fb

    .line 568
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetTimestamp(JJJJZ)V

    goto :goto_104

    .line 570
    :cond_fb
    iget-wide v5, v14, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 572
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$userId":Ljava/lang/String;
    .end local v19    # "realmGet$path":Ljava/lang/String;
    .end local v20    # "realmGet$updatedAt":Ljava/util/Date;
    :goto_104
    nop

    .line 539
    :goto_105
    move-object v3, v15

    goto/16 :goto_1c

    .line 573
    .end local v15    # "object":Lio/realm/permissions/Permission;
    .restart local v3    # "object":Lio/realm/permissions/Permission;
    :cond_108
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 624
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 625
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 626
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/io_realm_permissions_PermissionRealmProxy;

    .line 628
    .local v2, "aPermission":Lio/realm/io_realm_permissions_PermissionRealmProxy;
    iget-object v3, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 630
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

    .line 632
    :cond_35
    iget-object v5, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 633
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 634
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

    .line 636
    :cond_5d
    iget-object v7, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 638
    :cond_76
    return v0

    .line 625
    .end local v2    # "aPermission":Lio/realm/io_realm_permissions_PermissionRealmProxy;
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

    .line 611
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 615
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 616
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

    .line 617
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 618
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 619
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 89
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 90
    return-void

    .line 92
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 93
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iput-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 94
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 95
    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 96
    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 97
    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 98
    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 99
    return-void
.end method

.method public realmGet$mayManage()Z
    .registers 4

    .line 204
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 205
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$mayRead()Z
    .registers 4

    .line 160
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 161
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$mayWrite()Z
    .registers 4

    .line 182
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 183
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$path()Ljava/lang/String;
    .registers 4

    .line 132
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 133
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

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

    .line 606
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$updatedAt()Ljava/util/Date;
    .registers 4

    .line 226
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 227
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$userId()Ljava/lang/String;
    .registers 4

    .line 104
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 105
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$mayManage(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 210
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 211
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 212
    return-void

    .line 214
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 215
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 216
    return-void

    .line 219
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 220
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 221
    return-void
.end method

.method public realmSet$mayRead(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 166
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 167
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 168
    return-void

    .line 170
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 171
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 172
    return-void

    .line 175
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 176
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 177
    return-void
.end method

.method public realmSet$mayWrite(Z)V
    .registers 10
    .param p1, "value"    # Z

    .line 188
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 189
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 190
    return-void

    .line 192
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 193
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setBoolean(JJZZ)V

    .line 194
    return-void

    .line 197
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 198
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setBoolean(JZ)V

    .line 199
    return-void
.end method

.method public realmSet$path(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 139
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 140
    return-void

    .line 142
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 143
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 146
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 147
    return-void

    .line 144
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'path\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 151
    if-eqz p1, :cond_4c

    .line 154
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 155
    return-void

    .line 152
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'path\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$updatedAt(Ljava/util/Date;)V
    .registers 10
    .param p1, "value"    # Ljava/util/Date;

    .line 232
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 233
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 234
    return-void

    .line 236
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 237
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 240
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setDate(JJLjava/util/Date;Z)V

    .line 241
    return-void

    .line 238
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'updatedAt\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 245
    if-eqz p1, :cond_4c

    .line 248
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setDate(JLjava/util/Date;)V

    .line 249
    return-void

    .line 246
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'updatedAt\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realmSet$userId(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 111
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 112
    return-void

    .line 114
    :cond_11
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 115
    .local v0, "row":Lio/realm/internal/Row;
    if-eqz p1, :cond_2b

    .line 118
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v2, v2, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 119
    return-void

    .line 116
    :cond_2b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trying to set non-nullable field \'userId\' to null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_33
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 123
    if-eqz p1, :cond_4c

    .line 126
    iget-object v0, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy;->columnInfo:Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    iget-wide v1, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 127
    return-void

    .line 124
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to set non-nullable field \'userId\' to null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.realm.io_realm_permissions_PermissionRealmProxy.ClassNameHelper (io.realm.io_realm_permissions_PermissionRealmProxy$ClassNameHelper)
.class public final Lio/realm/io_realm_permissions_PermissionRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "io_realm_permissions_PermissionRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_permissions_PermissionRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "Permission"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.io_realm_permissions_PermissionRealmProxy.PermissionColumnInfo (io.realm.io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo)
.class final Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "io_realm_permissions_PermissionRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_permissions_PermissionRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionColumnInfo"
.end annotation


# instance fields
.field mayManageIndex:J

.field mayReadIndex:J

.field mayWriteIndex:J

.field pathIndex:J

.field updatedAtIndex:J

.field userIdIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 56
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 57
    invoke-virtual {p0, p1, p0}, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 45
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 46
    const-string v0, "Permission"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 47
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string/jumbo v1, "userId"

    const-string/jumbo v2, "userId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    .line 48
    const-string v1, "path"

    const-string v2, "path"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    .line 49
    const-string v1, "mayRead"

    const-string v2, "mayRead"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    .line 50
    const-string v1, "mayWrite"

    const-string v2, "mayWrite"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    .line 51
    const-string v1, "mayManage"

    const-string v2, "mayManage"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    .line 52
    const-string/jumbo v1, "updatedAt"

    const-string/jumbo v2, "updatedAt"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    .line 53
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 62
    new-instance v0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 67
    move-object v0, p1

    check-cast v0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 68
    .local v0, "src":Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;

    .line 69
    .local v1, "dst":Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->userIdIndex:J

    .line 70
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->pathIndex:J

    .line 71
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayReadIndex:J

    .line 72
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayWriteIndex:J

    .line 73
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->mayManageIndex:J

    .line 74
    iget-wide v2, v0, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    iput-wide v2, v1, Lio/realm/io_realm_permissions_PermissionRealmProxy$PermissionColumnInfo;->updatedAtIndex:J

    .line 75
    return-void
.end method
