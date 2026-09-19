###### Class io.realm.com_digikala_dms_model_domain_BatchItemRealmProxy (io.realm.com_digikala_dms_model_domain_BatchItemRealmProxy)
.class public Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;
.super Lcom/digikala/dms/model/domain/BatchItem;
.source "com_digikala_dms_model_domain_BatchItemRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/digikala/dms/model/domain/BatchItem;-><init>()V

    .line 79
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 80
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/BatchItem;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/domain/BatchItem;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/BatchItem;"
        }
    .end annotation

    .line 345
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 346
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 347
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/domain/BatchItem;

    return-object v1

    .line 351
    :cond_c
    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/BatchItem;

    .line 352
    .local v1, "realmObject":Lcom/digikala/dms/model/domain/BatchItem;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    .line 355
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    .line 357
    .local v3, "realmObjectCopy":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$itemBatchId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$itemBatchId(Ljava/lang/String;)V

    .line 358
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$consumerPrice()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$consumerPrice(Ljava/lang/String;)V

    .line 359
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$expireDate(Ljava/lang/String;)V

    .line 360
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$count()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$count(Ljava/lang/String;)V

    .line 361
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/BatchItem;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/BatchItem;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/BatchItem;"
        }
    .end annotation

    .line 326
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

    .line 327
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 328
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 331
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 332
    return-object p1

    .line 329
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 336
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 337
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 338
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/domain/BatchItem;

    return-object v2

    .line 341
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/BatchItem;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 230
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/domain/BatchItem;IILjava/util/Map;)Lcom/digikala/dms/model/domain/BatchItem;
    .registers 9
    .param p0, "realmObject"    # Lcom/digikala/dms/model/domain/BatchItem;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/domain/BatchItem;"
        }
    .end annotation

    .line 507
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_4d

    if-nez p0, :cond_5

    goto :goto_4d

    .line 510
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 512
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 513
    new-instance v1, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-direct {v1}, Lcom/digikala/dms/model/domain/BatchItem;-><init>()V

    .line 514
    .local v1, "unmanagedObject":Lcom/digikala/dms/model/domain/BatchItem;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 517
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/BatchItem;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 518
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/BatchItem;

    return-object v1

    .line 520
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/domain/BatchItem;

    .line 521
    .restart local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/BatchItem;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 523
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    .line 524
    .local v2, "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    .line 525
    .local v3, "realmSource":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$itemBatchId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$itemBatchId(Ljava/lang/String;)V

    .line 526
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$consumerPrice()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$consumerPrice(Ljava/lang/String;)V

    .line 527
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$expireDate(Ljava/lang/String;)V

    .line 528
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$count()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$count(Ljava/lang/String;)V

    .line 530
    return-object v1

    .line 508
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/domain/BatchItem;
    .end local v2    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;
    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 13

    .line 217
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "BatchItem"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 218
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v1, "itemBatchId"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 219
    const-string v7, "consumerPrice"

    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 220
    const-string v2, "expireDate"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 221
    const-string v8, "count"

    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v12, 0x0

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 222
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/BatchItem;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/BatchItem;

    .line 247
    .local v1, "obj":Lcom/digikala/dms/model/domain/BatchItem;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    .line 248
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;
    const-string v3, "itemBatchId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2e

    .line 249
    const-string v3, "itemBatchId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 250
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$itemBatchId(Ljava/lang/String;)V

    goto :goto_2e

    .line 252
    :cond_25
    const-string v3, "itemBatchId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$itemBatchId(Ljava/lang/String;)V

    .line 255
    :cond_2e
    :goto_2e
    const-string v3, "consumerPrice"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 256
    const-string v3, "consumerPrice"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 257
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$consumerPrice(Ljava/lang/String;)V

    goto :goto_4b

    .line 259
    :cond_42
    const-string v3, "consumerPrice"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$consumerPrice(Ljava/lang/String;)V

    .line 262
    :cond_4b
    :goto_4b
    const-string v3, "expireDate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 263
    const-string v3, "expireDate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 264
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$expireDate(Ljava/lang/String;)V

    goto :goto_68

    .line 266
    :cond_5f
    const-string v3, "expireDate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$expireDate(Ljava/lang/String;)V

    .line 269
    :cond_68
    :goto_68
    const-string v3, "count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 270
    const-string v3, "count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 271
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$count(Ljava/lang/String;)V

    goto :goto_85

    .line 273
    :cond_7c
    const-string v3, "count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$count(Ljava/lang/String;)V

    .line 276
    :cond_85
    :goto_85
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/BatchItem;
    .registers 8
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

    .line 283
    new-instance v0, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/BatchItem;-><init>()V

    .line 284
    .local v0, "obj":Lcom/digikala/dms/model/domain/BatchItem;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    .line 285
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 286
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 287
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "name":Ljava/lang/String;
    const-string v3, "itemBatchId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    .line 290
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2e

    .line 291
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$itemBatchId(Ljava/lang/String;)V

    goto :goto_95

    .line 293
    :cond_2e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 294
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$itemBatchId(Ljava/lang/String;)V

    goto :goto_95

    .line 296
    :cond_35
    const-string v3, "consumerPrice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 297
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_4d

    .line 298
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$consumerPrice(Ljava/lang/String;)V

    goto :goto_95

    .line 300
    :cond_4d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 301
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$consumerPrice(Ljava/lang/String;)V

    goto :goto_95

    .line 303
    :cond_54
    const-string v3, "expireDate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 304
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_6c

    .line 305
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$expireDate(Ljava/lang/String;)V

    goto :goto_95

    .line 307
    :cond_6c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 308
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$expireDate(Ljava/lang/String;)V

    goto :goto_95

    .line 310
    :cond_73
    const-string v3, "count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 311
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_8b

    .line 312
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$count(Ljava/lang/String;)V

    goto :goto_95

    .line 314
    :cond_8b
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 315
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmSet$count(Ljava/lang/String;)V

    goto :goto_95

    .line 318
    :cond_92
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 320
    .end local v2    # "name":Ljava/lang/String;
    :goto_95
    goto/16 :goto_b

    .line 321
    :cond_97
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 322
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/BatchItem;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 226
    sget-object v0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 234
    const-string v0, "BatchItem"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J
    .registers 23
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/BatchItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 365
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

    .line 366
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 368
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 369
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 370
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    .line 371
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 372
    .local v14, "rowIndex":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v10, p2

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$itemBatchId()Ljava/lang/String;

    move-result-object v16

    .line 374
    .local v16, "realmGet$itemBatchId":Ljava/lang/String;
    if-eqz v16, :cond_78

    .line 375
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    const/16 v17, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v16

    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 377
    :cond_78
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$consumerPrice()Ljava/lang/String;

    move-result-object v17

    .line 378
    .local v17, "realmGet$consumerPrice":Ljava/lang/String;
    if-eqz v17, :cond_8b

    .line 379
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 381
    :cond_8b
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v18

    .line 382
    .local v18, "realmGet$expireDate":Ljava/lang/String;
    if-eqz v18, :cond_9e

    .line 383
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 385
    :cond_9e
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$count()Ljava/lang/String;

    move-result-object v19

    .line 386
    .local v19, "realmGet$count":Ljava/lang/String;
    if-eqz v19, :cond_b1

    .line 387
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 389
    :cond_b1
    return-wide v14
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

    .line 393
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 394
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 395
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    .line 396
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;
    const/4 v3, 0x0

    .line 397
    .local v3, "object":Lcom/digikala/dms/model/domain/BatchItem;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 398
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/digikala/dms/model/domain/BatchItem;

    .line 399
    .end local v3    # "object":Lcom/digikala/dms/model/domain/BatchItem;
    .local v14, "object":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 400
    goto/16 :goto_ca

    .line 402
    :cond_31
    instance-of v3, v14, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_72

    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_72

    move-object v3, v14

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

    if-eqz v3, :cond_72

    .line 403
    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    goto :goto_ca

    .line 406
    :cond_72
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 407
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$itemBatchId()Ljava/lang/String;

    move-result-object v17

    .line 409
    .local v17, "realmGet$itemBatchId":Ljava/lang/String;
    if-eqz v17, :cond_90

    .line 410
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 412
    :cond_90
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$consumerPrice()Ljava/lang/String;

    move-result-object v18

    .line 413
    .local v18, "realmGet$consumerPrice":Ljava/lang/String;
    if-eqz v18, :cond_a3

    .line 414
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 416
    :cond_a3
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v19

    .line 417
    .local v19, "realmGet$expireDate":Ljava/lang/String;
    if-eqz v19, :cond_b6

    .line 418
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 420
    :cond_b6
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$count()Ljava/lang/String;

    move-result-object v20

    .line 421
    .local v20, "realmGet$count":Ljava/lang/String;
    if-eqz v20, :cond_c9

    .line 422
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 424
    .end local v15    # "rowIndex":J
    .end local v17    # "realmGet$itemBatchId":Ljava/lang/String;
    .end local v18    # "realmGet$consumerPrice":Ljava/lang/String;
    .end local v19    # "realmGet$expireDate":Ljava/lang/String;
    .end local v20    # "realmGet$count":Ljava/lang/String;
    :cond_c9
    nop

    .line 396
    :goto_ca
    move-object v3, v14

    goto/16 :goto_1c

    .line 425
    .end local v14    # "object":Lcom/digikala/dms/model/domain/BatchItem;
    .restart local v3    # "object":Lcom/digikala/dms/model/domain/BatchItem;
    :cond_cd
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BatchItem;Ljava/util/Map;)J
    .registers 23
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/BatchItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/BatchItem;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 428
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

    .line 429
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 431
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 432
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 433
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    .line 434
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 435
    .local v14, "rowIndex":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v10, p2

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$itemBatchId()Ljava/lang/String;

    move-result-object v16

    .line 437
    .local v16, "realmGet$itemBatchId":Ljava/lang/String;
    if-eqz v16, :cond_79

    .line 438
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    const/16 v17, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v16

    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_81

    .line 440
    :cond_79
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 442
    :goto_81
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$consumerPrice()Ljava/lang/String;

    move-result-object v17

    .line 443
    .local v17, "realmGet$consumerPrice":Ljava/lang/String;
    if-eqz v17, :cond_95

    .line 444
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9d

    .line 446
    :cond_95
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 448
    :goto_9d
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v18

    .line 449
    .local v18, "realmGet$expireDate":Ljava/lang/String;
    if-eqz v18, :cond_b1

    .line 450
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b9

    .line 452
    :cond_b1
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 454
    :goto_b9
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$count()Ljava/lang/String;

    move-result-object v19

    .line 455
    .local v19, "realmGet$count":Ljava/lang/String;
    if-eqz v19, :cond_cd

    .line 456
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v14

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d5

    .line 458
    :cond_cd
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 460
    :goto_d5
    return-wide v14
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

    .line 464
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/domain/BatchItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 465
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 466
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/BatchItem;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    .line 467
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;
    const/4 v3, 0x0

    .line 468
    .local v3, "object":Lcom/digikala/dms/model/domain/BatchItem;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 469
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/digikala/dms/model/domain/BatchItem;

    .line 470
    .end local v3    # "object":Lcom/digikala/dms/model/domain/BatchItem;
    .local v14, "object":Lcom/digikala/dms/model/domain/BatchItem;
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 471
    goto/16 :goto_ef

    .line 473
    :cond_31
    instance-of v3, v14, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_73

    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_73

    move-object v3, v14

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

    .line 474
    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    goto/16 :goto_ef

    .line 477
    :cond_73
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 478
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$itemBatchId()Ljava/lang/String;

    move-result-object v17

    .line 480
    .local v17, "realmGet$itemBatchId":Ljava/lang/String;
    if-eqz v17, :cond_92

    .line 481
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9a

    .line 483
    :cond_92
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 485
    :goto_9a
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$consumerPrice()Ljava/lang/String;

    move-result-object v18

    .line 486
    .local v18, "realmGet$consumerPrice":Ljava/lang/String;
    if-eqz v18, :cond_ae

    .line 487
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b6

    .line 489
    :cond_ae
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 491
    :goto_b6
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v19

    .line 492
    .local v19, "realmGet$expireDate":Ljava/lang/String;
    if-eqz v19, :cond_ca

    .line 493
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d2

    .line 495
    :cond_ca
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 497
    :goto_d2
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxyInterface;->realmGet$count()Ljava/lang/String;

    move-result-object v20

    .line 498
    .local v20, "realmGet$count":Ljava/lang/String;
    if-eqz v20, :cond_e6

    .line 499
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v7, v15

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ee

    .line 501
    :cond_e6
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 503
    .end local v15    # "rowIndex":J
    .end local v17    # "realmGet$itemBatchId":Ljava/lang/String;
    .end local v18    # "realmGet$consumerPrice":Ljava/lang/String;
    .end local v19    # "realmGet$expireDate":Ljava/lang/String;
    .end local v20    # "realmGet$count":Ljava/lang/String;
    :goto_ee
    nop

    .line 467
    :goto_ef
    move-object v3, v14

    goto/16 :goto_1c

    .line 504
    .end local v14    # "object":Lcom/digikala/dms/model/domain/BatchItem;
    .restart local v3    # "object":Lcom/digikala/dms/model/domain/BatchItem;
    :cond_f2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 579
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 580
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 581
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;

    .line 583
    .local v2, "aBatchItem":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 585
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

    .line 587
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 588
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 589
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

    .line 591
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 593
    :cond_76
    return v0

    .line 580
    .end local v2    # "aBatchItem":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;
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

    .line 566
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 570
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 571
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

    .line 572
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 573
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 574
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 84
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 85
    return-void

    .line 87
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 88
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    .line 89
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 90
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 91
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 92
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 93
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 94
    return-void
.end method

.method public realmGet$consumerPrice()Ljava/lang/String;
    .registers 4

    .line 129
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 130
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$count()Ljava/lang/String;
    .registers 4

    .line 189
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 190
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$expireDate()Ljava/lang/String;
    .registers 4

    .line 159
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 160
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$itemBatchId()Ljava/lang/String;
    .registers 4

    .line 99
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 100
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

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

    .line 561
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$consumerPrice(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 136
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 137
    return-void

    .line 139
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 140
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 141
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 142
    return-void

    .line 144
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 145
    return-void

    .line 148
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 149
    if-nez p1, :cond_55

    .line 150
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 151
    return-void

    .line 153
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 154
    return-void
.end method

.method public realmSet$count(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 196
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 197
    return-void

    .line 199
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 200
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 201
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 202
    return-void

    .line 204
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 205
    return-void

    .line 208
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 209
    if-nez p1, :cond_55

    .line 210
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 211
    return-void

    .line 213
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 214
    return-void
.end method

.method public realmSet$expireDate(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 166
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 167
    return-void

    .line 169
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 170
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 171
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 172
    return-void

    .line 174
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 175
    return-void

    .line 178
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 179
    if-nez p1, :cond_55

    .line 180
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 181
    return-void

    .line 183
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 184
    return-void
.end method

.method public realmSet$itemBatchId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 106
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 107
    return-void

    .line 109
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 110
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 111
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 112
    return-void

    .line 114
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 115
    return-void

    .line 118
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 119
    if-nez p1, :cond_55

    .line 120
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 121
    return-void

    .line 123
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 536
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 537
    const-string v0, "Invalid object"

    return-object v0

    .line 539
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatchItem = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{itemBatchId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->realmGet$itemBatchId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->realmGet$itemBatchId()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, "null"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string/jumbo v1, "{consumerPrice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->realmGet$consumerPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->realmGet$consumerPrice()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_42
    const-string v1, "null"

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string/jumbo v1, "{expireDate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->realmGet$expireDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    :cond_63
    const-string v1, "null"

    :goto_65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string/jumbo v1, "{count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->realmGet$count()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_84

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;->realmGet$count()Ljava/lang/String;

    move-result-object v1

    goto :goto_86

    :cond_84
    const-string v1, "null"

    :goto_86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_domain_BatchItemRealmProxy.BatchItemColumnInfo (io.realm.com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo)
.class final Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_domain_BatchItemRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BatchItemColumnInfo"
.end annotation


# instance fields
.field consumerPriceIndex:J

.field countIndex:J

.field expireDateIndex:J

.field itemBatchIdIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 53
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 54
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 55
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 44
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 45
    const-string v0, "BatchItem"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 46
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "itemBatchId"

    const-string v2, "itemBatchId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    .line 47
    const-string v1, "consumerPrice"

    const-string v2, "consumerPrice"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    .line 48
    const-string v1, "expireDate"

    const-string v2, "expireDate"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    .line 49
    const-string v1, "count"

    const-string v2, "count"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    .line 50
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 59
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 64
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    .line 65
    .local v0, "src":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;

    .line 66
    .local v1, "dst":Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->itemBatchIdIndex:J

    .line 67
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->consumerPriceIndex:J

    .line 68
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->expireDateIndex:J

    .line 69
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$BatchItemColumnInfo;->countIndex:J

    .line 70
    return-void
.end method

###### Class io.realm.com_digikala_dms_model_domain_BatchItemRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_domain_BatchItemRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_BatchItemRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_BatchItemRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "BatchItem"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
