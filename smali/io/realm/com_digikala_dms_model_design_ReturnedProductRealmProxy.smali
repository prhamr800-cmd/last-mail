###### Class io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxy (io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxy)
.class public Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;
.super Lcom/digikala/dms/model/design/ReturnedProduct;
.source "com_digikala_dms_model_design_ReturnedProductRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/design/ReturnedProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    invoke-static {}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/digikala/dms/model/design/ReturnedProduct;-><init>()V

    .line 79
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 80
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/design/ReturnedProduct;ZLjava/util/Map;)Lcom/digikala/dms/model/design/ReturnedProduct;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/design/ReturnedProduct;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/ReturnedProduct;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/design/ReturnedProduct;"
        }
    .end annotation

    .line 337
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 338
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 339
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    return-object v1

    .line 343
    :cond_c
    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    .line 344
    .local v1, "realmObject":Lcom/digikala/dms/model/design/ReturnedProduct;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    .line 347
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    .line 349
    .local v3, "realmObjectCopy":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 350
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    .line 351
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$Count()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$Count(Ljava/lang/String;)V

    .line 352
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ItemBatchId()I

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$ItemBatchId(I)V

    .line 353
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/ReturnedProduct;ZLjava/util/Map;)Lcom/digikala/dms/model/design/ReturnedProduct;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/ReturnedProduct;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/ReturnedProduct;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/design/ReturnedProduct;"
        }
    .end annotation

    .line 318
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

    .line 319
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 320
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 323
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 324
    return-object p1

    .line 321
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 328
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 329
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 330
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/design/ReturnedProduct;

    return-object v2

    .line 333
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/design/ReturnedProduct;ZLjava/util/Map;)Lcom/digikala/dms/model/design/ReturnedProduct;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 222
    new-instance v0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/design/ReturnedProduct;IILjava/util/Map;)Lcom/digikala/dms/model/design/ReturnedProduct;
    .registers 9
    .param p0, "realmObject"    # Lcom/digikala/dms/model/design/ReturnedProduct;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/design/ReturnedProduct;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/design/ReturnedProduct;"
        }
    .end annotation

    .line 483
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_4d

    if-nez p0, :cond_5

    goto :goto_4d

    .line 486
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 488
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 489
    new-instance v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-direct {v1}, Lcom/digikala/dms/model/design/ReturnedProduct;-><init>()V

    .line 490
    .local v1, "unmanagedObject":Lcom/digikala/dms/model/design/ReturnedProduct;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 493
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/ReturnedProduct;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 494
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    return-object v1

    .line 496
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    .line 497
    .restart local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/ReturnedProduct;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 499
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    .line 500
    .local v2, "unmanagedCopy":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    .line 501
    .local v3, "realmSource":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 502
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    .line 503
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$Count()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$Count(Ljava/lang/String;)V

    .line 504
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ItemBatchId()I

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$ItemBatchId(I)V

    .line 506
    return-object v1

    .line 484
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/ReturnedProduct;
    .end local v2    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;
    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 13

    .line 209
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "ReturnedProduct"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 210
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v1, "OrderItemId"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 211
    const-string v7, "ReasonId"

    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 212
    const-string v2, "Count"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 213
    const-string v8, "ItemBatchId"

    sget-object v9, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v12, 0x1

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 214
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/ReturnedProduct;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 237
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    .line 239
    .local v1, "obj":Lcom/digikala/dms/model/design/ReturnedProduct;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    .line 240
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;
    const-string v3, "OrderItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2e

    .line 241
    const-string v3, "OrderItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 242
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    goto :goto_2e

    .line 244
    :cond_25
    const-string v3, "OrderItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 247
    :cond_2e
    :goto_2e
    const-string v3, "ReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 248
    const-string v3, "ReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 249
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    goto :goto_4b

    .line 251
    :cond_42
    const-string v3, "ReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    .line 254
    :cond_4b
    :goto_4b
    const-string v3, "Count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 255
    const-string v3, "Count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 256
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$Count(Ljava/lang/String;)V

    goto :goto_68

    .line 258
    :cond_5f
    const-string v3, "Count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$Count(Ljava/lang/String;)V

    .line 261
    :cond_68
    :goto_68
    const-string v3, "ItemBatchId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 262
    const-string v3, "ItemBatchId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 265
    const-string v3, "ItemBatchId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$ItemBatchId(I)V

    goto :goto_8a

    .line 263
    :cond_82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'ItemBatchId\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    :cond_8a
    :goto_8a
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/ReturnedProduct;
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

    .line 275
    new-instance v0, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-direct {v0}, Lcom/digikala/dms/model/design/ReturnedProduct;-><init>()V

    .line 276
    .local v0, "obj":Lcom/digikala/dms/model/design/ReturnedProduct;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    .line 277
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 278
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 279
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "name":Ljava/lang/String;
    const-string v3, "OrderItemId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_36

    .line 282
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2f

    .line 283
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    goto/16 :goto_9a

    .line 285
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 286
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    goto :goto_9a

    .line 288
    :cond_36
    const-string v3, "ReasonId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 289
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_4e

    .line 290
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    goto :goto_9a

    .line 292
    :cond_4e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 293
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    goto :goto_9a

    .line 295
    :cond_55
    const-string v3, "Count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 296
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_6d

    .line 297
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$Count(Ljava/lang/String;)V

    goto :goto_9a

    .line 299
    :cond_6d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 300
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$Count(Ljava/lang/String;)V

    goto :goto_9a

    .line 302
    :cond_74
    const-string v3, "ItemBatchId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 303
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_8c

    .line 304
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmSet$ItemBatchId(I)V

    goto :goto_9a

    .line 306
    :cond_8c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 307
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'ItemBatchId\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    :cond_97
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 312
    .end local v2    # "name":Ljava/lang/String;
    :goto_9a
    goto/16 :goto_b

    .line 313
    :cond_9c
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 314
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/design/ReturnedProduct;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 218
    sget-object v0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 226
    const-string v0, "ReturnedProduct"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/ReturnedProduct;Ljava/util/Map;)J
    .registers 24
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/ReturnedProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/ReturnedProduct;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 357
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

    .line 358
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 360
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 361
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 362
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    .line 363
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 364
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v17

    .line 366
    .local v17, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v17, :cond_75

    .line 367
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 369
    :cond_75
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v18

    .line 370
    .local v18, "realmGet$ReasonId":Ljava/lang/String;
    if-eqz v18, :cond_88

    .line 371
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 373
    :cond_88
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$Count()Ljava/lang/String;

    move-result-object v19

    .line 374
    .local v19, "realmGet$Count":Ljava/lang/String;
    if-eqz v19, :cond_9b

    .line 375
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 377
    :cond_9b
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ItemBatchIdIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ItemBatchId()I

    move-result v3

    int-to-long v9, v3

    const/16 v20, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v20

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 378
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

    .line 382
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 383
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 384
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    .line 385
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;
    const/4 v3, 0x0

    .line 386
    .local v3, "object":Lcom/digikala/dms/model/design/ReturnedProduct;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 387
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/design/ReturnedProduct;

    .line 388
    .end local v3    # "object":Lcom/digikala/dms/model/design/ReturnedProduct;
    .local v15, "object":Lcom/digikala/dms/model/design/ReturnedProduct;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 389
    goto/16 :goto_cb

    .line 391
    :cond_31
    instance-of v3, v15, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_72

    move-object v3, v15

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_72

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

    if-eqz v3, :cond_72

    .line 392
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

    .line 393
    goto :goto_cb

    .line 395
    :cond_72
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 396
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v18

    .line 398
    .local v18, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v18, :cond_91

    .line 399
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 401
    :cond_91
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v19

    .line 402
    .local v19, "realmGet$ReasonId":Ljava/lang/String;
    if-eqz v19, :cond_a5

    .line 403
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 405
    :cond_a5
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$Count()Ljava/lang/String;

    move-result-object v20

    .line 406
    .local v20, "realmGet$Count":Ljava/lang/String;
    if-eqz v20, :cond_b9

    .line 407
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 409
    :cond_b9
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ItemBatchIdIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ItemBatchId()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 410
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$OrderItemId":Ljava/lang/String;
    .end local v19    # "realmGet$ReasonId":Ljava/lang/String;
    .end local v20    # "realmGet$Count":Ljava/lang/String;
    nop

    .line 385
    :goto_cb
    move-object v3, v15

    goto/16 :goto_1c

    .line 411
    .end local v15    # "object":Lcom/digikala/dms/model/design/ReturnedProduct;
    .restart local v3    # "object":Lcom/digikala/dms/model/design/ReturnedProduct;
    :cond_ce
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/ReturnedProduct;Ljava/util/Map;)J
    .registers 24
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/ReturnedProduct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/ReturnedProduct;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 414
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

    .line 415
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 417
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 418
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 419
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    .line 420
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 421
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v17

    .line 423
    .local v17, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v17, :cond_76

    .line 424
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7e

    .line 426
    :cond_76
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 428
    :goto_7e
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v18

    .line 429
    .local v18, "realmGet$ReasonId":Ljava/lang/String;
    if-eqz v18, :cond_92

    .line 430
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9a

    .line 432
    :cond_92
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 434
    :goto_9a
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$Count()Ljava/lang/String;

    move-result-object v19

    .line 435
    .local v19, "realmGet$Count":Ljava/lang/String;
    if-eqz v19, :cond_ae

    .line 436
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b6

    .line 438
    :cond_ae
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 440
    :goto_b6
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ItemBatchIdIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ItemBatchId()I

    move-result v3

    int-to-long v9, v3

    const/16 v20, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v20

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 441
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

    .line 445
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/design/ReturnedProduct;

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

    const-class v4, Lcom/digikala/dms/model/design/ReturnedProduct;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    .line 448
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;
    const/4 v3, 0x0

    .line 449
    .local v3, "object":Lcom/digikala/dms/model/design/ReturnedProduct;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 450
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/design/ReturnedProduct;

    .line 451
    .end local v3    # "object":Lcom/digikala/dms/model/design/ReturnedProduct;
    .local v15, "object":Lcom/digikala/dms/model/design/ReturnedProduct;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 452
    goto/16 :goto_ea

    .line 454
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

    .line 455
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

    .line 456
    goto/16 :goto_ea

    .line 458
    :cond_73
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 459
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v18

    .line 461
    .local v18, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v18, :cond_93

    .line 462
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9c

    .line 464
    :cond_93
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 466
    :goto_9c
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v19

    .line 467
    .local v19, "realmGet$ReasonId":Ljava/lang/String;
    if-eqz v19, :cond_b1

    .line 468
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ba

    .line 470
    :cond_b1
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 472
    :goto_ba
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$Count()Ljava/lang/String;

    move-result-object v20

    .line 473
    .local v20, "realmGet$Count":Ljava/lang/String;
    if-eqz v20, :cond_cf

    .line 474
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d8

    .line 476
    :cond_cf
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 478
    :goto_d8
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ItemBatchIdIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxyInterface;->realmGet$ItemBatchId()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 479
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$OrderItemId":Ljava/lang/String;
    .end local v19    # "realmGet$ReasonId":Ljava/lang/String;
    .end local v20    # "realmGet$Count":Ljava/lang/String;
    nop

    .line 448
    :goto_ea
    move-object v3, v15

    goto/16 :goto_1c

    .line 480
    .end local v15    # "object":Lcom/digikala/dms/model/design/ReturnedProduct;
    .restart local v3    # "object":Lcom/digikala/dms/model/design/ReturnedProduct;
    :cond_ed
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 555
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 556
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 557
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;

    .line 559
    .local v2, "aReturnedProduct":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 561
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

    .line 563
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 565
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

    .line 567
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 569
    :cond_76
    return v0

    .line 556
    .end local v2    # "aReturnedProduct":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;
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

    .line 542
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 546
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 547
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

    .line 548
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 549
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 550
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 84
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    check-cast v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    .line 89
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 90
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 91
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 92
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 93
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 94
    return-void
.end method

.method public realmGet$Count()Ljava/lang/String;
    .registers 4

    .line 159
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 160
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$ItemBatchId()I
    .registers 4

    .line 189
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 190
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ItemBatchIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$OrderItemId()Ljava/lang/String;
    .registers 4

    .line 99
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 100
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$ReasonId()Ljava/lang/String;
    .registers 4

    .line 129
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 130
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

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

    .line 537
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$Count(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 166
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 167
    return-void

    .line 169
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 170
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 171
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

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

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

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
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 179
    if-nez p1, :cond_55

    .line 180
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 181
    return-void

    .line 183
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 184
    return-void
.end method

.method public realmSet$ItemBatchId(I)V
    .registers 11
    .param p1, "value"    # I

    .line 195
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 196
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 197
    return-void

    .line 199
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 200
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ItemBatchIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 201
    return-void

    .line 204
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 205
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ItemBatchIdIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 206
    return-void
.end method

.method public realmSet$OrderItemId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 106
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 107
    return-void

    .line 109
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 110
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 111
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

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

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

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
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 119
    if-nez p1, :cond_55

    .line 120
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 121
    return-void

    .line 123
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 124
    return-void
.end method

.method public realmSet$ReasonId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 136
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 137
    return-void

    .line 139
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 140
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 141
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

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

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

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
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 149
    if-nez p1, :cond_55

    .line 150
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 151
    return-void

    .line 153
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 512
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 513
    const-string v0, "Invalid object"

    return-object v0

    .line 515
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReturnedProduct = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{OrderItemId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, "null"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string/jumbo v1, "{ReasonId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_42
    const-string v1, "null"

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string/jumbo v1, "{Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->realmGet$Count()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->realmGet$Count()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    :cond_63
    const-string v1, "null"

    :goto_65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    const-string/jumbo v1, "{ItemBatchId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;->realmGet$ItemBatchId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_design_ReturnedProductRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "ReturnedProduct"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxy.ReturnedProductColumnInfo (io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo)
.class final Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_design_ReturnedProductRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReturnedProductColumnInfo"
.end annotation


# instance fields
.field CountIndex:J

.field ItemBatchIdIndex:J

.field OrderItemIdIndex:J

.field ReasonIdIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 53
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 54
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

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
    const-string v0, "ReturnedProduct"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 46
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "OrderItemId"

    const-string v2, "OrderItemId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    .line 47
    const-string v1, "ReasonId"

    const-string v2, "ReasonId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

    .line 48
    const-string v1, "Count"

    const-string v2, "Count"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    .line 49
    const-string v1, "ItemBatchId"

    const-string v2, "ItemBatchId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ItemBatchIdIndex:J

    .line 50
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 59
    new-instance v0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 64
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    .line 65
    .local v0, "src":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;

    .line 66
    .local v1, "dst":Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->OrderItemIdIndex:J

    .line 67
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ReasonIdIndex:J

    .line 68
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->CountIndex:J

    .line 69
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ItemBatchIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_ReturnedProductRealmProxy$ReturnedProductColumnInfo;->ItemBatchIdIndex:J

    .line 70
    return-void
.end method
