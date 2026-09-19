###### Class io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxy (io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxy)
.class public Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;
.super Lcom/digikala/dms/model/domain/BasketItems;
.source "com_digikala_dms_model_domain_BasketItemsRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

.field private orderItemsRealmList:Lio/realm/RealmList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            ">;"
        }
    .end annotation
.end field

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    invoke-static {}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/digikala/dms/model/domain/BasketItems;-><init>()V

    .line 74
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 75
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/BasketItems;
    .registers 14
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/domain/BasketItems;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/BasketItems;"
        }
    .end annotation

    .line 295
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 296
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 297
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/domain/BasketItems;

    return-object v1

    .line 301
    :cond_c
    const-class v1, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/BasketItems;

    .line 302
    .local v1, "realmObject":Lcom/digikala/dms/model/domain/BasketItems;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    .line 305
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    .line 307
    .local v4, "realmObjectCopy":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$basketId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmSet$basketId(Ljava/lang/String;)V

    .line 309
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v5

    .line 310
    .local v5, "orderItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    if-eqz v5, :cond_5c

    .line 311
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v6

    .line 312
    .local v6, "orderItemsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    invoke-virtual {v6}, Lio/realm/RealmList;->clear()V

    .line 313
    nop

    .local v3, "i":I
    :goto_3a
    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5c

    .line 314
    invoke-virtual {v5, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 315
    .local v7, "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 316
    .local v8, "cacheorderItems":Lcom/digikala/dms/model/domain/ShipmentItem;
    if-eqz v8, :cond_52

    .line 317
    invoke-virtual {v6, v8}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 319
    :cond_52
    invoke-static {p0, v7, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/ShipmentItem;

    move-result-object v9

    invoke-virtual {v6, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v7    # "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    .end local v8    # "cacheorderItems":Lcom/digikala/dms/model/domain/ShipmentItem;
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 324
    .end local v3    # "i":I
    .end local v6    # "orderItemsRealmList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    :cond_5c
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/BasketItems;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/BasketItems;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/domain/BasketItems;"
        }
    .end annotation

    .line 276
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

    .line 277
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 278
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 281
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 282
    return-object p1

    .line 279
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 287
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 288
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/domain/BasketItems;

    return-object v2

    .line 291
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;ZLjava/util/Map;)Lcom/digikala/dms/model/domain/BasketItems;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 194
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/domain/BasketItems;IILjava/util/Map;)Lcom/digikala/dms/model/domain/BasketItems;
    .registers 14
    .param p0, "realmObject"    # Lcom/digikala/dms/model/domain/BasketItems;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/domain/BasketItems;"
        }
    .end annotation

    .line 488
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    const/4 v0, 0x0

    if-gt p1, p2, :cond_64

    if-nez p0, :cond_6

    goto :goto_64

    .line 491
    :cond_6
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 493
    .local v1, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v1, :cond_1c

    .line 494
    new-instance v2, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-direct {v2}, Lcom/digikala/dms/model/domain/BasketItems;-><init>()V

    .line 495
    .local v2, "unmanagedObject":Lcom/digikala/dms/model/domain/BasketItems;
    new-instance v3, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v3, p1, v2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 498
    .end local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/BasketItems;
    :cond_1c
    iget v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v2, :cond_25

    .line 499
    iget-object v0, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v0, Lcom/digikala/dms/model/domain/BasketItems;

    return-object v0

    .line 501
    :cond_25
    iget-object v2, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v2, Lcom/digikala/dms/model/domain/BasketItems;

    .line 502
    .restart local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/BasketItems;
    iput p1, v1, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 504
    :goto_2b
    move-object v3, v2

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    .line 505
    .local v3, "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;
    move-object v4, p0

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    .line 506
    .local v4, "realmSource":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$basketId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmSet$basketId(Ljava/lang/String;)V

    .line 509
    if-ne p1, p2, :cond_3e

    .line 510
    invoke-interface {v3, v0}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmSet$orderItems(Lio/realm/RealmList;)V

    goto :goto_63

    .line 512
    :cond_3e
    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v0

    .line 513
    .local v0, "managedorderItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    new-instance v5, Lio/realm/RealmList;

    invoke-direct {v5}, Lio/realm/RealmList;-><init>()V

    .line 514
    .local v5, "unmanagedorderItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    invoke-interface {v3, v5}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmSet$orderItems(Lio/realm/RealmList;)V

    .line 515
    add-int/lit8 v6, p1, 0x1

    .line 516
    .local v6, "nextDepth":I
    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v7

    .line 517
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_51
    if-ge v8, v7, :cond_63

    .line 518
    invoke-virtual {v0, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/domain/ShipmentItem;

    invoke-static {v9, v6, p2, p3}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->createDetachedCopy(Lcom/digikala/dms/model/domain/ShipmentItem;IILjava/util/Map;)Lcom/digikala/dms/model/domain/ShipmentItem;

    move-result-object v9

    .line 519
    .local v9, "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-virtual {v5, v9}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v9    # "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 523
    .end local v0    # "managedorderItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    .end local v5    # "unmanagedorderItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    .end local v6    # "nextDepth":I
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_63
    :goto_63
    return-object v2

    .line 489
    .end local v1    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v2    # "unmanagedObject":Lcom/digikala/dms/model/domain/BasketItems;
    .end local v3    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;
    .end local v4    # "realmSource":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;
    :cond_64
    :goto_64
    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 10

    .line 183
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "BasketItems"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 184
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v5, "basketId"

    sget-object v6, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 185
    const-string v1, "orderItems"

    sget-object v2, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v3, "ShipmentItem"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedLinkProperty(Ljava/lang/String;Lio/realm/RealmFieldType;Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 186
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/BasketItems;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "orderItems"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 210
    const-string v2, "orderItems"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_13
    const-class v2, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {p0, v2, v1, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/domain/BasketItems;

    .line 214
    .local v1, "obj":Lcom/digikala/dms/model/domain/BasketItems;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    .line 215
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;
    const-string v3, "basketId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3c

    .line 216
    const-string v3, "basketId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 217
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmSet$basketId(Ljava/lang/String;)V

    goto :goto_3c

    .line 219
    :cond_33
    const-string v3, "basketId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmSet$basketId(Ljava/lang/String;)V

    .line 222
    :cond_3c
    :goto_3c
    const-string v3, "orderItems"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 223
    const-string v3, "orderItems"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 224
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmSet$orderItems(Lio/realm/RealmList;)V

    goto :goto_76

    .line 226
    :cond_50
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->clear()V

    .line 227
    const-string v3, "orderItems"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 228
    .local v3, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_76

    .line 229
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {p0, v5, p2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/domain/ShipmentItem;

    move-result-object v5

    .line 230
    .local v5, "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6, v5}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v5    # "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 234
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_76
    :goto_76
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/BasketItems;
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

    .line 241
    new-instance v0, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-direct {v0}, Lcom/digikala/dms/model/domain/BasketItems;-><init>()V

    .line 242
    .local v0, "obj":Lcom/digikala/dms/model/domain/BasketItems;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    .line 243
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 244
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 245
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "name":Ljava/lang/String;
    const-string v3, "basketId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    .line 248
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2e

    .line 249
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmSet$basketId(Ljava/lang/String;)V

    goto :goto_70

    .line 251
    :cond_2e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 252
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmSet$basketId(Ljava/lang/String;)V

    goto :goto_70

    .line 254
    :cond_35
    const-string v3, "orderItems"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 255
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v3, v5, :cond_4c

    .line 256
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 257
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmSet$orderItems(Lio/realm/RealmList;)V

    goto :goto_70

    .line 259
    :cond_4c
    new-instance v3, Lio/realm/RealmList;

    invoke-direct {v3}, Lio/realm/RealmList;-><init>()V

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmSet$orderItems(Lio/realm/RealmList;)V

    .line 260
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 261
    :goto_57
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 262
    invoke-static {p0, p1}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/domain/ShipmentItem;

    move-result-object v3

    .line 263
    .local v3, "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-interface {v1}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v3    # "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    goto :goto_57

    .line 265
    :cond_69
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    goto :goto_70

    .line 268
    :cond_6d
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 270
    .end local v2    # "name":Ljava/lang/String;
    :goto_70
    goto :goto_b

    .line 271
    :cond_71
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 272
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/domain/BasketItems;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 190
    sget-object v0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 198
    const-string v0, "BasketItems"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J
    .registers 22
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/BasketItems;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 328
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

    .line 329
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 331
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 332
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 333
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    .line 334
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v10

    .line 335
    .local v10, "rowIndex":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$basketId()Ljava/lang/String;

    move-result-object v15

    .line 337
    .local v15, "realmGet$basketId":Ljava/lang/String;
    if-eqz v15, :cond_7b

    .line 338
    iget-wide v6, v14, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    const/16 v16, 0x0

    move-wide v4, v12

    move-wide v8, v10

    move-wide/from16 v17, v12

    move-wide v12, v10

    .end local v10    # "rowIndex":J
    .local v12, "rowIndex":J
    .local v17, "tableNativePtr":J
    move-object v10, v15

    move/from16 v11, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7e

    .line 341
    .end local v17    # "tableNativePtr":J
    .restart local v10    # "rowIndex":J
    .local v12, "tableNativePtr":J
    :cond_7b
    move-wide/from16 v17, v12

    move-wide v12, v10

    .end local v10    # "rowIndex":J
    .local v12, "rowIndex":J
    .restart local v17    # "tableNativePtr":J
    :goto_7e
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v4

    .line 342
    .local v4, "orderItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    if-eqz v4, :cond_ba

    .line 343
    new-instance v5, Lio/realm/internal/OsList;

    invoke-virtual {v3, v12, v13}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v6

    iget-wide v7, v14, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->orderItemsIndex:J

    invoke-direct {v5, v6, v7, v8}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 344
    .local v5, "orderItemsOsList":Lio/realm/internal/OsList;
    invoke-virtual {v4}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_96
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ba

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 345
    .local v7, "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 346
    .local v8, "cacheItemIndexorderItems":Ljava/lang/Long;
    if-nez v8, :cond_b2

    .line 347
    invoke-static {v0, v7, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 349
    :cond_b2
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lio/realm/internal/OsList;->addRow(J)V

    .line 350
    .end local v7    # "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    .end local v8    # "cacheItemIndexorderItems":Ljava/lang/Long;
    goto :goto_96

    .line 352
    .end local v5    # "orderItemsOsList":Lio/realm/internal/OsList;
    :cond_ba
    return-wide v12
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 22
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

    .line 356
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 357
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 358
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    .line 359
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    const/4 v3, 0x0

    .line 360
    .local v3, "object":Lcom/digikala/dms/model/domain/BasketItems;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_de

    .line 361
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/digikala/dms/model/domain/BasketItems;

    .line 362
    .end local v3    # "object":Lcom/digikala/dms/model/domain/BasketItems;
    .local v14, "object":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 363
    nop

    .line 359
    :goto_30
    move-wide/from16 v17, v11

    goto/16 :goto_d9

    .line 365
    :cond_34
    instance-of v3, v14, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_75

    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_75

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

    if-eqz v3, :cond_75

    .line 366
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

    invoke-interface {v1, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    goto :goto_30

    .line 369
    :cond_75
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v9

    .line 370
    .local v9, "rowIndex":J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$basketId()Ljava/lang/String;

    move-result-object v15

    .line 372
    .local v15, "realmGet$basketId":Ljava/lang/String;
    if-eqz v15, :cond_99

    .line 373
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    const/16 v16, 0x0

    move-wide v3, v11

    move-wide v7, v9

    move-wide/from16 v17, v11

    move-wide v11, v9

    .end local v9    # "rowIndex":J
    .local v11, "rowIndex":J
    .local v17, "tableNativePtr":J
    move-object v9, v15

    move/from16 v10, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9c

    .line 376
    .end local v17    # "tableNativePtr":J
    .restart local v9    # "rowIndex":J
    .local v11, "tableNativePtr":J
    :cond_99
    move-wide/from16 v17, v11

    move-wide v11, v9

    .end local v9    # "rowIndex":J
    .local v11, "rowIndex":J
    .restart local v17    # "tableNativePtr":J
    :goto_9c
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v3

    .line 377
    .local v3, "orderItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    if-eqz v3, :cond_d8

    .line 378
    new-instance v4, Lio/realm/internal/OsList;

    invoke-virtual {v2, v11, v12}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v5

    iget-wide v6, v13, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->orderItemsIndex:J

    invoke-direct {v4, v5, v6, v7}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 379
    .local v4, "orderItemsOsList":Lio/realm/internal/OsList;
    invoke-virtual {v3}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 380
    .local v6, "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 381
    .local v7, "cacheItemIndexorderItems":Ljava/lang/Long;
    if-nez v7, :cond_d0

    .line 382
    invoke-static {v0, v6, v1}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insert(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 384
    :cond_d0
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lio/realm/internal/OsList;->addRow(J)V

    .line 385
    .end local v6    # "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    .end local v7    # "cacheItemIndexorderItems":Ljava/lang/Long;
    goto :goto_b4

    .line 387
    .end local v3    # "orderItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    .end local v4    # "orderItemsOsList":Lio/realm/internal/OsList;
    .end local v11    # "rowIndex":J
    .end local v15    # "realmGet$basketId":Ljava/lang/String;
    :cond_d8
    nop

    .line 359
    .end local v17    # "tableNativePtr":J
    .local v11, "tableNativePtr":J
    :goto_d9
    move-object v3, v14

    move-wide/from16 v11, v17

    .end local v11    # "tableNativePtr":J
    .restart local v17    # "tableNativePtr":J
    goto/16 :goto_1c

    .line 388
    .end local v14    # "object":Lcom/digikala/dms/model/domain/BasketItems;
    .end local v17    # "tableNativePtr":J
    .local v3, "object":Lcom/digikala/dms/model/domain/BasketItems;
    .restart local v11    # "tableNativePtr":J
    :cond_de
    move-wide/from16 v17, v11

    .end local v11    # "tableNativePtr":J
    .restart local v17    # "tableNativePtr":J
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/BasketItems;Ljava/util/Map;)J
    .registers 26
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/domain/BasketItems;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/domain/BasketItems;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 391
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

    .line 392
    move-object v3, v1

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v3

    return-wide v3

    .line 394
    :cond_40
    const-class v3, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 395
    .local v3, "table":Lio/realm/internal/Table;
    invoke-virtual {v3}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 396
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v4

    const-class v5, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v4, v5}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    .line 397
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    invoke-static {v3}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v10

    .line 398
    .local v10, "rowIndex":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    move-object v4, v1

    check-cast v4, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    invoke-interface {v4}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$basketId()Ljava/lang/String;

    move-result-object v15

    .line 400
    .local v15, "realmGet$basketId":Ljava/lang/String;
    if-eqz v15, :cond_7a

    .line 401
    iget-wide v6, v14, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    const/16 v16, 0x0

    move-wide v4, v12

    move-wide v8, v10

    move-wide/from16 v17, v10

    .end local v10    # "rowIndex":J
    .local v17, "rowIndex":J
    move-object v10, v15

    move/from16 v11, v16

    invoke-static/range {v4 .. v11}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_85

    .line 403
    .end local v17    # "rowIndex":J
    .restart local v10    # "rowIndex":J
    :cond_7a
    move-wide/from16 v17, v10

    .end local v10    # "rowIndex":J
    .restart local v17    # "rowIndex":J
    iget-wide v6, v14, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    const/4 v10, 0x0

    move-wide v4, v12

    move-wide/from16 v8, v17

    invoke-static/range {v4 .. v10}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 406
    :goto_85
    new-instance v4, Lio/realm/internal/OsList;

    move-wide/from16 v5, v17

    .end local v17    # "rowIndex":J
    .local v5, "rowIndex":J
    invoke-virtual {v3, v5, v6}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v7

    iget-wide v8, v14, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->orderItemsIndex:J

    invoke-direct {v4, v7, v8, v9}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 407
    .local v4, "orderItemsOsList":Lio/realm/internal/OsList;
    move-object v7, v1

    check-cast v7, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    invoke-interface {v7}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v7

    .line 408
    .local v7, "orderItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    if-eqz v7, :cond_e3

    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4}, Lio/realm/internal/OsList;->size()J

    move-result-wide v10

    cmp-long v16, v8, v10

    if-nez v16, :cond_e3

    .line 410
    invoke-virtual {v7}, Lio/realm/RealmList;->size()I

    move-result v8

    .line 411
    .local v8, "objects":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_ad
    if-ge v9, v8, :cond_dc

    .line 412
    invoke-virtual {v7, v9}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 413
    .local v10, "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 414
    .local v11, "cacheItemIndexorderItems":Ljava/lang/Long;
    if-nez v11, :cond_c5

    .line 415
    invoke-static {v0, v10, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 417
    :cond_c5
    move-wide/from16 v19, v12

    .end local v12    # "tableNativePtr":J
    .local v19, "tableNativePtr":J
    int-to-long v12, v9

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    .end local v15    # "realmGet$basketId":Ljava/lang/String;
    .local v21, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    .local v22, "realmGet$basketId":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v4, v12, v13, v14, v15}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 411
    .end local v10    # "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    .end local v11    # "cacheItemIndexorderItems":Ljava/lang/Long;
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v12, v19

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    goto :goto_ad

    .line 419
    .end local v8    # "objects":I
    .end local v9    # "i":I
    .end local v19    # "tableNativePtr":J
    .end local v21    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    .end local v22    # "realmGet$basketId":Ljava/lang/String;
    .restart local v12    # "tableNativePtr":J
    .restart local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    .restart local v15    # "realmGet$basketId":Ljava/lang/String;
    :cond_dc
    move-wide/from16 v19, v12

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    .end local v12    # "tableNativePtr":J
    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    .end local v15    # "realmGet$basketId":Ljava/lang/String;
    .restart local v19    # "tableNativePtr":J
    .restart local v21    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    .restart local v22    # "realmGet$basketId":Ljava/lang/String;
    goto :goto_116

    .line 420
    .end local v19    # "tableNativePtr":J
    .end local v21    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    .end local v22    # "realmGet$basketId":Ljava/lang/String;
    .restart local v12    # "tableNativePtr":J
    .restart local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    .restart local v15    # "realmGet$basketId":Ljava/lang/String;
    :cond_e3
    move-wide/from16 v19, v12

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    .end local v12    # "tableNativePtr":J
    .end local v14    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    .end local v15    # "realmGet$basketId":Ljava/lang/String;
    .restart local v19    # "tableNativePtr":J
    .restart local v21    # "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    .restart local v22    # "realmGet$basketId":Ljava/lang/String;
    invoke-virtual {v4}, Lio/realm/internal/OsList;->removeAll()V

    .line 421
    if-eqz v7, :cond_116

    .line 422
    invoke-virtual {v7}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_116

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 423
    .local v9, "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 424
    .local v10, "cacheItemIndexorderItems":Ljava/lang/Long;
    if-nez v10, :cond_10e

    .line 425
    invoke-static {v0, v9, v2}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 427
    :cond_10e
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lio/realm/internal/OsList;->addRow(J)V

    .line 428
    .end local v9    # "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    .end local v10    # "cacheItemIndexorderItems":Ljava/lang/Long;
    goto :goto_f2

    .line 432
    :cond_116
    :goto_116
    return-wide v5
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .registers 26
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

    .line 436
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 437
    .local v2, "table":Lio/realm/internal/Table;
    invoke-virtual {v2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 438
    .local v11, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/domain/BasketItems;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    .line 439
    .local v13, "columnInfo":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    const/4 v3, 0x0

    .line 440
    .local v3, "object":Lcom/digikala/dms/model/domain/BasketItems;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_132

    .line 441
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/digikala/dms/model/domain/BasketItems;

    .line 442
    .end local v3    # "object":Lcom/digikala/dms/model/domain/BasketItems;
    .local v14, "object":Lcom/digikala/dms/model/domain/BasketItems;
    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 443
    nop

    .line 439
    :goto_30
    move-wide/from16 v21, v11

    goto/16 :goto_12d

    .line 445
    :cond_34
    instance-of v3, v14, Lio/realm/internal/RealmObjectProxy;

    if-eqz v3, :cond_75

    move-object v3, v14

    check-cast v3, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    if-eqz v3, :cond_75

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

    if-eqz v3, :cond_75

    .line 446
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

    invoke-interface {v1, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    goto :goto_30

    .line 449
    :cond_75
    invoke-static {v2}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v9

    .line 450
    .local v9, "rowIndex":J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    move-object v3, v14

    check-cast v3, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$basketId()Ljava/lang/String;

    move-result-object v15

    .line 452
    .local v15, "realmGet$basketId":Ljava/lang/String;
    if-eqz v15, :cond_98

    .line 453
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    const/16 v16, 0x0

    move-wide v3, v11

    move-wide v7, v9

    move-wide/from16 v17, v9

    .end local v9    # "rowIndex":J
    .local v17, "rowIndex":J
    move-object v9, v15

    move/from16 v10, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a3

    .line 455
    .end local v17    # "rowIndex":J
    .restart local v9    # "rowIndex":J
    :cond_98
    move-wide/from16 v17, v9

    .end local v9    # "rowIndex":J
    .restart local v17    # "rowIndex":J
    iget-wide v5, v13, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v17

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 458
    :goto_a3
    new-instance v3, Lio/realm/internal/OsList;

    move-wide/from16 v4, v17

    .end local v17    # "rowIndex":J
    .local v4, "rowIndex":J
    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->getUncheckedRow(J)Lio/realm/internal/UncheckedRow;

    move-result-object v6

    iget-wide v7, v13, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->orderItemsIndex:J

    invoke-direct {v3, v6, v7, v8}, Lio/realm/internal/OsList;-><init>(Lio/realm/internal/UncheckedRow;J)V

    .line 459
    .local v3, "orderItemsOsList":Lio/realm/internal/OsList;
    move-object v6, v14

    check-cast v6, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;

    invoke-interface {v6}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxyInterface;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v6

    .line 460
    .local v6, "orderItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    if-eqz v6, :cond_fb

    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v3}, Lio/realm/internal/OsList;->size()J

    move-result-wide v9

    cmp-long v16, v7, v9

    if-nez v16, :cond_fb

    .line 462
    invoke-virtual {v6}, Lio/realm/RealmList;->size()I

    move-result v7

    .line 463
    .local v7, "objectCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_cb
    if-ge v8, v7, :cond_f6

    .line 464
    invoke-virtual {v6, v8}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 465
    .local v9, "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 466
    .local v10, "cacheItemIndexorderItems":Ljava/lang/Long;
    if-nez v10, :cond_e3

    .line 467
    invoke-static {v0, v9, v1}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 469
    :cond_e3
    move-wide/from16 v19, v4

    .end local v4    # "rowIndex":J
    .local v19, "rowIndex":J
    int-to-long v4, v8

    move-wide/from16 v21, v11

    .end local v11    # "tableNativePtr":J
    .local v21, "tableNativePtr":J
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v3, v4, v5, v11, v12}, Lio/realm/internal/OsList;->setRow(JJ)V

    .line 463
    .end local v9    # "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    .end local v10    # "cacheItemIndexorderItems":Ljava/lang/Long;
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v4, v19

    move-wide/from16 v11, v21

    goto :goto_cb

    .line 471
    .end local v7    # "objectCount":I
    .end local v8    # "i":I
    .end local v19    # "rowIndex":J
    .end local v21    # "tableNativePtr":J
    .restart local v4    # "rowIndex":J
    .restart local v11    # "tableNativePtr":J
    :cond_f6
    move-wide/from16 v19, v4

    move-wide/from16 v21, v11

    .end local v4    # "rowIndex":J
    .end local v11    # "tableNativePtr":J
    .restart local v19    # "rowIndex":J
    .restart local v21    # "tableNativePtr":J
    goto :goto_12c

    .line 472
    .end local v19    # "rowIndex":J
    .end local v21    # "tableNativePtr":J
    .restart local v4    # "rowIndex":J
    .restart local v11    # "tableNativePtr":J
    :cond_fb
    move-wide/from16 v19, v4

    move-wide/from16 v21, v11

    .end local v4    # "rowIndex":J
    .end local v11    # "tableNativePtr":J
    .restart local v19    # "rowIndex":J
    .restart local v21    # "tableNativePtr":J
    invoke-virtual {v3}, Lio/realm/internal/OsList;->removeAll()V

    .line 473
    if-eqz v6, :cond_12c

    .line 474
    invoke-virtual {v6}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_108
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 475
    .local v5, "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 476
    .local v7, "cacheItemIndexorderItems":Ljava/lang/Long;
    if-nez v7, :cond_124

    .line 477
    invoke-static {v0, v5, v1}, Lio/realm/com_digikala_dms_model_domain_ShipmentItemRealmProxy;->insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/domain/ShipmentItem;Ljava/util/Map;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 479
    :cond_124
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lio/realm/internal/OsList;->addRow(J)V

    .line 480
    .end local v5    # "orderItemsItem":Lcom/digikala/dms/model/domain/ShipmentItem;
    .end local v7    # "cacheItemIndexorderItems":Ljava/lang/Long;
    goto :goto_108

    .line 484
    .end local v3    # "orderItemsOsList":Lio/realm/internal/OsList;
    .end local v6    # "orderItemsList":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    .end local v15    # "realmGet$basketId":Ljava/lang/String;
    .end local v19    # "rowIndex":J
    :cond_12c
    :goto_12c
    nop

    .line 439
    .end local v21    # "tableNativePtr":J
    .restart local v11    # "tableNativePtr":J
    :goto_12d
    move-object v3, v14

    move-wide/from16 v11, v21

    .end local v11    # "tableNativePtr":J
    .restart local v21    # "tableNativePtr":J
    goto/16 :goto_1c

    .line 485
    .end local v14    # "object":Lcom/digikala/dms/model/domain/BasketItems;
    .end local v21    # "tableNativePtr":J
    .local v3, "object":Lcom/digikala/dms/model/domain/BasketItems;
    .restart local v11    # "tableNativePtr":J
    :cond_132
    move-wide/from16 v21, v11

    .end local v11    # "tableNativePtr":J
    .restart local v21    # "tableNativePtr":J
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 564
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 565
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 566
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;

    .line 568
    .local v2, "aBasketItems":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 570
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

    .line 572
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 573
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 574
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

    .line 576
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 578
    :cond_76
    return v0

    .line 565
    .end local v2    # "aBasketItems":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;
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

    .line 551
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 555
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 556
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

    .line 557
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 558
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 559
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 79
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 80
    return-void

    .line 82
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 83
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    .line 84
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 85
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 86
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 87
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 88
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 89
    return-void
.end method

.method public realmGet$basketId()Ljava/lang/String;
    .registers 4

    .line 94
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 95
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$orderItems()Lio/realm/RealmList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 125
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->orderItemsRealmList:Lio/realm/RealmList;

    if-eqz v0, :cond_10

    .line 126
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->orderItemsRealmList:Lio/realm/RealmList;

    return-object v0

    .line 128
    :cond_10
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->orderItemsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 129
    .local v0, "osList":Lio/realm/internal/OsList;
    new-instance v1, Lio/realm/RealmList;

    const-class v2, Lcom/digikala/dms/model/domain/ShipmentItem;

    iget-object v3, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/RealmList;-><init>(Ljava/lang/Class;Lio/realm/internal/OsList;Lio/realm/BaseRealm;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->orderItemsRealmList:Lio/realm/RealmList;

    .line 130
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->orderItemsRealmList:Lio/realm/RealmList;

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

    .line 546
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$basketId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 101
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 102
    return-void

    .line 104
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 105
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 106
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 107
    return-void

    .line 109
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 110
    return-void

    .line 113
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 114
    if-nez p1, :cond_55

    .line 115
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 116
    return-void

    .line 118
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 119
    return-void
.end method

.method public realmSet$orderItems(Lio/realm/RealmList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmList<",
            "Lcom/digikala/dms/model/domain/ShipmentItem;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "value":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 137
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 138
    return-void

    .line 140
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getExcludeFields$realm()Ljava/util/List;

    move-result-object v0

    const-string v1, "orderItems"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 141
    return-void

    .line 144
    :cond_20
    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 145
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    .line 146
    .local v0, "realm":Lio/realm/Realm;
    move-object v1, p1

    .line 147
    .local v1, "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    new-instance v2, Lio/realm/RealmList;

    invoke-direct {v2}, Lio/realm/RealmList;-><init>()V

    move-object p1, v2

    .line 148
    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 149
    .local v3, "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    if-eqz v3, :cond_58

    invoke-static {v3}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_58

    .line 152
    :cond_50
    invoke-virtual {v0, v3}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 150
    :cond_58
    :goto_58
    invoke-virtual {p1, v3}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v3    # "item":Lcom/digikala/dms/model/domain/ShipmentItem;
    :goto_5b
    goto :goto_3b

    .line 158
    .end local v0    # "realm":Lio/realm/Realm;
    .end local v1    # "original":Lio/realm/RealmList;, "Lio/realm/RealmList<Lcom/digikala/dms/model/domain/ShipmentItem;>;"
    :cond_5c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 159
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->orderItemsIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getModelList(J)Lio/realm/internal/OsList;

    move-result-object v0

    .line 161
    .local v0, "osList":Lio/realm/internal/OsList;
    const/4 v1, 0x0

    if-eqz p1, :cond_ac

    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_ac

    .line 162
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 163
    .local v2, "objects":I
    nop

    .local v1, "i":I
    :goto_88
    if-ge v1, v2, :cond_ab

    .line 164
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 165
    .local v3, "linkedObject":Lcom/digikala/dms/model/domain/ShipmentItem;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 166
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

    .line 163
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/domain/ShipmentItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 168
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_ab
    goto :goto_d9

    .line 169
    :cond_ac
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 170
    if-nez p1, :cond_b2

    .line 171
    return-void

    .line 173
    :cond_b2
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v2

    .line 174
    .restart local v2    # "objects":I
    nop

    .restart local v1    # "i":I
    :goto_b7
    if-ge v1, v2, :cond_d9

    .line 175
    invoke-virtual {p1, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/digikala/dms/model/domain/ShipmentItem;

    .line 176
    .restart local v3    # "linkedObject":Lcom/digikala/dms/model/domain/ShipmentItem;
    iget-object v4, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4, v3}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    .line 177
    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/realm/internal/OsList;->addRow(J)V

    .line 174
    .end local v3    # "linkedObject":Lcom/digikala/dms/model/domain/ShipmentItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 180
    .end local v1    # "i":I
    .end local v2    # "objects":I
    :cond_d9
    :goto_d9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 529
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 530
    const-string v0, "Invalid object"

    return-object v0

    .line 532
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasketItems = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{basketId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->realmGet$basketId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->realmGet$basketId()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, "null"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string/jumbo v1, "{orderItems:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v1, "RealmList<ShipmentItem>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;->realmGet$orderItems()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxy.BasketItemsColumnInfo (io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo)
.class final Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_domain_BasketItemsRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BasketItemsColumnInfo"
.end annotation


# instance fields
.field basketIdIndex:J

.field orderItemsIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 49
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 50
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 42
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 43
    const-string v0, "BasketItems"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 44
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "basketId"

    const-string v2, "basketId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    .line 45
    const-string v1, "orderItems"

    const-string v2, "orderItems"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->orderItemsIndex:J

    .line 46
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 55
    new-instance v0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 60
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    .line 61
    .local v0, "src":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;

    .line 62
    .local v1, "dst":Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->basketIdIndex:J

    .line 63
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->orderItemsIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$BasketItemsColumnInfo;->orderItemsIndex:J

    .line 64
    return-void
.end method

###### Class io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_domain_BasketItemsRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_domain_BasketItemsRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "BasketItems"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
