###### Class io.realm.com_digikala_dms_model_design_SerialItemsRealmProxy (io.realm.com_digikala_dms_model_design_SerialItemsRealmProxy)
.class public Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;
.super Lcom/digikala/dms/model/design/SerialItems;
.source "com_digikala_dms_model_design_SerialItemsRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$ClassNameHelper;,
        Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/digikala/dms/model/design/SerialItems;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    invoke-static {}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Lcom/digikala/dms/model/design/SerialItems;-><init>()V

    .line 85
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    .line 86
    return-void
.end method

.method public static copy(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;ZLjava/util/Map;)Lcom/digikala/dms/model/design/SerialItems;
    .registers 9
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "newObject"    # Lcom/digikala/dms/model/design/SerialItems;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/SerialItems;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/design/SerialItems;"
        }
    .end annotation

    .line 433
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 434
    .local v0, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v0, :cond_c

    .line 435
    move-object v1, v0

    check-cast v1, Lcom/digikala/dms/model/design/SerialItems;

    return-object v1

    .line 439
    :cond_c
    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/SerialItems;

    .line 440
    .local v1, "realmObject":Lcom/digikala/dms/model/design/SerialItems;
    move-object v2, v1

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    .line 443
    .local v2, "realmObjectSource":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;
    move-object v3, v1

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    .line 445
    .local v3, "realmObjectCopy":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$SerialItem()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$SerialItem(Ljava/lang/String;)V

    .line 446
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    .line 447
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ItemBatchId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ItemBatchId(Ljava/lang/String;)V

    .line 448
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 449
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    .line 450
    invoke-interface {v2}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$Count()I

    move-result v4

    invoke-interface {v3, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$Count(I)V

    .line 451
    return-object v1
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;ZLjava/util/Map;)Lcom/digikala/dms/model/design/SerialItems;
    .registers 10
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/SerialItems;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/SerialItems;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;)",
            "Lcom/digikala/dms/model/design/SerialItems;"
        }
    .end annotation

    .line 414
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

    .line 415
    move-object v0, p1

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 416
    .local v0, "otherRealm":Lio/realm/BaseRealm;
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    .line 419
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 420
    return-object p1

    .line 417
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    .end local v0    # "otherRealm":Lio/realm/BaseRealm;
    :cond_3b
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    .line 424
    .local v0, "objectContext":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    .line 425
    .local v1, "cachedRealmObject":Lio/realm/internal/RealmObjectProxy;
    if-eqz v1, :cond_4d

    .line 426
    move-object v2, v1

    check-cast v2, Lcom/digikala/dms/model/design/SerialItems;

    return-object v2

    .line 429
    :cond_4d
    invoke-static {p0, p1, p2, p3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->copy(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;ZLjava/util/Map;)Lcom/digikala/dms/model/design/SerialItems;

    move-result-object v2

    return-object v2
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;
    .registers 2
    .param p0, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 290
    new-instance v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/digikala/dms/model/design/SerialItems;IILjava/util/Map;)Lcom/digikala/dms/model/design/SerialItems;
    .registers 9
    .param p0, "realmObject"    # Lcom/digikala/dms/model/design/SerialItems;
    .param p1, "currentDepth"    # I
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digikala/dms/model/design/SerialItems;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/digikala/dms/model/design/SerialItems;"
        }
    .end annotation

    .line 621
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;>;"
    if-gt p1, p2, :cond_5b

    if-nez p0, :cond_5

    goto :goto_5b

    .line 624
    :cond_5
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    .line 626
    .local v0, "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    if-nez v0, :cond_1b

    .line 627
    new-instance v1, Lcom/digikala/dms/model/design/SerialItems;

    invoke-direct {v1}, Lcom/digikala/dms/model/design/SerialItems;-><init>()V

    .line 628
    .local v1, "unmanagedObject":Lcom/digikala/dms/model/design/SerialItems;
    new-instance v2, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v2, p1, v1}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 631
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/SerialItems;
    :cond_1b
    iget v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, v1, :cond_24

    .line 632
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/design/SerialItems;

    return-object v1

    .line 634
    :cond_24
    iget-object v1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast v1, Lcom/digikala/dms/model/design/SerialItems;

    .line 635
    .restart local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/SerialItems;
    iput p1, v0, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    .line 637
    :goto_2a
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    .line 638
    .local v2, "unmanagedCopy":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;
    move-object v3, p0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    .line 639
    .local v3, "realmSource":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$SerialItem()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$SerialItem(Ljava/lang/String;)V

    .line 640
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    .line 641
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ItemBatchId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ItemBatchId(Ljava/lang/String;)V

    .line 642
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 643
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    .line 644
    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$Count()I

    move-result v4

    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$Count(I)V

    .line 646
    return-object v1

    .line 622
    .end local v0    # "cachedObject":Lio/realm/internal/RealmObjectProxy$CacheData;, "Lio/realm/internal/RealmObjectProxy$CacheData<Lio/realm/RealmModel;>;"
    .end local v1    # "unmanagedObject":Lcom/digikala/dms/model/design/SerialItems;
    .end local v2    # "unmanagedCopy":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;
    .end local v3    # "realmSource":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 13

    .line 275
    new-instance v0, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v1, "SerialItems"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;II)V

    .line 276
    .local v0, "builder":Lio/realm/internal/OsObjectSchemaInfo$Builder;
    const-string v1, "SerialItem"

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 277
    const-string v7, "ReasonId"

    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 278
    const-string v2, "ItemBatchId"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 279
    const-string v8, "OrderItemId"

    sget-object v9, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v12, 0x0

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 280
    const-string v2, "BasketId"

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 281
    const-string v8, "Count"

    sget-object v9, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 282
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v1

    return-object v1
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/digikala/dms/model/design/SerialItems;
    .registers 8
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "update"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 304
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 305
    .local v0, "excludeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/digikala/dms/model/design/SerialItems;

    .line 307
    .local v1, "obj":Lcom/digikala/dms/model/design/SerialItems;
    move-object v2, v1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    .line 308
    .local v2, "objProxy":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;
    const-string v3, "SerialItem"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2e

    .line 309
    const-string v3, "SerialItem"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 310
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$SerialItem(Ljava/lang/String;)V

    goto :goto_2e

    .line 312
    :cond_25
    const-string v3, "SerialItem"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$SerialItem(Ljava/lang/String;)V

    .line 315
    :cond_2e
    :goto_2e
    const-string v3, "ReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 316
    const-string v3, "ReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 317
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    goto :goto_4b

    .line 319
    :cond_42
    const-string v3, "ReasonId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    .line 322
    :cond_4b
    :goto_4b
    const-string v3, "ItemBatchId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 323
    const-string v3, "ItemBatchId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 324
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ItemBatchId(Ljava/lang/String;)V

    goto :goto_68

    .line 326
    :cond_5f
    const-string v3, "ItemBatchId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ItemBatchId(Ljava/lang/String;)V

    .line 329
    :cond_68
    :goto_68
    const-string v3, "OrderItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 330
    const-string v3, "OrderItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 331
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    goto :goto_85

    .line 333
    :cond_7c
    const-string v3, "OrderItemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    .line 336
    :cond_85
    :goto_85
    const-string v3, "BasketId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 337
    const-string v3, "BasketId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 338
    invoke-interface {v2, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    goto :goto_a2

    .line 340
    :cond_99
    const-string v3, "BasketId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    .line 343
    :cond_a2
    :goto_a2
    const-string v3, "Count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 344
    const-string v3, "Count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bc

    .line 347
    const-string v3, "Count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$Count(I)V

    goto :goto_c4

    .line 345
    :cond_bc
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'Count\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    :cond_c4
    :goto_c4
    return-object v1
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/digikala/dms/model/design/SerialItems;
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

    .line 357
    new-instance v0, Lcom/digikala/dms/model/design/SerialItems;

    invoke-direct {v0}, Lcom/digikala/dms/model/design/SerialItems;-><init>()V

    .line 358
    .local v0, "obj":Lcom/digikala/dms/model/design/SerialItems;
    move-object v1, v0

    check-cast v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    .line 359
    .local v1, "objProxy":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 360
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_de

    .line 361
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "name":Ljava/lang/String;
    const-string v3, "SerialItem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 364
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_2f

    .line 365
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$SerialItem(Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 367
    :cond_2f
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 368
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$SerialItem(Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 370
    :cond_37
    const-string v3, "ReasonId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 371
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_50

    .line 372
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 374
    :cond_50
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 375
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ReasonId(Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 377
    :cond_58
    const-string v3, "ItemBatchId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 378
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_71

    .line 379
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ItemBatchId(Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 381
    :cond_71
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 382
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$ItemBatchId(Ljava/lang/String;)V

    goto :goto_dc

    .line 384
    :cond_78
    const-string v3, "OrderItemId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 385
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_90

    .line 386
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    goto :goto_dc

    .line 388
    :cond_90
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 389
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$OrderItemId(Ljava/lang/String;)V

    goto :goto_dc

    .line 391
    :cond_97
    const-string v3, "BasketId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 392
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v5, :cond_af

    .line 393
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    goto :goto_dc

    .line 395
    :cond_af
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 396
    invoke-interface {v1, v4}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$BasketId(Ljava/lang/String;)V

    goto :goto_dc

    .line 398
    :cond_b6
    const-string v3, "Count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 399
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_ce

    .line 400
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v1, v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmSet$Count(I)V

    goto :goto_dc

    .line 402
    :cond_ce
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 403
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set non-nullable field \'Count\' to null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 406
    :cond_d9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 408
    .end local v2    # "name":Ljava/lang/String;
    :goto_dc
    goto/16 :goto_b

    .line 409
    :cond_de
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 410
    invoke-virtual {p0, v0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v2

    check-cast v2, Lcom/digikala/dms/model/design/SerialItems;

    return-object v2
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .registers 1

    .line 286
    sget-object v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .registers 1

    .line 294
    const-string v0, "SerialItems"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J
    .registers 26
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/SerialItems;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/SerialItems;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 455
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

    .line 456
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 458
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 459
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 460
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    .line 461
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 462
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$SerialItem()Ljava/lang/String;

    move-result-object v17

    .line 464
    .local v17, "realmGet$SerialItem":Ljava/lang/String;
    if-eqz v17, :cond_75

    .line 465
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 467
    :cond_75
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v18

    .line 468
    .local v18, "realmGet$ReasonId":Ljava/lang/String;
    if-eqz v18, :cond_88

    .line 469
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 471
    :cond_88
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ItemBatchId()Ljava/lang/String;

    move-result-object v19

    .line 472
    .local v19, "realmGet$ItemBatchId":Ljava/lang/String;
    if-eqz v19, :cond_9b

    .line 473
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 475
    :cond_9b
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v20

    .line 476
    .local v20, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v20, :cond_ae

    .line 477
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 479
    :cond_ae
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v21

    .line 480
    .local v21, "realmGet$BasketId":Ljava/lang/String;
    if-eqz v21, :cond_c1

    .line 481
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 483
    :cond_c1
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->CountIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$Count()I

    move-result v3

    int-to-long v9, v3

    const/16 v22, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v22

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 484
    return-wide v15
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
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

    .line 488
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 489
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 490
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    .line 491
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;
    const/4 v3, 0x0

    .line 492
    .local v3, "object":Lcom/digikala/dms/model/design/SerialItems;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 493
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/design/SerialItems;

    .line 494
    .end local v3    # "object":Lcom/digikala/dms/model/design/SerialItems;
    .local v15, "object":Lcom/digikala/dms/model/design/SerialItems;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 495
    goto/16 :goto_f4

    .line 497
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

    .line 498
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

    .line 499
    goto/16 :goto_f4

    .line 501
    :cond_73
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 502
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$SerialItem()Ljava/lang/String;

    move-result-object v18

    .line 504
    .local v18, "realmGet$SerialItem":Ljava/lang/String;
    if-eqz v18, :cond_92

    .line 505
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 507
    :cond_92
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v19

    .line 508
    .local v19, "realmGet$ReasonId":Ljava/lang/String;
    if-eqz v19, :cond_a6

    .line 509
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 511
    :cond_a6
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ItemBatchId()Ljava/lang/String;

    move-result-object v20

    .line 512
    .local v20, "realmGet$ItemBatchId":Ljava/lang/String;
    if-eqz v20, :cond_ba

    .line 513
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 515
    :cond_ba
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v21

    .line 516
    .local v21, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v21, :cond_ce

    .line 517
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 519
    :cond_ce
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v22

    .line 520
    .local v22, "realmGet$BasketId":Ljava/lang/String;
    if-eqz v22, :cond_e2

    .line 521
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v22

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 523
    :cond_e2
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->CountIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$Count()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 524
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$SerialItem":Ljava/lang/String;
    .end local v19    # "realmGet$ReasonId":Ljava/lang/String;
    .end local v20    # "realmGet$ItemBatchId":Ljava/lang/String;
    .end local v21    # "realmGet$OrderItemId":Ljava/lang/String;
    .end local v22    # "realmGet$BasketId":Ljava/lang/String;
    nop

    .line 491
    :goto_f4
    move-object v3, v15

    goto/16 :goto_1c

    .line 525
    .end local v15    # "object":Lcom/digikala/dms/model/design/SerialItems;
    .restart local v3    # "object":Lcom/digikala/dms/model/design/SerialItems;
    :cond_f7
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/digikala/dms/model/design/SerialItems;Ljava/util/Map;)J
    .registers 26
    .param p0, "realm"    # Lio/realm/Realm;
    .param p1, "object"    # Lcom/digikala/dms/model/design/SerialItems;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/digikala/dms/model/design/SerialItems;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 528
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

    .line 529
    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v1

    return-wide v1

    .line 531
    :cond_3c
    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 532
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 533
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    .line 534
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 535
    .local v15, "rowIndex":J
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$SerialItem()Ljava/lang/String;

    move-result-object v17

    .line 537
    .local v17, "realmGet$SerialItem":Ljava/lang/String;
    if-eqz v17, :cond_76

    .line 538
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7e

    .line 540
    :cond_76
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 542
    :goto_7e
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v18

    .line 543
    .local v18, "realmGet$ReasonId":Ljava/lang/String;
    if-eqz v18, :cond_92

    .line 544
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9a

    .line 546
    :cond_92
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 548
    :goto_9a
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ItemBatchId()Ljava/lang/String;

    move-result-object v19

    .line 549
    .local v19, "realmGet$ItemBatchId":Ljava/lang/String;
    if-eqz v19, :cond_ae

    .line 550
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b6

    .line 552
    :cond_ae
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 554
    :goto_b6
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v20

    .line 555
    .local v20, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v20, :cond_ca

    .line 556
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d2

    .line 558
    :cond_ca
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 560
    :goto_d2
    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v21

    .line 561
    .local v21, "realmGet$BasketId":Ljava/lang/String;
    if-eqz v21, :cond_e6

    .line 562
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ee

    .line 564
    :cond_e6
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 566
    :goto_ee
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->CountIndex:J

    move-object v3, v0

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$Count()I

    move-result v3

    int-to-long v9, v3

    const/16 v22, 0x0

    move-wide v3, v12

    move-wide v7, v15

    move/from16 v11, v22

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 567
    return-wide v15
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

    .line 571
    .local p1, "objects":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lio/realm/RealmModel;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Lio/realm/RealmModel;Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    const-class v1, Lcom/digikala/dms/model/design/SerialItems;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 572
    .local v1, "table":Lio/realm/internal/Table;
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 573
    .local v12, "tableNativePtr":J
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/digikala/dms/model/design/SerialItems;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    .line 574
    .local v14, "columnInfo":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;
    const/4 v3, 0x0

    .line 575
    .local v3, "object":Lcom/digikala/dms/model/design/SerialItems;
    :goto_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_129

    .line 576
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/digikala/dms/model/design/SerialItems;

    .line 577
    .end local v3    # "object":Lcom/digikala/dms/model/design/SerialItems;
    .local v15, "object":Lcom/digikala/dms/model/design/SerialItems;
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 578
    goto/16 :goto_126

    .line 580
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

    .line 581
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

    .line 582
    goto/16 :goto_126

    .line 584
    :cond_73
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v16

    .line 585
    .local v16, "rowIndex":J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$SerialItem()Ljava/lang/String;

    move-result-object v18

    .line 587
    .local v18, "realmGet$SerialItem":Ljava/lang/String;
    if-eqz v18, :cond_93

    .line 588
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9c

    .line 590
    :cond_93
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 592
    :goto_9c
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v19

    .line 593
    .local v19, "realmGet$ReasonId":Ljava/lang/String;
    if-eqz v19, :cond_b1

    .line 594
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v19

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_ba

    .line 596
    :cond_b1
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 598
    :goto_ba
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$ItemBatchId()Ljava/lang/String;

    move-result-object v20

    .line 599
    .local v20, "realmGet$ItemBatchId":Ljava/lang/String;
    if-eqz v20, :cond_cf

    .line 600
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v20

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d8

    .line 602
    :cond_cf
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 604
    :goto_d8
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v21

    .line 605
    .local v21, "realmGet$OrderItemId":Ljava/lang/String;
    if-eqz v21, :cond_ed

    .line 606
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v21

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f6

    .line 608
    :cond_ed
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 610
    :goto_f6
    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v22

    .line 611
    .local v22, "realmGet$BasketId":Ljava/lang/String;
    if-eqz v22, :cond_10b

    .line 612
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-object/from16 v9, v22

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_114

    .line 614
    :cond_10b
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 616
    :goto_114
    iget-wide v5, v14, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->CountIndex:J

    move-object v3, v15

    check-cast v3, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;

    invoke-interface {v3}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxyInterface;->realmGet$Count()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 617
    .end local v16    # "rowIndex":J
    .end local v18    # "realmGet$SerialItem":Ljava/lang/String;
    .end local v19    # "realmGet$ReasonId":Ljava/lang/String;
    .end local v20    # "realmGet$ItemBatchId":Ljava/lang/String;
    .end local v21    # "realmGet$OrderItemId":Ljava/lang/String;
    .end local v22    # "realmGet$BasketId":Ljava/lang/String;
    nop

    .line 574
    :goto_126
    move-object v3, v15

    goto/16 :goto_1c

    .line 618
    .end local v15    # "object":Lcom/digikala/dms/model/design/SerialItems;
    .restart local v3    # "object":Lcom/digikala/dms/model/design/SerialItems;
    :cond_129
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 703
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 704
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 705
    :cond_12
    move-object v2, p1

    check-cast v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;

    .line 707
    .local v2, "aSerialItems":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;
    iget-object v3, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "path":Ljava/lang/String;
    iget-object v4, v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 709
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

    .line 711
    :cond_35
    iget-object v5, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v5

    invoke-interface {v5}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v5

    .line 712
    .local v5, "tableName":Ljava/lang/String;
    iget-object v6, v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v6}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v6

    .line 713
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

    .line 715
    :cond_5d
    iget-object v7, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v7}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v7

    invoke-interface {v7}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v7

    iget-object v9, v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v9}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v9

    invoke-interface {v9}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_76

    return v1

    .line 717
    :cond_76
    return v0

    .line 704
    .end local v2    # "aSerialItems":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;
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

    .line 690
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "realmName":Ljava/lang/String;
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    .line 694
    .local v2, "rowIndex":J
    const/16 v4, 0x11

    .line 695
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

    .line 696
    .end local v4    # "result":I
    .local v5, "result":I
    mul-int/lit8 v4, v5, 0x1f

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    nop

    :cond_39
    add-int/2addr v4, v6

    .line 697
    .end local v5    # "result":I
    .restart local v4    # "result":I
    mul-int/lit8 v5, v4, 0x1f

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int/2addr v5, v6

    .line 698
    .end local v4    # "result":I
    .restart local v5    # "result":I
    return v5
.end method

.method public realm$injectObjectContext()V
    .registers 4

    .line 90
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_5

    .line 91
    return-void

    .line 93
    :cond_5
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 94
    .local v0, "context":Lio/realm/BaseRealm$RealmObjectContext;
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    .line 95
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 96
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 97
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 98
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 99
    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    .line 100
    return-void
.end method

.method public realmGet$BasketId()Ljava/lang/String;
    .registers 4

    .line 225
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 226
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$Count()I
    .registers 4

    .line 255
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 256
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->CountIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$ItemBatchId()Ljava/lang/String;
    .registers 4

    .line 165
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 166
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$OrderItemId()Ljava/lang/String;
    .registers 4

    .line 195
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 196
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$ReasonId()Ljava/lang/String;
    .registers 4

    .line 135
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 136
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$SerialItem()Ljava/lang/String;
    .registers 4

    .line 105
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 106
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

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

    .line 685
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmSet$BasketId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 232
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 233
    return-void

    .line 235
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 236
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 237
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 238
    return-void

    .line 240
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 241
    return-void

    .line 244
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 245
    if-nez p1, :cond_55

    .line 246
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 247
    return-void

    .line 249
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 250
    return-void
.end method

.method public realmSet$Count(I)V
    .registers 11
    .param p1, "value"    # I

    .line 261
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 262
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 263
    return-void

    .line 265
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 266
    .local v0, "row":Lio/realm/internal/Row;
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->CountIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    .line 267
    return-void

    .line 270
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_29
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 271
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->CountIndex:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    .line 272
    return-void
.end method

.method public realmSet$ItemBatchId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 172
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 173
    return-void

    .line 175
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 176
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 177
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 178
    return-void

    .line 180
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 181
    return-void

    .line 184
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 185
    if-nez p1, :cond_55

    .line 186
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 187
    return-void

    .line 189
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 190
    return-void
.end method

.method public realmSet$OrderItemId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 202
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 203
    return-void

    .line 205
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 206
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 207
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 208
    return-void

    .line 210
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 211
    return-void

    .line 214
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 215
    if-nez p1, :cond_55

    .line 216
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 217
    return-void

    .line 219
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 220
    return-void
.end method

.method public realmSet$ReasonId(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 142
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 143
    return-void

    .line 145
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 146
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 147
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 148
    return-void

    .line 150
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 151
    return-void

    .line 154
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 155
    if-nez p1, :cond_55

    .line 156
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 157
    return-void

    .line 159
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 160
    return-void
.end method

.method public realmSet$SerialItem(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 112
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_11

    .line 113
    return-void

    .line 115
    :cond_11
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 116
    .local v0, "row":Lio/realm/internal/Row;
    if-nez p1, :cond_2a

    .line 117
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v2, v2, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    .line 118
    return-void

    .line 120
    :cond_2a
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v8, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    .line 121
    return-void

    .line 124
    .end local v0    # "row":Lio/realm/internal/Row;
    :cond_3c
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 125
    if-nez p1, :cond_55

    .line 126
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->setNull(J)V

    .line 127
    return-void

    .line 129
    :cond_55
    iget-object v0, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->columnInfo:Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    iget-wide v1, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 652
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 653
    const-string v0, "Invalid object"

    return-object v0

    .line 655
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SerialItems = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{SerialItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->realmGet$SerialItem()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->realmGet$SerialItem()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_21
    const-string v1, "null"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string/jumbo v1, "{ReasonId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->realmGet$ReasonId()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_42
    const-string v1, "null"

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string/jumbo v1, "{ItemBatchId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->realmGet$ItemBatchId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->realmGet$ItemBatchId()Ljava/lang/String;

    move-result-object v1

    goto :goto_65

    :cond_63
    const-string v1, "null"

    :goto_65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string/jumbo v1, "{OrderItemId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_84

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->realmGet$OrderItemId()Ljava/lang/String;

    move-result-object v1

    goto :goto_86

    :cond_84
    const-string v1, "null"

    :goto_86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    const-string/jumbo v1, "{BasketId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a5

    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->realmGet$BasketId()Ljava/lang/String;

    move-result-object v1

    goto :goto_a7

    :cond_a5
    const-string v1, "null"

    :goto_a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string/jumbo v1, "{Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;->realmGet$Count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 678
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

###### Class io.realm.com_digikala_dms_model_design_SerialItemsRealmProxy.ClassNameHelper (io.realm.com_digikala_dms_model_design_SerialItemsRealmProxy$ClassNameHelper)
.class public final Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$ClassNameHelper;
.super Ljava/lang/Object;
.source "com_digikala_dms_model_design_SerialItemsRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassNameHelper"
.end annotation


# static fields
.field public static final INTERNAL_CLASS_NAME:Ljava/lang/String; = "SerialItems"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.realm.com_digikala_dms_model_design_SerialItemsRealmProxy.SerialItemsColumnInfo (io.realm.com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo)
.class final Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_digikala_dms_model_design_SerialItemsRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SerialItemsColumnInfo"
.end annotation


# instance fields
.field BasketIdIndex:J

.field CountIndex:J

.field ItemBatchIdIndex:J

.field OrderItemIdIndex:J

.field ReasonIdIndex:J

.field SerialItemIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .registers 3
    .param p1, "src"    # Lio/realm/internal/ColumnInfo;
    .param p2, "mutable"    # Z

    .line 57
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 58
    invoke-virtual {p0, p1, p0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    .line 59
    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 5
    .param p1, "schemaInfo"    # Lio/realm/internal/OsSchemaInfo;

    .line 46
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    .line 47
    const-string v0, "SerialItems"

    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 48
    .local v0, "objectSchemaInfo":Lio/realm/internal/OsObjectSchemaInfo;
    const-string v1, "SerialItem"

    const-string v2, "SerialItem"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    .line 49
    const-string v1, "ReasonId"

    const-string v2, "ReasonId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    .line 50
    const-string v1, "ItemBatchId"

    const-string v2, "ItemBatchId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    .line 51
    const-string v1, "OrderItemId"

    const-string v2, "OrderItemId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    .line 52
    const-string v1, "BasketId"

    const-string v2, "BasketId"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    .line 53
    const-string v1, "Count"

    const-string v2, "Count"

    invoke-virtual {p0, v1, v2, v0}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->CountIndex:J

    .line 54
    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .registers 3
    .param p1, "mutable"    # Z

    .line 63
    new-instance v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 7
    .param p1, "rawSrc"    # Lio/realm/internal/ColumnInfo;
    .param p2, "rawDst"    # Lio/realm/internal/ColumnInfo;

    .line 68
    move-object v0, p1

    check-cast v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    .line 69
    .local v0, "src":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;
    move-object v1, p2

    check-cast v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;

    .line 70
    .local v1, "dst":Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->SerialItemIndex:J

    .line 71
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ReasonIdIndex:J

    .line 72
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->ItemBatchIdIndex:J

    .line 73
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->OrderItemIdIndex:J

    .line 74
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->BasketIdIndex:J

    .line 75
    iget-wide v2, v0, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->CountIndex:J

    iput-wide v2, v1, Lio/realm/com_digikala_dms_model_design_SerialItemsRealmProxy$SerialItemsColumnInfo;->CountIndex:J

    .line 76
    return-void
.end method
